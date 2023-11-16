-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 04:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoiments`
--

CREATE TABLE `appoiments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blood_camp_held_date` text DEFAULT NULL,
  `last_donated_date` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `nic_number` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `merital_status` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `blood_type` text DEFAULT NULL,
  `contact_number` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `height` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `doner_province` text DEFAULT NULL,
  `camp_held_province` text DEFAULT NULL,
  `lat` double(8,2) DEFAULT NULL,
  `lng` double(8,2) DEFAULT NULL,
  `doctor_approvel` text DEFAULT NULL,
  `medical_data` text DEFAULT NULL,
  `blood_store_id` text DEFAULT NULL,
  `donor_id` text DEFAULT NULL,
  `blood_camp_shadules_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appoiments`
--

INSERT INTO `appoiments` (`id`, `created_at`, `updated_at`, `blood_camp_held_date`, `last_donated_date`, `name`, `nic_number`, `email`, `gender`, `merital_status`, `dob`, `blood_type`, `contact_number`, `address`, `height`, `weight`, `doner_province`, `camp_held_province`, `lat`, `lng`, `doctor_approvel`, `medical_data`, `blood_store_id`, `donor_id`, `blood_camp_shadules_id`) VALUES
(3, '2023-08-31 11:53:34', '2023-10-28 10:41:54', '2023-10-28 16:11:54', '2023-10-28 16:11:54', 'donor', '22222222v', 'donor@d', 'male', 'married', '25', 'A+', '56252', 'adasd', '12', '45', 'UVA', 'UVA', NULL, NULL, 'done', 'eyJpdiI6Iisyck9GRXZGNjFGVEhHVnZUbjZ5N0E9PSIsInZhbHVlIjoiRGdYeUdRV1FZRk84aTVJbDdmZ1VhZ0g1VkR2RERaZEpNZnhhaDlwVElENU0wWjl6TExvRnd2Y0ZGZ0Z5VFNhV2xOSUY3VzBZUEVnZkxRbmNPVG5KWldzdFhpaVgyMi9ZTjdvTTREeHViRXQwRVloaS9qRVJMcTZoZk00ZzlEOUtRVEE4eFBYa0tadW51S3lIT0NtNTBndXZqSjdiaDZHWXdtSGlVT3M1MmlPOWMzSFhVQ21nS3lGd3Y4amllYVhNV2lJRVpuOVUwa0psdzYycG12THVaZHUzdjczRjR0cG9wbkVxZ3NQbEc0SG9ub3RyS3ZtT1kzMUdOcVpzbDN0NkI3T3hySGsxaXFYRXZ4MGxVVDdnendFVXhvOWZ0L0tyQnZCNHVuT0lrSE1wa1RJMHFMellVL3pBT1BJOXZVdDN1MEpJVUloK1h0ZUdxWVQ4NWxpbmIxYnc3ZFFvcE1RZGxrbC9pVUNXdzR3dXYrb0Y4a3pJMjh3R1JiekJqYnFaUFhpN3J5T1lCM05PZ0ZnbGNEeWFrd3ZsdGJ3c3JwazFvS0xBV3N1WkIzQzJNTDJSQSs1cS9pS3VyaWlsaUJiMWNTOUFjamlNa09Kekgwc0NzUFdaMFE9PSIsIm1hYyI6IjMyZTdiNjkzYjI3ZTE0ZDg1YTg4MTE1MzI0MTQ3MWE5YTA2OThiN2I3NDUzNDhmNjk2OTBkY2U2YWMwOWJkZmQiLCJ0YWciOiIifQ==', NULL, '1', '1'),
(4, '2023-10-28 08:40:42', '2023-10-28 10:43:09', '2023-10-28 16:13:09', '2023-10-28 16:13:09', 'donor', '22222222v', 'donor@d', 'female', 'unmarried', '25', NULL, '0786789765', '33/4,colombo 10', '153', '50', 'Western', 'Western', 7.24, 80.03, 'done', 'eyJpdiI6IndRU2FzT3ZrQXdPTDcvMEYvTndsd2c9PSIsInZhbHVlIjoibVJtSDF2TVA2UTB6SytjK0JBdk1IbUcvTENkM2Rkb3IrQUFvT0s2dGh5Nm1rV1YyaFZEN3ZzeDZ5UVBzSUdDa0gzaDlmbzg3eUcxcTY0WERXa28rd21BcXR5YUNuRUlJNnlLVDFxOFV0SCtJZlhwanlnVkRQQ0dhVWE1N3NBQnN4c21vN3NEWHFndjcwSXFWUFJIRzhLdjV6dWZucGxnTDN4T3gra25IaENYUEtmNXM1bWlwWUcxU0xTUjQrUFF6b2ZoTHhlSXNYZ0o4MFB2WHlPUXBwek54cVdPZW1Fc3lBUWt3RHpEU1NyTXVabHRkY1ZoS1RCS0VVNUlWNXJjZzl2czZGd2tYR2FPQ2dSNkdENEZDV0VmNEMzQURJQXk3LzJvRnZMbXpZRC9sK3drV3VzQm1hLzVkUzFHS01zV1F3UGNKemxjSjVlNUVYb3JlM3QzbWpZb0pCdDFrWFFiN0k2L2FEL24wSFlOY1dzM21xeG12cVhOcVRQK00wV2hFWHlOQ0RrV0VGeGlEVWwyMk5EQlAzTW1LRHRaajhmZy9Db3ZGdmdqclB3MklocGFYckExbU9UdjNoUk9PYU9vSU9Qb0I4WjhBRUREWGRqSUNHZlZnTHc9PSIsIm1hYyI6IjdiYzZlMGM1MTQ5N2I1NDMzZTViOGFhOWIyMDZmNjFiMTQ2ZmU3MTRlNTI4Y2Y5ZDQ3Njk0OTMwZDk0ZTM4NDYiLCJ0YWciOiIifQ==', NULL, '1', '1'),
(5, '2023-10-28 10:47:46', '2023-10-28 10:50:01', '2023-10-28 16:20:01', '2023-10-28 16:20:01', 'donor', '22222222v', 'donor@d', 'male', 'unmarried', '28', 'O+', '0757898654', '88/B,Gampaha', '178', '100', 'Western', 'Western', 7.20, 79.94, 'done', 'eyJpdiI6IlZPM2FzRlJZMGlFOXZpTGRobTAvcFE9PSIsInZhbHVlIjoiN2J4QlJ6RjFOdlVLS1lFV2QrTUFWV2dkc3Y1V0VjKzFVSUVLRENneTI3bXpJVHh0YktXOW0zVDBTenU0aWFFK3h6ZlUrV1dzNmZoNXN4OGJYdjYxWnB3NUpjY1RjTm9kRURiWEZ2R3FpaDYzVzlIVE1vaFJuMnRsQjFpcml5TWlRNzdnMGt1TFFYSVIvcWtldUhXK09KR3J1Q3krM2FvNEVtZUgrVk9VSnpVOUc0NHhiS2kxQ2xibDVsVGdZT2o1bnNyaE93SHJlNXNZMTl3OWxiYlFDbWJ6bGZRc2dGZHFqV1oxTi9pUE9STGNvam5VTnZXUG03cEJzeGY5blhUVWdIQ0I4SXNQVlVrNFVWcWJlbnBWYS9nNUt5YmVkL1psSE54WGRDVVlOWHBEcHZlczRzcHJOSXpQNXZpUnIzNUMwMjhpZFBqemlHQWJyaUVFenhsRXo5REtzSHBsZVB5bGxSRmhmSyswdERwN2d5bWdRYUN3eXM1bmFRU3lCcmxFMWd1MVlXOGhTT0NWN2pwVER5TmtobW5IN1dFeTBOQ0tJWU4xbzJ3anhPK09Ud1h6UnZDbFZPQXdUMVdnT01PVGJqQzVneHA5K2RBTVNZSTI4K1FNRHc9PSIsIm1hYyI6IjFmYmZkNmQ5MWEyMGFjYzMwMTYzOWU5M2FjODVkYmE2NTdmNWQxYzM3YWIyZTQ4Zjc1MmNiMmM5NWMwZDk0MzciLCJ0YWciOiIifQ==', NULL, '1', '1'),
(6, '2023-10-28 10:55:32', '2023-10-28 10:56:35', '2023-10-28 16:26:35', '2023-10-28 16:20:01', 'donor', '22222222v', 'donor@d', 'female', 'married', '24', 'B-', '0789876899', '55/m, colombo 01', '150', '45', 'Uva', 'Uva', 7.10, 80.10, 'done', 'eyJpdiI6IlJjcHZyQ1YxVHFRRC9XdVBXckl1YXc9PSIsInZhbHVlIjoiL0ZMUjdsL0NQREIrM2Qwd3RNRUhUVnNKYVJmZmJmaWE2b1Fab0dHUjhGeG1GR1N5dGExaHVCRU9PR0hrNWJCRjRDTnIrTW9Xb3RrM1hidzJ6dTNNczBpSnNXSDlZNE41UXJLejY0TWlpQXIrejJYalBCdnpUYkFqcVNvcGtaVnYwRE9saXM1elQyelBCQ2wvMmVBTHFuSkFnRkl6WnBpRE95ajE2blhhNjJUdmpxUXk4Z1BCVE1VOUhHQ2h5T2RMVTdKajBCSU1XNktDK1VVc0Y0S09IT05xS1hHS3JEZTlCQmJ0ZVNYZ0hRMERJVk90bVUrczRaSDh0Y3lsUHE2cGw5aHA1UXkvSy85QTA3U0ZlRUJxZWNhclVLWjRqd0krZklRakUwVnBEeVE2TkJib0w1dWFQeStsVEE3dHVqVFJPWTRZcG5KVVY2TEM5VGR5YzVac0hwVFIvcnFXMUpOZlJpOXBaZklncUN4NlJtcmU1WW5uU2p2RnVNVkJyU0F3UGxZcDNyTzBnMTBPMkJ6OTBndGN6RHpYdFRqZ1Y2SzFIaHdzeEJQS3k2TmFjb0lKcVZMdlVPdXA4akRibHlsaVd1dXZBWUNyS1NXQlN4YUxVK2pOdGc9PSIsIm1hYyI6ImQyNmU2YmQ5OWU2NzQ5NTViYjQ2MDgzMzc3N2Q2ZjlhZjNkNGQyMzUzNzE4NDJkYzM2YzQyY2ZiMTA1ZmM1NzgiLCJ0YWciOiIifQ==', NULL, '1', '1'),
(7, '2023-10-28 11:08:05', '2023-10-28 11:08:05', NULL, NULL, 'donor', '22222222v', 'donor@d', 'male', 'married', '34', 'O+', '0789876789', '56/a, colombo 11', '156', '47', 'Western', 'Western', 7.10, 10.10, 'false', NULL, NULL, '1', '1'),
(8, '2023-10-29 09:14:25', '2023-10-29 09:15:47', NULL, NULL, 'donor', '22222222v', 'donor@d', 'female', 'married', '24', 'A+', '0789876890', 'dd,h', '160', '50', 'Western', 'Western', 7.09, 80.02, 'true', 'eyJpdiI6IlBaL1dlSlRSaDFBVGk5WlVZa1F5dlE9PSIsInZhbHVlIjoibHRGWWtiTC9pcnA4S0trWDQzRjdUN3VIcTh6a0lNYWpxME1RQ2pCb0JXaDF2U3lmb1hkSVZQbkwzUUNpYkN4M1ZpYW56ZElIOHhOdm9nR3JNRWpmQnNRL1BrcFlYYXZFRXBWTVY5VmNVT1RIT3hJZWQ0bndvQlJ2dW1FZTNkeDdmZHl0azdZcU5tMXpWRWE2UGl4SjNwZzYrWVMxVGJ3S1BhSCtmc0gwbDhERzdxd0Vhc3prSDB0MGFQU2t3Wjk3S25PN0xXcis4em0vd1hLZEc0MzdnclE1d2JQNkFJR1ZqQnZEZGliOEZ2UDlJa3lQTndVZmhGanFRN09hNzl0M2RTclVRclczMERZSnlUak1Kd1pNTjZuUlExbU9PVklsVmRVbXpnbkt0allPYVVRRCswVkNmZ0Y0V3ZsSFlTeGh5ZEl6SkE3YnFJcm9sajB4OVpVMkU0NFNDSXI3MEhISktvOUM5NlduSUsrcjM2MEhQd0k1cTBPOUpGcjRyWjk3SmFPR2M0NFNvcmplR2NZaHA0TGNXUmpVWmdCd1p3RHYvM3luZ1FJdEZCVEh1a3pvdXg2ZmtTMkRTejFWbVF0WGlHb0NwdURCWmxQdWx1OW5oTkU1b1E9PSIsIm1hYyI6Ijg5YmYzNDUwZDJmMzgyYzE4YTJkNDdlNzJmYzNjZTBlMzdiMjBhZWUwYjczYjI1ZWZlNjIzYzYzN2FiMWQ3NzEiLCJ0YWciOiIifQ==', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blood_camps`
--

CREATE TABLE `blood_camps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `hospital_id` text NOT NULL,
  `campuser_id` text DEFAULT NULL,
  `doctor_id` text DEFAULT NULL,
  `organizer_id` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_camps`
--

INSERT INTO `blood_camps` (`id`, `name`, `hospital_id`, `campuser_id`, `doctor_id`, `organizer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'or1camp', '1', '8', '10', '15', 'true', NULL, '2023-08-20 16:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `blood_camp_notifications`
--

CREATE TABLE `blood_camp_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` text DEFAULT NULL,
  `hostpital_id` text DEFAULT NULL,
  `hostpital` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_camp_notifications`
--

INSERT INTO `blood_camp_notifications` (`id`, `date`, `hostpital_id`, `hostpital`, `created_at`, `updated_at`) VALUES
(7, '2023-07-19 00:00:00', '1', 'kurunegala', NULL, NULL),
(8, '2023-07-06 00:00:00', '1', 'kurunegala', NULL, NULL),
(9, '2023-07-06 00:00:00', '6', 'Kandy', NULL, NULL),
(10, '2023-07-07 00:00:00', '1', 'kurunegala', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_camp_shadules`
--

CREATE TABLE `blood_camp_shadules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` text NOT NULL,
  `blood_camp_id` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_camp_shadules`
--

INSERT INTO `blood_camp_shadules` (`id`, `date`, `blood_camp_id`, `address`, `lat`, `lng`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-08-20T09:22:51.600Z', '1', 'sasds', 7.19455, 79.9573, 'true', NULL, '2023-08-20 17:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `blood_locations`
--

CREATE TABLE `blood_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital` text NOT NULL,
  `cluster` text NOT NULL,
  `district` text NOT NULL,
  `province` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_locations`
--

INSERT INTO `blood_locations` (`id`, `hospital`, `cluster`, `district`, `province`, `created_at`, `updated_at`) VALUES
(1, 'kurunegala', 'kurunegala', 'kurunegala', 'north western', NULL, NULL),
(2, 'Wariyapola', 'Kurunegala', 'Kurunegala', 'N W', NULL, NULL),
(3, 'Nikaweratiya', 'Kurunegala', 'Kurunegala', 'N W', NULL, NULL),
(5, 'Mawathagama', 'Wariyapola', 'Kurunegala', 'North Western', NULL, NULL),
(6, 'Kandy', 'Kandy', 'Kandy', 'Central', NULL, NULL),
(7, 'saadasd', 'Wariyapola', 'Kurunegala', 'North Western', NULL, NULL),
(8, 'asdasd', 'Nikaweratiya', 'Kurunegala', 'North Western', NULL, NULL),
(9, 'gampaha', 'gampaha', 'Colombo', 'North Western', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_share_fills`
--

CREATE TABLE `blood_share_fills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostpital_id` text DEFAULT NULL,
  `sharing_id` text DEFAULT NULL,
  `blood_donation_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_share_fills`
--

INSERT INTO `blood_share_fills` (`id`, `hostpital_id`, `sharing_id`, `blood_donation_id`, `created_at`, `updated_at`) VALUES
(4, '6', '2', '6', NULL, NULL),
(5, '6', '2', '7', NULL, NULL),
(6, '6', '2', '8', NULL, NULL),
(7, '1', '7', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_share_requests`
--

CREATE TABLE `blood_share_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostpital_id` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `blood_quntity` text DEFAULT NULL,
  `blood_type` text DEFAULT NULL,
  `hospital` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_share_requests`
--

INSERT INTO `blood_share_requests` (`id`, `hostpital_id`, `date`, `blood_quntity`, `blood_type`, `hospital`, `created_at`, `updated_at`) VALUES
(2, '1', '2023-07-06 00:00:00', '50', 'A+', 'kurunegala', NULL, NULL),
(3, '1', '2023-07-06 00:00:00', '20', 'AB-', 'kurunegala', NULL, NULL),
(4, '1', '2023-07-07 00:00:00', '500', 'A+', 'kurunegala', NULL, NULL),
(5, '1', '2023-07-07 00:00:00', '500', 'B+', 'kurunegala', NULL, NULL),
(6, '6', '2023-07-07 00:00:00', '50', 'b+', 'Kandy', NULL, NULL),
(7, '6', '2023-07-07 00:00:00', '200', 'A+', 'Kandy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_stroes`
--

CREATE TABLE `blood_stroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donated_date` text DEFAULT NULL,
  `expire_date` text DEFAULT NULL,
  `blood_type` text DEFAULT NULL,
  `blood_quntity` text DEFAULT NULL,
  `blood_verification` text DEFAULT NULL,
  `blood_state` text DEFAULT NULL,
  `Blood_share` text DEFAULT NULL,
  `current_hospital_id` text DEFAULT NULL,
  `hostpital_id` text DEFAULT NULL,
  `camp_id` text DEFAULT NULL,
  `doner_id` text DEFAULT NULL,
  `camp_shadule_id` text DEFAULT NULL,
  `doner_review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_stroes`
--

INSERT INTO `blood_stroes` (`id`, `donated_date`, `expire_date`, `blood_type`, `blood_quntity`, `blood_verification`, `blood_state`, `Blood_share`, `current_hospital_id`, `hostpital_id`, `camp_id`, `doner_id`, `camp_shadule_id`, `doner_review`, `created_at`, `updated_at`) VALUES
(1, '2023-07-01 15:45:58', '2023-06-01 15:45:58', 'A+', '10', 'verified', 'expired', 'fasle', '1', '1', '2', '1', '1', 'wow', NULL, '2023-07-01 13:48:48'),
(2, '2023-07-04 07:06:06', '2023-10-10', 'A+', '14', 'verified', 'active', 'fasle', '1', '1', '2', '1', '1', 'asdasd', NULL, '2023-07-04 22:51:40'),
(3, '2023-07-04 07:06:19', '2023-07-15 00:00:00', 'A+', '120', 'verified', 'active', 'true', '6', '1', '2', '1', '2', '1213', NULL, '2023-07-06 09:10:50'),
(4, '2023-07-04 17:45:46', '2023-07-27 00:00:00', 'A+', '50', 'pending', 'expired', 'fasle', '1', '1', '5', '1', '3', 'asdsadfas', NULL, '2023-08-20 16:09:40'),
(5, '2023-07-04 19:07:09', '2032-10-10', 'B+', '15', 'verified', 'active', 'fasle', '1', '1', '1', '1', '4', NULL, NULL, '2023-07-05 01:17:38'),
(6, '2023-07-06 08:56:19', NULL, 'A+', '75', 'verified', 'expired', 'true', '1', '6', '5', '1', '6', NULL, NULL, '2023-08-20 16:09:40'),
(7, '2023-07-06 08:56:37', NULL, 'A+', '60', 'verified', 'expired', 'true', '1', '6', '5', '1', '6', NULL, NULL, '2023-08-20 16:09:40'),
(8, '2023-07-06 08:56:46', NULL, 'A+', '45', 'verified', 'expired', 'true', '1', '6', '5', '1', '6', NULL, NULL, '2023-08-20 16:09:40'),
(9, '2023-07-06 14:37:38', NULL, 'B+', '120', 'pending', NULL, 'fasle', '1', '1', '5', '1', '3', NULL, NULL, NULL),
(10, '2023-07-06 15:24:54', NULL, 'A+', '1', 'pending', NULL, 'fasle', '1', '1', '5', '1', '3', NULL, NULL, NULL),
(11, '2023-07-08 05:58:19', NULL, NULL, NULL, 'pending', NULL, 'fasle', '1', '1', '1', '1', '3', 'asdasd', NULL, '2023-08-23 21:35:59'),
(12, '2023-08-27 11:27:44', NULL, 'A+', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL),
(13, '2023-08-27 11:38:53', '2023-12-27T06:08:53.000Z', 'A+', '1', 'verified', 'active', 'fasle', '1', '1', '1', '1', '1', NULL, NULL, '2023-08-27 06:09:26'),
(14, '2023-10-28 16:08:22', NULL, 'A+', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL),
(15, '2023-10-28 16:11:54', NULL, 'A+', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL),
(16, '2023-10-28 16:13:09', NULL, 'A+', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL),
(17, '2023-10-28 16:20:01', NULL, 'O+', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL),
(18, '2023-10-28 16:26:35', NULL, 'B-', '1', 'pending', NULL, 'fasle', '1', '1', '1', '1', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `bloodtype` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `hightm` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `bloodcamphelddate` text DEFAULT NULL,
  `bmiyn` int(11) DEFAULT NULL,
  `lastdonateddate` text DEFAULT NULL,
  `donerprovince` text DEFAULT NULL,
  `campheldprovinces` text DEFAULT NULL,
  `donatebloodtill2023` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `age`, `bloodtype`, `gender`, `hightm`, `weight`, `bmi`, `bloodcamphelddate`, `bmiyn`, `lastdonateddate`, `donerprovince`, `campheldprovinces`, `donatebloodtill2023`, `created_at`, `updated_at`) VALUES
(1, 30, 'B-', 'F', 1.86, 69, 19.9445, '10/15/2020', 1, '07/03/2018', '        Western', 'Western', 1, '2023-10-28 02:57:53', '2023-10-28 02:57:53'),
(2, 60, 'AB-', 'F', 1.86, 69, 19.9445, '10/15/2020', 1, '07/03/2018', '         Western', 'North Eastern', 1, '2023-10-28 02:57:53', '2023-10-28 02:57:53'),
(3, 10, 'AB-', 'F', 1.86, 69, 19.9445, '10/15/2020', 1, '07/03/2018', '         Western', 'North Western', 1, '2023-10-28 03:44:49', '2023-10-28 03:44:49'),
(4, 40, 'O-', 'F', 1.86, 69, 19.9445, '10/15/2020', 1, '07/03/2018', '         Western', 'Sabaragamuawa', 1, '2023-10-28 03:44:49', '2023-10-28 03:44:49'),
(5, 52, 'AB-', 'M', 1.84, 90, 26.5832, '10/15/2020', 0, '11/08/2019', '         Western', 'Northern', 1, '2023-10-28 11:00:45', '2023-10-28 11:00:45'),
(6, 40, 'B-', 'F', 1.86, 69, 19.9445, '10/15/2020', 1, '07/03/2018', '         Western', 'Eastern', 1, '2023-10-28 11:00:45', '2023-10-28 11:00:45'),
(7, 43, 'O+', 'F', 1.8, 83, 25.6173, '10/15/2020', 0, '11/16/2018', '         Western', 'Southern', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(8, 40, 'O+', 'F', 1.73, 55, 18.3768, '10/15/2020', 1, '07/01/2018', '         Western', 'Western', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(9, 38, 'O-', 'F', 1.87, 85, 24.3072, '10/15/2020', 0, '4/15/2018', 'Central', 'Central', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(10, 31, 'B+', 'M', 1.76, 69, 22.2753, '10/15/2020', 1, '8/17/2019', '          Uva', 'Eastern', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(11, 21, 'O+', 'F', 1.81, 81, 24.7245, '10/15/2020', 0, '12/18/2018', 'Southern', 'Southern', 0, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(12, 27, 'B-', 'F', 1.76, 67, 21.6296, '10/15/2020', 1, '9/26/2018', '         Western', 'Western', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(13, 50, 'B+', 'F', 1.84, 72, 21.2665, '10/15/2020', 1, '3/26/2018', '         Western', 'Western', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(14, 58, 'B+', 'M', 1.66, 86, 31.2092, '10/15/2020', 0, '8/16/2019', '         Western', 'Wstern', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(15, 55, 'B-', 'M', 1.68, 87, 30.8248, '10/15/2020', 0, '12/23/2019', '         Western', 'Western', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(16, 54, 'O-', 'M', 1.66, 86, 31.2092, '10/15/2020', 0, '11/14/2019', '         Western', 'Uva', 0, '2023-10-28 11:00:46', '2023-10-28 11:00:46'),
(17, 62, 'O+', 'F', 1.67, 88, 31.5537, '10/15/2020', 0, '6/24/2018', '         Western', 'Uva', 1, '2023-10-28 11:00:46', '2023-10-28 11:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `nic_number` text DEFAULT NULL,
  `gps` text DEFAULT NULL,
  `medical_data` text DEFAULT NULL,
  `sensitive_data` text DEFAULT NULL,
  `verification` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `user_id`, `name`, `nic_number`, `gps`, `medical_data`, `sensitive_data`, `verification`, `created_at`, `updated_at`) VALUES
(1, '7', 'donor', '22222222v', 'lata', '\'asdasd', 'wqdasqwd', 'true', NULL, '2023-07-06 10:20:04'),
(2, '26', 't', '998978978V', NULL, NULL, NULL, 'true', '2023-10-29 09:38:55', '2023-10-29 09:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE `master_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `col1` text DEFAULT NULL,
  `col2` text DEFAULT NULL,
  `col3` text DEFAULT NULL,
  `col4` text DEFAULT NULL,
  `col5` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `updated_at`) VALUES
(1, '{\"clusters\":[\"Wariyapola\",\"Nikaweratiya\",\"Mawathagama\",\"Kandy\",\"gampaha\"],\"districts\":[\"Kurunegala\",\"Kandy\",\"Colombo\"],\"provinces\":[\"North Western\",\"Central\"]}', '{nimesh:\'hi\'}', '{}', '{}', '{}', NULL, '2023-07-27 08:39:41'),
(1, '{\"clusters\":[\"Wariyapola\",\"Nikaweratiya\",\"Mawathagama\",\"Kandy\",\"gampaha\"],\"districts\":[\"Kurunegala\",\"Kandy\",\"Colombo\"],\"provinces\":[\"North Western\",\"Central\"]}', '{nimesh:\'hi\'}', '{}', '{}', '{}', NULL, '2023-07-27 08:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_30_144312_create_roles_table', 1),
(6, '2023_06_30_192758_create_master_data_table', 2),
(7, '2023_07_01_084443_create_blood_locations_table', 3),
(8, '2023_07_01_143722_create_blood_stroes_table', 4),
(12, '2014_10_12_000000_create_users_table', 5),
(16, '2023_07_02_053452_create_blood_camp_notifications_table', 8),
(17, '2023_07_02_055740_create_donors_table', 9),
(19, '2023_07_02_111737_create_blood_share_fills_table', 10),
(20, '2023_07_02_111723_create_blood_share_requests_table', 11),
(21, '2023_07_02_041627_create_blood_camps_table', 12),
(23, '2023_07_02_041742_create_blood_camp_shadules_table', 13),
(24, '2023_08_21_152017_create_appoiments_table', 14),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_30_144312_create_roles_table', 1),
(6, '2023_06_30_192758_create_master_data_table', 2),
(7, '2023_07_01_084443_create_blood_locations_table', 3),
(8, '2023_07_01_143722_create_blood_stroes_table', 4),
(12, '2014_10_12_000000_create_users_table', 5),
(16, '2023_07_02_053452_create_blood_camp_notifications_table', 8),
(17, '2023_07_02_055740_create_donors_table', 9),
(19, '2023_07_02_111737_create_blood_share_fills_table', 10),
(20, '2023_07_02_111723_create_blood_share_requests_table', 11),
(21, '2023_07_02_041627_create_blood_camps_table', 12),
(23, '2023_07_02_041742_create_blood_camp_shadules_table', 13),
(24, '2023_08_21_152017_create_appoiments_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-30 12:05:17', '2023-06-30 12:05:17'),
(2, 'doctor', '2023-06-30 12:05:37', '2023-06-30 12:05:37'),
(3, 'super_admin', '2023-07-03 12:19:02', '2023-07-03 12:19:02'),
(4, 'nurse', '2023-07-03 12:19:17', '2023-07-03 12:19:17'),
(5, 'consultant', '2023-07-03 12:19:52', '2023-07-03 12:19:52'),
(6, 'camp user', '2023-07-03 12:20:08', '2023-07-03 12:20:08'),
(7, 'doner', '2023-07-03 12:20:16', '2023-07-03 12:20:16'),
(8, 'organizer', NULL, NULL),
(1, 'admin', '2023-06-30 12:05:17', '2023-06-30 12:05:17'),
(2, 'doctor', '2023-06-30 12:05:37', '2023-06-30 12:05:37'),
(3, 'super_admin', '2023-07-03 12:19:02', '2023-07-03 12:19:02'),
(4, 'nurse', '2023-07-03 12:19:17', '2023-07-03 12:19:17'),
(5, 'consultant', '2023-07-03 12:19:52', '2023-07-03 12:19:52'),
(6, 'camp user', '2023-07-03 12:20:08', '2023-07-03 12:20:08'),
(7, 'doner', '2023-07-03 12:20:16', '2023-07-03 12:20:16'),
(8, 'organizer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(13, 3, 1),
(14, 6, 2),
(15, 6, 3),
(16, 6, 4),
(17, 7, 7),
(18, 6, 8),
(19, 5, 9),
(20, 2, 10),
(21, 4, 11),
(22, 6, 12),
(23, 1, 13),
(24, 1, 14),
(25, 4, 6),
(26, 8, 15),
(27, 7, 26);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `location` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `location`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'sa@sa', NULL, '$2y$10$XGREXBqebV1vIgFBzPcLKONllC3QuVoGClP/EBD/47oGp3eraALgS', 1, NULL, '2023-07-01 12:19:19', '2023-07-01 12:19:19'),
(7, 'donor', 'donor@d', NULL, '$2y$10$XGREXBqebV1vIgFBzPcLKONllC3QuVoGClP/EBD/47oGp3eraALgS', 1, NULL, '2023-07-04 01:19:09', '2023-07-05 22:40:59'),
(8, 'campuser', 'campuser@c', NULL, '$2y$10$aQAKuk1hWhu/pwo26XSQH.jlpYedyn9.iAlmf9knuCHYgHhjsXdvq', 1, NULL, '2023-07-04 08:24:04', '2023-07-04 08:24:18'),
(9, 'consultant', 'consultant@c', NULL, '$2y$10$MVhIbUjCkSHTikwf9kBZC.bQV2U.01nY5dQQToYgY82GpQ6gUdWiy', 1, NULL, '2023-07-04 21:36:25', '2023-07-04 21:36:41'),
(10, 'doctor', 'doctor@d', NULL, '$2y$10$/uLSSiPBuW6sCrnHj5d6ieiJMJ33fr6yJHE06A0civA0S5ASDEw9O', 1, NULL, '2023-07-05 00:41:51', '2023-07-06 09:09:53'),
(11, 'nurse', 'nurse@n', NULL, '$2y$10$JM/40WfIEFGnM1JFJvsAzOxJHYMyie.h5k4JltPpByiG6IucGKBtS', 1, NULL, '2023-07-05 01:24:41', '2023-07-05 01:24:58'),
(13, 'admin', 'admin@a', NULL, '$2y$10$KlVcbTjTx8VXWdt4I3HDgOy4kHcEXPWEbeMMrvWsXskhznc9W1OSK', 1, NULL, '2023-07-05 02:15:30', '2023-07-05 02:16:49'),
(14, 'admin2', 'admin2@a', NULL, '$2y$10$H8wMb9DhFDBntJVSIDXFP.ivmBG9vWmM9iAu6Qks46kmlPCBUeIRC', 6, NULL, '2023-07-06 02:40:17', '2023-07-06 02:40:42'),
(15, 'or1', 'o@o', NULL, '$2y$10$XGREXBqebV1vIgFBzPcLKONllC3QuVoGClP/EBD/47oGp3eraALgS', NULL, NULL, '2023-08-20 16:11:00', '2023-08-20 16:11:00'),
(16, 'qwe', 'qwe', NULL, '$2y$10$7JWxmMRF6AEG/NIUHcn9nut0VtCwp7eU62eMDcOlgyZTTOPFPmme.', NULL, NULL, '2023-10-29 02:41:07', '2023-10-29 02:41:07'),
(20, 'asdasd', 'as@asdasd', NULL, '$2y$10$eKuaghewlsJyFWyjrnpXHuyfwOI.nSpMjIPYkRLVjk2Le8dR1WzYa', NULL, NULL, '2023-10-29 02:48:10', '2023-10-29 02:48:10'),
(21, 'sadasd', 'asdasd', NULL, '$2y$10$jjP.o/NYKmmh9v4vt9uJseb8T6B3x6e6anxE8Z3azMpErS/zEAbuS', NULL, NULL, '2023-10-29 03:10:46', '2023-10-29 03:10:46'),
(22, 'asdasd', 'asd', NULL, '$2y$10$85LJEUpGGvLaCAoCFSp.Z.mNsF/fOjtSUAZ8od0AgDyR.8CCzY0Va', NULL, NULL, '2023-10-29 08:48:16', '2023-10-29 08:48:16'),
(25, 'asasd', 'adsasd@asda', NULL, '$2y$10$1nff6K/7ceSJcwP8LyPN5.VPWN7XfGJ8NfNpdvZggEk7RV/nLcr7m', NULL, NULL, '2023-10-29 09:30:58', '2023-10-29 09:30:58'),
(26, 't', 'thar@gmail.com', NULL, '$2y$10$SmrxS4f4t.etmQldevbReO1rnsCdh1Q224xBvMxxeglOCeto07awq', NULL, NULL, '2023-10-29 09:38:55', '2023-10-29 09:38:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoiments`
--
ALTER TABLE `appoiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_camps`
--
ALTER TABLE `blood_camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_camp_notifications`
--
ALTER TABLE `blood_camp_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_camp_shadules`
--
ALTER TABLE `blood_camp_shadules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_locations`
--
ALTER TABLE `blood_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_share_fills`
--
ALTER TABLE `blood_share_fills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_share_requests`
--
ALTER TABLE `blood_share_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_stroes`
--
ALTER TABLE `blood_stroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoiments`
--
ALTER TABLE `appoiments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_camps`
--
ALTER TABLE `blood_camps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_camp_notifications`
--
ALTER TABLE `blood_camp_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blood_camp_shadules`
--
ALTER TABLE `blood_camp_shadules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_locations`
--
ALTER TABLE `blood_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blood_share_fills`
--
ALTER TABLE `blood_share_fills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blood_share_requests`
--
ALTER TABLE `blood_share_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blood_stroes`
--
ALTER TABLE `blood_stroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
