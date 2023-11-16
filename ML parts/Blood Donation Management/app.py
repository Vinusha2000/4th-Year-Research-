import pickle, re
import numpy as np
import pandas as pd
import mysql.connector
import tensorflow as tf
from nltk import word_tokenize
from pymongo import MongoClient
from sklearn.utils import shuffle
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer
from nltk.tokenize import RegexpTokenizer
from math import sin, cos, sqrt, atan2, radians, asin
from flask import Flask, request, jsonify
from flask_cors import CORS
from flask import send_file
import json

app = Flask(__name__)
CORS(app)


# Load the models
encoder_donation = pickle.load(open('weights/donation-2023/label_encoder.pkl','rb'))
tokenizer_reviews = pickle.load(open('weights/review sentiment/tokenizer.pkl','rb'))
scaler_donation = pickle.load(open('weights/donation-2023/scaler.pkl','rb'))

model_reviews = tf.keras.models.load_model('weights/review sentiment/model.h5')
model_appointment = tf.keras.models.load_model('weights/appointment/model.h5')
model_eligibility = pickle.load(open('weights/eligibility/rfc.pickle','rb'))
model_donation = pickle.load(open('weights/donation-2023/xgb.sav','rb'))
model_demand = tf.keras.models.load_model('weights/demand/model.h5')

########
from werkzeug.utils import secure_filename
import os

UPLOAD_FOLDER = 'uploads/'
ALLOWED_EXTENSIONS = {'csv'}
REQUIRED_COLUMNS = [
    "Age", "Blood type", "Gender", "Hight (M)", "Weight",
    "BMI", "Blood camp held date", "BMI Y/N",
    "Last donated date", "Doner Province", "Camp held provinces",
    "DonateBloodTill2023"
]

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def strip_spaces_from_columns(columns):
    return [col.strip() for col in columns]

########

try:
    client = MongoClient("mongodb+srv://admin:admin@early-detection.jevtz.mongodb.net/test")
    db = client['BloodDonationManagement']
    client.server_info()
    print("DB accessed !")

except Exception as e:
    print("*************************************************************")
    print(e)
    print("*************************************************************")

np.random.seed(1234)
tf.random.set_seed(1234)

def create_connection():
    connection = mysql.connector.connect(
                                        host="blood-donation.cbi8yetcgncy.ap-southeast-1.rds.amazonaws.com",
                                        user="blood",
                                        password="BloodDonation",
                                        database="blood_donation"
                                        )
    return connection

# connection = create_connection()

def select_records(
                    connection,
                    columnnames,
                    sample_table
                    ):
    cursor = connection.cursor()
    cursor.execute(f"SELECT * FROM {sample_table}")
    rows = cursor.fetchall()

    df = pd.DataFrame(rows, columns=columnnames)
    return df

# def inference_donation(sel_cols = ['Blood type', 'Gender', 'Doner Province ', 'Age ']):
#     donation_collection = db['donation']
#     donation_data = donation_collection.find()
#     donation_df = pd.DataFrame(list(donation_data))
#     donation_df.Label = donation_df.Label.astype(int)

#     pos_count = donation_df.Label.value_counts()[1]
#     neg_count = donation_df.Label.value_counts()[0]

#     donner_percentage = pos_count/(pos_count+neg_count)
#     donner_percentage = round(donner_percentage * 100, 2)


#     donner_df = donation_df[donation_df.Label == 1]
#     donner_df = donner_df[sel_cols]
#     donner_df = donner_df.reset_index(drop=True)
#     donner_df = donner_df.astype(str)
#     donner_df = donner_df.apply(lambda x: x.str.strip())
#     donner_json = eval(donner_df.to_json(orient='records'))

#     return {
#         'donner_percentage': f"{donner_percentage} %",
#         'donner_df': donner_json
#         }


############
import csv


def inference(
            sample_json,
            cat_cols = ['Blood type', 'Gender', 'Doner Province', 'Camp held provinces'],
            label_encoder_path = 'weights/donation-2023/label_encoder.pkl'
            ):
    sample = pd.DataFrame(sample_json, index=[0])
    del sample['Blood camp held date']
    del sample['Last donated date']

    columns = sample.columns.values
    sample.columns = [col.strip() for col in columns]
    for col in sample.columns:
        sample[col] = sample[col].astype(str).str.strip()

    # Load label encoder
    with open('weights/donation-2023/label_encoder.pkl', 'rb') as f:
        d = pickle.load(f)

    for col in cat_cols:
        sample[col] = d[col].transform(sample[col])
        
    for col in sample.columns:
        sample[col] = sample[col].astype(float)

    with open('weights/donation-2023/scaler.pkl', 'rb') as f:
        scaler = pickle.load(f)

    sample = scaler.transform(sample)
    pred = int(model_donation.predict(sample).squeeze())
    return pred

def inference_donation(csv_path):
    # Load CSV data into DataFrame
    df = pd.read_csv(csv_path)

    results = []
    for _, row in df.iterrows():
        sample_json = row.to_dict()
        pred = inference(sample_json, encoder_donation, scaler_donation)
        if pred == 1:
            results.append(row)

    # Create a DataFrame only containing positive samples
    result_df = pd.DataFrame(results)
    
    # Write this DataFrame to a new CSV file
    result_csv_path = "positive_samples.csv"
    result_df.to_csv(result_csv_path, index=False)
    
    return result_csv_path, result_df


############

def inference_appointment():
    # appointment_collection = db['appointments']
    # appointment_data = appointment_collection.find()
    # appointment_df = pd.DataFrame(list(appointment_data))
    # appointment_df = select_records(connection, ['id', 'Date', 'NoOfAppointments'], "appointments")
    # appointment_df = appointment_df.drop(['id', 'Date'], axis=1)
    appointment_df = pd.read_csv('data/appointment.csv')
    appointment_df = appointment_df.drop(['Date'], axis=1)
    appointment_df = appointment_df.reset_index(drop=True)
    appointment_arr = appointment_df['NoOfAppointments'].values
    Xt = appointment_arr[-30:].reshape(1,30, 1)
    Xt = Xt.astype('float32')
    y_pred = model_appointment.predict(Xt)
    y_pred = y_pred.astype('int').squeeze()
    y_pred = y_pred.tolist()

    y_res = []
    for i in range(0, len(y_pred)):
        y_res.append({
                    'date': f'day {i+1}',
                    'appointments': y_pred[i]
                    })
    return y_res

def inference_demand():
    # demand_collection = db['demand']
    # demand_data = demand_collection.find()
    # demand_df = pd.DataFrame(list(demand_data))
    # demand_df = select_records(connection, ['id', 'Date', 'Aplus', 'Aminus', 'Bplus', 'Bminus', 'ABplus', 'ABminus', 'Oplus', 'Ominus'], "demand")
    demand_df = pd.read_csv('data/Demand Forecasting.csv')
    demand_df = demand_df.reset_index(drop=True)
    del demand_df['Date']

    demand_arr = demand_df.values
    Xt = demand_arr[-30:].reshape(1,30, 8)
    Xt = Xt.astype('float32')
    y_pred = model_demand.predict(Xt)
    y_pred = y_pred.astype('int')
    y_pred = y_pred.squeeze()
    return {
            "Aplus" : int(y_pred[0]),
            "Aminus" : int(y_pred[1]),
            "Bplus" : int(y_pred[2]),
            "Bminus" : int(y_pred[3]),
            "ABplus" : int(y_pred[4]),
            "ABminus" : int(y_pred[5]),
            "Oplus" : int(y_pred[6]),
            "Ominus" : int(y_pred[7])
            }

def inference_eligibility(sample_json):
    # try:
        sample_json = pd.DataFrame(sample_json, index=[0])
        sample_json = sample_json.applymap(lambda x: int(x))
        sample_json = sample_json.values
        pred = model_eligibility.predict(sample_json).squeeze()
        return 'eligible' if pred == 1 else 'not eligible'
    
    # except:
    #     data = pd.read_csv('data/Donation Eligible V2.csv')
    #     data = data[['Donor ID', 'Eligible to donate']]
    #     data = data.rename(columns={'Eligible to donate': 'Eligibility'})
    #     data['Eligibility'] = data['Eligibility'].replace({1: 'Yes', 0: 'No'})
    #     data = data.to_dict('records')
    #     return data

def lemmatization(lemmatizer,sentence):
    lem = [lemmatizer.lemmatize(k) for k in sentence]
    return [k for k in lem if k]

def remove_stop_words(stopwords_list,sentence):
    return [k for k in sentence if k not in stopwords_list]

def preprocess_one(
                    review,
                    lemmatizer = WordNetLemmatizer(),
                    tokenizer = RegexpTokenizer(r'\w+'),
                    stopwords_list = stopwords.words('english')
                    ):
    review = review.lower()
    remove_punc = tokenizer.tokenize(review) # Remove puntuations
    remove_num = [re.sub('[0-9]', '', i) for i in remove_punc] # Remove Numbers
    remove_num = [i for i in remove_num if len(i)>0] # Remove empty strings
    lemmatized = lemmatization(lemmatizer,remove_num) # Word Lemmatization
    remove_stop = remove_stop_words(stopwords_list,lemmatized) # remove stop words
    updated_review = ' '.join(remove_stop)
    return updated_review

def preprocessed_data(reviews):
    updated_reviews = []
    if isinstance(reviews, np.ndarray) or isinstance(reviews, list):
        updated_reviews = [preprocess_one(review) for review in reviews]
    elif isinstance(reviews, np.str_)  or isinstance(reviews, str):
        updated_reviews = [preprocess_one(reviews)]

    return np.array(updated_reviews)

def inference_review(review):
    review = preprocessed_data(review)
    review = tokenizer_reviews.texts_to_sequences(review)
    review = tf.keras.preprocessing.sequence.pad_sequences(
                                                            review, 
                                                            maxlen=7, 
                                                            padding='pre', 
                                                            truncating='pre'
                                                            )
    pred = model_reviews.predict(review).squeeze()
    pred = np.round(pred)
    return pred.astype(int)

def haversine(p1, p2):
    lat1, lon1 = p1
    lat2, lon2 = p2
    
    lat1 = float(lat1)
    lon1 = float(lon1)
    
    lat2 = float(lat2)
    lon2 = float(lon2)
    
    lon1, lat1, lon2, lat2 = map(radians, [lon1, lat1, lon2, lat2])
 
    dlon = lon2 - lon1 
    dlat = lat2 - lat1 
    
    a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
    
    c = 2 * asin(sqrt(a)) 
    r = 6371 
    distance_km = c * r
    return distance_km

def derive_blood_camps(
                        user_location,
                        max_distance = 10
                        ):
    df_reviews = pd.read_excel("data/Blood Camp Reviews.xlsx", sheet_name='Reviews') 
    df_locations = pd.read_excel("data/Blood Camp Reviews.xlsx", sheet_name='Locations')
    df_reviews['Reviews'] = df_reviews['Reviews'].apply(preprocess_one)
    df_reviews['SentimentP'] = inference_review(df_reviews['Reviews'].values)

    df_reviews = df_reviews[['Camp_Id', 'SentimentP']]
    df_reviews = df_reviews.groupby('Camp_Id').mean().reset_index()
    df_reviews['SentimentP'] = df_reviews['SentimentP'].round(3)

    df = pd.merge(df_reviews, df_locations, on='Camp_Id', how='left')
    df[['Latitude', 'Longitude']] = df.Location.str.split(",", expand=True)
    del df['Location']

    df['Latitude'] = df['Latitude'].str.strip().astype(float)
    df['Longitude'] = df['Longitude'].str.strip().astype(float)
    df['Location'] = df[['Latitude', 'Longitude']].apply(tuple, axis=1)
    del df['Latitude'], df['Longitude']
    
    df['distance'] = df['Location'].apply(
                                            lambda x: haversine(
                                                                user_location,                      
                                                                x
                                                                )
                                        )
    df = df[df['distance'] <= max_distance]
    df = df.sort_values(by=['SentimentP'], ascending=False)
    df = df[['Camp_Id', 'distance']]
    df['distance'] = df['distance'].round(3).astype(str) + ' km'

    response = df.to_dict('records')
    return response

# @app.route('/donation', methods=['GET'])
# def donation():
#     return jsonify(inference_donation())

###########

# Function to remove special characters from a string
def remove_special_characters(text):
    return re.sub(r'[^a-zA-Z0-9_]', '', text)

@app.route('/donation', methods=['POST'])
def donation():
    if 'file' not in request.files:
        return jsonify({"error": "No file part"})
    
    file = request.files['file']
    if file.filename == '':
        return jsonify({"error": "No selected file"})
    
    if file and allowed_file(file.filename):
        filename = secure_filename(file.filename)
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)

        # Check if the required columns are present in the CSV file
        df = pd.read_csv(file_path)
        df_columns = strip_spaces_from_columns(df.columns)
        required_columns = strip_spaces_from_columns(REQUIRED_COLUMNS)
        missing_columns = [col for col in required_columns if col not in df_columns]
        
        if missing_columns:
            os.remove(file_path)  # Remove the uploaded file
            return jsonify({"error": f"Missing required columns: {', '.join(missing_columns)}"})
        
        
        
        # Call the updated inference_donation function
        filtered_csv_path, df_positive = inference_donation(file_path)
        
        # Optionally: Remove the uploaded file
        # os.remove(file_path)
        
        # return send_file(filtered_csv_path, as_attachment=True)
    

        # Rename DataFrame columns to lowercase with no special characters
        df_positive.columns = [remove_special_characters(col.lower()) for col in df_positive.columns]

        # Convert the modified DataFrame to JSON
        filtered_data = df_positive.to_json(orient='records')
        
        
        
        return filtered_data
    else:
        return jsonify({"error": "File not allowed"})

###########


@app.route('/appointment', methods=['GET'])
def appointment():
    appointment_json = inference_appointment()
    return jsonify({'appointsments': appointment_json})

@app.route('/demand', methods=['GET'])
def demand():
    demand_val = inference_demand()
    return jsonify({'demand': demand_val})

@app.route('/eligibility', methods=['POST'])
def eligibility():
    sample_json = request.get_json()
    return jsonify({'eligibility': inference_eligibility(sample_json)})

@app.route('/camps', methods=['POST'])
def camps():
    location = request.get_json()
    location = eval(location['location'])
    return jsonify({'camps': derive_blood_camps(location)})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)