-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2026 at 05:02 PM
-- Server version: 8.0.45-0ubuntu0.24.04.1
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_certificate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_zilla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_thana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_union` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_zilla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_thana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_union` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_zilla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_thana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_board` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_result_type` enum('GPA','CGPA','Division','Class') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GPA',
  `previous_passing_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_technology` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_exam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_registration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_roll` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ethnic_child` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `freedom_family` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `stipend` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `disability` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_paid` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `token`, `student_id`, `name_bangla`, `name_english`, `birth_certificate_number`, `birth_date`, `gender`, `father_bangla`, `father_english`, `father_nid`, `father_birth_date`, `father_mobile`, `mother_bangla`, `mother_english`, `mother_nid`, `mother_birth_date`, `mother_mobile`, `permanent_division`, `permanent_zilla`, `permanent_thana`, `permanent_union`, `permanent_post`, `permanent_address`, `current_division`, `current_zilla`, `current_thana`, `current_union`, `current_post`, `current_address`, `previous_division`, `previous_zilla`, `previous_thana`, `previous_institute`, `previous_board`, `previous_result_type`, `previous_passing_year`, `previous_technology`, `previous_exam`, `previous_registration`, `previous_roll`, `previous_result`, `guardian_relation`, `guardian_bangla`, `guardian_english`, `guardian_mobile`, `guardian_nid`, `guardian_birth_date`, `student_relation`, `ethnic_child`, `freedom_family`, `stipend`, `disability`, `photo`, `documents`, `status`, `is_paid`, `payment_id`, `updated_at`, `created_at`) VALUES
(1, '928n1lHm8J7Ffl', '1', 'Grant Cantu', 'Blake Snider', '814', '29-Jan-2003', 'women', 'Hakeem Moses', 'Cameron Vasquez', '290', '26-Jun-2007', '01892311511', 'Nehru Richards', 'Maggie David', '148', '05-Oct-2015', '445', 'Sylhet', 'Sylhet', 'Kanaighat', 'Digirpar Purbo', 'Suscipit ut harum no', 'Ut lorem impedit la', 'Dhaka', 'Madaripur', 'Kalkini', 'Ramjanpur', 'Aut qui consequatur ', 'Qui quia rerum tempo', 'Rajshahi', 'Bogura', 'Sherpur', 'Grady Sargent', 'Autem eveniet corpo', 'CGPA', '2005', 'Quia eu deserunt ull', 'Maite Noble', '895', 'Quod amet modi exer', 'Sunt animi repellen', 'brother', 'Davis Meyer', 'Karen Mcclain', '781', '998', '31-Oct-1970', 'guardian', 'yes', 'no', 'yes', 'no', '/public/resource/images/c68658b8fdf6770207b4cd72319de88d.png', '/public/resource/images/34a4c4cf176b90ea8d92b79a833a8fec.jpg', 'approved', '', NULL, '2026-03-09 16:19:37', '2023-11-23 13:31:08'),
(2, '09J6FGk5vIMEAJ_1676332561', '2', 'শিক্ষার্থীর নাম', 'শিক্ষার্থীর নাম', '295', '20-Sep-2016', 'women', 'পিতার নাম', 'Eos officia nesciun', 'In voluptatem Tempo', '20-Aug-2020', '01892311511', 'মাতার নাম ', 'Omnis consequatur E', 'Ab sunt in lorem ni', '18-Sep-2018', 'Velit temporibus qui', 'খুলনা', 'খুলনা', 'তেরখাদা', 'সাচিয়াদাহ', 'Et commodi ut eos a', 'Quidem non vel saepe', 'রংপুর', 'রংপুর', 'মিঠাপুকুর', 'চেংমারী', 'Eum omnis est occae', 'Ducimus et omnis nu', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'কমলনগর', 'Beatae eum animi ve', 'Reprehenderit minim ', 'CGPA', '1974', 'Quis laboris eiusmod', 'Soluta minima doloru', 'Dolores nulla quisqu', 'Occaecat sint ipsa ', 'Non repudiandae volu', 'others', 'Laboriosam quae off', 'Quibusdam ex est ull', 'Saepe vel ut ex at i', 'Et mollit voluptatib', '20-Jul-1979', 'mother', 'yes', 'yes', 'yes', 'yes', '/public/resource/images/bee5f6b7d06ea92bb5fbf05633ec440c.png', '/public/resource/images/3ebbb3d1ee664b2ff098b7f6aa181d87.png', 'pending', '', NULL, '2026-03-09 16:19:37', '2023-11-23 13:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','returned','canceled','accepted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_status` enum('completed','have_due','na') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'have_due',
  `advance_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(8,2) NOT NULL DEFAULT '1.00',
  `payment_method` enum('cash','check','online','exchange') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `supplier_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `canceled_by` bigint UNSIGNED DEFAULT NULL,
  `accepted_by` bigint UNSIGNED DEFAULT NULL,
  `returned_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `assigned_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Completed','Overdue') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `edu_class_id`, `subject_id`, `teacher_id`, `assigned_date`, `due_date`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Math Homework 1', 'Solve all exercises from Chapter 2', 1, 1, 3, '2025-10-14', '2025-10-20', NULL, 'Pending', NULL, NULL),
(2, 'English Essay', 'Write an essay on \"My Favorite Book\"', 1, 2, 2, '2025-10-14', '2025-10-21', NULL, 'Pending', NULL, NULL),
(3, 'Physics Lab Report', 'Complete the experiment report for experiment 3', 3, 3, 5, '2025-10-14', '2025-10-18', NULL, 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `class_room_id` bigint UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('Present','Absent','Late','Excused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Present',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `student_id`, `teacher_id`, `subject_id`, `edu_class_id`, `class_room_id`, `attendance_date`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, 1, '2025-10-14', 'Present', 'On time', NULL, NULL),
(2, 2, NULL, 2, 1, 1, '2025-10-14', 'Absent', 'Sick leave', NULL, NULL),
(3, 3, NULL, 3, 2, 2, '2025-10-14', 'Late', 'Arrived 10 minutes late', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('database','files','full') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `size` bigint DEFAULT NULL,
  `status` enum('pending','completed','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `book_shelf_id` bigint UNSIGNED DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_year` int DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `status` enum('available','unavailable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `category_id`, `book_shelf_id`, `isbn`, `publication_year`, `pages`, `summary`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 8, 1, NULL, '9780747532699', 1997, 223, 'The first book in the Harry Potter series.', 'available', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, '1984', 11, 3, NULL, '9780451524935', 1949, 328, 'A dystopian novel set in a totalitarian society.', 'available', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(3, 'Murder on the Orient Express', 9, 4, NULL, '9780007119318', 1934, 256, 'Detective Hercule Poirot investigates a murder on a train.', 'available', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fiction', 'Literary works invented by the imagination.', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 'Non-Fiction', 'Based on real events and facts.', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(3, 'Science Fiction', 'Fiction based on futuristic science and technology.', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(4, 'Mystery', 'Fiction dealing with the solution of a crime or unraveling secrets.', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(5, 'Biography', 'An account of someone’s life written by another person.', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_reservations`
--

CREATE TABLE `book_reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `reserved_at` date NOT NULL DEFAULT '2026-03-09',
  `expires_at` date DEFAULT NULL,
  `status` enum('active','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_reservations`
--

INSERT INTO `book_reservations` (`id`, `user_id`, `book_id`, `reserved_at`, `expires_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-03-09', '2026-03-16', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `book_shelves`
--

CREATE TABLE `book_shelves` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_shelves`
--

INSERT INTO `book_shelves` (`id`, `name`, `location`, `capacity`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shelf A', 'First Floor - Left Wing', 100, 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 'Shelf B', 'First Floor - Right Wing', 120, 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(3, 'Shelf C', 'Second Floor - Left Wing', 150, 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('educraft1772345679-cache-5c785c036466adea360111aa28563bfd556b5fba', 'i:2;', 1773075732),
('educraft1772345679-cache-5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1773075732;', 1773075732),
('educraft1772345679-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:54:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"manage_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"manage_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:18:\"manage_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"manage_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:16:\"manage_languages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:22:\"manage_database_backup\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:18:\"manage_departments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"manage_classes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"manage_subjects\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"manage_assignments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:15:\"manage_homework\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:14:\"manage_lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:15:\"manage_syllabus\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:15:\"manage_students\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:23:\"manage_class_promotions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:13:\"view_students\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"manage_attendance\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"view_attendance\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:10;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:12:\"manage_exams\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:20:\"manage_exam_subjects\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:16:\"manage_exam_fees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:18:\"manage_admit_cards\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:18:\"manage_mark_sheets\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:14:\"manage_results\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:12:\"view_results\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:4;i:2;i:5;i:3;i:10;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:11:\"manage_fees\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:14:\"manage_expense\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"manage_salary\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:19:\"manage_transactions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:20:\"view_finance_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:7;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:14:\"manage_library\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:20:\"manage_book_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:12:\"manage_books\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:12:\"view_library\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:16:\"manage_inventory\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"manage_supplier\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"manage_rooms\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:12:\"manage_pages\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:8;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"manage_posts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:8;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:15:\"manage_category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:8;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:13:\"manage_slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"manage_gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:8;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"manage_downloads\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"manage_menu_builder\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:10:\"manage_sms\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:12:\"manage_email\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"manage_notification\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:20:\"view_student_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:9;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:23:\"view_attendance_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:17:\"view_exam_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:9;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:20:\"view_library_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:14:\"view_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:7:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:9;i:6;i:10;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:12:\"view_profile\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:12:\"edit_profile\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}}s:5:\"roles\";a:10:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"teacher\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"staff\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"student\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:6:\"parent\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:10;s:1:\"b\";s:8:\"guardian\";s:1:\"c\";s:3:\"web\";}i:6;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"accountant\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:9:\"librarian\";s:1:\"c\";s:3:\"web\";}i:8;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:9:\"moderator\";s:1:\"c\";s:3:\"web\";}i:9;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:9:\"committee\";s:1:\"c\";s:3:\"web\";}}}', 1773161969);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'General', 'general', 'General purpose category', 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'Sports', 'sports', 'Sports-related category', 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(3, 'Football', 'football', 'All about football', 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `issue_date` date NOT NULL DEFAULT '2026-03-09',
  `expiry_date` date DEFAULT NULL,
  `status` enum('active','expired','revoked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `edu_class_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `user_id`, `issue_date`, `expiry_date`, `status`, `template`, `notes`, `created_at`, `updated_at`, `deleted_at`, `edu_class_id`) VALUES
(1, 'Completion Certificate', 1, '2026-03-09', '2027-03-09', 'active', 'default_template.pdf', 'Issued for completing the course successfully.', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL, NULL),
(2, 'Excellence Certificate', 1, '2026-03-09', NULL, 'active', 'excellence_template.pdf', 'Issued for outstanding performance.', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_promotions`
--

CREATE TABLE `class_promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `from_class_id` bigint UNSIGNED NOT NULL,
  `to_class_id` bigint UNSIGNED NOT NULL,
  `status` enum('Promoted','Failed','On Hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Promoted',
  `promotion_date` date DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` bigint NOT NULL,
  `capacity` int DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Lecture','Lab','Auditorium') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Lecture',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `code`, `capacity`, `location`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Room 101', 1001, 40, 'Main Building, 1st Floor', 'Lecture', NULL, NULL),
(2, 'Room 102', 1002, 35, 'Main Building, 1st Floor', 'Lecture', NULL, NULL),
(3, 'Lab 1', 1003, 25, 'Science Building, Ground Floor', 'Lab', NULL, NULL),
(4, 'Lab 2', 2001, 25, 'Science Building, 1st Floor', 'Lab', NULL, NULL),
(5, 'Auditorium', 2002, 200, 'Main Building', 'Auditorium', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` bigint UNSIGNED NOT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `edu_section_id` bigint UNSIGNED DEFAULT NULL,
  `edu_group_id` bigint UNSIGNED DEFAULT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `class_room_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `edu_class_id`, `edu_section_id`, `edu_group_id`, `subject_id`, `day`, `start_time`, `end_time`, `class_room_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, 'Monday', '09:00:00', '10:00:00', NULL, NULL, NULL),
(2, 1, NULL, NULL, 2, 'Monday', '10:15:00', '11:15:00', NULL, NULL, NULL),
(3, 2, NULL, NULL, 3, 'Tuesday', '09:00:00', '10:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','replied','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reply` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `reply`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Inquiry about library membership', 'Hello, I want to know more about your membership plans.', 'pending', NULL, '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 'Jane Smith', 'jane@example.com', 'Book request', 'Can you get a copy of \"The Great Gatsby\" for me?', 'pending', NULL, '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'af', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(2, 'Albania', 'al', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(3, 'Algeria', 'dz', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(4, 'American Samoa', 'as', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(5, 'Andorra', 'ad', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(6, 'Angola', 'ao', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(7, 'Anguilla', 'ai', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(8, 'Antarctica', 'aq', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(9, 'Antigua and Barbuda', 'ag', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(10, 'Argentina', 'ar', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(11, 'Armenia', 'am', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(12, 'Aruba', 'aw', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(13, 'Australia', 'au', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(14, 'Austria', 'at', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(15, 'Azerbaijan', 'az', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(16, 'Bahamas', 'bs', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(17, 'Bahrain', 'bh', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(18, 'Bangladesh', 'bd', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(19, 'Barbados', 'bb', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(20, 'Belarus', 'by', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(21, 'Belgium', 'be', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(22, 'Belize', 'bz', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(23, 'Benin', 'bj', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(24, 'Bermuda', 'bm', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(25, 'Bhutan', 'bt', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(26, 'Bolivia', 'bo', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(27, 'Bosnia and Herzegovina', 'ba', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(28, 'Botswana', 'bw', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(29, 'Brazil', 'br', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(30, 'British Indian Ocean Territory', 'io', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(31, 'Brunei', 'bn', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(32, 'Bulgaria', 'bg', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(33, 'Burkina Faso', 'bf', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(34, 'Burundi', 'bi', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(35, 'Cabo Verde', 'cv', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(36, 'Cambodia', 'kh', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(37, 'Cameroon', 'cm', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(38, 'Canada', 'ca', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(39, 'Cayman Islands', 'ky', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(40, 'Central African Republic', 'cf', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(41, 'Chad', 'td', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(42, 'Chile', 'cl', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(43, 'China', 'cn', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(44, 'Christmas Island', 'cx', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(45, 'Cocos (Keeling) Islands', 'cc', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(46, 'Colombia', 'co', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(47, 'Comoros', 'km', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(48, 'Congo (Brazzaville)', 'cg', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(49, 'Congo (Kinshasa)', 'cd', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(50, 'Cook Islands', 'ck', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(51, 'Costa Rica', 'cr', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(52, 'Côte d’Ivoire', 'ci', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(53, 'Croatia', 'hr', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(54, 'Cuba', 'cu', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(55, 'Curaçao', 'cw', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(56, 'Cyprus', 'cy', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(57, 'Czechia', 'cz', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(58, 'Denmark', 'dk', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(59, 'Djibouti', 'dj', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(60, 'Dominica', 'dm', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(61, 'Dominican Republic', 'do', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(62, 'Ecuador', 'ec', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(63, 'Egypt', 'eg', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(64, 'El Salvador', 'sv', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(65, 'Equatorial Guinea', 'gq', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(66, 'Eritrea', 'er', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(67, 'Estonia', 'ee', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(68, 'Eswatini', 'sz', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(69, 'Ethiopia', 'et', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(70, 'Falkland Islands', 'fk', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(71, 'Faroe Islands', 'fo', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(72, 'Fiji', 'fj', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(73, 'Finland', 'fi', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(74, 'France', 'fr', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(75, 'French Guiana', 'gf', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(76, 'French Polynesia', 'pf', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(77, 'Gabon', 'ga', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(78, 'Gambia', 'gm', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(79, 'Georgia', 'ge', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(80, 'Germany', 'de', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(81, 'Ghana', 'gh', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(82, 'Gibraltar', 'gi', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(83, 'Greece', 'gr', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(84, 'Greenland', 'gl', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(85, 'Grenada', 'gd', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(86, 'Guadeloupe', 'gp', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(87, 'Guam', 'gu', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(88, 'Guatemala', 'gt', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(89, 'Guinea', 'gn', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(90, 'Guinea-Bissau', 'gw', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(91, 'Guyana', 'gy', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(92, 'Haiti', 'ht', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(93, 'Honduras', 'hn', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(94, 'Hong Kong', 'hk', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(95, 'Hungary', 'hu', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(96, 'Iceland', 'is', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(97, 'India', 'in', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(98, 'Indonesia', 'id', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(99, 'Iran', 'ir', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(100, 'Iraq', 'iq', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(101, 'Ireland', 'ie', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(102, 'Israel', 'il', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(103, 'Italy', 'it', '2026-03-09 16:19:17', '2026-03-09 16:19:17'),
(104, 'Jamaica', 'jm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(105, 'Japan', 'jp', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(106, 'Jordan', 'jo', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(107, 'Kazakhstan', 'kz', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(108, 'Kenya', 'ke', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(109, 'Kiribati', 'ki', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(110, 'Kuwait', 'kw', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(111, 'Kyrgyzstan', 'kg', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(112, 'Laos', 'la', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(113, 'Latvia', 'lv', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(114, 'Lebanon', 'lb', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(115, 'Lesotho', 'ls', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(116, 'Liberia', 'lr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(117, 'Libya', 'ly', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(118, 'Liechtenstein', 'li', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(119, 'Lithuania', 'lt', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(120, 'Luxembourg', 'lu', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(121, 'Macau', 'mo', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(122, 'Madagascar', 'mg', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(123, 'Malawi', 'mw', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(124, 'Malaysia', 'my', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(125, 'Maldives', 'mv', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(126, 'Mali', 'ml', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(127, 'Malta', 'mt', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(128, 'Marshall Islands', 'mh', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(129, 'Martinique', 'mq', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(130, 'Mauritania', 'mr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(131, 'Mauritius', 'mu', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(132, 'Mayotte', 'yt', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(133, 'Mexico', 'mx', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(134, 'Micronesia', 'fm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(135, 'Moldova', 'md', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(136, 'Monaco', 'mc', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(137, 'Mongolia', 'mn', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(138, 'Montenegro', 'me', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(139, 'Montserrat', 'ms', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(140, 'Morocco', 'ma', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(141, 'Mozambique', 'mz', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(142, 'Myanmar', 'mm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(143, 'Namibia', 'na', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(144, 'Nauru', 'nr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(145, 'Nepal', 'np', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(146, 'Netherlands', 'nl', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(147, 'New Caledonia', 'nc', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(148, 'New Zealand', 'nz', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(149, 'Nicaragua', 'ni', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(150, 'Niger', 'ne', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(151, 'Nigeria', 'ng', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(152, 'North Korea', 'kp', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(153, 'North Macedonia', 'mk', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(154, 'Norway', 'no', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(155, 'Oman', 'om', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(156, 'Pakistan', 'pk', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(157, 'Palau', 'pw', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(158, 'Palestine', 'ps', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(159, 'Panama', 'pa', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(160, 'Papua New Guinea', 'pg', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(161, 'Paraguay', 'py', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(162, 'Peru', 'pe', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(163, 'Philippines', 'ph', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(164, 'Poland', 'pl', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(165, 'Portugal', 'pt', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(166, 'Puerto Rico', 'pr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(167, 'Qatar', 'qa', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(168, 'Romania', 'ro', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(169, 'Russia', 'ru', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(170, 'Rwanda', 'rw', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(171, 'Saint Kitts and Nevis', 'kn', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(172, 'Saint Lucia', 'lc', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(173, 'Saint Vincent and the Grenadines', 'vc', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(174, 'Samoa', 'ws', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(175, 'San Marino', 'sm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(176, 'Sao Tome and Principe', 'st', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(177, 'Saudi Arabia', 'sa', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(178, 'Senegal', 'sn', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(179, 'Serbia', 'rs', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(180, 'Seychelles', 'sc', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(181, 'Sierra Leone', 'sl', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(182, 'Singapore', 'sg', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(183, 'Sint Maarten', 'sx', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(184, 'Slovakia', 'sk', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(185, 'Slovenia', 'si', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(186, 'Solomon Islands', 'sb', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(187, 'Somalia', 'so', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(188, 'South Africa', 'za', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(189, 'South Korea', 'kr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(190, 'South Sudan', 'ss', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(191, 'Spain', 'es', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(192, 'Sri Lanka', 'lk', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(193, 'Sudan', 'sd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(194, 'Suriname', 'sr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(195, 'Sweden', 'se', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(196, 'Switzerland', 'ch', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(197, 'Syria', 'sy', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(198, 'Taiwan', 'tw', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(199, 'Tajikistan', 'tj', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(200, 'Tanzania', 'tz', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(201, 'Thailand', 'th', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(202, 'Timor-Leste', 'tl', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(203, 'Togo', 'tg', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(204, 'Tonga', 'to', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(205, 'Trinidad and Tobago', 'tt', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(206, 'Tunisia', 'tn', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(207, 'Turkey', 'tr', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(208, 'Turkmenistan', 'tm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(209, 'Tuvalu', 'tv', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(210, 'Uganda', 'ug', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(211, 'Ukraine', 'ua', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(212, 'United Arab Emirates', 'ae', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(213, 'United Kingdom', 'gb', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(214, 'United States', 'us', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(215, 'Uruguay', 'uy', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(216, 'Uzbekistan', 'uz', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(217, 'Vanuatu', 'vu', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(218, 'Vatican City', 'va', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(219, 'Venezuela', 've', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(220, 'Vietnam', 'vn', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(221, 'Yemen', 'ye', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(222, 'Zambia', 'zm', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(223, 'Zimbabwe', 'zw', '2026-03-09 16:19:18', '2026-03-09 16:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Science', 'SCI', 'Science Department', NULL, NULL),
(2, 'Arts', 'ART', 'Arts Department', NULL, NULL),
(3, 'Commerce', 'COM', 'Commerce & Business Studies', NULL, NULL),
(4, 'Computer Science', 'CSE', 'IT & Computer Studies', NULL, NULL),
(5, 'Administration', 'ADM', 'School Administration', NULL, NULL),
(6, 'Sports', 'SPT', 'Physical Education and Sports', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `category`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Principal', 'Academic', 'Senior', NULL, NULL),
(2, 'Vice Principal', 'Academic', 'Senior', NULL, NULL),
(3, 'Head Teacher', 'Academic', 'Senior', NULL, NULL),
(4, 'Senior Teacher', 'Academic', 'Senior', NULL, NULL),
(5, 'Assistant Teacher', 'Academic', 'Junior', NULL, NULL),
(6, 'Lecturer', 'Academic', 'N/A', NULL, NULL),
(7, 'Accountant', 'Administrative', 'Staff', NULL, NULL),
(8, 'Office Assistant', 'Administrative', 'Staff', NULL, NULL),
(9, 'Clerk', 'Administrative', 'Staff', NULL, NULL),
(10, 'Librarian', 'Support', 'Staff', NULL, NULL),
(11, 'Lab Assistant', 'Support', 'Staff', NULL, NULL),
(12, 'Security Guard', 'Support', 'Staff', NULL, NULL),
(13, 'Peon', 'Support', 'Staff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `bn_name`, `lat`, `lon`, `url`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(2, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(3, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(4, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(5, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(6, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(7, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(8, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(9, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(10, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(11, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(12, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(13, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(14, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(15, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(16, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(17, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(18, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(19, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(20, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(21, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(22, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(23, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(24, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(25, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(26, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(27, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(28, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(29, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(30, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(31, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(32, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(33, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(34, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(35, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(36, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(37, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(38, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(39, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(40, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(41, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(42, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(43, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(44, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(45, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(46, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(47, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(48, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(49, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(50, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(51, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(52, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(53, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(54, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(55, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(56, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(57, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(58, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(59, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(60, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(61, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(62, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(63, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(64, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd', '2026-03-09 16:19:18', '2026-03-09 16:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `edu_classes`
--

CREATE TABLE `edu_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edu_classes`
--

INSERT INTO `edu_classes` (`id`, `name`, `section`, `order`, `capacity`, `total`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Class 1', 'A', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Class 2', 'A', 2, NULL, NULL, NULL, NULL, NULL),
(3, 'Class 3', 'A', 3, NULL, NULL, NULL, NULL, NULL),
(4, 'Class 4', 'A', 4, NULL, NULL, NULL, NULL, NULL),
(5, 'Class 5', 'A', 5, NULL, NULL, NULL, NULL, NULL),
(6, 'Class 6', 'Science', 6, NULL, NULL, NULL, NULL, NULL),
(7, 'Class 7', 'Science', 7, NULL, NULL, NULL, NULL, NULL),
(8, 'Class 8', 'Commerce', 8, NULL, NULL, NULL, NULL, NULL),
(9, 'Class 9', 'Arts', 9, NULL, NULL, NULL, NULL, NULL),
(10, 'Class 10', 'Science', 10, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `edu_groups`
--

CREATE TABLE `edu_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `edu_section_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edu_sections`
--

CREATE TABLE `edu_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Holiday','Meeting','Exam','Workshop','Other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Other',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `location`, `type`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'Annual Sports Day', 'Inter-class sports competition', '2025-01-20', '2025-01-20', 'School Playground', 'Holiday', 1, NULL, NULL),
(2, 'Parent-Teacher Meeting', 'Monthly academic progress discussion', '2025-02-05', '2025-02-05', 'Main Hall', 'Meeting', 0, NULL, NULL),
(3, 'Mid-Term Examination', 'Exams for all classes', '2025-03-01', '2025-03-10', 'Classrooms', 'Exam', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_type` enum('GPA','CGPA') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GPA',
  `year` year NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `status` enum('Scheduled','Completed','Canceled','Ongoing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Scheduled',
  `type` enum('Class Test','Mid-Term','Final','Quiz','Practical','Other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Other',
  `result` enum('publish','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'private',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `code`, `grade_type`, `year`, `session`, `edu_class_id`, `status`, `type`, `result`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mid Term', 'MID2025-C1', 'GPA', '2025', '2024-2025', 1, 'Scheduled', 'Mid-Term', 'private', NULL, NULL, NULL, NULL, NULL),
(2, 'Final Exam', 'FIN2025-C1', 'GPA', '2025', '2024-2025', 1, 'Scheduled', 'Final', 'private', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_admit_cards`
--

CREATE TABLE `exam_admit_cards` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `status` enum('Issued','Pending','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Issued',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_admit_cards`
--

INSERT INTO `exam_admit_cards` (`id`, `exam_id`, `student_id`, `issue_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2025-10-25', 'Issued', NULL, NULL),
(2, 1, NULL, '2025-10-25', 'Issued', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_fees`
--

CREATE TABLE `exam_fees` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `late_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_date` date DEFAULT NULL,
  `status` enum('Active','Inactive','Terminate') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_fees`
--

INSERT INTO `exam_fees` (`id`, `exam_id`, `amount`, `late_fee`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 500.00, 100.00, '2025-10-30', 'Active', NULL, NULL),
(2, 1, 600.00, 150.00, '2025-10-30', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_marksheets`
--

CREATE TABLE `exam_marksheets` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `total_marks_obtained` int NOT NULL DEFAULT '0',
  `total_full_marks` int NOT NULL DEFAULT '0',
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `grade` enum('A','A+','A-','B','B+','B-','C','D','F') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'B',
  `grade_type` enum('CGPA','GPA','CLASS') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GPA',
  `is_passed` tinyint(1) NOT NULL DEFAULT '1',
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Draft','Published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_marksheet_items`
--

CREATE TABLE `exam_marksheet_items` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_marksheet_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `mcq_marks` int NOT NULL DEFAULT '0',
  `writing_marks` int NOT NULL DEFAULT '0',
  `practical_marks` int NOT NULL DEFAULT '0',
  `attendance_marks` int NOT NULL DEFAULT '0',
  `obtain_marks` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_marks` int NOT NULL DEFAULT '0',
  `grade_point` decimal(8,2) NOT NULL DEFAULT '0.00',
  `grade_type` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_passed` tinyint(1) NOT NULL DEFAULT '1',
  `grade` enum('A','A+','A-','B','B+','B-','C','D','F') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'B',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `passed` int DEFAULT NULL,
  `failed` int DEFAULT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('published','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'private',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `exam_id`, `passed`, `failed`, `percentage`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'published', 'Excellent performance', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 1, NULL, NULL, NULL, 'private', 'Needs improvement', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subjects`
--

CREATE TABLE `exam_subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `class_room_id` bigint UNSIGNED DEFAULT NULL,
  `exam_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `credit_hours` decimal(8,2) NOT NULL DEFAULT '1.00',
  `mcq_marks` int NOT NULL DEFAULT '0',
  `writing_marks` int NOT NULL DEFAULT '0',
  `practical_marks` int NOT NULL DEFAULT '0',
  `attendance_marks` int NOT NULL DEFAULT '0',
  `obtain_marks` decimal(8,2) NOT NULL DEFAULT '0.00',
  `pass_marks` decimal(8,2) NOT NULL DEFAULT '40.00',
  `total_marks` int NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_subjects`
--

INSERT INTO `exam_subjects` (`id`, `exam_id`, `subject_id`, `class_room_id`, `exam_date`, `start_time`, `end_time`, `credit_hours`, `mcq_marks`, `writing_marks`, `practical_marks`, `attendance_marks`, `obtain_marks`, `pass_marks`, `total_marks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-03-01', '10:00:00', '12:00:00', 1.00, 20, 60, 10, 10, 0.00, 40.00, 100, NULL, NULL),
(2, 1, 2, 1, '2025-03-02', '10:00:00', '12:00:00', 1.00, 25, 50, 15, 10, 0.00, 40.00, 100, NULL, NULL),
(3, 2, 3, NULL, '2025-04-01', '09:00:00', '11:00:00', 1.00, 30, 50, 10, 10, 0.00, 40.00, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `expense_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_head_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_heads`
--

CREATE TABLE `expense_heads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_recurring` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` bigint UNSIGNED NOT NULL,
  `fee_id` bigint UNSIGNED DEFAULT NULL,
  `total_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(8,2) NOT NULL DEFAULT '1.00',
  `payment_method` enum('Online','Cash','Check','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date NOT NULL,
  `collected_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` bigint UNSIGNED NOT NULL,
  `fee_group_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_recurring` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Video','Image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Image',
  `status` enum('Public','Private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_contents`
--

CREATE TABLE `gallery_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `status` enum('Public','Private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `gallery_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateway_configurations`
--

CREATE TABLE `gateway_configurations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('payment','sms') COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` json NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holydays`
--

CREATE TABLE `holydays` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `is_national` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holydays`
--

INSERT INTO `holydays` (`id`, `title`, `description`, `start_date`, `end_date`, `is_national`, `created_at`, `updated_at`) VALUES
(1, 'Independence Day', 'National holiday', '2025-03-26', '2025-03-27', 1, NULL, NULL),
(2, 'Eid-ul-Fitr', 'Religious holiday', '2025-04-12', '2025-04-14', 1, NULL, NULL),
(3, 'Summer Vacation', 'School summer break', '2025-06-01', '2025-06-30', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installed_modules`
--

CREATE TABLE `installed_modules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `due_date` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `user_id`, `amount`, `status`, `due_date`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INV-77OS3F', 1, 150.00, 'pending', '2026-03-16', 'Library membership fee', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 'INV-T6XV6M', 1, 75.50, 'paid', '2026-03-12', 'Book late return fine', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `is_active`) VALUES
(1, 'en', 'English', 1),
(2, 'bn', 'বাংলা', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_management`
--

CREATE TABLE `leave_management` (
  `id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` bigint UNSIGNED DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaved_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'header', 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` enum('_self','_blank') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `attributes` enum('page','url') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `attributes`, `route_name`, `parent_id`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', '/', '_self', 'page', NULL, NULL, 1, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 1, 'Courses', '/courses', '_self', 'page', NULL, NULL, 2, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(3, 1, 'Web Development', '/courses/web', '_self', 'page', NULL, 2, 1, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(4, 1, 'Graphic Design', '/courses/design', '_self', 'page', NULL, 2, 2, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(5, 1, 'About Us', '/about', '_self', 'page', NULL, NULL, 3, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(6, 1, 'Contact', '/contact', '_self', 'page', NULL, NULL, 4, 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_00_00_000000_create_designations_table', 1),
(2, '0001_01_00_000000_create_divisions_table', 1),
(3, '0001_01_01_000000_create_districts_table', 1),
(4, '0001_01_01_000000_create_thanas_table', 1),
(5, '0001_01_01_000000_create_unions_table', 1),
(6, '0001_01_01_000000_create_users_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '2025_10_14_062656_create_departments_table', 1),
(10, '2025_10_14_063122_create_edu_classes_table', 1),
(11, '2025_10_14_063124_create_student_profiles_table', 1),
(12, '2025_10_14_063125_create_class_promotions_table', 1),
(13, '2025_10_14_063407_create_events_table', 1),
(14, '2025_10_14_063421_create_holydays_table', 1),
(15, '2025_10_14_063441_create_subjects_table', 1),
(16, '2025_10_14_063442_create_class_rooms_table', 1),
(17, '2025_10_14_063449_create_class_routines_table', 1),
(18, '2025_10_14_063525_create_attendances_table', 1),
(19, '2025_10_14_063535_create_assignments_table', 1),
(20, '2025_10_14_063750_create_exams_table', 1),
(21, '2025_10_14_063755_create_exam_subjects_table', 1),
(22, '2025_10_14_063758_create_exam_fees_table', 1),
(23, '2025_10_14_063813_create_exam_admit_cards_table', 1),
(24, '2025_10_14_064017_create_exam_marksheets_table', 1),
(25, '2025_10_14_064023_create_exam_marksheet_items_table', 1),
(26, '2025_10_14_064027_create_exam_results_table', 1),
(27, '2025_10_14_064111_create_news_notices_table', 1),
(28, '2025_10_14_064124_create_notifications_table', 1),
(29, '2025_10_14_064150_create_categories_table', 1),
(30, '2025_10_14_064256_create_posts_table', 1),
(31, '2025_10_14_064408_create_profiles_table', 1),
(32, '2025_10_14_064544_create_admissions_table', 1),
(33, '2025_10_14_064844_create_book_shelves_table', 1),
(34, '2025_10_14_065107_create_book_categories_table', 1),
(35, '2025_10_14_065114_create_books_table', 1),
(36, '2025_10_14_065350_create_book_reservations_table', 1),
(37, '2025_10_14_065521_create_sliders_table', 1),
(38, '2025_10_14_065530_create_slider_contents_table', 1),
(39, '2025_10_14_065616_create_invoices_table', 1),
(40, '2025_10_14_065632_create_transactions_table', 1),
(41, '2025_10_14_065705_create_salaries_table', 1),
(42, '2025_10_14_065956_create_pages_table', 1),
(43, '2025_10_14_070007_create_contacts_table', 1),
(44, '2025_10_14_070048_create_backups_table', 1),
(45, '2025_10_14_070124_create_gateway_configurations_table', 1),
(46, '2025_10_14_070243_create_certificates_table', 1),
(47, '2025_10_18_191437_create_site_settings_table', 1),
(48, '2025_10_18_203514_create_languages_table', 1),
(49, '2025_10_20_151144_create_menus_table', 1),
(50, '2025_10_20_151408_create_menu_items_table', 1),
(51, '2025_10_20_155837_add_column_to_menu_items_table', 1),
(52, '2025_11_18_061256_add_column_to_site_settings_table', 1),
(53, '2025_11_19_081159_add_column_to_site_settings_table', 1),
(54, '2025_11_19_100651_add_column_to_menus_table', 1),
(55, '2025_11_20_151944_add_column_to_menu_items_table', 1),
(56, '2025_12_22_075714_add_column_to_sliders_table', 1),
(57, '2025_12_22_222353_create_permission_tables', 1),
(58, '2026_01_07_185420_add_column_to_certificates_table', 1),
(59, '2026_01_07_191123_add_column_to_student_profiles_table', 1),
(60, '2026_01_08_015708_add_column_to_exam_marksheet_items', 1),
(61, '2026_01_11_011038_add_column_to_site_settings_table', 1),
(62, '2026_01_12_000145_create_sms_methods_table', 1),
(63, '2026_01_12_000149_create_sms_active_methods_table', 1),
(64, '2026_01_16_215311_create_suppliers_table', 1),
(65, '2026_01_16_215404_create_assets_table', 1),
(66, '2026_01_16_221900_add_column_to_assets_table', 1),
(67, '2026_01_18_103015_create_staff_attendances_table', 1),
(68, '2026_01_18_141459_create_leave_management_table', 1),
(69, '2026_01_18_160249_create_fee_heads_table', 1),
(70, '2026_01_18_160914_create_student_fees_table', 1),
(71, '2026_01_18_161452_create_fee_collections_table', 1),
(72, '2026_01_18_162004_create_expense_heads_table', 1),
(73, '2026_01_18_162431_create_expenses_table', 1),
(74, '2026_01_20_095900_create_fee_groups_table', 1),
(75, '2026_01_20_095957_add_column_to_fee_heads_table', 1),
(76, '2026_01_20_163548_create_edu_sections_table', 1),
(77, '2026_01_20_163558_create_edu_groups_table', 1),
(78, '2026_01_20_164904_add_column_to_student_fees_table', 1),
(79, '2026_01_20_165653_add_column_to_student_profiles_table', 1),
(80, '2026_01_21_012334_update_student_id_foreign_in_exam_admit_cards_table', 1),
(81, '2026_01_22_102911_add_column_to_student_fees_table', 1),
(82, '2026_01_22_113914_add_column_to_fee_collections_table', 1),
(83, '2026_01_22_114741_add_column_to_student_fees_table', 1),
(84, '2026_01_25_182631_add_column_to_class_routines_table', 1),
(85, '2026_01_26_012250_add_column_to_expense_heads_tables', 1),
(86, '2026_01_26_013709_add_column_to_student_profiles_table', 1),
(87, '2026_01_26_014104_add_column_to_student_fees_table', 1),
(88, '2026_01_26_025114_add_column_to_exam_subjects_table', 1),
(89, '2026_01_26_031220_add_column_to_exam_subjects_table', 1),
(90, '2026_01_26_101301_add_column_to_exam_marksheet_items_table', 1),
(91, '2026_01_26_113323_add_column_to_exams_table', 1),
(92, '2026_01_26_132440_add_column_to_exam_marksheets_table', 1),
(93, '2026_01_27_012747_create_galleries_table', 1),
(94, '2026_01_27_012755_create_gallery_contents_table', 1),
(95, '2026_01_28_182516_create_personal_access_tokens_table', 1),
(96, '2026_02_02_120606_add_column_to_site_settings_table', 1),
(97, '2026_02_05_193443_create_countries_table', 1),
(98, '2026_02_05_193937_add_column_to_site_settings_table', 1),
(99, '2026_02_09_174522_add_column_to_site_settings_table', 1),
(100, '2026_02_13_194536_add_column_to_leave_management_table', 1),
(101, '2026_02_13_202213_drop_user_id_from_leave_management_table', 1),
(102, '2026_02_13_203836_add_column_to_leave_management_table', 1),
(103, '2026_02_28_221411_create_installed_modules_table', 1),
(104, '2026_03_09_203740_add_column_to_site_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_notices`
--

CREATE TABLE `news_notices` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` enum('news','notice','event') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'news',
  `publish_date` date DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_notices`
--

INSERT INTO `news_notices` (`id`, `title`, `description`, `type`, `publish_date`, `attachment`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'School Reopening Announcement', 'The school will reopen on 1st November as per government guidelines.', 'notice', '2026-03-09', NULL, 'published', 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'Sports Week Event', 'Annual sports week will be held from 10th to 15th December.', 'news', '2026-03-09', NULL, 'published', 1, '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` bigint UNSIGNED DEFAULT NULL,
  `parent_model_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `student_id`, `parent_model_id`, `title`, `message`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Welcome to the platform!', 'Your account has been successfully created.', '/dashboard', 0, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 2, NULL, NULL, 'New Notice Published', 'A new school notice has been posted. Check it out!', '/news-notices/1', 0, '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'About Us', 'about-us', '<p>Welcome to our library. We offer a wide range of books and resources.</p>', 'About Our Library', 'Learn more about our library and services.', 'published', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 'Contact', 'contact', '<p>Contact us at contact@library.com or call +123456789.</p>', 'Contact Us', 'Get in touch with our library team.', 'published', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(3, 'Privacy Policy', 'privacy-policy', '<p>This is our privacy policy page.</p>', 'Privacy Policy', 'Read our privacy policy.', 'published', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_users', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'manage_roles', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(3, 'manage_permissions', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(4, 'manage_settings', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(5, 'manage_languages', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(6, 'manage_database_backup', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(7, 'manage_departments', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(8, 'manage_classes', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(9, 'manage_subjects', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(10, 'manage_assignments', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(11, 'manage_homework', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(12, 'manage_lessons', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(13, 'manage_syllabus', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(14, 'manage_students', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(15, 'manage_class_promotions', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(16, 'view_students', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(17, 'manage_attendance', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(18, 'view_attendance', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(19, 'manage_exams', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(20, 'manage_exam_subjects', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(21, 'manage_exam_fees', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(22, 'manage_admit_cards', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(23, 'manage_mark_sheets', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(24, 'manage_results', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(25, 'view_results', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(26, 'manage_fees', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(27, 'manage_expense', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(28, 'manage_salary', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(29, 'manage_transactions', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(30, 'view_finance_reports', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(31, 'manage_library', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(32, 'manage_book_category', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(33, 'manage_books', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(34, 'view_library', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(35, 'manage_inventory', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(36, 'manage_supplier', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(37, 'manage_rooms', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(38, 'manage_pages', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(39, 'manage_posts', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(40, 'manage_category', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(41, 'manage_slider', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(42, 'manage_gallery', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(43, 'manage_downloads', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(44, 'manage_menu_builder', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(45, 'manage_sms', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(46, 'manage_email', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(47, 'manage_notification', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(48, 'view_student_reports', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(49, 'view_attendance_reports', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(50, 'view_exam_reports', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(51, 'view_library_reports', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(52, 'view_dashboard', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(53, 'view_profile', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(54, 'edit_profile', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `content`, `category_id`, `user_id`, `thumbnail`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Our Platform', 'welcome-to-our-platform', 'This is the first official post on our platform.', 'Thank you for joining us! This post announces the beginning of something great.', 1, 1, NULL, 'published', '2026-03-09 16:19:37', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'Maintenance Scheduled', 'maintenance-scheduled', 'Scheduled maintenance will occur this weekend.', 'Please be advised that the system will be down between 2 AM - 4 AM for routine maintenance.', 1, 1, NULL, 'published', '2026-03-09 16:19:37', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `avatar`, `first_name`, `last_name`, `phone`, `gender`, `date_of_birth`, `address`, `city`, `state`, `country`, `post`, `village`, `blood_group`, `religion`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'John', 'Doe', '1234567890', 'male', '1990-05-15', '123 Main Street', 'Dhaka', 'Dhaka', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, 'Jane', 'Smith', '0987654321', 'female', '1995-07-20', '456 College Road', 'Chittagong', 'Chittagong', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'teacher', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(3, 'staff', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(4, 'student', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(5, 'parent', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(6, 'librarian', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(7, 'accountant', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(8, 'moderator', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(9, 'committee', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(10, 'guardian', 'web', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(10, 2),
(11, 2),
(17, 2),
(19, 2),
(24, 2),
(48, 2),
(52, 2),
(54, 2),
(14, 3),
(17, 3),
(48, 3),
(52, 3),
(54, 3),
(18, 4),
(25, 4),
(52, 4),
(53, 4),
(18, 5),
(25, 5),
(52, 5),
(31, 6),
(32, 6),
(33, 6),
(51, 6),
(26, 7),
(27, 7),
(28, 7),
(29, 7),
(30, 7),
(38, 8),
(39, 8),
(40, 8),
(42, 8),
(48, 9),
(50, 9),
(52, 9),
(18, 10),
(25, 10),
(52, 10);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `basic` decimal(10,2) NOT NULL,
  `allowance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `status` enum('pending','paid','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `basic`, `allowance`, `deduction`, `total`, `payment_date`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 50000.00, 5000.00, 2000.00, 53000.00, '2026-03-09', 'paid', 'Monthly salary for October', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 1, 50000.00, 4500.00, 1500.00, 53000.00, '2026-02-09', 'paid', 'Monthly salary for September', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kN7vT8PtSI3VeLaMDiWpdGNeKbQ0dLoUpx9UyQvz', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:147.0) Gecko/20100101 Firefox/147.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVhhVkJ3Y0d4Qko0QmR6NW5QbVNvMWxCNVJnQmtRMnpkN0JYc3pZayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnN0YWxsIjtzOjU6InJvdXRlIjtzOjEyOiJpbnN0YWxsLmluaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1773075724);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `thana_id` bigint UNSIGNED DEFAULT NULL,
  `union_id` bigint UNSIGNED DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gov_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establish_date` date DEFAULT NULL,
  `maintenance` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekend` json DEFAULT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navbar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `logo`, `favicon`, `theme`, `contact_email`, `contact_phone`, `post`, `country_id`, `division_id`, `district_id`, `thana_id`, `union_id`, `name_bn`, `code`, `gov_id`, `establish_date`, `maintenance`, `address`, `weekend`, `map`, `header_color`, `navbar_color`, `text_color`, `footer_color`, `sidebar_color`, `auth_bg_image`, `set_timezone`, `social_links`, `created_at`, `updated_at`) VALUES
(1, 'EduCraft Learning Master', 'uploads/logo.png', 'uploads/favicon.ico', 'default', 'abdursoft@gmail.com', '+880192311511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '123 Main Street, City, Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"twitter\": \"https://twitter.com/example\", \"facebook\": \"https://facebook.com/example\", \"instagram\": \"https://instagram.com/example\"}', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `shortcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `type`, `status`, `shortcode`, `created_at`, `updated_at`, `page_id`, `post_id`) VALUES
(1, 'Homepage Slider', 'image', 'active', 'k556mUos', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL, NULL),
(2, 'Promo Video Slider', 'video', 'active', 'kNyvoCbd', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider_contents`
--

CREATE TABLE `slider_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `slider_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `media_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_contents`
--

INSERT INTO `slider_contents` (`id`, `slider_id`, `title`, `description`, `media_url`, `type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Welcome to Our Library', 'Discover new books and resources.', 'sliders/slider1.jpg', 'image', 1, 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL),
(2, 1, 'Join Our Membership', 'Get access to exclusive content.', 'sliders/slider2.mp4', 'video', 2, 'active', '2026-03-09 16:19:37', '2026-03-09 16:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_active_methods`
--

CREATE TABLE `sms_active_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `sms_type` enum('sms','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `sms_method_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_methods`
--

CREATE TABLE `sms_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_methods`
--

INSERT INTO `sms_methods` (`id`, `name`, `keyword`, `attributes`, `created_at`, `updated_at`) VALUES
(1, 'Email', 'email', '\"[{\\\"code\\\":\\\"host\\\",\\\"name\\\":\\\"Email Host\\\",\\\"value\\\":null},{\\\"code\\\":\\\"username\\\",\\\"name\\\":\\\"Email Username\\\",\\\"value\\\":null},{\\\"code\\\":\\\"password\\\",\\\"name\\\":\\\"Email password\\\",\\\"value\\\":null},{\\\"code\\\":\\\"port\\\",\\\"name\\\":\\\"Server PORT\\\",\\\"value\\\":null},{\\\"code\\\":\\\"from\\\",\\\"name\\\":\\\"From Address\\\",\\\"value\\\":null},{\\\"code\\\":\\\"app\\\",\\\"name\\\":\\\"App Name\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 'BulksmsBD', 'bulksmsbd', '\"[{\\\"code\\\":\\\"api_key\\\",\\\"name\\\":\\\"API KEY\\\",\\\"value\\\":null},{\\\"code\\\":\\\"senderid\\\",\\\"name\\\":\\\"Sender ID\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(3, 'Nexmo', 'nexMo', '\"[{\\\"code\\\":\\\"api_key\\\",\\\"name\\\":\\\"API KEY\\\",\\\"value\\\":null},{\\\"code\\\":\\\"api_secret\\\",\\\"name\\\":\\\"API SECRET\\\",\\\"value\\\":null},{\\\"code\\\":\\\"from\\\",\\\"name\\\":\\\"FROM\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(4, 'Twilio', 'twilio', '\"[{\\\"code\\\":\\\"sid\\\",\\\"name\\\":\\\"SID\\\",\\\"value\\\":null},{\\\"code\\\":\\\"token\\\",\\\"name\\\":\\\"TOKEN\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(5, 'SSL Wireless', 'ssl_wireless', '\"[{\\\"code\\\":\\\"api_token\\\",\\\"name\\\":\\\"API TOKEN\\\",\\\"value\\\":null},{\\\"code\\\":\\\"sid\\\",\\\"name\\\":\\\"SID\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(6, 'Mim SMS', 'mim_sms', '\"[{\\\"code\\\":\\\"username\\\",\\\"name\\\":\\\"USERNAME\\\",\\\"value\\\":null},{\\\"code\\\":\\\"api_key\\\",\\\"name\\\":\\\"API KEY\\\",\\\"value\\\":null},{\\\"code\\\":\\\"campaign_id\\\",\\\"name\\\":\\\"CAMPAIGN ID\\\",\\\"value\\\":null},{\\\"code\\\":\\\"transaction_type\\\",\\\"name\\\":\\\"TRANSACTION TYPE\\\",\\\"value\\\":null},{\\\"code\\\":\\\"sender_name\\\",\\\"name\\\":\\\"SENDER NAME\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(7, 'MSEGAT', 'mse_gat', '\"[{\\\"code\\\":\\\"api_key\\\",\\\"name\\\":\\\"API KEY\\\",\\\"value\\\":null},{\\\"code\\\":\\\"username\\\",\\\"name\\\":\\\"USERNAME\\\",\\\"value\\\":null},{\\\"code\\\":\\\"user_sender\\\",\\\"name\\\":\\\"USER SENDER\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(8, 'Sparrow', 'sparrow', '\"[{\\\"code\\\":\\\"from\\\",\\\"name\\\":\\\"FROM\\\",\\\"value\\\":null},{\\\"code\\\":\\\"token\\\",\\\"name\\\":\\\"TOKEN\\\",\\\"value\\\":null}]\"', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendances`
--

CREATE TABLE `staff_attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attendance_by` bigint UNSIGNED NOT NULL,
  `attendance_edited_by` bigint UNSIGNED DEFAULT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('Present','Absent','Late','Excused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Present',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `waiver` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` enum('Due','Paid','Partial') COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `fee_head_id` bigint UNSIGNED DEFAULT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `edu_section_id` bigint UNSIGNED DEFAULT NULL,
  `edu_group_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `student_profile_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_roll` bigint NOT NULL DEFAULT '0',
  `age` int DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Regular','Irregular') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Regular',
  `dob` date DEFAULT NULL,
  `edu_section_id` bigint UNSIGNED DEFAULT NULL,
  `edu_group_id` bigint UNSIGNED DEFAULT NULL,
  `fa_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fa_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fa_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fa_nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fa_dob` date DEFAULT NULL,
  `mo_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mo_dob` date DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `thana_id` bigint UNSIGNED DEFAULT NULL,
  `union_id` bigint UNSIGNED DEFAULT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `birth_certificate_number` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('theory','lab','tech') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'theory',
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `period`, `edu_class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Mathematics', 'MATH101', 'theory', NULL, 1, 3, NULL, NULL),
(2, 'English', 'ENG101', 'theory', NULL, 1, 1, NULL, NULL),
(3, 'Physics', 'PHY101', 'theory', NULL, 1, 2, NULL, NULL),
(4, 'Chemistry', 'CHEM101', 'theory', NULL, 2, 1, NULL, NULL),
(5, 'Accounting', 'ACC101', 'theory', NULL, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci,
  `added_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `bn_name`, `url`, `district_id`, `created_at`, `updated_at`) VALUES
(1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(2, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(3, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(4, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(5, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(6, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(7, 'Homna', 'হোমনা', 'homna.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(8, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(9, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(10, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(11, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(12, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(13, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(14, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(15, 'Titas', 'তিতাস', 'titas.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(16, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(17, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd', 1, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(18, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(19, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(20, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(21, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(22, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(23, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', 2, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(24, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(25, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(26, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(27, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(28, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(29, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(30, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(31, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(32, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', 3, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(33, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(34, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(35, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(36, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(37, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(38, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(39, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(40, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(41, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(42, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', 4, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(43, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(44, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(45, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(46, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(47, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(48, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(49, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(50, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(51, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', 5, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(52, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(53, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(54, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(55, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(56, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(57, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(58, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(59, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', 6, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(60, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(61, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(62, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(63, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(64, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', 7, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(65, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(66, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(67, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(68, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(69, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(70, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(71, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(72, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(73, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(74, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(75, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(76, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(77, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(78, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(79, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', 8, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(80, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(81, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(82, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(83, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(84, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(85, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(86, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(87, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', 9, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(88, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(89, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(90, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(91, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(92, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(93, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(94, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(95, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(96, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd', 10, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(97, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(98, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(99, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(100, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(101, 'Lama', 'লামা', 'lama.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(102, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(103, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd', 11, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(104, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(105, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(106, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(107, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(108, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(109, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(110, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(111, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(112, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', 12, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(113, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd', 13, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(114, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', 13, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(115, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', 13, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(116, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', 13, '2026-03-09 16:19:18', '2026-03-09 16:19:18'),
(117, 'Bera', 'বেড়া', 'bera.pabna.gov.bd', 13, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(118, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd', 13, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(119, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd', 13, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(120, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd', 13, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(121, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd', 13, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(122, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(123, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(124, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(125, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(126, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(127, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(128, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(129, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(130, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(131, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(132, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(133, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', 14, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(134, 'Paba', 'পবা', 'paba.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(135, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(136, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(137, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(138, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(139, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(140, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(141, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(142, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd', 15, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(143, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(144, 'Singra', 'সিংড়া', 'singra.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(145, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(146, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(147, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(148, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(149, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd', 16, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(150, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', 17, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(151, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd', 17, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(152, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', 17, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(153, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', 17, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(154, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', 17, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(155, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', 18, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(156, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', 18, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(157, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd', 18, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(158, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', 18, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(159, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', 18, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(160, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(161, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(162, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(163, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(164, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(165, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(166, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(167, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(168, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(169, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(170, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd', 19, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(171, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(172, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(173, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(174, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(175, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(176, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(177, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(178, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd', 20, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(179, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(180, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(181, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(182, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(183, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(184, 'Tala', 'তালা', 'tala.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(185, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', 21, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(186, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', 22, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(187, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', 22, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(188, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd', 22, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(189, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd', 23, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(190, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd', 23, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(191, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd', 23, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(192, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', 24, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(193, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', 24, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(194, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', 24, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(195, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd', 24, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(196, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(197, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(198, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(199, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(200, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(201, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', 25, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(202, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd', 26, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(203, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd', 26, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(204, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd', 26, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(205, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', 26, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(206, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(207, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(208, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(209, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(210, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(211, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(212, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(213, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(214, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd', 27, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(215, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(216, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(217, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(218, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(219, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(220, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(221, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(222, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(223, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', 28, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(224, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(225, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(226, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(227, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(228, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(229, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', 29, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(230, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', 30, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(231, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', 30, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(232, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd', 30, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(233, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', 30, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(234, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(235, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(236, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(237, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(238, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(239, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(240, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(241, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', 31, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(242, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(243, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(244, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(245, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(246, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(247, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(248, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', 32, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(249, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(250, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(251, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(252, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(253, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(254, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(255, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(256, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(257, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(258, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd', 33, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(259, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(260, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(261, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(262, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(263, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(264, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(265, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd', 34, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(266, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(267, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(268, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(269, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(270, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(271, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd', 35, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(272, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(273, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(274, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(275, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(276, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(277, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(278, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(279, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(280, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(281, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(282, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(283, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(284, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', 36, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(285, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(286, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(287, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(288, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(289, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(290, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(291, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd', 37, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(292, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(293, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(294, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(295, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(296, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(297, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(298, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(299, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd', 38, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(300, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(301, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(302, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(303, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(304, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(305, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(306, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(307, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(308, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(309, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(310, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd', 39, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(311, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(312, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(313, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(314, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(315, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(316, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd', 40, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(317, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', 41, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(318, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', 41, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(319, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', 41, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(320, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', 41, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(321, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd', 41, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(322, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(323, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(324, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(325, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(326, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(327, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd', 42, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(328, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', 43, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(329, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd', 43, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(330, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', 43, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(331, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', 43, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(332, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', 43, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(333, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(334, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(335, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(336, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(337, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(338, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(339, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(340, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(341, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(342, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(343, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(344, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', 44, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(345, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(346, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(347, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(348, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(349, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(350, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(351, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(352, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(353, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(354, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(355, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(356, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(357, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd', 45, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(358, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(359, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(360, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(361, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(362, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(363, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(364, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd', 46, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(365, 'Savar', 'সাভার', 'savar.dhaka.gov.bd', 47, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(366, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd', 47, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(367, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', 47, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(368, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', 47, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(369, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd', 47, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(370, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(371, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(372, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(373, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(374, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(375, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', 48, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(376, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', 49, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(377, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', 49, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(378, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd', 49, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(379, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', 49, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(380, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd', 49, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(381, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', 50, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(382, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd', 50, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(383, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd', 50, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(384, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd', 50, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(385, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', 51, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(386, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', 51, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(387, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', 51, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(388, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', 51, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(389, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', 51, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(390, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(391, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(392, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(393, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(394, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(395, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(396, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(397, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(398, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd', 52, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(399, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', 53, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(400, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', 53, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(401, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd', 53, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(402, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd', 53, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(403, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', 53, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(404, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(405, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(406, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(407, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(408, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(409, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(410, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(411, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(412, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(413, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(414, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(415, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(416, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', 54, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(417, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', 55, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(418, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', 55, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(419, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', 55, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(420, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', 55, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(421, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', 55, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(422, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', 56, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(423, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd', 56, '2026-03-09 16:19:19', '2026-03-09 16:19:19'),
(424, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd', 56, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(425, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', 56, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(426, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', 56, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(427, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', 56, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(428, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(429, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(430, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(431, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(432, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(433, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(434, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', 57, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(435, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', 58, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(436, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', 58, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(437, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', 58, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(438, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd', 58, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(439, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', 58, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(440, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(441, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(442, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(443, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(444, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(445, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(446, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(447, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd', 59, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(448, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(449, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(450, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(451, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(452, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(453, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(454, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(455, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(456, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', 60, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(457, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', 61, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(458, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', 61, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(459, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', 61, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(460, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd', 61, '2026-03-09 16:19:20', '2026-03-09 16:19:20');
INSERT INTO `thanas` (`id`, `name`, `bn_name`, `url`, `district_id`, `created_at`, `updated_at`) VALUES
(461, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', 61, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(462, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(463, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(464, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(465, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(466, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(467, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(468, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(469, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(470, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(471, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(472, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(473, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(474, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', 62, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(475, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(476, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(477, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(478, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(479, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(480, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(481, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', 63, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(482, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(483, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(484, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(485, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(486, 'Madan', 'মদন', 'madan.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(487, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(488, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(489, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(490, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(491, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', 64, '2026-03-09 16:19:20', '2026-03-09 16:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `invoice_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('cash','card','online') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','completed','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `invoice_id`, `amount`, `type`, `payment_method`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 150.00, 'debit', 'cash', 'completed', 'Library membership fee payment', '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(2, 1, NULL, 20.00, 'credit', 'online', 'completed', 'Refund for overpaid fine', '2026-03-09 16:19:37', '2026-03-09 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(1, 'Subil', 'সুবিল', 'subilup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(2, 'North Gunaighor', 'উত্তর গুনাইঘর', 'gunaighornorthup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(3, 'South Gunaighor', 'দক্ষিণ গুনাইঘর', 'gunaighorsouth.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(4, 'Boroshalghor', 'বড়শালঘর', 'boroshalghorup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(5, 'Rajameher', 'রাজামেহার', 'rajameherup.comila.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(6, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(7, 'Rasulpur', 'রসুলপুর', 'rasulpurup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(8, 'Fatehabad', 'ফতেহাবাদ', 'fatehabadup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(9, 'Elahabad', 'এলাহাবাদ', 'elahabadup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(10, 'Jafargonj', 'জাফরগঞ্জ', 'jafargonjup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(11, 'Dhampti', 'ধামতী', 'dhamptiup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(12, 'Mohanpur', 'মোহনপুর', 'mohanpurup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(13, 'Vani', 'ভানী', 'vaniup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(14, 'Barkamta', 'বরকামতা', 'barkamtaup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(15, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.comilla.gov.bd', 1, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(16, 'Aganagar', 'আগানগর', 'aganagarup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(17, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(18, 'North Khoshbas', 'উত্তর খোশবাস', 'khoshbasnorthup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(19, 'South Khoshbas', 'দক্ষিন খোশবাস', 'khoshbassouthup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(20, 'Jhalam', 'ঝলম', 'jhalamup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(21, 'Chitodda', 'চিতড্ডা', 'chitoddaup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(22, 'North Shilmuri', 'উত্তর শিলমুড়ি', 'shilmurinorthup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(23, 'South Shilmuri', 'দক্ষিন শিলমুড়ি', 'shilmurisouthup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(24, 'Galimpur', 'গালিমপুর', 'galimpurup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(25, 'Shakpur', 'শাকপুর', 'shakpurup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(26, 'Bhaukshar', 'ভাউকসার', 'bhauksharup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(27, 'Adda', 'আড্ডা', 'addaup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(28, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(29, 'Payalgacha', 'পয়ালগাছা', 'payalgachaup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(30, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.comilla.gov.bd', 2, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(31, 'Shidli', 'শিদলাই', 'shidliup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(32, 'Chandla', 'চান্দলা', 'chandlaup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(33, 'Shashidal', 'শশীদল', 'shashidalup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(34, 'Dulalpur', 'দুলালপুর', 'dulalpurup2.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(35, 'Brahmanpara Sadar', 'ব্রাহ্মনপাড়া সদর', 'brahmanparasadarup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(36, 'Shahebabad', 'সাহেবাবাদ', 'shahebabadup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(37, 'Malapara', 'মালাপাড়া', 'malaparaup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(38, 'Madhabpur', 'মাধবপুর', 'madhabpurup.comilla.gov.bd', 3, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(39, 'Shuhilpur', 'সুহিলপুর', 'shuhilpurup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(40, 'Bataghashi', 'বাতাঘাসি', 'bataghashiup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(41, 'Joag', 'জোয়াগ', 'joagup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(42, 'Borcarai', 'বরকরই', 'borcaraiup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(43, 'Madhaiya', 'মাধাইয়া', 'madhaiyaup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(44, 'Dollai Nowabpur', 'দোল্লাই নবাবপুর', 'dollainowabpurup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(45, 'Mohichial', 'মহিচাইল', 'mohichialup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(46, 'Gollai', 'গল্লাই', 'gollaiup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(47, 'Keronkhal', 'কেরণখাল', 'keronkhalup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(48, 'Maijkhar', 'মাইজখার', 'maijkharup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(49, 'Etberpur', 'এতবারপুর', 'etberpurup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(50, 'Barera', 'বাড়েরা', 'bareraup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(51, 'Borcoit', 'বরকইট', 'borcoitup.comilla.gov.bd', 4, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(52, 'Sreepur', 'শ্রীপুর', 'sreepurup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(53, 'Kashinagar', 'কাশিনগর', 'kashinagarup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(54, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(55, 'Shuvapur', 'শুভপুর', 'shuvapurup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(56, 'Ghulpasha', 'ঘোলপাশা', 'ghulpashaup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(57, 'Moonshirhat', 'মুন্সীরহাট', 'moonshirhatup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(58, 'Batisha', 'বাতিসা', 'batishaup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(59, 'Kankapait', 'কনকাপৈত', 'kankapaitup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(60, 'Cheora', 'চিওড়া', 'cheoraup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(61, 'Jagannatdighi', 'জগন্নাথদিঘী', 'jagannatdighiup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(62, 'Goonabati', 'গুনবতী', 'goonabatiup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(63, 'Alkara', 'আলকরা', 'alkaraup.comilla.gov.bd', 5, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(64, 'Doulotpur', 'দৌলতপুর', 'doulotpurup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(65, 'Daudkandi', 'দাউদকান্দি', 'daudkandinorthup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(66, 'North Eliotgonj', 'উত্তর ইলিয়টগঞ্জ', 'eliotgonjnorthup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(67, 'South Eliotgonj', 'দক্ষিন ইলিয়টগঞ্জ', 'eliotgonjsouthup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(68, 'Zinglatoli', 'জিংলাতলী', 'zinglatoliup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(69, 'Sundolpur', 'সুন্দলপুর', 'sundolpurup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(70, 'Gouripur', 'গৌরীপুর', 'gouripurup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(71, 'East Mohammadpur', 'পুর্ব মোহাম্মদপুর', 'mohammadpureastup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(72, 'West Mohammadpur', 'পশ্চিম মোহাম্মদপুর', 'mohammadpurwestup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(73, 'Goalmari', 'গোয়ালমারী', 'goalmariup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(74, 'Maruka', 'মারুকা', 'marukaup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(75, 'Betessor', 'বিটেশ্বর', 'betessorup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(76, 'Podua', 'পদুয়া', 'poduaup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(77, 'West Passgacia', 'পশ্চিম পাচঁগাছিয়া', 'passgaciawestup.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(78, 'Baropara', 'বারপাড়া', 'baroparaup2.comilla.gov.bd', 6, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(79, 'Mathabanga', 'মাথাভাঙ্গা', 'mathabangaup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(80, 'Gagutiea', 'ঘাগুটিয়া', 'gagutieaup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(81, 'Asadpur', 'আছাদপুর', 'asadpurup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(82, 'Chanderchor', 'চান্দেরচর', 'chanderchorup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(83, 'Vashania', 'ভাষানিয়া', 'vashaniaup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(84, 'Nilokhi', 'নিলখী', 'nilokhiup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(85, 'Garmora', 'ঘারমোড়া', 'garmoraup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(86, 'Joypur', 'জয়পুর', 'joypurup.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(87, 'Dulalpur', 'দুলালপুর', 'dulalpurup1.comilla.gov.bd', 7, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(88, 'Bakoi', 'বাকই', 'bakoiup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(89, 'Mudafargonj', 'মুদাফফর গঞ্জ', 'mudafargonjup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(90, 'Kandirpar', 'কান্দিরপাড়', 'kandirparup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(91, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(92, 'Uttarda', 'উত্তরদা', 'uttardaup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(93, 'Laksam Purba', 'লাকসাম পুর্ব', 'laksampurbaup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(94, 'Azgora', 'আজগরা', 'azgoraup.comilla.gov.bd', 8, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(95, 'Sreekil', 'শ্রীকাইল', 'sreekilup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(96, 'Akubpur', 'আকুবপুর', 'akubpurup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(97, 'Andicot', 'আন্দিকোট', 'andicotup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(98, 'Purbadair (East)', 'পুর্বধৈইর (পুর্ব)', 'purbadaireastup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(99, 'Purbadair (West)', 'পুর্বধৈইর (পশ্চিম)', 'purbadairwestup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(100, 'Bangara (East)', 'বাঙ্গরা (পূর্ব)', 'bangaraeastup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(101, 'Bangara (West)', 'বাঙ্গরা (পশ্চিম)', 'bangarawestup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(102, 'Chapitala', 'চাপিতলা', 'chapitalaup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(103, 'Camalla', 'কামাল্লা', 'camallaup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(104, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(105, 'Ramachandrapur (North)', 'রামচন্দ্রপুর (উত্তর)', 'ramachandrapurnorthup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(106, 'Ramachandrapur (South)', 'রামচন্দ্রপুর (দক্ষিন)', 'ramachandrapursouthup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(107, 'Muradnagar Sadar', 'মুরাদনগর সদর', 'muradnagarsadarup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(108, 'Nobipur (East)', 'নবীপুর (পুর্ব)', 'nobipureastup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(109, 'Nobipur (West)', 'নবীপুর (পশ্চিম)', 'nobipurwestup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(110, 'Damgar', 'ধামঘর', 'damgarup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(111, 'Jahapur', 'জাহাপুর', 'jahapurup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(112, 'Salikandi', 'ছালিয়াকান্দি', 'salikandiup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(113, 'Darura', 'দারোরা', 'daruraup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(114, 'Paharpur', 'পাহাড়পুর', 'paharpurup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(115, 'Babutipara', 'বাবুটিপাড়া', 'babutiparaup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(116, 'Tanki', 'টনকী', 'tankiup.comilla.gov.bd', 9, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(117, 'Bangadda', 'বাঙ্গড্ডা', 'bangadda.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(118, 'Paria', 'পেরিয়া', 'pariaup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(119, 'Raykot', 'রায়কোট', 'raykotup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(120, 'Mokara', 'মোকরা', 'mokaraup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(121, 'Makrabpur', 'মক্রবপুর', 'makrabpurup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(122, 'Heshakhal', 'হেসাখাল', 'heshakhalup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(123, 'Adra', 'আদ্রা', 'adraup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(124, 'Judda', 'জোড্ডা', 'juddaup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(125, 'Dhalua', 'ঢালুয়া', 'dhaluaup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(126, 'Doulkha', 'দৌলখাঁড়', 'doulkhaup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(127, 'Boxgonj', 'বক্সগঞ্জ', 'boxgonjup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(128, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.comilla.gov.bd', 10, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(129, 'Kalirbazer', 'কালীর বাজার', 'kalirbazerup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(130, 'North Durgapur', 'উত্তর দুর্গাপুর', 'durgapurnorthup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(131, 'South Durgapur', 'দক্ষিন দুর্গাপুর', 'durgapursouthup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(132, 'Amratoli', 'আমড়াতলী', 'amratoliup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(133, 'Panchthubi', 'পাঁচথুবী', 'panchthubiup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(134, 'Jagannatpur', 'জগন্নাথপুর', 'jagannatpurup.comilla.gov.bd', 11, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(135, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(136, 'Chalibanga', 'চালিভাঙ্গা', 'chalibangaup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(137, 'Radanagar', 'রাধানগর', 'radanagarup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(138, 'Manikarchar', 'মানিকারচর', 'manikarcharup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(139, 'Barakanda', 'বড়কান্দা', 'barakandaup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(140, 'Govindapur', 'গোবিন্দপুর', 'govindapurup1.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(141, 'Luterchar', 'লুটেরচর', 'lutercharup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(142, 'Vaorkhola', 'ভাওরখোলা', 'vaorkholaup.comilla.gov.bd', 12, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(143, 'Baishgaon', 'বাইশগাঁও', 'baishgaonup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(144, 'Shoroshpur', 'সরসপুর', 'shoroshpurup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(145, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(146, 'Jholam (North)', 'ঝলম (উত্তর)', 'jholamnorthup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(147, 'Jholam (South)', 'ঝলম (দক্ষিন)', 'jholamsouthup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(148, 'Moishatua', 'মৈশাতুয়া', 'moishatuaup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(149, 'Lokkhanpur', 'লক্ষনপুর', 'lokkhanpurup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(150, 'Khela', 'খিলা', 'khelaup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(151, 'Uttarhowla', 'উত্তর হাওলা', 'uttarhowlaup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(152, 'Natherpetua', 'নাথেরপেটুয়া', 'natherpetuaup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(153, 'Bipulashar', 'বিপুলাসার', 'bipulasharup.comilla.gov.bd', 13, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(154, 'Chuwara', 'চৌয়ারা', 'chuwaraup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(155, 'Baropara', 'বারপাড়া', 'baroparaup1.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(156, 'Jorkanoneast', 'জোড়কানন (পুর্ব)', 'jorkanoneastup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(157, 'Goliara', 'গলিয়ারা', 'goliaraup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(158, 'Jorkanonwest', 'জোড়কানন (পশ্চিম)', 'jorkanonwestup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(159, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(160, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(161, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(162, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(163, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(164, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(165, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(166, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(167, 'Bijoypur', 'বিজয়পুর', 'bijoypurup.comilla.gov.bd', 14, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(168, 'Satani', 'সাতানী', 'sataniup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(169, 'Jagatpur', 'জগতপুর', 'jagatpurup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(170, 'Balorampur', 'বলরামপুর', 'balorampurup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(171, 'Karikandi', 'কড়িকান্দি', 'karikandiup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(172, 'Kalakandi', 'কলাকান্দি', 'kalakandiup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(173, 'Vitikandi', 'ভিটিকান্দি', 'vitikandiup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(174, 'Narayandia', 'নারান্দিয়া', 'narayandiaup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(175, 'Zearkandi', 'জিয়ারকান্দি', 'zearkandiup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(176, 'Majidpur', 'মজিদপুর', 'majidpurup.comilla.gov.bd', 15, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(177, 'Moynamoti', 'ময়নামতি', 'moynamotiup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(178, 'Varella', 'ভারেল্লা', 'varellaup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(179, 'Mokam', 'মোকাম', 'mokamup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(180, 'Burichang Sadar', 'বুড়িচং সদর', 'burichangsadarup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(181, 'Bakshimul', 'বাকশীমূল', 'bakshimulup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(182, 'Pirjatrapur', 'পীরযাত্রাপুর', 'pirjatrapurup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(183, 'Sholonal', 'ষোলনল', 'sholonalup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(184, 'Rajapur', 'রাজাপুর', 'rajapurup.comilla.gov.bd', 16, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(185, 'Bagmara (North)', 'বাগমারা (উত্তর)', 'bagmaranorthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(186, 'Bagmara (South)', 'বাগমারা (দক্ষিন)', 'bagmarasouthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(187, 'Bhuloin (North)', 'ভূলইন (উত্তর)', 'bhuloinnorthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(188, 'Bhuloin (South)', 'ভূলইন (দক্ষিন)', 'bhuloinsouthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(189, 'Belgor (North)', 'বেলঘর (উত্তর)', 'belgornorthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(190, 'Belgor (South)', 'বেলঘর (দক্ষিন)', 'belgorsouthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(191, 'Perul (North)', 'পেরুল (উত্তর)', 'perulnorthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(192, 'Perul (South)', 'পেরুল (দক্ষিন)', 'perulsouthup.comilla.gov.bd', 17, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(193, 'Mohamaya', 'মহামায়া', 'mohamayaup.feni.gov.bd', 18, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(194, 'Pathannagar', 'পাঠাননগর', 'pathannagarup.feni.gov.bd', 18, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(195, 'Subhapur', 'শুভপুর', 'subhapurup.feni.gov.bd', 18, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(196, 'Radhanagar', 'রাধানগর', 'radhanagarup.feni.gov.bd', 18, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(197, 'Gopal', 'ঘোপাল', 'gopalup.feni.gov.bd', 18, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(198, 'Sarishadi', 'শর্শদি', 'sarishadiup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(199, 'Panchgachia', 'পাঁচগাছিয়া', 'panchgachiaup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(200, 'Dhormapur', 'ধর্মপুর', 'dhormapurup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(201, 'Kazirbag', 'কাজিরবাগ', 'kazirbagup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(202, 'Kalidah', 'কালিদহ', 'kalidahup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(203, 'Baligaon', 'বালিগাঁও', 'baligaonup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(204, 'Dholia', 'ধলিয়া', 'dholiaup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(205, 'Lemua', 'লেমুয়া', 'lemuaup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(206, 'Chonua', 'ছনুয়া', 'chonuaup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(207, 'Motobi', 'মোটবী', 'motobiup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(208, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(209, 'Forhadnogor', 'ফরহাদনগর', 'forhadnogorup.feni.gov.bd', 19, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(210, 'Charmozlishpur', 'চরমজলিশপুর', 'charmozlishpurup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(211, 'Bogadana', 'বগাদানা', 'bogadanaup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(212, 'Motigonj', 'মতিগঞ্জ', 'motigonjup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(213, 'Mongolkandi', 'মঙ্গলকান্দি', 'mongolkandiup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(214, 'Chardorbesh', 'চরদরবেশ', 'chardorbeshup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(215, 'Chorchandia', 'চরচান্দিয়া', 'chorchandiaup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(216, 'Sonagazi', 'সোনাগাজী', 'sonagaziup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(217, 'Amirabad', 'আমিরাবাদ', 'amirabadup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(218, 'Nababpur', 'নবাবপুর', 'nababpurup.feni.gov.bd', 20, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(219, 'Fulgazi', 'ফুলগাজী', 'fulgaziup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(220, 'Munshirhat', 'মুন্সিরহাট', 'munshirhatup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(221, 'Dorbarpur', 'দরবারপুর', 'dorbarpurup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(222, 'Anandopur', 'আনন্দপুর', 'anandopurup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(223, 'Amzadhat', 'আমজাদহাট', 'amzadhatup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(224, 'Gmhat', 'জি,এম, হাট', 'gmhatup.feni.gov.bd', 21, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(225, 'Mizanagar', 'মির্জানগর', 'mizanagarup.feni.gov.bd', 22, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(226, 'Ctholia', 'চিথলিয়া', 'ctholiaup.feni.gov.bd', 22, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(227, 'Boxmahmmud', 'বক্সমাহমুদ', 'boxmahmmudup.feni.gov.bd', 22, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(228, 'Sindurpur', 'সিন্দুরপুর', 'sindurpurup.feni.gov.bd', 23, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(229, 'Rajapur', 'রাজাপুর', 'rajapurup.feni.gov.bd', 23, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(230, 'Purbachandrapur', 'পূর্বচন্দ্রপুর', 'purbachandrapurup.feni.gov.bd', 23, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(231, 'Ramnagar', 'রামনগর', 'ramnagarup.feni.gov.bd', 23, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(232, 'Yeakubpur', 'ইয়াকুবপুর', 'yeakubpur.feni.gov.bd', 23, '2026-03-09 16:19:20', '2026-03-09 16:19:20'),
(233, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyanup.feni.gov.bd', 23, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(234, 'Matubhuiyan', 'মাতুভূঞা', 'matubhuiyanup.feni.gov.bd', 23, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(235, 'Jayloskor', 'জায়লস্কর', 'jayloskorup.feni.gov.bd', 23, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(236, 'Basudeb', 'বাসুদেব', 'basudeb.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(237, 'Machihata', 'মাছিহাতা', 'machihata.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(238, 'Sultanpur', 'সুলতানপুর', 'sultanpur.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(239, 'Ramrail', 'রামরাইল', 'ramrail.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(240, 'Sadekpur', 'সাদেকপুর', 'sadekpur.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(241, 'Talsahar', 'তালশহর', 'talsahar.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(242, 'Natai', 'নাটাই (দক্ষিন)', 'natais.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(243, 'Natai', 'নাটাই (উত্তর)', 'natain.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(244, 'Shuhilpur', 'সুহিলপুর', 'shuhilpur.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(245, 'Bodhal', 'বুধল', 'bodhal.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(246, 'Majlishpur', 'মজলিশপুর', 'majlishpur.brahmanbaria.gov.bd', 24, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(247, 'Mulagram', 'মূলগ্রাম', 'mulagramup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(248, 'Mehari', 'মেহারী', 'mehariup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(249, 'Badair', 'বাদৈর', 'badairup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(250, 'Kharera', 'খাড়েরা', 'khareraup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(251, 'Benauty', 'বিনাউটি', 'benautyup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(252, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(253, 'Kasbaw', 'কসবা', 'kasbawup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(254, 'Kuti', 'কুটি', 'kutiup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(255, 'Kayempur', 'কাইমপুর', 'kayempurup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(256, 'Bayek', 'বায়েক', 'bayekup.brahmanbaria.gov.bd', 25, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(257, 'Chatalpar', 'চাতলপাড়', 'chatalparup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(258, 'Bhalakut', 'ভলাকুট', 'bhalakutup.brahmanbaria.gov.bd ', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(259, 'Kunda', 'কুন্ডা', 'kundaup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(260, 'Goalnagar', 'গোয়ালনগর', 'goalnagarup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(261, 'Nasirnagar', 'নাসিরনগর', 'nasirnagarup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(262, 'Burishwar', 'বুড়িশ্বর', 'burishwarup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(263, 'Fandauk', 'ফান্দাউক', 'fandaukup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(264, 'Goniauk', 'গুনিয়াউক', 'goniaukup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(265, 'Chapartala', 'চাপৈরতলা', 'chapartalaup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(266, 'Dharnondol', 'ধরমন্ডল', 'dharnondolup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(267, 'Haripur', 'হরিপুর', 'haripurup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(268, 'Purbabhag', 'পূর্বভাগ', 'purbabhagup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(269, 'Gokarna', 'গোকর্ণ', 'gokarnaup.brahmanbaria.gov.bd', 26, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(270, 'Auraol', 'অরুয়াইল', 'auraolup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(271, 'Pakshimuul', 'পাকশিমুল', 'pakshimuulup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(272, 'Chunta', 'চুন্টা', 'chuntaup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(273, 'Kalikaccha', 'কালীকচ্ছ', 'kalikacchaup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(274, 'Panishor', 'পানিশ্বর', 'panishorup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(275, 'Sarail', 'সরাইল সদর', 'sarailup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(276, 'Noagoun', 'নোয়াগাঁও', 'noagounup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(277, 'Shahajadapur', 'শাহজাদাপুর', 'shahajadapurup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(278, 'Shahbazpur', 'শাহবাজপুর', 'shahbazpurup.brahmanbaria.gov.bd', 27, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(279, 'Ashuganj', 'আশুগঞ্জ সদর', 'ashuganjup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(280, 'Charchartala', 'চরচারতলা', 'charchartalaup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(281, 'Durgapur', 'দুর্গাপুর', 'durgapurup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(282, 'Araishidha', 'আড়াইসিধা', 'araishidhaup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(283, 'Talshaharw', 'তালশহর(পঃ)', 'talshaharwup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(284, 'Sarifpur', 'শরীফপুর', 'sarifpurup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(285, 'Lalpur', 'লালপুর', 'lalpurup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(286, 'Tarua', 'তারুয়া', 'taruaup.brahmanbaria.gov.bd', 28, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(287, 'Monionda', 'মনিয়ন্দ', 'moniondaup.brahmanbaria.gov.bd', 29, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(288, 'Dharkhar', 'ধরখার', 'dharkharup.brahmanbaria.gov.bd', 29, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(289, 'Mogra', 'মোগড়া', 'mograup.brahmanbaria.gov.bd', 29, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(290, 'Akhauran', 'আখাউড়া (উঃ)', 'akhauranup.brahmanbaria.gov.bd', 29, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(291, 'Akhauras', 'আখাউড়া (দঃ)', 'akhaurasup.brahmanbaria.gov.bd', 29, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(292, 'Barail', 'বড়াইল', 'barailup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(293, 'Birgaon', 'বীরগাঁও', 'birgaonup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(294, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(295, 'Nathghar', 'নাটঘর', 'nathgharup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(296, 'Biddayakut', 'বিদ্যাকুট', 'biddayakutup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(297, 'Nabinagare', 'নবীনগর (পূর্ব)', 'nabinagareup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(298, 'Nabinagarw', 'নবীনগর(পশ্চিম)', 'nabinagarwup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(299, 'Bitghar', 'বিটঘর', 'bitgharup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(300, 'Shibpur', 'শিবপুর', 'shibpurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(301, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(302, 'Jinudpur', 'জিনোদপুর', 'jinudpurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(303, 'Laurfatehpur', 'লাউরফতেপুর', 'laurfatehpurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(304, 'Ibrahimpur', 'ইব্রাহিমপুর', 'ibrahimpurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(305, 'Satmura', 'সাতমোড়া', 'satmuraup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(306, 'Shamogram', 'শ্যামগ্রাম', 'shamogramup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(307, 'Rasullabad', 'রসুল্লাবাদ', 'rasullabadup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(308, 'Barikandi', 'বড়িকান্দি', 'barikandiup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(309, 'Salimganj', 'ছলিমগঞ্জ', 'salimganjup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(310, 'Ratanpur', 'রতনপুর', 'ratanpurup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(311, 'Kaitala (North)', 'কাইতলা (উত্তর)', 'kaitalanup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(312, 'Kaitala (South)', 'কাইতলা (দক্ষিন)', 'kaitalasup.brahmanbaria.gov.bd', 30, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(313, 'Tazkhali', 'তেজখালী', 'tazkhaliup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(314, 'Pahariya Kandi', 'পাহাড়িয়া কান্দি', 'pahariyakandiup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(315, 'Dariadulat', 'দরিয়াদৌলত', 'dariadulatup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(316, 'Sonarampur', 'সোনারামপুর', 'sonarampurup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(317, 'Darikandi', 'দড়িকান্দি', 'darikandiup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(318, 'Saifullyakandi', 'ছয়ফুল্লাকান্দি', 'saifullyakandiup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(319, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampurup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(320, 'Ayabpur', 'আইয়ুবপুর', 'ayabpurup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(321, 'Fardabad', 'ফরদাবাদ', 'fardabadup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(322, 'Rupushdi', 'রুপসদী পশ্চিম', 'rupushdiup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(323, 'Salimabad', 'ছলিমাবাদ', 'salimabadup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(324, 'Ujanchar', 'উজানচর পূর্ব', 'ujancharup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(325, 'Manikpur', 'মানিকপুর', 'manikpurup.brahmanbaria.gov.bd', 31, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(326, 'Bhudanty', 'বুধন্তি', 'bhudantyup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(327, 'Chandura', 'চান্দুরা', 'chanduraup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(328, 'Ichapura', 'ইছাপুরা', 'ichapuraup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(329, 'Champaknagar', 'চম্পকনগর', 'champaknagarup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(330, 'Harashpur', 'হরষপুর', 'harashpurup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(331, 'Pattan', 'পত্তন', 'pattanup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(332, 'Singerbil', 'সিংগারবিল', 'singerbilup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(333, 'Bishupor', 'বিষ্ণুপুর', 'bishuporup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(334, 'Charislampur', 'চর-ইসলামপুর', 'charislampurup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(335, 'Paharpur', 'পাহাড়পুর', 'paharpurup.brahmanbaria.gov.bd', 32, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(336, 'Jibtali', 'জীবতলি', 'jibtaliup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(337, 'Sapchari', 'সাপছড়ি', 'sapchariup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(338, 'Kutukchari', 'কুতুকছড়ি', 'kutukchariup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(339, 'Bandukbhanga', 'বন্দুকভাঙ্গা', 'bandukbhangaup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(340, 'Balukhali', 'বালুখালী', 'balukhaliup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(341, 'Mogban', 'মগবান', 'mogbanup.rangamati.gov.bd', 33, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(342, 'Raikhali', 'রাইখালী', 'raikhaliup.rangamati.gov.bd', 34, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(343, 'Kaptai', 'কাপ্তাই', 'kaptaiup.rangamati.gov.bd', 34, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(344, 'Wagga', 'ওয়াজ্ঞা', 'waggaup.rangamati.gov.bd', 34, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(345, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.rangamati.gov.bd', 34, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(346, 'Chitmorom', 'চিৎমরম', 'chitmoromup.rangamati.gov.bd', 34, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(347, 'Ghagra', 'ঘাগড়া', 'ghagraup.rangamati.gov.bd', 35, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(348, 'Fatikchari', 'ফটিকছড়ি', 'fatikchariup.rangamati.gov.bd', 35, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(349, 'Betbunia', 'বেতবুনিয়া', 'betbuniaup.rangamati.gov.bd', 35, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(350, 'Kalampati', 'কলমপতি', 'kalampatiup.rangamati.gov.bd', 35, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(351, 'Sajek', 'সাজেক', 'sajekup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(352, 'Amtali', 'আমতলী', 'amtaliup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(353, 'Bongoltali', 'বঙ্গলতলী', 'bongoltaliup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(354, 'Rupokari', 'রুপকারী', 'rupokariup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(355, 'Marisha', 'মারিশ্যা', 'marishaup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(356, 'Khedarmara', 'খেদারমারা', 'khedarmaraup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(357, 'Sharoyatali', 'সারোয়াতলী', 'sharoyataliup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(358, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichariup.rangamati.gov.bd', 36, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(359, 'Subalong', 'সুবলং', 'subalongup.rangamati.gov.bd', 37, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(360, 'Barkal', 'বরকল', 'barkalup.rangamati.gov.bd', 37, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(361, 'Bushanchara', 'ভূষনছড়া', 'bushancharaup.rangamati.gov.bd', 37, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(362, 'Aimachara', 'আইমাছড়া', 'aimacharaup.rangamati.gov.bd', 37, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(363, 'Borohorina', 'বড় হরিণা', 'borohorinaup.rangamati.gov.bd', 37, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(364, 'Langad', 'লংগদু', 'langaduup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(365, 'Maeinimukh', 'মাইনীমুখ', 'maeinimukhup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(366, 'Vasannadam', 'ভাসান্যাদম', 'vasannadamup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(367, 'Bogachattar', 'বগাচতর', 'bogachattarup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(368, 'Gulshakhali', 'গুলশাখালী', 'gulshakhaliup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(369, 'Kalapakujja', 'কালাপাকুজ্যা', 'kalapakujjaup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(370, 'Atarakchara', 'আটারকছড়া', 'atarakcharaup.rangamati.gov.bd', 38, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(371, 'Ghilachari', 'ঘিলাছড়ি', 'ghilachariup.rangamati.gov.bd', 39, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(372, 'Gaindya', 'গাইন্দ্যা', 'gaindyaup.rangamati.gov.bd', 39, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(373, 'Bangalhalia', 'বাঙ্গালহালিয়া', 'bangalhaliaup.rangamati.gov.bd', 39, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(374, 'Kengrachari', 'কেংড়াছড়ি', 'kengrachariup.rangamati.gov.bd', 40, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(375, 'Belaichari', 'বিলাইছড়ি', 'belaichariup.rangamati.gov.bd', 40, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(376, 'Farua', 'ফারুয়া', 'faruaup.rangamati.gov.bd', 40, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(377, 'Juraichari', 'জুরাছড়ি', 'juraichariup.rangamati.gov.bd', 41, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(378, 'Banajogichara', 'বনযোগীছড়া', 'banajogicharaup.rangamati.gov.bd', 41, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(379, 'Moidong', 'মৈদং', 'moidongup.rangamati.gov.bd', 41, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(380, 'Dumdumya', 'দুমদুম্যা', 'dumdumyaup.rangamati.gov.bd', 41, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(381, 'Sabekkhong', 'সাবেক্ষ্যং', 'sabekkhongup.rangamati.gov.bd', 42, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(382, 'Naniarchar', 'নানিয়ারচর', 'naniarcharup.rangamati.gov.bd', 42, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(383, 'Burighat', 'বুড়িঘাট', 'burighatup.rangamati.gov.bd', 42, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(384, 'Ghilachhari', 'ঘিলাছড়ি', 'ghilachhariup.rangamati.gov.bd', 42, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(385, 'Charmatua', 'চরমটুয়া', 'charmatuaup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(386, 'Dadpur', 'দাদপুর', 'dadpurup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(387, 'Noannoi', 'নোয়ান্নই', 'noannoiup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(388, 'Kadirhanif', 'কাদির হানিফ', 'kadirhanifup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(389, 'Binodpur', 'বিনোদপুর', 'binodpurup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(390, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(391, 'Aujbalia', 'এওজবালিয়া', 'aujbaliaup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(392, 'Kaladara', 'কালাদরপ', 'kaladarapup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(393, 'Ashwadia', 'অশ্বদিয়া', 'ashwadiaup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(394, 'Newajpur', 'নিয়াজপুর', 'newajpurup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(395, 'East Charmatua', 'পূর্ব চরমটুয়া', 'eastcharmatuap.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(396, 'Andarchar', 'আন্ডারচর', 'andarcharup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(397, 'Noakhali', 'নোয়াখালী', 'noakhaliup.noakhali.gov.bd', 43, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(398, 'Sirajpur', 'সিরাজপুর', 'sirajpurup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(399, 'Charparboti', 'চরপার্বতী', 'charparbotiup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(400, 'Charhazari', 'চরহাজারী', 'charhazariup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(401, 'Charkakra', 'চরকাঁকড়া', 'charkakraup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(402, 'Charfakira', 'চরফকিরা', 'charfakiraup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(403, 'Musapur', 'মুসাপুর', 'musapurup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(404, 'Charelahi', 'চরএলাহী', 'charelahiup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(405, 'Rampur', 'রামপুর', 'rampurup.noakhali.gov.bd', 44, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(406, 'Amanullapur', 'আমানউল্ল্যাপুর', 'amanullapurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(407, 'Gopalpur', 'গোপালপুর', 'gopalpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(408, 'Jirtali', 'জিরতলী', 'jirtaliup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(409, 'Kutubpur', 'কুতবপুর', 'kutubpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(410, 'Alyearpur', 'আলাইয়ারপুর', 'alyearpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(411, 'Chayani', 'ছয়ানী', 'chayaniup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(412, 'Rajganj', 'রাজগঞ্জ', 'rajganjup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(413, 'Eklashpur', 'একলাশপুর', 'eklashpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(414, 'Begumganj', 'বেগমগঞ্জ', 'begumganjup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(415, 'Mirwarishpur', 'মিরওয়ারিশপুর', 'mirwarishpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(416, 'Narottampur', 'নরোত্তমপুর', 'narottampurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(417, 'Durgapur', 'দূর্গাপুর', 'durgapurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(418, 'Rasulpur', 'রসুলপুর', 'rasulpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(419, 'Hajipur', 'হাজীপুর', 'hajipurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(420, 'Sharifpur', 'শরীফপুর', 'sharifpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(421, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.noakhali.gov.bd', 45, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(422, 'Sukhchar', 'সুখচর', 'sukhcharup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(423, 'Nolchira', 'নলচিরা', 'nolchiraup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(424, 'Charishwar', 'চরঈশ্বর', 'charishwarup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(425, 'Charking', 'চরকিং', 'charkingup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(426, 'Tomoroddi', 'তমরদ্দি', 'tomoroddiup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(427, 'Sonadiya', 'সোনাদিয়া', 'sonadiyaup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(428, 'Burirchar', 'বুড়িরচর', 'burircharup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(429, 'Jahajmara', 'জাহাজমারা', 'jahajmaraup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(430, 'Nijhumdwi', 'নিঝুমদ্বীপ', 'nijhumdwipup.noakhali.gov.bd', 46, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(431, 'Charjabbar', 'চরজাব্বার', 'charjabbarup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(432, 'Charbata', 'চরবাটা', 'charbataup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(433, 'Charclerk', 'চরক্লার্ক', 'charclerkup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(434, 'Charwapda', 'চরওয়াপদা', 'charwapdaup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(435, 'Charjubilee', 'চরজুবলী', 'charjubileeup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(436, 'Charaman Ullah', 'চরআমান উল্যা', 'charamanullahup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(437, 'East Charbata', 'পূর্ব চরবাটা', 'eastcharbataup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(438, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.noakhali.gov.bd', 47, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(439, 'Narottampur', 'নরোত্তমপুর', 'narottampurup1.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(440, 'Dhanshiri', 'ধানসিঁড়ি', 'dhanshiriup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(441, 'Sundalpur', 'সুন্দলপুর', 'sundalpurup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(442, 'Ghoshbag', 'ঘোষবাগ', 'ghoshbagup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(443, 'Chaprashirhat', 'চাপরাশিরহাট', 'chaprashirhatup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(444, 'Dhanshalik', 'ধানশালিক', 'dhanshalikup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(445, 'Batoiya', 'বাটইয়া', 'batoiyaup.noakhali.gov.bd', 48, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(446, 'Chhatarpaia', 'ছাতারপাইয়া', 'chhatarpaiaup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(447, 'Kesharpar', 'কেশরপাড়া', 'kesharparup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(448, 'Dumurua', 'ডুমুরুয়া', 'dumuruaup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(449, 'Kadra', 'কাদরা', 'kadraup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(450, 'Arjuntala', 'অর্জুনতলা', 'arjuntalaup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(451, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(452, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup7.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(453, 'Nabipur', 'নবীপুর', 'nabipurup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(454, 'Bejbagh', 'বিজবাগ', 'bejbaghup.noakhali.gov.bd', 49, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(455, 'Sahapur', 'সাহাপুর', 'sahapurup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(456, 'Ramnarayanpur', 'রামনারায়নপুর', 'ramnarayanpurup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(457, 'Porokote', 'পরকোট', 'porokoteup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(458, 'Badalkot', 'বাদলকোট', 'badalkotup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(459, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(460, 'Hat-Pukuria Ghatlabag', 'হাট-পুকুরিয়া ঘাটলাবাগ', 'hatpukuriaghatlabagup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(461, 'Noakhala', 'নোয়াখলা', 'noakhalaup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(462, 'Khilpara', 'খিলপাড়া', 'khilparaup.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(463, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpuru5p.noakhali.gov.bd', 50, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(464, 'Joyag', 'জয়াগ', 'joyagup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(465, 'Nodona', 'নদনা', 'nodonaup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(466, 'Chashirhat', 'চাষীরহাট', 'chashirhatup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(467, 'Barogaon', 'বারগাঁও', 'barogaonup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(468, 'Ambarnagor', 'অম্বরনগর', 'ambarnagorup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(469, 'Nateshwar', 'নাটেশ্বর', 'nateshwarup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(470, 'Bajra', 'বজরা', 'bajraup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(471, 'Sonapur', 'সোনাপুর', 'sonapurup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(472, 'Deoti', 'দেওটি', 'deotiup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(473, 'Amishapara', 'আমিশাপাড়া', 'amishaparaup.noakhali.gov.bd', 51, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(474, 'Gazipur', 'গাজীপুর', 'gazipurup.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(475, 'Algidurgapur (North)', 'আলগী দুর্গাপুর (উত্তর)', 'algidurgapurnorthup.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(476, 'Algidurgapur (South)', 'আলগী দুর্গাপুর (দক্ষিণ)', 'algidurgapursouth.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(477, 'Nilkamal', 'নীলকমল', 'nilkamalup.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(478, 'Haimchar', 'হাইমচর', 'haimcharup.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(479, 'Charbhairabi', 'চরভৈরবী', 'charbhairabiup.chandpur.gov.bd', 52, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(480, 'Pathair', 'পাথৈর', 'pathairup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(481, 'Bitara', 'বিতারা', 'bitaraup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(482, 'Shohodebpur (East)', 'সহদেবপুর (পূর্ব)', 'shohodebpureastup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(483, 'Shohodebpur (West)', 'সহদেবপুর (পশ্চিম)', 'shohodebpurwestup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(484, 'Kachua (North)', 'কচুয়া (উত্তর)', 'kachuanorthup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(485, 'Kachua (South)', 'কচুয়া (দক্ষিণ)', 'kachuasouthup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(486, 'Gohat (North)', 'গোহাট (উত্তর)', 'gohatnorthup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(487, 'Kadla', 'কাদলা', 'kadlaup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(488, 'Ashrafpur', 'আসরাফপুর', 'ashrafpurup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(489, 'Gohat (South)', 'গোহাট (দক্ষিণ)', 'gohatsouthup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(490, 'Sachar', 'সাচার', 'sacharup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(491, 'Koroia', 'কড়ইয়া', 'koroiaup.chandpur.gov.bd', 53, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(492, 'Tamta (South)', 'টামটা (দক্ষিণ)', 'tamtasouthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(493, 'Tamta (North)', 'টামটা (উত্তর)', 'tamtanorthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(494, 'Meher (North)', 'মেহের (উত্তর)', 'mehernorthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(495, 'Meher (South)', 'মেহের (দক্ষিণ)', 'mehersouthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(496, 'Suchipara (North)', 'সুচিপাড়া (উত্তর)', 'suchiparanorthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(497, 'Suchipara (South)', 'সুচিপাড়া (দক্ষিণ)', 'suchiparasouthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(498, 'Chitoshi (East)', 'চিতষী (পূর্ব)', 'chitoshieastup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(499, 'Raysree (South)', 'রায়শ্রী (দক্ষিন)', 'raysreesouthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(500, 'Raysree (North)', 'রায়শ্রী (উত্তর)', 'raysreenorthup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(501, 'Chitoshiwest', 'চিতষী (পশ্চিম)', 'chitoshiwestup.chandpur.gov.bd', 54, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(502, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(503, 'Ashikati', 'আশিকাটি', 'ashikatiup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(504, 'Shahmahmudpur', 'শাহ্‌ মাহমুদপুর', 'shahmahmudpurup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(505, 'Kalyanpur', 'কল্যাণপুর', 'kalyanpurup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(506, 'Rampur', 'রামপুর', 'rampurup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(507, 'Maishadi', 'মৈশাদী', 'maishadiup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(508, 'Tarpurchandi', 'তরপুচন্ডী', 'tarpurchandiup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(509, 'Baghadi', 'বাগাদী', 'baghadiup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(510, 'Laxmipur Model', 'লক্ষীপুর মডেল', 'laxmipurmodelup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(511, 'Hanarchar', 'হানারচর', 'hanarcharup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(512, 'Chandra', 'চান্দ্রা', 'chandraup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(513, 'Rajrajeshwar', 'রাজরাজেশ্বর', 'rajrajeshwarup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(514, 'Ibrahimpur', 'ইব্রাহীমপুর', 'ibrahimpurup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(515, 'Balia', 'বালিয়া', 'baliaup.chandpur.gov.bd', 55, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(516, 'Nayergaon (North)', 'নায়েরগাঁও (উত্তর)', 'nayergaonnorthup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(517, 'Nayergaon (South)', 'নায়েরগাঁও (দক্ষিন)', 'nayergaonsouthup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(518, 'Khadergaon', 'খাদেরগাঁও', 'khadergaonup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(519, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(520, 'Upadi (South)', 'উপাদী (দক্ষিণ)', 'upadisouthup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(521, 'Upadi (North)', 'উপাদী (উত্তর)', 'upadinorthup.chandpur.gov.bd', 56, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(522, 'Rajargaon (North)', 'রাজারগাঁও (উত্তর)', 'rajargaonnorthup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(523, 'Bakila', 'বাকিলা', 'bakilaup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(524, 'Kalocho (North)', 'কালচোঁ (উত্তর)', 'kalochonorthup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(525, 'Hajiganj Sadar', 'হাজীগঞ্জ সদর', 'hajiganjsadarup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(526, 'Kalocho (South)', 'কালচোঁ (দক্ষিণ)', 'kalochosouthup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(527, 'Barkul (East)', 'বড়কুল (পূর্ব)', 'barkuleastup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(528, 'Barkul (West)', 'বড়কুল (পশ্চিম)', 'barkulwestup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(529, 'Hatila (East)', 'হাটিলা (পূর্ব)', 'hatilaeastup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(530, 'Hatila (West)', 'হাটিলা (পশ্চিম)', 'hatilawestup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(531, 'Gandharbapur (North)', 'গন্ধর্ব্যপুর (উত্তর)', 'gandharbapurnorthup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(532, 'Gandharbapur (South)', 'গন্ধর্ব্যপুর (দক্ষিণ)', 'gandharbapursouthup.chandpur.gov.bd', 57, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(533, 'Satnal', 'ষাটনল', 'satnalup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(534, 'Banganbari', 'বাগানবাড়ী', 'banganbariup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(535, 'Sadullapur', 'সাদুল্ল্যাপুর', 'sadullapurup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(536, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(537, 'Kalakanda', 'কালাকান্দা', 'kalakandaup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(538, 'Mohanpur', 'মোহনপুর', 'mohanpurup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(539, 'Eklaspur', 'এখলাছপুর', 'eklaspurup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(540, 'Jahirabad', 'জহিরাবাদ', 'jahirabadup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(541, 'Fatehpur (East)', 'ফতেহপুর (পূর্ব)', 'eastfatehpur.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(542, 'Fatehpur (West)', 'ফতেহপুর (পশ্চিম)', 'westfatehpurup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(543, 'Farajikandi', 'ফরাজীকান্দি', 'farajikandiup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(544, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(545, 'Sultanabad', 'সুলতানাবাদ', 'sultanabadup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(546, 'Gazra', 'গজরা', 'gazraup.chandpur.gov.bd', 58, '2026-03-09 16:19:21', '2026-03-09 16:19:21'),
(547, 'Balithuba (West)', 'বালিথুবা (পশ্চিম)', 'balithubawestup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(548, 'Balithuba (East)', 'বালিথুবা (পূর্ব)', 'balithubaeastup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(549, 'Subidpur (East)', 'সুবিদপুর (পূর্ব)', 'subidpureastup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(550, 'Subidpur (West)', 'সুবিদপুর (পশ্চিম)', 'subidpurwestup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(551, 'Gupti (West)', 'গুপ্তি (পশ্চিম)', 'guptiwestup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(552, 'Gupti (East)', 'গুপ্তি (পূর্ব)', 'guptieastup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(553, 'Paikpara (North)', 'পাইকপাড়া (উত্তর)', 'paikparanorthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(554, 'Paikpara (South)', 'পাইকপাড়া (দক্ষিণ)', 'paikparasouthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(555, 'Gobindapur (North)', 'গবিন্দপুর (উত্তর)', 'gobindapurnorthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(556, 'Gobindapur (South)', 'গবিন্দপুর (দক্ষিণ)', 'gobindapursouthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(557, 'Chardukhia (East)', 'চরদুখিয়া (পূর্ব)', 'chardukhiaeastup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(558, 'Chardukhia (West)', 'চরদুঃখিয়া (পশ্চিম)', 'chardukhiawestup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(559, 'Faridgonj (South)', 'ফরিদ্গঞ্জ (দক্ষিণ)', 'faridgonjsouthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(560, 'Rupsha (South)', 'রুপসা (দক্ষিণ)', 'rupshasouthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(561, 'Rupsha (North)', 'রুপসা (উত্তর)', 'rupshanorthup.chandpur.gov.bd', 59, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(562, 'Hamsadi (North)', 'হামছাদী (উত্তর)', 'northhamsadiup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(563, 'Hamsadi (South)', 'হামছাদী (দক্ষিন)', 'southhamsadiup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(564, 'Dalalbazar', 'দালাল বাজার', 'dalalbazarup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(565, 'Charruhita', 'চররুহিতা', 'charruhitaup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(566, 'Parbotinagar', 'পার্বতীনগর', 'parbotinagarup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(567, 'Bangakha', 'বাঙ্গাখাঁ', 'bangakhaup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(568, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(569, 'Basikpur', 'বশিকপুর', 'basikpurup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(570, 'Chandrogonj', 'চন্দ্রগঞ্জ', 'chandrogonjup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(571, 'Nourthjoypur', 'উত্তর জয়পুর', 'nourthjoypurup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(572, 'Hazirpara', 'হাজিরপাড়া', 'hazirparaup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(573, 'Charshahi', 'চরশাহী', 'charshahiup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(574, 'Digli', 'দিঘলী', 'digliup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(575, 'Laharkandi', 'লাহারকান্দি', 'laharkandiup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(576, 'Vobanigonj', 'ভবানীগঞ্জ', 'vobanigonjup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(577, 'Kusakhali', 'কুশাখালী', 'kusakhaliup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(578, 'Sakchor', 'শাকচর', 'sakchorup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(579, 'Tearigonj', 'তেয়ারীগঞ্জ', 'tearigonjup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(580, 'Tumchor', 'টুমচর', 'tumchorup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(581, 'Charramoni Mohon', 'চররমনী মোহন', 'charramonimohonup.lakshmipur.gov.bd', 60, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(582, 'Charkalkini', 'চর কালকিনি', 'charkalkiniup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(583, 'Shaheberhat', 'সাহেবেরহাট', 'shaheberhatup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(584, 'Char Martin', 'চর মার্টিন', 'charmartinup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(585, 'Char Folcon', 'চর ফলকন', 'charfolconup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(586, 'Patarirhat', 'পাটারীরহাট', 'patarirhatup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(587, 'Hajirhat', 'হাজিরহাট', 'hajirhatup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(588, 'Char Kadira', 'চর কাদিরা', 'charkadiraup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(589, 'Torabgonj', 'তোরাবগঞ্জ', 'torabgonjup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(590, 'Charlorench', 'চর লরেঞ্চ', 'charlorenchup.lakshmipur.gov.bd', 61, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(591, 'North Char Ababil', 'উত্তর চর আবাবিল', 'northcharababilup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(592, 'North Char Bangshi', 'উত্তর চর বংশী', 'northcharbangshiup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(593, 'Char Mohana', 'চর মোহনা', 'charmohanaup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(594, 'Sonapur', 'সোনাপুর', 'sonapurup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(595, 'Charpata', 'চর পাতা', 'charpataup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(596, 'Bamni', 'বামনী', 'bamniup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(597, 'South Char Bangshi', 'দক্ষিন চর বংশী', 'southcharbangshiup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(598, 'South Char Ababil', 'দক্ষিন চর আবাবিল', 'southcharababilup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(599, 'Raipur', 'রায়পুর', 'raipurup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(600, 'Keora', 'কেরোয়া', 'keoraup.lakshmipur.gov.bd', 62, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(601, 'Char Poragacha', 'চর পোড়াগাছা', 'charporagachaup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(602, 'Charbadam', 'চর বাদাম', 'charbadamup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(603, 'Char Abdullah', 'চর আবদুল্যাহ', 'charabdullahup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(604, 'Alxendar', 'আলেকজান্ডার', 'alxendarup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(605, 'Char Algi', 'চর আলগী', 'charalgiup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(606, 'Char Ramiz', 'চর রমিজ', 'charramizup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(607, 'Borokheri', 'বড়খেড়ী', 'borokheriup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(608, 'Chargazi', 'চরগাজী', 'chargaziup.lakshmipur.gov.bd', 63, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(609, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(610, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(611, 'Bhadur', 'ভাদুর', 'bhadurup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(612, 'Ichhapur', 'ইছাপুর', 'ichhapurup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(613, 'Chandipur', 'চন্ডিপুর', 'chandipurup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(614, 'Lamchar', 'লামচর', 'lamcharup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(615, 'Darbeshpur', 'দরবেশপুর', 'darbeshpurup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(616, 'Karpara', 'করপাড়া', 'karparaup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(617, 'Bholakot', 'ভোলাকোট', 'bholakotup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(618, 'Bhatra', 'ভাটরা', 'bhatraup.lakshmipur.gov.bd', 64, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(619, 'Rajanagar', 'রাজানগর', 'rajanagarup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(620, 'Hosnabad', 'হোছনাবাদ', 'hosnabadup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(621, 'Swanirbor Rangunia', 'স্বনির্ভর রাঙ্গুনিয়া', 'swanirborranguniaup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(622, 'Mariumnagar', 'মরিয়মনগর', 'mariumnagarup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(623, 'Parua', 'পারুয়া', 'paruaup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(624, 'Pomra', 'পোমরা', 'pomraup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(625, 'Betagi', 'বেতাগী', 'betagiup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(626, 'Sharafbhata', 'সরফভাটা', 'sharafbhataup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(627, 'Shilok', 'শিলক', 'shilokup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(628, 'Chandraghona', 'চন্দ্রঘোনা', 'chandraghonaup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(629, 'Kodala', 'কোদালা', 'kodalaup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(630, 'Islampur', 'ইসলামপুর', 'islampurup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(631, 'South Rajanagar', 'দক্ষিণ রাজানগর', 'southrajanagarup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(632, 'Lalanagar', 'লালানগর', 'lalanagarup.chittagong.gov.bd', 65, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(633, 'Kumira', 'কুমিরা', 'kumiraup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(634, 'Banshbaria', 'বাঁশবারীয়া', 'banshbariaup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(635, 'Barabkunda', 'বারবকুন্ড', 'barabkundaup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(636, 'Bariadyala', 'বাড়িয়াডিয়ালা', 'bariadyalaup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(637, 'Muradpur', 'মুরাদপুর', 'muradpurup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(638, 'Saidpur', 'সাঈদপুর', 'saidpurup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(639, 'Salimpur', 'সালিমপুর', 'salimpurup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(640, 'Sonaichhari', 'সোনাইছড়ি', 'sonaichhariup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(641, 'Bhatiari', 'ভাটিয়ারী', 'bhatiariup.chittagong.gov.bd', 66, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(642, 'Korerhat', 'করেরহাট', 'korerhatup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(643, 'Hinguli', 'হিংগুলি', 'hinguliup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(644, 'Jorarganj', 'জোরারগঞ্জ', 'jorarganjup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(645, 'Dhoom', 'ধুম', 'dhoomup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(646, 'Osmanpur', 'ওসমানপুর', 'osmanpurup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(647, 'Ichakhali', 'ইছাখালী', 'ichakhaliup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(648, 'Katachhara', 'কাটাছরা', 'katachharaup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(649, 'Durgapur', 'দূর্গাপুর', 'durgapurup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(650, 'Mirsharai', 'মীরসরাই', 'mirsharaiup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(651, 'Mithanala', 'মিঠানালা', 'mithanalaup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(652, 'Maghadia', 'মঘাদিয়া', 'maghadiaup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(653, 'Khaiyachhara', 'খৈয়াছরা', 'khaiyachharaup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(654, 'Mayani', 'মায়ানী', 'mayaniup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(655, 'Haitkandi', 'হাইতকান্দি', 'haitkandiup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(656, 'Wahedpur', 'ওয়াহেদপুর', 'wahedpurup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(657, 'Saherkhali', 'সাহেরখালী', 'saherkhaliup.chittagong.gov.bd', 67, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(658, 'Asia', 'আশিয়া', 'asiaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(659, 'Kachuai', 'কাচুয়াই', 'kachuaiup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(660, 'Kasiais', 'কাশিয়াইশ', 'kasiaisup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(661, 'Kusumpura', 'কুসুমপুরা', 'kusumpuraup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(662, 'Kelishahar', 'কেলিশহর', 'kelishaharup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(663, 'Kolagaon', 'কোলাগাঁও', 'kolagaonup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(664, 'Kharana', 'খরনা', 'kharanaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(665, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(666, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(667, 'Chanhara', 'ছনহরা', 'chanharaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(668, 'Janglukhain', 'জঙ্গলখাইন', 'janglukhainup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(669, 'Jiri', 'জিরি', 'jiriup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(670, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(671, 'Dakkhin Bhurshi', 'দক্ষিণ ভূর্ষি', 'dakhinbhurshiup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(672, 'Dhalghat', 'ধলঘাট', 'dhalghatup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(673, 'Bara Uthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(674, 'Baralia', 'বরলিয়া', 'baraliaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(675, 'Bhatikhain', 'ভাটিখাইন', 'bhatikhainup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(676, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(677, 'Sobhandandi', 'শোভনদন্ডী', 'sobhandandiup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(678, 'Habilasdwi', 'হাবিলাসদ্বীপ', 'habilasdwipup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(679, 'Haidgaon', 'হাইদগাঁও', 'haidgaonup.chittagong.gov.bd', 68, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(680, 'Rahmatpur', 'রহমতপুর', 'rahmatpurup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(681, 'Harispur', 'হরিশপুর', 'harispurup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(682, 'Kalapania', 'কালাপানিয়া', 'kalapaniaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(683, 'Amanullah', 'আমানউল্যা', 'amanullahup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(684, 'Santoshpur', 'সন্তোষপুর', 'santoshpurup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(685, 'Gachhua', 'গাছুয়া', 'gachhuaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(686, 'Bauria', 'বাউরিয়া', 'bauriaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(687, 'Haramia', 'হারামিয়া', 'haramiaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(688, 'Magdhara', 'মগধরা', 'magdharaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(689, 'Maitbhanga', 'মাইটভাঙ্গা', 'maitbhangaup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(690, 'Sarikait', 'সারিকাইত', 'sarikaitup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(691, 'Musapur', 'মুছাপুর', 'musapurup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(692, 'Azimpur', 'আজিমপুর', 'azimpurup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(693, 'Urirchar', 'উড়িরচর', 'urircharup.chittagong.gov.bd', 69, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(694, 'Pukuria', 'পুকুরিয়া', 'pukuriaup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(695, 'Sadhanpur', 'সাধনপুর', 'sadhanpurup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(696, 'Khankhanabad', 'খানখানাবাদ', 'khankhanabadup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(697, 'Baharchhara', 'বাহারছড়া', 'baharchharaup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(698, 'Kalipur', 'কালীপুর', 'kalipurup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(699, 'Bailchhari', 'বৈলছড়ি', 'bailchhariup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(700, 'Katharia', 'কাথরিয়া', 'kathariaup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(701, 'Saral', 'সরল', 'saralup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(702, 'Silk', 'শীলকুপ', 'silkupup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(703, 'Chambal', 'চাম্বল', 'chambalup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(704, 'Gandamara', 'গন্ডামারা', 'gandamaraup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(705, 'Sekherkhil', 'শেখেরখীল', 'sekherkhilup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(706, 'Puichhari', 'পুঁইছড়ি', 'puichhariup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(707, 'Chhanua', 'ছনুয়া', 'chhanuaup.chittagong.gov.bd', 70, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(708, 'Kandhurkhil', 'কধুরখীল', 'kandhurkhilup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(709, 'Pashchim Gamdandi', 'পশ্চিম গোমদন্ডী', 'pashchimgamdandiup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(710, 'Purba Gomdandi', 'পুর্ব গোমদন্ডী', 'purbagomdandiup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(711, 'Sakpura', 'শাকপুরা', 'sakpuraup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(712, 'Saroatali', 'সারোয়াতলী', 'saroataliup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(713, 'Popadia', 'পোপাদিয়া', 'popadiaup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(714, 'Charandwi', 'চরনদ্বীপ', 'charandwipup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(715, 'Sreepur-Kharandwi', 'শ্রীপুর-খরন্দীপ', 'sreepurkharandwipup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(716, 'Amuchia', 'আমুচিয়া', 'amuchiaup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(717, 'Ahla Karaldenga', 'আহল্লা করলডেঙ্গা', 'ahlakaraldengaup.chittagong.gov.bd', 71, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(718, 'Boirag', 'বৈরাগ', 'boiragup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(719, 'Barasat', 'বারশত', 'barasatup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(720, 'Raipur', 'রায়পুর', 'raipurup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(721, 'Battali', 'বটতলী', 'battaliup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(722, 'Barumchara', 'বরম্নমচড়া', 'barumcharaup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(723, 'Baroakhan', 'বারখাইন', 'baroakhanup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(724, 'Anwara', 'আনোয়ারা', 'anwaraup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(725, 'Chatari', 'চাতরী', 'chatariup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(726, 'Paraikora', 'পরৈকোড়া', 'paraikoraup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(727, 'Haildhar', 'হাইলধর', 'haildharup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(728, 'Juidandi', 'জুঁইদন্ডী', 'juidandiup.chittagong.gov.bd', 72, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(729, 'Kanchanabad', 'কাঞ্চনাবাদ', 'kanchanabadup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(730, 'Joara', 'জোয়ারা', 'joaraup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(731, 'Barkal', 'বরকল', 'barkalup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(732, 'Barama', 'বরমা', 'baramaup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(733, 'Bailtali', 'বৈলতলী', 'bailtaliup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(734, 'Satbaria', 'সাতবাড়িয়া', 'satbariaup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(735, 'Hashimpur', 'হাশিমপুর', 'hashimpurup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(736, 'Dohazari', 'দোহাজারী', 'dohazariup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(737, 'Dhopachhari', 'ধোপাছড়ী', 'dhopachhariup.chittagong.gov.bd', 73, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(738, 'Charati', 'চরতী', 'charatiup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(739, 'Khagaria', 'খাগরিয়া', 'khagariaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(740, 'Nalua', 'নলুয়া', 'naluaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(741, 'Kanchana', 'কাঞ্চনা', 'kanchanaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(742, 'Amilaisi', 'আমিলাইশ', 'amilaisiup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(743, 'Eochiai', 'এওচিয়া', 'eochiaiup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(744, 'Madarsa', 'মাদার্শা', 'madarsaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(745, 'Dhemsa', 'ঢেমশা', 'dhemsaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(746, 'Paschim Dhemsa', 'পশ্চিম ঢেমশা', 'paschimdhemsaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(747, 'Keochia', 'কেঁওচিয়া', 'keochiaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(748, 'Kaliais', 'কালিয়াইশ', 'kaliaisup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(749, 'Bazalia', 'বাজালিয়া', 'bazaliaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(750, 'Puranagar', 'পুরানগড়', 'puranagarup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(751, 'Sadaha', 'ছদাহা', 'sadahaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(752, 'Satkania', 'সাতকানিয়া', 'satkaniaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(753, 'Sonakania', 'সোনাকানিয়া', 'sonakaniaup.chittagong.gov.bd', 74, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(754, 'Padua', 'পদুয়া', 'paduaup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(755, 'Barahatia', 'বড়হাতিয়া', 'barahatiaup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(756, 'Amirabad', 'আমিরাবাদ', 'amirabadup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(757, 'Charamba', 'চরম্বা', 'charambaup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(758, 'Kalauzan', 'কলাউজান', 'kalauzanup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(759, 'Lohagara', 'লোহাগাড়া', 'lohagaraup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(760, 'Putibila', 'পুটিবিলা', 'putibilaup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(761, 'Chunati', 'চুনতি', 'chunatiup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(762, 'Adhunagar', 'আধুনগর', 'adhunagarup.chittagong.gov.bd', 75, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(763, 'Farhadabad', 'ফরহাদাবাদ', 'farhadabadup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(764, 'Dhalai', 'ধলই', 'dhalaiup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(765, 'Mirjapur', 'মির্জাপুর', 'mirjapurup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(766, 'Nangolmora', 'নাঙ্গলমোরা', 'nangolmoraup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(767, 'Gomanmordan', 'গুমানমর্দ্দন', 'gomanmordanup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(768, 'Chipatali', 'ছিপাতলী', 'chipataliup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(769, 'Mekhal', 'মেখল', 'mekhalup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(770, 'Garduara', 'গড়দুয়ারা', 'garduaraup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(771, 'Fathepur', 'ফতেপুর', 'fathepurup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(772, 'Chikondandi', 'চিকনদন্ডী', 'chikondandiup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(773, 'Uttar Madrasha', 'উত্তর মাদার্শা', 'uttarmadrashaup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(774, 'Dakkin Madrasha', 'দক্ষিন মাদার্শা', 'dakkinmadrashaup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(775, 'Sikarpur', 'শিকারপুর', 'sikarpurup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(776, 'Budirchar', 'বুডিরশ্চর', 'budircharup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(777, 'Hathazari', 'হাটহাজারী', 'hathazariup.chittagong.gov.bd', 76, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(778, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(779, 'Baganbazar', 'বাগান বাজার', 'baganbazarup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(780, 'Dantmara', 'দাঁতমারা', 'dantmaraup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(781, 'Narayanhat', 'নারায়নহাট', 'narayanhatup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(782, 'Bhujpur', 'ভূজপুর', 'bhujpurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(783, 'Harualchari', 'হারুয়ালছড়ি', 'harualchariup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(784, 'Paindong', 'পাইনদং', 'paindongup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(785, 'Kanchannagor', 'কাঞ্চনগর', 'kanchannagorup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(786, 'Sunderpur', 'সুনদরপুর', 'sunderpurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(787, 'Suabil', 'সুয়াবিল', 'Suabilup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(788, 'Abdullapur', 'আবদুল্লাপুর', 'abdullapurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(789, 'Samitirhat', 'সমিতির হাট', 'samitirhatup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(790, 'Jafathagar', 'জাফতনগর', 'jafathagarup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(791, 'Bokhtapur', 'বক্তপুর', 'bokhtapurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(792, 'Roshangiri', 'রোসাংগিরী', 'roshangiriup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(793, 'Nanupur', 'নানুপুর', 'nanupurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(794, 'Lelang', 'লেলাং', 'lelangup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(795, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.chittagong.gov.bd', 77, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(796, 'Raozan', 'রাউজান', 'raozanup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(797, 'Bagoan', 'বাগোয়ান', 'bagoanup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(798, 'Binajuri', 'বিনাজুরী', 'binajuriup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(799, 'Chikdair', 'চিকদাইর', 'chikdairup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(800, 'Dabua', 'ডাবুয়া', 'dabuaup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(801, 'Purbagujra', 'পূর্ব গুজরা', 'purbagujraup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(802, 'Paschim Gujra', 'পশ্চিম গুজরা', 'paschimgujraup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(803, 'Gohira', 'গহিরা', 'gohiraup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(804, 'Holdia', 'হলদিয়া', 'holdiaup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(805, 'Kodolpur', 'কদলপূর', 'kodolpurup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(806, 'Noapara', 'নোয়াপাড়া', 'noaparaup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(807, 'Pahartali', 'পাহাড়তলী', 'pahartaliup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(808, 'Urkirchar', 'উড়কিরচর', 'urkircharup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(809, 'Nowajushpur', 'নওয়াজিশপুর', 'nowajushpurup.chittagong.gov.bd', 78, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(810, 'Char Patharghata', 'চর পাথরঘাটা', 'charpatharghataup.chittagong.gov.bd', 79, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(811, 'Char Lakshya', 'চর লক্ষ্যা', 'charlakshyaup.chittagong.gov.bd', 79, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(812, 'Juldha', 'জুলধা', 'juldhaup.chittagong.gov.bd', 79, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(813, 'Barauthan', 'বড় উঠান', 'barauthanup.chittagong.gov.bd', 79, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(814, 'Sikalbaha', 'শিকলবাহা', 'sikalbahaup.chittagong.gov.bd', 79, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(815, 'Islamabad', 'ইসলামাবাদ', 'islamabadup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(816, 'Islampur', 'ইসলামপুর', 'islampurup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(817, 'Pokkhali', 'পোকখালী', 'pokkhaliup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(818, 'Eidgaon', 'ঈদগাঁও', 'eidgaonup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(819, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(820, 'Chowfaldandi', 'চৌফলদন্ডী', 'chowfaldandi.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(821, 'Varuakhali', 'ভারুয়াখালী', 'varuakhaliup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(822, 'Pmkhali', 'পিএমখালী', 'pmkhaliup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(823, 'Khurushkhul', 'খুরুশকুল', 'khurushkhulup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(824, 'Jhilongjha', 'ঝিলংঝা', 'jhilongjhaup.coxsbazar.gov.bd', 80, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(825, 'Kakhara', 'কাকারা', 'Kakharaup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(826, 'Kaiar Bil', 'কাইয়ার বিল', 'kaiarbilup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(827, 'Konakhali', 'কোনাখালী', 'konakhaliup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(828, 'Khuntakhali', 'খুটাখালী', 'khuntakhaliup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(829, 'Chiringa', 'চিরিঙ্গা', 'chiringaup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(830, 'Demusia', 'ঢেমুশিয়া', 'demusiaup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(831, 'Dulahazara', 'ডুলাহাজারা', 'dulahazaraup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(832, 'Paschim Bara Bheola', 'পশ্চিম বড় ভেওলা', 'paschimbarabheolaup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(833, 'Badarkhali', 'বদরখালী', 'badarkhaliup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(834, 'Bamobil Chari', 'বামু বিলছড়ি', 'bamobilchariup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(835, 'Baraitali', 'বড়ইতলী', 'baraitaliup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(836, 'Bheola Manik Char', 'ভেওলা মানিক চর', 'bheolamanikcharup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(837, 'Saharbil', 'শাহারবিল', 'saharbilup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(838, 'Surajpur Manikpur', 'সুরজপুর মানিকপুর', 'surajpurmanikpurup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(839, 'Harbang', 'হারবাঙ্গ', 'harbangup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(840, 'Fashiakhali', 'ফাঁসিয়াখালী', 'fashiakhaliup.coxsbazar.gov.bd', 81, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(841, 'Ali Akbar Deil', 'আলি আকবর ডেইল', 'aliakbardeilup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(842, 'Uttar Dhurung', 'উত্তর ধুরুং', 'uttardhurungup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(843, 'Kaiyarbil', 'কৈয়ারবিল', 'kaiyarbilup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(844, 'Dakshi Dhurung', 'দক্ষিণ ধুরুং', 'dakshidhurungup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(845, 'Baragho', 'বড়ঘোপ', 'baraghopup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(846, 'Lemsikhali', 'লেমসিখালী', 'lemsikhaliup.coxsbazar.gov.bd', 82, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(847, 'Rajapalong', 'রাজাপালং', 'rajapalongup.coxsbazar.gov.bd', 83, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(848, 'Jaliapalong', 'জালিয়াপালং', 'jaliapalongup.coxsbazar.gov.bd', 83, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(849, 'Holdiapalong', 'হলদিয়াপালং', 'holdiapalongup.coxsbazar.gov.bd', 83, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(850, 'Ratnapalong', 'রত্নাপালং', 'ratnapalongup.coxsbazar.gov.bd', 83, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(851, 'Palongkhali', 'পালংখালী', 'palongkhali.coxsbazar.gov.bd', 83, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(852, 'Boro Moheshkhali', 'বড় মহেশখালী', 'boramoheshkhaliup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(853, 'Choto Moheshkhali', 'ছোট মহেশখালী', 'chotamoheshkhaliup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(854, 'Shaplapur', 'শাপলাপুর', 'shaplapurup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(855, 'Kutubjum', 'কুতুবজোম', 'kutubjumup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(856, 'Hoanak', 'হোয়ানক', 'hoanakup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(857, 'Kalarmarchhara', 'কালারমারছড়া', 'kalarmarchharaup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(858, 'Matarbari', 'মাতারবাড়ী', 'matarbariup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:22', '2026-03-09 16:19:22'),
(859, 'Dhalghata', 'ধলঘাটা', 'dhalghataup.coxsbazar.gov.bd', 84, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(860, 'Ujantia', 'উজানটিয়া', 'ujantiaup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(861, 'Taitong', 'টাইটং', 'taitongup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(862, 'Pekua', 'পেকুয়া', 'pekuaup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(863, 'Barabakia', 'বড় বাকিয়া', 'barabakiaup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(864, 'Magnama', 'মগনামা', 'magnamaup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(865, 'Rajakhali', 'রাজাখালী', 'rajakhaliup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(866, 'Shilkhali', 'শীলখালী', 'shilkhaliup.coxsbazar.gov.bd', 85, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(867, 'Fotekharkul', 'ফতেখাঁরকুল', 'fotekharkulup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(868, 'Rajarkul', 'রাজারকুল', 'rajarkulup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(869, 'Rashidnagar', 'রশীদনগর', 'rashidnagarup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(870, 'Khuniapalong', 'খুনিয়াপালং', 'khuniapalongup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(871, 'Eidghar', 'ঈদগড়', 'eidgharup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(872, 'Chakmarkul', 'চাকমারকুল', 'chakmarkulup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(873, 'Kacchapia', 'কচ্ছপিয়া', 'kacchapiaup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(874, 'Kauwarkho', 'কাউয়ারখোপ', 'kauwarkhopup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(875, 'Dakkhin Mithachhari', 'দক্ষিণ মিঠাছড়ি', 'dakkhinmithachhariup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(876, 'Jouarianala', 'জোয়ারিয়া নালা', 'jouarianalaup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(877, 'Garjoniya', 'গর্জনিয়া', 'garjoniyaup.coxsbazar.gov.bd', 86, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(878, 'Subrang', 'সাবরাং', 'subrangup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(879, 'Baharchara', 'বাহারছড়া', 'baharcharaup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(880, 'Hnila', 'হ্নীলা', 'hnilaup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(881, 'Whykong', 'হোয়াইক্যং', 'whykongup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(882, 'Saintmartin', 'সেন্ট মার্টিন', 'saintmartinup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(883, 'Teknaf Sadar', 'টেকনাফ সদর', 'teknafsadarup.coxsbazar.gov.bd', 87, '2026-03-09 16:19:23', '2026-03-09 16:19:23');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(884, 'Khagrachhari Sadar', 'খাগরাছড়ি সদর', 'sadarup.khagrachhari.gov.bd', 88, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(885, 'Golabari', 'গোলাবাড়ী', 'golabariup.khagrachhari.gov.bd', 88, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(886, 'Parachara', 'পেরাছড়া', 'paracharaup.khagrachhari.gov.bd', 88, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(887, 'Kamalchari', 'কমলছড়ি', 'kamalchariup.khagrachhari.gov.bd', 88, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(888, 'Merung', 'মেরুং', 'merungup.khagrachhari.gov.bd', 89, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(889, 'Boalkhali', 'বোয়ালখালী', 'boalkhaliup.khagrachhari.gov.bd', 89, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(890, 'Kabakhali', 'কবাখালী', 'kabakhaliup.khagrachhari.gov.bd', 89, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(891, 'Dighinala', 'দিঘীনালা', 'dighinalaup.khagrachhari.gov.bd', 89, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(892, 'Babuchara', 'বাবুছড়া', 'babucharaup.khagrachhari.gov.bd', 89, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(893, 'Logang', 'লোগাং', 'logangup.khagrachhari.gov.bd', 90, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(894, 'Changi', 'চেংগী', 'changiup.khagrachhari.gov.bd', 90, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(895, 'Panchari', 'পানছড়ি', 'panchariup.khagrachhari.gov.bd', 90, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(896, 'Latiban', 'লতিবান', 'latibanup.khagrachhari.gov.bd', 90, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(897, 'Dullyatali', 'দুল্যাতলী', 'dullyataliup.khagrachhari.gov.bd', 91, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(898, 'Barmachari', 'বর্মাছড়ি', 'barmachariup.khagrachhari.gov.bd', 91, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(899, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhariup.khagrachhari.gov.bd', 91, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(900, 'Bhaibonchara', 'ভাইবোনছড়া', 'bhaiboncharaup.khagrachhari.gov.bd', 92, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(901, 'Mahalchari', 'মহালছড়ি', 'mahalchariup.khagrachhari.gov.bd', 92, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(902, 'Mobachari', 'মুবাছড়ি', 'mobachariup.khagrachhari.gov.bd', 92, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(903, 'Kayanghat', 'ক্যায়াংঘাট', 'kayanghatup.khagrachhari.gov.bd', 92, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(904, 'Maischari', 'মাইসছড়ি', 'maischariup.khagrachhari.gov.bd', 92, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(905, 'Manikchari', 'মানিকছড়ি', 'manikchariup.khagrachhari.gov.bd', 93, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(906, 'Batnatali', 'বাটনাতলী', 'batnataliup.khagrachhari.gov.bd', 93, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(907, 'Jogyachola', 'যোগ্যছোলা', 'jogyacholaup.khagrachhari.gov.bd', 93, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(908, 'Tintahari', 'তিনটহরী', 'tintahariup.khagrachhari.gov.bd', 93, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(909, 'Ramgarh', 'রামগড়', 'ramgarhup.khagrachhari.gov.bd', 94, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(910, 'Patachara', 'পাতাছড়া', 'patacharaup.khagrachhari.gov.bd', 94, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(911, 'Hafchari', 'হাফছড়ি', 'hafchariup.khagrachhari.gov.bd', 94, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(912, 'Taindong', 'তাইন্দং', 'taindongup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(913, 'Tabalchari', 'তবলছড়ি', 'tabalchariup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(914, 'Barnal', 'বর্ণাল', 'barnalup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(915, 'Gomti', 'গোমতি', 'gomtiup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(916, 'Balchari', 'বেলছড়ি', 'balchariup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(917, 'Matiranga', 'মাটিরাঙ্গা', 'matirangaup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(918, 'Guimara', 'গুইমারা', 'guimaraup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(919, 'Amtali', 'আমতলি', 'amtaliup.khagrachhari.gov.bd', 95, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(920, 'Rajbila', 'রাজবিলা', 'rajbilaup.bandarban.gov.bd', 97, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(921, 'Tongkaboty', 'টংকাবতী', 'tongkabotyup.bandarban.gov.bd', 97, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(922, 'Suwalok', 'সুয়ালক', 'suwalokup.bandarban.gov.bd', 97, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(923, 'Bandarban Sadar', 'বান্দরবান সদর', 'bandarbansadarup.bandarban.gov.bd', 97, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(924, 'Kuhalong', 'কুহালং', 'kuhalongup.bandarban.gov.bd', 97, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(925, 'Alikadam Sadar', 'আলীকদম সদর', 'alikadamsadarup.bandarban.gov.bd', 98, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(926, 'Chwekhyong', 'চৈক্ষ্যং', 'chwekhyongup.bandarban.gov.bd', 98, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(927, 'Naikhyongchari Sadar', 'নাইক্ষ্যংছড়ি সদর', 'naikhyongcharisadarup.bandarban.gov.bd', 99, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(928, 'Gumdhum', 'ঘুমধুম', 'gumdhumup.bandarban.gov.bd', 99, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(929, 'Baishari', 'বাইশারী', 'baishariup.bandarban.gov.bd', 99, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(930, 'Sonaychari', 'সোনাইছড়ি', 'sonaychariup.bandarban.gov.bd', 99, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(931, 'Duwchari', 'দোছড়ি', 'duwchariup.bandarban.gov.bd', 99, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(932, 'Rowangchari Sadar', 'রোয়াংছড়ি সদর', 'rowangcharisadarup.bandarban.gov.bd', 100, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(933, 'Taracha', 'তারাছা', 'tarachaup.bandarban.gov.bd', 100, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(934, 'Alekyong', 'আলেক্ষ্যং', 'alekyongup.bandarban.gov.bd', 100, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(935, 'Nawapotong', 'নোয়াপতং', 'nawapotongup.bandarban.gov.bd', 100, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(936, 'Gajalia', 'গজালিয়া', 'gajaliaup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(937, 'Lama Sadar', 'লামা সদর', 'lamasadarup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(938, 'Fasiakhali', 'ফাসিয়াখালী', 'fasiakhaliup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(939, 'Fythong', 'ফাইতং', 'fythongup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(940, 'Rupushipara', 'রূপসীপাড়া', 'rupushiparaup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(941, 'Sarai', 'সরই', 'saraiup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(942, 'Aziznagar', 'আজিজনগর', 'aziznagarup.bandarban.gov.bd', 101, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(943, 'Paind', 'পাইন্দু', 'painduup.bandarban.gov.bd', 102, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(944, 'Ruma Sadar', 'রুমা সদর', 'rumasadarup.bandarban.gov.bd', 102, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(945, 'Ramakreprangsa', 'রেমাক্রীপ্রাংসা', 'ramakreprangsaup.bandarban.gov.bd', 102, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(946, 'Galanggya', 'গ্যালেংগ্যা', 'galanggyaup.bandarban.gov.bd', 102, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(947, 'Remakre', 'রেমাক্রী', 'remakreup.bandarban.gov.bd', 103, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(948, 'Tind', 'তিন্দু', 'tinduup.bandarban.gov.bd', 103, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(949, 'Thanchi Sadar', 'থানচি সদর', 'thanchisadarup.bandarban.gov.bd', 103, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(950, 'Balipara', 'বলিপাড়া', 'baliparaup.bandarban.gov.bd', 103, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(951, 'Rajapur', 'রাজাপুর', 'rajapurup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(952, 'Baradhul', 'বড়ধুল', 'baradhulup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(953, 'Belkuchi Sadar', 'বেলকুচি সদর', 'belkuchisadarup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(954, 'Dhukuriabera', 'ধুকুরিয়া বেড়া', 'dhukuriaberaup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(955, 'Doulatpur', 'দৌলতপুর', 'doulatpurup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(956, 'Bhangabari', 'ভাঙ্গাবাড়ী', 'bhangabariup.sirajganj.gov.bd', 104, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(957, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(958, 'Gharjan', 'ঘোরজান', 'gharjanup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(959, 'Khaskaulia', 'খাসকাউলিয়া', 'khaskauliaup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(960, 'Khaspukuria', 'খাসপুকুরিয়া', 'khaspukuriaup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(961, 'Omarpur', 'উমারপুর', 'omarpurup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(962, 'Sadia Chandpur', 'সদিয়া চাঁদপুর', 'sadiachandpurup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(963, 'Sthal', 'স্থল', 'sthalup.sirajganj.gov.bd', 105, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(964, 'Bhadraghat', 'ভদ্রঘাট', 'bhadraghatup.sirajganj.gov.bd', 106, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(965, 'Jamtail', 'জামতৈল', 'jamtailup.sirajganj.gov.bd', 106, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(966, 'Jhawail', 'ঝাঐল', 'jhawailup.sirajganj.gov.bd', 106, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(967, 'Roydaulatpur', 'রায়দৌলতপুর', 'roydaulatpurup.sirajganj.gov.bd', 106, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(968, 'Chalitadangha', 'চালিতাডাঙ্গা', 'chalitadanghaup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(969, 'Chargirish', 'চরগিরিশ', 'chargirishup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(970, 'Gandail', 'গান্ধাইল', 'gandailup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(971, 'Kazipur Sadar', 'কাজিপুর সদর', 'kazipursadarup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(972, 'Khasrajbari', 'খাসরাজবাড়ী', 'khasrajbariup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(973, 'Maijbari', 'মাইজবাড়ী', 'maijbariup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(974, 'Monsur Nagar', 'মনসুর নগর', 'monsurnagarup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(975, 'Natuarpara', 'নাটুয়ারপাড়া', 'natuarparaup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(976, 'Nishchintapur', 'নিশ্চিন্তপুর', 'nishchintapurup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(977, 'Sonamukhi', 'সোনামুখী', 'sonamukhiup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(978, 'Subhagacha', 'শুভগাছা', 'subhagachaup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(979, 'Tekani', 'তেকানী', 'tekaniup.sirajganj.gov.bd', 107, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(980, 'Brommogacha', 'ব্রহ্মগাছা', 'brommogachaup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(981, 'Chandaikona', 'চান্দাইকোনা', 'chandaikonaup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(982, 'Dhamainagar', 'ধামাইনগর', 'dhamainagarup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(983, 'Dhangora', 'ধানগড়া', 'dhangoraup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(984, 'Dhubil', 'ধুবিল', 'dhubilup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(985, 'Ghurka', 'ঘুড়কা', 'ghurkaup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(986, 'Nalka', 'নলকা', 'nalkaup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(987, 'Pangashi', 'পাঙ্গাসী', 'pangashiup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(988, 'Sonakhara', 'সোনাখাড়া', 'sonakharaup.sirajganj.gov.bd', 108, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(989, 'Beltail', 'বেলতৈল', 'beltailup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(990, 'Jalalpur', 'জালালপুর', 'jalalpurup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(991, 'Kayempure', 'কায়েমপুর', 'kayempureup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(992, 'Garadah', 'গাড়াদহ', 'garadahup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(993, 'Potazia', 'পোতাজিয়া', 'potaziaup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(994, 'Rupbati', 'রূপবাটি', 'rupbatiup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(995, 'Gala', 'গালা', 'galaup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(996, 'Porzona', 'পোরজনা', 'porzonaup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(997, 'Habibullah Nagar', 'হাবিবুল্লাহ নগর', 'habibullahnagarup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(998, 'Khukni', 'খুকনী', 'khukniup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(999, 'Koizuri', 'কৈজুরী', 'koizuriup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1000, 'Sonatoni', 'সোনাতনী', 'sonatoniup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1001, 'Narina', 'নরিনা', 'narinaup.sirajganj.gov.bd', 109, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1002, 'Bagbati', 'বাগবাটি', 'bagbatiup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1003, 'Ratankandi', 'রতনকান্দি', 'ratankandiup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1004, 'Bohuli', 'বহুলী', 'bohuliup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1005, 'Sheyalkol', 'শিয়ালকোল', 'sheyalkolup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1006, 'Khokshabari', 'খোকশাবাড়ী', 'khokshabariup.nilphamari.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1007, 'Songacha', 'ছোনগাছা', 'songachaup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1008, 'Mesra', 'মেছড়া', 'mesraup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1009, 'Kowakhola', 'কাওয়াখোলা', 'kowakholaup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1010, 'Kaliahoripur', 'কালিয়াহরিপুর', 'kaliahoripurup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1011, 'Soydabad', 'সয়দাবাদ', 'soydabadup.sirajganj.gov.bd', 110, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1012, 'Baruhas', 'বারুহাস', 'baruhasup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1013, 'Talam', 'তালম', 'talamup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1014, 'Soguna', 'সগুনা', 'sogunaup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1015, 'Magura Binod', 'মাগুড়া বিনোদ', 'magurabinodup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1016, 'Naogaon', 'নওগাঁ', 'naogaonup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1017, 'Tarash Sadar', 'তাড়াশ সদর', 'tarashsadarup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1018, 'Madhainagar', 'মাধাইনগর', 'madhainagarup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1019, 'Deshigram', 'দেশীগ্রাম', 'deshigramup.sirajganj.gov.bd', 111, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1020, 'Ullapara Sadar', 'উল্লাপাড়া সদর', 'ullaparasadarup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1021, 'Ramkrisnopur', 'রামকৃষ্ণপুর', 'ramkrisnopurup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1022, 'Bangala', 'বাঙ্গালা', 'bangalaup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1023, 'Udhunia', 'উধুনিয়া', 'udhuniaup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1024, 'Boropangashi', 'বড়পাঙ্গাসী', 'boropangashiup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1025, 'Durga Nagar', 'দুর্গা নগর', 'durganagarup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1026, 'Purnimagati', 'পূর্ণিমাগাতী', 'purnimagatiup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1027, 'Salanga', 'সলঙ্গা', 'salangaup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1028, 'Hatikumrul', 'হটিকুমরুল', 'hatikumrulup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1029, 'Borohor', 'বড়হর', 'borohorup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1030, 'Ponchocroshi', 'পঞ্চক্রোশী', 'ponchocroshiup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1031, 'Salo', 'সলপ', 'salopup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1032, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sirajganj.gov.bd', 112, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1033, 'Vaina', 'ভায়না', 'vainaup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1034, 'Tantibonda', 'তাঁতিবন্দ', 'tantibondaup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1035, 'Manikhat', 'মানিকহাট', 'manikhatup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1036, 'Dulai', 'দুলাই', 'dulaiup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1037, 'Ahammadpur', 'আহম্মদপুর', 'ahammadpurup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1038, 'Raninagar', 'রাণীনগর', 'raninagarup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1039, 'Satbaria', 'সাতবাড়ীয়া', 'satbariaup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1040, 'Hatkhali', 'হাটখালী', 'hatkhaliup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1041, 'Nazirganj', 'নাজিরগঞ্জ', 'nazirganjup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1042, 'Sagorkandi', 'সাগরকান্দি', 'sagorkandiup.pabna.gov.bd', 113, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1043, 'Sara', 'সাঁড়া', 'saraup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1044, 'Pakshi', 'পাকশী', 'pakshiup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1045, 'Muladuli', 'মুলাডুলি', 'muladuliup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1046, 'Dashuria', 'দাশুরিয়া', 'dashuriaup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1047, 'Silimpur', 'ছলিমপুর', 'silimpurup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1048, 'Sahapur', 'সাহাপুর', 'sahapurup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1049, 'Luxmikunda', 'লক্ষীকুন্ডা', 'luxmikundaup.pabna.gov.bd', 114, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1050, 'Bhangura', 'ভাঙ্গুড়া', 'bhanguraup.pabna.gov.bd', 115, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1051, 'Khanmarich', 'খানমরিচ', 'khanmarichup.pabna.gov.bd', 115, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1052, 'Ashtamanisha', 'অষ্টমণিষা', 'ashtamanishaup.pabna.gov.bd', 115, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1053, 'Dilpasar', 'দিলপাশার', 'dilpasarup.pabna.gov.bd', 115, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1054, 'Parbhangura', 'পারভাঙ্গুড়া', 'parbhanguraup.pabna.gov.bd', 115, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1055, 'Maligachha', 'মালিগাছা', 'maligachhaup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1056, 'Malanchi', 'মালঞ্চি', 'malanchiup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1057, 'Gayeshpur', 'গয়েশপুর', 'gayeshpurup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1058, 'Ataikula', 'আতাইকুলা', 'ataikulaup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1059, 'Chartarapur', 'চরতারাপুর', 'chartarapurup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1060, 'Sadullahpur', 'সাদুল্লাপুর', 'sadullahpurup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1061, 'Bharara', 'ভাঁড়ারা', 'bhararaup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1062, 'Dogachi', 'দোগাছী', 'dogachiup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1063, 'Hemayetpur', 'হেমায়েতপুর', 'hemayetpurup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1064, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.pabna.gov.bd', 116, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1065, 'Haturia Nakalia', 'হাটুরিয়া নাকালিয়া', 'haturianakaliaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1066, 'Notun Varenga', 'নতুন ভারেঙ্গা', 'notunvarengaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1067, 'Koitola', 'কৈটোলা', 'koitolaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1068, 'Chakla', 'চাকলা', 'chaklaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1069, 'Jatsakhini', 'জাতসাখিনি', 'jatsakhiniup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1070, 'Puran Varenga', 'পুরান ভারেঙ্গা', 'puranvarengaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1071, 'Ruppur', 'রূপপুর', 'ruppurup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1072, 'Masumdia', 'মাসুমদিয়া', 'masumdiaup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1073, 'Dhalar Char', 'ঢালার চর', 'dhalarcharup.pabna.gov.bd', 117, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1074, 'Majhpara', 'মাজপাড়া', 'majhparaup.pabna.gov.bd', 118, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1075, 'Chandba', 'চাঁদভা', 'chandbaup.pabna.gov.bd', 118, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1076, 'Debottar', 'দেবোত্তর', 'debottarup.pabna.gov.bd', 118, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1077, 'Ekdanta', 'একদন্ত', 'ekdantaup.pabna.gov.bd', 118, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1078, 'Laxshmipur', 'লক্ষীপুর', 'laxshmipurup.pabna.gov.bd', 118, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1079, 'Handial', 'হান্ডিয়াল', 'handialup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1080, 'Chhaikola', 'ছাইকোলা', 'chhaikolaup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1081, 'Nimaichara', 'নিমাইচড়া', 'nimaicharaup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1082, 'Gunaigachha', 'গুনাইগাছা', 'gunaigachhaup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1083, 'Parshadanga', 'পার্শ্বডাঙ্গা', 'parshadangaup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1084, 'Failjana', 'ফৈলজানা', 'failjanaup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1085, 'Mulgram', 'মুলগ্রাম', 'mulgramup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1086, 'Haripur', 'হরিপুর', 'haripurup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1087, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1088, 'Bilchalan', 'বিলচলন', 'bilchalanup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1089, 'Danthia Bamangram', 'দাতিয়া বামনগ্রাম', 'danthiabamangramup.pabna.gov.bd', 119, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1090, 'Nagdemra', 'নাগডেমড়া', 'nagdemraup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1091, 'Dhulauri', 'ধুলাউড়ি', 'dhulauriup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1092, 'Bhulbaria', 'ভুলবাড়ীয়া', 'bhulbariaup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1093, 'Dhopadaha', 'ধোপাদহ', 'dhopadahaup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1094, 'Karamja', 'করমজা', 'karamjaup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1095, 'Kashinathpur', 'কাশিনাথপুর', 'kashinathpurup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1096, 'Gaurigram', 'গৌরীগ্রাম', 'gaurigramup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1097, 'Nandanpur', 'নন্দনপুর', 'nandanpurup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1098, 'Khetupara', 'ক্ষেতুপাড়া', 'khetuparaup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1099, 'Ar-Ataikula', 'আর-আতাইকুলা', 'rataiqulaup.pabna.gov.bd', 120, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1100, 'Brilahiribari', 'বৃলাহিড়ীবাড়ী', 'brilahiribariup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1101, 'Pungali', 'পুঙ্গুলি', 'pungaliup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1102, 'Faridpur', 'ফরিদপুর', 'faridpurup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1103, 'Hadal', 'হাদল', 'hadalup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1104, 'Banwarinagar', 'বনওয়ারীনগর', 'banwarinagarup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1105, 'Demra', 'ডেমড়া', 'demraup.pabna.gov.bd', 121, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1106, 'Birkedar', 'বীরকেদার', 'birkedarup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1107, 'Kalai', 'কালাই', 'kalaiup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1108, 'Paikar', 'পাইকড়', 'paikarup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1109, 'Narhatta', 'নারহট্ট', 'narhattaup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1110, 'Murail', 'মুরইল', 'murailup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1111, 'Kahaloo', 'কাহালু', 'kahalooup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1112, 'Durgapur', 'দূর্গাপুর', 'durgapurup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1113, 'Jamgaon', 'জামগ্রাম', 'jamgaonup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1114, 'Malancha', 'মালঞ্চা', 'malanchaup.bogra.gov.bd', 122, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1115, 'Fapore', 'ফাঁপোর', 'faporeup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1116, 'Shabgram', 'সাবগ্রাম', 'shabgramup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1117, 'Nishindara', 'নিশিন্দারা', 'nishindaraup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1118, 'Erulia', 'এরুলিয়া', 'eruliaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1119, 'Rajapur', 'রাজাপুর', 'rajapurup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1120, 'Shakharia', 'শাখারিয়া', 'shakhariaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1121, 'Sekherkola', 'শেখেরকোলা', 'sekherkolaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1122, 'Gokul', 'গোকুল', 'gokulup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1123, 'Noongola', 'নুনগোলা', 'noongolaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1124, 'Lahiripara', 'লাহিড়ীপাড়া', 'lahiriparaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1125, 'Namuja', 'নামুজা', 'namujaup.bogra.gov.bd', 123, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1126, 'Sariakandi Sadar', 'সারিয়াকান্দি সদর', 'sariakandisadarup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1127, 'Narchi', 'নারচী', 'narchiup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1128, 'Bohail', 'বোহাইল', 'bohailup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1129, 'Chaluabari', 'চালুয়াবাড়ী', 'chaluabariup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1130, 'Chandanbaisha', 'চন্দনবাইশা', 'chandanbaishaup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1131, 'Hatfulbari', 'হাটফুলবাড়ী', 'hatfulbariup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1132, 'Hatsherpur', 'হাটশেরপুর', 'hatsherpurup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1133, 'Karnibari', 'কর্ণিবাড়ী', 'karnibariup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1134, 'Kazla', 'কাজলা', 'kazlaup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1135, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1136, 'Kamalpur', 'কামালপুর', 'kamalpur.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1137, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabari.bogra.gov.bd', 124, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1138, 'Asekpur', 'আশেকপুর', 'asekpurup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1139, 'Madla', 'মাদলা', 'madlaup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1140, 'Majhira', 'মাঝিড়া', 'majhiraup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1141, 'Aria', 'আড়িয়া', 'ariaup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1142, 'Kharna', 'খরনা', 'kharnaup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1143, 'Khottapara', 'খোট্টাপাড়া', 'Khottaparaup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1144, 'Chopinagar', 'চোপিনগর', 'chopinagarup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1145, 'Amrul', 'আমরুল', 'amrulup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1146, 'Gohail', 'গোহাইল', 'gohailup.bogra.gov.bd', 125, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1147, 'Zianagar', 'জিয়ানগর', 'zianagarup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1148, 'Chamrul', 'চামরুল', 'chamrulup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1149, 'Dupchanchia', 'দুপচাঁচিয়া', 'dupchanchiaup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1150, 'Gunahar', 'গুনাহার', 'gunaharup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1151, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1152, 'Talora', 'তালোড়া', 'taloraup.bogra.gov.bd', 126, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1153, 'Chhatiangram', 'ছাতিয়ানগ্রাম', 'chhatiangramup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1154, 'Nasaratpur', 'নশরতপুর', 'nasaratpurup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1155, 'Adamdighi', 'আদমদিঘি', 'adamdighiup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1156, 'Kundagram', 'কুন্দগ্রাম', 'kundagramup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1157, 'Chapapur', 'চাঁপাপুর', 'chapapurup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1158, 'Shantahar', 'সান্তাহার', 'shantaharup.bogra.gov.bd', 127, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1159, 'Burail', 'বুড়ইল', 'burailup.bogra.gov.bd', 128, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1160, 'Nandigram', 'নন্দিগ্রাম', 'nandigramup.bogra.gov.bd', 128, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1161, 'Bhatra', 'ভাটরা', 'bhatraup.bogra.gov.bd', 128, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1162, 'Thalta Majhgram', 'থালতা মাঝগ্রাম', 'thaltamajhgramup.bogra.gov.bd', 128, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1163, 'Bhatgram', 'ভাটগ্রাম', 'bhatgramup.bogra.gov.bd', 128, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1164, 'Sonatala', 'সোনাতলা', 'sonatalaup.bogra.gov.bd', 129, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1165, 'Balua', 'বালুয়া', 'baluaup.bogra.gov.bd', 129, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1166, 'Zorgacha', 'জোড়গাছা', 'zorgachaup.bogra.gov.bd', 129, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1167, 'Digdair', 'দিগদাইড়', 'digdairup.bogra.gov.bd', 129, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1168, 'Madhupur', 'মধুপুর', 'madhupurup.bogra.gov.bd', 129, '2026-03-09 16:19:23', '2026-03-09 16:19:23'),
(1169, 'Pakulla', 'পাকুল্ল্যা', 'pakullaup.bogra.gov.bd', 129, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1170, 'Tekani Chukinagar', 'তেকানী চুকাইনগর', 'tekanichukinagarup.bogra.gov.bd', 129, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1171, 'Nimgachi', 'নিমগাছি', 'nimgachiup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1172, 'Kalerpara', 'কালেরপাড়া', 'kalerparaup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1173, 'Chikashi', 'চিকাশী', 'chikashiup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1174, 'Gossainbari', 'গোসাইবাড়ী', 'gossainbariup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1175, 'Bhandarbari', 'ভান্ডারবাড়ী', 'bhandarbariup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1176, 'Gopalnagar', '১গোপালনগর', 'gopalnagarup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1177, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1178, 'Chowkibari', 'চৌকিবাড়ী', 'chowkibariup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1179, 'Elangi', 'এলাঙ্গী', 'elangiup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1180, 'Dhunat Sadar', 'ধুনট সদর', 'dhunatsadarup.bogra.gov.bd', 130, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1181, 'Baliadighi', 'বালিয়া দিঘী', 'baliadighiup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1182, 'Dakshinpara', 'দক্ষিণপাড়া', 'dakshinparaup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1183, 'Durgahata', 'দুর্গাহাটা', 'durgahataup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1184, 'Kagail', 'কাগইল', 'kagailup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1185, 'Sonarai', 'সোনারায়', 'sonaraiup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1186, 'Rameshwarpur', 'রামেশ্বরপুর', 'rameshwarpurup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1187, 'Naruamala', 'নাড়ুয়ামালা', 'naruamalaup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1188, 'Nepaltali', 'নেপালতলী', 'nepaltaliup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1189, 'Gabtali', 'গাবতলি', 'gabtaliup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1190, 'Mahishaban', 'মহিষাবান', 'mahishabanup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1191, 'Nasipur', 'নশিপুর', 'nasipurup.bogra.gov.bd', 131, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1192, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1193, 'Khamarkandi', 'খামারকান্দি', 'khamarkandiup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1194, 'Garidaha', 'গাড়িদহ', 'garidahaup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1195, 'Kusumbi', 'কুসুম্বী', 'kusumbiup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1196, 'Bishalpur', 'বিশালপুর', 'bishalpurup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1197, 'Shimabari', 'সীমাবাড়ি', 'shimabariup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1198, 'Shahbondegi', 'শাহবন্দেগী', 'shahbondegiup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1199, 'Sughat', 'সুঘাট', 'sughatup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1200, 'Khanpur', 'খানপুর', 'khanpurup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1201, 'Bhabanipur', 'ভবানীপুর', 'bhabanipurup.bogra.gov.bd', 132, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1202, 'Moidanhatta', 'ময়দানহাট্টা', 'moidanhattaup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1203, 'Kichok', 'কিচক', 'kichokup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1204, 'Atmul', 'আটমূল', 'atmulup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1205, 'Pirob', 'পিরব', 'pirobup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1206, 'Majhihatta', 'মাঝিহট্ট', 'majhihattaup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1207, 'Buriganj', 'বুড়িগঞ্জ', 'buriganjup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1208, 'Bihar', 'বিহার', 'biharup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1209, 'Shibganj', 'শিবগঞ্জ', 'shibganjup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1210, 'Deuly', 'দেউলি', 'deulyup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1211, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1212, 'Mokamtala', 'মোকামতলা', 'mokamtalaup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1213, 'Raynagar', 'রায়নগর', 'raynagarup.bogra.gov.bd', 133, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1214, 'Darsanpara', 'দর্শনপাড়া', 'darsanparaup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1215, 'Hujuripara', 'হুজুরী পাড়া', 'hujuriparaup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1216, 'Damkura', 'দামকুড়া', 'damkuraup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1217, 'Horipur', 'হরিপুর', 'horipurup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1218, 'Horogram', 'হড়গ্রাম', 'horogramup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1219, 'Harian', 'হরিয়ান', 'harianup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1220, 'Borgachi', 'বড়্গাছি', 'borgachiup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1221, 'Parila', 'পারিলা', 'parilaup.rajshahi.gov.bd', 134, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1222, 'Naopara', 'নওপাড়া', 'naoparaup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1223, 'Kismatgankoir', 'কিসমতগণকৈড়', 'kismatgankoirup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1224, 'Pananagar', 'পানানগর', 'pananagarup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1225, 'Deluabari', 'দেলুয়াবাড়ী', 'deluabariup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1226, 'Jhaluka', 'ঝালুকা', 'jhalukaup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1227, 'Maria', 'মাড়িয়া', 'mariaup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1228, 'Joynogor', 'জয়নগর', 'joynogorup.rajshahi.gov.bd', 135, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1229, 'Dhuroil', 'ধুরইল', 'dhuroilup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1230, 'Ghasigram', 'ঘষিগ্রাম', 'ghasigramup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1231, 'Raighati', 'রায়ঘাটি', 'raighatiup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1232, 'Mougachi', 'মৌগাছি', 'mougachiup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1233, 'Baksimoil', 'বাকশিমইল', 'baksimoilup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1234, 'Jahanabad', 'জাহানাবাদ', 'jahanabadup.rajshahi.gov.bd', 136, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1235, 'Yousufpur', 'ইউসুফপুর', 'yousufpurup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1236, 'Solua', 'শলুয়া', 'soluaup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1237, 'Sardah', 'সরদহ', 'sardahup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1238, 'Nimpara', 'নিমপাড়া', 'nimparaup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1239, 'Charghat', 'চারঘাট', 'charghatup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1240, 'Vialuxmipur', 'ভায়ালক্ষ্মীপুর', 'vialuxmipurup.rajshahi.gov.bd', 137, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1241, 'Puthia', 'পুঠিয়া', 'puthiaup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1242, 'Belpukuria', 'বেলপুকুরিয়া', 'belpukuriaup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1243, 'Baneswar', 'বানেশ্বর', 'baneswarup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1244, 'Valukgachi', 'ভালুক গাছি', 'valukgachiup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1245, 'Shilmaria', 'শিলমাড়িয়া', 'shilmariaup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1246, 'Jewpara', 'জিউপাড়া', 'jewparaup.rajshahi.gov.bd', 138, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1247, 'Bajubagha', 'বাজুবাঘা', 'bajubaghaup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1248, 'Gorgori', 'গড়গড়ি', 'gorgoriup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1249, 'Pakuria', 'পাকুড়িয়া', 'pakuriaup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1250, 'Monigram', 'মনিগ্রাম', 'monigramup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1251, 'Bausa', 'বাউসা', 'bausaup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1252, 'Arani', 'আড়ানী', 'araniup.rajshahi.gov.bd', 139, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1253, 'Godagari', 'গোদাগাড়ী', 'godagariup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1254, 'Mohonpur', 'মোহনপুর', 'mohonpurup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1255, 'Pakri', 'পাকড়ী', 'pakriup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1256, 'Risikul', 'রিশিকুল', 'risikulup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1257, 'Gogram', 'গোগ্রাম', 'gogramup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1258, 'Matikata', 'মাটিকাটা', 'matikataup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1259, 'Dewpara', 'দেওপাড়া', 'dewparaup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1260, 'Basudebpur', 'বাসুদেবপুর', 'basudebpurup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1261, 'Asariadaha', 'আষাড়িয়াদহ', 'asariadahaup.rajshahi.gov.bd', 140, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1262, 'Kalma', 'কলমা', 'kalmaup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1263, 'Badhair', 'বাধাইড়', 'badhairup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1264, 'Panchandar', 'পাঁচন্দর', 'panchandarup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1265, 'Saranjai', 'সরঞ্জাই', 'saranjaiup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1266, 'Talondo', 'তালন্দ', 'talondoup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1267, 'Kamargaon', 'কামারগাঁ', 'kamargaonup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1268, 'Chanduria', 'চান্দুড়িয়া', 'chanduriaup.rajshahi.gov.bd', 141, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1269, 'Gobindopara', 'গোবিন্দপাড়া', 'gobindoparaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1270, 'Nordas', 'নরদাস', 'nordasup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1271, 'Dippur', 'দ্বীপপুর', 'dippurup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1272, 'Borobihanoli', 'বড়বিহানলী', 'borobihanoliup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1273, 'Auchpara', 'আউচপাড়া', 'auchparaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1274, 'Sreepur', 'শ্রীপুর', 'sreepurup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1275, 'Basupara', 'বাসুপাড়া', 'basuparaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1276, 'Kacharikoalipara', 'কাচাড়ী কোয়লিপাড়া', 'kacharikoaliparaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1277, 'Suvodanga', 'শুভডাঙ্গা', 'suvodangaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1278, 'Mariaup', 'মাড়িয়া', 'mariaup10.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1279, 'Ganipur', 'গণিপুর', 'ganipurup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1280, 'Zhikara', 'ঝিকড়া', 'zhikaraup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1281, 'Gualkandi', 'গোয়ালকান্দি', 'gualkandiup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1282, 'Hamirkutsa', 'হামিরকুৎসা', 'hamirkutsaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1283, 'Jogipara', 'যোগিপাড়া', 'jogiparaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1284, 'Sonadanga', 'সোনাডাঙ্গা', 'sonadangaup.rajshahi.gov.bd', 142, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1285, 'Brahmapur', 'ব্রহ্মপুর', 'brahmapurup.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1286, 'Madhnagar', 'মাধনগর', 'madhnagar.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1287, 'Khajura', 'খাজুরা', 'khajura.bdgovportal.com', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1288, 'Piprul', 'পিপরুল', 'piprulup.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1289, 'Biprobelghoria', 'বিপ্রবেলঘড়িয়া', 'biprobelghoria.bdgovportal.com', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1290, 'Chhatni', 'ছাতনী', 'chhatni.bdgovportal.com', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1291, 'Tebaria', 'তেবাড়িয়া', 'tebariaup.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1292, 'Dighapatia', 'দিঘাপতিয়া', 'dighapatiaup.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1293, 'Luxmipurkholabaria', 'লক্ষীপুর খোলাবাড়িয়া', 'luxmipurkholabariaup.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1294, 'Barahorispur', 'বড়হরিশপুর', 'barahorispur.bdgovportal.com', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1295, 'Kaphuria', 'কাফুরিয়া', 'kaphuria.bdgovportal.com', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1296, 'Halsa', 'হালসা', 'halsa.natore.gov.bd', 143, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1297, 'Sukash', 'শুকাশ', 'sukashup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1298, 'Dahia', 'ডাহিয়া', 'dahiaup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1299, 'Italy', 'ইটালী', 'italyup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1300, 'Kalam', 'কলম', 'kalamup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1301, 'Chamari', 'চামারী', 'chamariup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1302, 'Hatiandaha', 'হাতিয়ানদহ', 'hatiandahaup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1303, 'Lalore', 'লালোর', 'laloreup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1304, 'Sherkole', 'শেরকোল', 'sherkoleup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1305, 'Tajpur', 'তাজপুর', 'tajpurup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1306, 'Chaugram', 'চৌগ্রাম', 'chaugramup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1307, 'Chhatardighi', 'ছাতারদিঘী', 'chhatardighiup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1308, 'Ramanandakhajura', 'রামান্দখাজুরা', 'ramanandakhajuraup.natore.gov.bd', 144, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1309, 'Joari', 'জোয়াড়ী', 'joariup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1310, 'Baraigram', 'বড়াইগ্রাম', 'baraigramup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1311, 'Zonail', 'জোনাইল', 'zonailup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1312, 'Nagor', 'নগর', 'nagorup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1313, 'Majgoan', 'মাঝগাও', 'majgoanup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1314, 'Gopalpur', 'গোপালপুর', 'gopalpurup.natore.gov.bd', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1315, 'Chandai', 'চান্দাই', 'chandai.bdgovportal.com', 145, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1316, 'Panka', 'পাঁকা', 'pankaup.natore.gov.bd', 146, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1317, 'Jamnagor', 'জামনগর', 'jamnagorup.natore.gov.bd', 146, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1318, 'Bagatipara', 'বাগাতিপাড়া', 'bagatiparaup.natore.gov.bd', 146, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1319, 'Dayarampur', 'দয়ারামপুর', 'dayarampurup.natore.gov.bd', 146, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1320, 'Faguardiar', 'ফাগুয়ারদিয়াড়', 'faguardiarup.natore.gov.bd', 146, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1321, 'Lalpur', 'লালপুর', 'lalpurup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1322, 'Iswardi', 'ঈশ্বরদী', 'iswardiup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1323, 'Chongdhupoil', 'চংধুপইল', 'chongdhupoilup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1324, 'Arbab', 'আড়বাব', 'arbabup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1325, 'Bilmaria', 'বিলমাড়িয়া', 'bilmariaup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1326, 'Duaria', 'দুয়ারিয়া', 'duariaup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1327, 'Oalia', 'ওয়ালিয়া', 'oaliaup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1328, 'Durduria', 'দুড়দুরিয়া', 'durduriaup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1329, 'Arjunpur', 'অর্জুনপুর বরমহাটী', 'arjunpurup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1330, 'Kadimchilan', 'কদিমচিলান', 'kadimchilanup.natore.gov.bd', 147, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1331, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1332, 'Biaghat', 'বিয়াঘাট', 'biaghatup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1333, 'Khubjipur', 'খুবজীপুর', 'khubjipurup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(1334, 'Dharabarisha', 'ধারাবারিষা', 'dharabarishaup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1335, 'Moshindha', 'মসিন্দা', 'moshindhaup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1336, 'Chapila', 'চাপিলা', 'chapilaup.natore.gov.bd', 148, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1337, 'Rukindipur', 'রুকিন্দীপুর', 'rukindipurup.joypurhat.gov.bd', 150, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1338, 'Sonamukhi', 'সোনামূখী', 'sonamukhiup.joypurhat.gov.bd', 150, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1339, 'Tilakpur', 'তিলকপুর', 'tilakpurup.joypurhat.gov.bd', 150, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1340, 'Raikali', 'রায়কালী', 'raikaliup.joypurhat.gov.bd', 150, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1341, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.joypurhat.gov.bd', 150, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1342, 'Matrai', 'মাত্রাই', 'matraiup.joypurhat.gov.bd', 151, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1343, 'Ahammedabad', 'আহম্মেদাবাদ', 'ahammedabadup.joypurhat.gov.bd', 151, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1344, 'Punot', 'পুনট', 'punotup.joypurhat.gov.bd', 151, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1345, 'Zindarpur', 'জিন্দারপুর', 'zindarpurup.joypurhat.gov.bd', 151, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1346, 'Udaipur', 'উদয়পুর', 'udaipurup.joypurhat.gov.bd', 151, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1347, 'Alampur', 'আলমপুর', 'alampurup.joypurhat.gov.bd', 152, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1348, 'Borail', 'বড়াইল', 'borailup.joypurhat.gov.bd', 152, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1349, 'Tulshiganga', ' তুলশীগংগা', 'tulshigangaup.joypurhat.gov.bd', 152, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1350, 'Mamudpur', 'মামুদপুর', 'mamudpurup.joypurhat.gov.bd', 152, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1351, 'Boratara', 'বড়তারা', 'borataraup.joypurhat.gov.bd', 152, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1352, 'Bagjana', 'বাগজানা', 'bagjanaup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1353, 'Dharanji', 'ধরঞ্জি', 'dharanjiup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1354, 'Aymarasulpur', 'আয়মারসুলপুর', 'aymarasulpurup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1355, 'Balighata', 'বালিঘাটা', 'balighataup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1356, 'Atapur', 'আটাপুর', 'atapurup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1357, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1358, 'Aolai', 'আওলাই', 'aolaiup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1359, 'Kusumba', 'কুসুম্বা', 'kusumbaup.joypurhat.gov.bd', 153, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1360, 'Amdai', 'আমদই', 'amdaiup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1361, 'Bamb', 'বম্বু', 'bambuup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1362, 'Dogachi', 'দোগাছি', 'dogachiup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1363, 'Puranapail', 'পুরানাপৈল', 'puranapailup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1364, 'Jamalpur', 'জামালপুর', 'jamalpurup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1365, 'Chakborkat', 'চকবরকত', 'chakborkatup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1366, 'Mohammadabad', 'মোহাম্মদাবাদ', 'mohammadabadup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1367, 'Dhalahar', 'ধলাহার', 'dhalaharup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1368, 'Bhadsha', 'ভাদসা', 'bhadshaup.joypurhat.gov.bd', 154, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1369, 'Alatuli', 'আলাতুলী', 'alatuliup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1370, 'Baroghoria', 'বারঘরিয়া', 'baroghoriaup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1371, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1372, 'Ranihati', 'রানীহাটি', 'ranihatiup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1373, 'Baliadanga', 'বালিয়াডাঙ্গা', 'baliadangaup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1374, 'Gobratola', 'গোবরাতলা', 'gobratolaup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1375, 'Jhilim', 'ঝিলিম', 'jhilimup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1376, 'Char Anupnagar', 'চর অনুপনগর', 'charaunupnagarup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1377, 'Debinagar', 'দেবীনগর', 'debinagarup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1378, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1379, 'Islampur', 'ইসলামপুর', 'islampurup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1380, 'Charbagdanga', 'চরবাগডাঙ্গা', 'charbagdangaup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1381, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1382, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.chapainawabganj.gov.bd', 155, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1383, 'Radhanagar', 'রাধানগর', 'radhanagarup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1384, 'Rahanpur', 'রহনপুর', 'rahanpurup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1385, 'Boalia', 'বোয়ালিয়া', 'boaliaup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1386, 'Bangabari', 'বাঙ্গাবাড়ী', 'bangabariup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1387, 'Parbotipur', 'পার্বতীপুর', 'parbotipurup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1388, 'Chowdala', 'চৌডালা', 'chowdalaup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1389, 'Gomostapur', 'গোমস্তাপুর', 'gomostapurup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1390, 'Alinagar', 'আলীনগর', 'alinagarup.chapainawabganj.gov.bd', 156, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1391, 'Fhotepur', 'ফতেপুর', 'fhotepurup.chapainawabganj.gov.bd', 157, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1392, 'Kosba', 'কসবা', 'kosbaup.chapainawabganj.gov.bd', 157, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1393, 'Nezampur', 'নেজামপুর', 'nezampurup.chapainawabganj.gov.bd', 157, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1394, 'Nachol', 'নাচোল', 'nacholup.chapainawabganj.gov.bd', 157, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1395, 'Bholahat', 'ভোলাহাট', 'bholahatup.chapainawabganj.gov.bd', 158, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1396, 'Jambaria', 'জামবাড়িয়া', 'jambariaup.chapainawabganj.gov.bd', 158, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1397, 'Gohalbari', 'গোহালবাড়ী', 'gohalbariup.chapainawabganj.gov.bd', 158, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1398, 'Daldoli', 'দলদলী', 'daldoliup.chapainawabganj.gov.bd', 158, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1399, 'Binodpur', 'বিনোদপুর', 'binodpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1400, 'Chakkirti', 'চককির্তী', 'chakkirtiup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1401, 'Daipukuria', 'দাইপুকুরিয়া', 'daipukuriaup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1402, 'Dhainagar', 'ধাইনগর', 'dhainagarup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1403, 'Durlovpur', 'দুর্লভপুর', 'durlovpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1404, 'Ghorapakhia', 'ঘোড়াপাখিয়া', 'ghorapakhiaup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1405, 'Mobarakpur', 'মোবারকপুর', 'mobarakpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1406, 'Monakasha', 'মনাকষা', 'monakashaup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1407, 'Noyalavanga', 'নয়ালাভাঙ্গা', 'noyalavangaup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1408, 'Panka', 'পাঁকা', 'pankaup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1409, 'Chatrajitpur', 'ছত্রাজিতপুর', 'chhatrajitpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1410, 'Shahabajpur', 'শাহাবাজপুর', 'shahabajpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1411, 'Shyampur', 'শ্যামপুর', 'shyampurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1412, 'Kansat', 'কানসাট', 'kansatup.bdgovportal.com', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1413, 'Ujirpur', 'উজিরপুর', 'ujirpurup.chapainawabganj.gov.bd', 159, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1414, '1nomohadevpur', 'মহাদেবপুর', '1nomohadevpurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1415, 'Hatur', 'হাতুড়', '2nohaturup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1416, 'Khajur', 'খাজুর', '3nokhajurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1417, 'Chandas', 'চাঁন্দাশ', '4nochandasup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1418, 'Enayetpur', 'এনায়েতপুর', '6noenayetpurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1419, 'Sofapur', 'সফাপুর', '7nosofapurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1420, 'Uttargram', 'উত্তরগ্রাম', '8nouttargramup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1421, 'Cheragpur', 'চেরাগপুর', '9nocheragpurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1422, 'Vimpur', 'ভীমপুর', '10novimpurup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1423, 'Roygon', 'রাইগাঁ', 'roygonup.naogaon.gov.bd', 160, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1424, 'Badalgachi', 'বদলগাছী', '1nobadalgachiup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1425, 'Mothurapur', 'মথুরাপুর', '2nomothurapurup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1426, 'Paharpur', 'পাহারপুর', '3nopaharpurup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1427, 'Mithapur', 'মিঠাপুর', '4nomithapurup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1428, 'Kola', 'কোলা', '5nokolaup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1429, 'Bilashbari', 'বিলাশবাড়ী', '6nobilashbariup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1430, 'Adhaipur', 'আধাইপুর', '7noadhaipurup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1431, 'Balubhara', 'বালুভরা', '8nobalubharaup.naogaon.gov.bd', 161, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1432, 'Patnitala', 'পত্নীতলা', '1nopatnitalaup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1433, 'Nirmail', 'নিমইল', '2nonirmailup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1434, 'Dibar', 'দিবর', '3nodibarup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1435, 'Akbarpur', 'আকবরপুর', '4noakbarpurup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1436, 'Matindar', 'মাটিন্দর', '5nomatindarup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1437, 'Krishnapur', 'কৃষ্ণপুর', '6nokrishnapurup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1438, 'Patichrara', 'পাটিচড়া', '7nopatichraraup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1439, 'Nazipur', 'নজিপুর', '8nonazipurup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1440, 'Ghasnagar', 'ঘষনগর', '9noghasnagarup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1441, 'Amair', 'আমাইড়', '10noamairup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1442, 'Shihara', 'শিহারা', '11noahiharaup.naogaon.gov.bd', 162, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1443, 'Dhamoirhat', 'ধামইরহাট', '1nodhamoirhatup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1444, 'Alampur', 'আলমপুর', '3noalampurup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1445, 'Umar', 'উমার', '4noumarup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1446, 'Aranagar', 'আড়ানগর', '5noaranagarup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1447, 'Jahanpur', 'জাহানপুর', '6nojahanpurup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1448, 'Isabpur', 'ইসবপুর', '7noisabpurup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1449, 'Khelna', 'খেলনা', '8nokhelnaup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1450, 'Agradigun', 'আগ্রাদ্বিগুন', '2noagradigunup.naogaon.gov.bd', 163, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1451, 'Hajinagar', 'হাজীনগর', '1nohajinagarup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1452, 'Chandannagar', 'চন্দননগর', '2nochandannagarup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1453, 'Bhabicha', 'ভাবিচা', '3nobhabichaup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1454, 'Niamatpur', 'নিয়ামতপুর', '4noniamatpurup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1455, 'Rasulpur', 'রসুলপুর', '5norasulpurup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1456, 'Paroil', 'পাড়ইল', '6noparoilup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1457, 'Sremantapur', 'শ্রীমন্তপুর', '7nosremantapurup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1458, 'Bahadurpur', 'বাহাদুরপুর', '8nobahadurpurup.naogaon.gov.bd', 164, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1459, 'Varsho', 'ভারশো', '1novarshoup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1460, 'Valain', 'ভালাইন', '2novalainup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1461, 'Paranpur', 'পরানপুর', '3noparanpurup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1462, 'Manda', 'মান্দা', '4nomandaup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1463, 'Goneshpur', 'গনেশপুর', '5nogoneshpurup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1464, 'Moinom', 'মৈনম', '6nomoinomup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1465, 'Proshadpur', 'প্রসাদপুর', '7noproshadpurup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1466, 'Kosomba', 'কুসুম্বা', '8nokosombaup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1467, 'Tetulia', 'তেঁতুলিয়া', '9notetuliaup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1468, 'Nurullabad', 'নূরুল্যাবাদ', '10nonurullabadup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1469, 'Kalikapur', 'কালিকাপুর', '11nokalikapurup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1470, 'Kashopara', 'কাঁশোকাপুর', '12nokashoparaup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1471, 'Koshob', 'কশব', '13nokoshobup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1472, 'Bisnopur', 'বিষ্ণপুর', '14nobisnopurup.naogaon.gov.bd', 165, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1473, 'Shahagola', 'শাহাগোলা', '1noshahagolaup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1474, 'Bhonpara', 'ভোঁপড়া', '2nobhonparaup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1475, 'Ahsanganj', 'আহসানগঞ্জ', '3noahsanganjup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1476, 'Panchupur', 'পাঁচুপুর', '4nopanchupurup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1477, 'Bisha', 'বিশা', '5nobishaup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1478, 'Maniary', 'মনিয়ারী', '6nomaniaryup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1479, 'Kalikapur', 'কালিকাপুর', '7nokalikapurup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1480, 'Hatkalupara', 'হাটকালুপাড়া', '8nohatkaluparaup.naogaon.gov.bd', 166, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1481, 'Khatteshawr', 'খট্টেশ্বর রাণীনগর', '1nokhatteshawrup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1482, 'Kashimpur', 'কাশিমপুর', '2nokashimpurup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1483, 'Gona', 'গোনা', '3nogonaup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1484, 'Paroil', 'পারইল', '4noparoilup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1485, 'Borgoca', 'বরগাছা', '5noborgocaup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1486, 'Kaligram', 'কালিগ্রাম', '6nokaligramup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1487, 'Ekdala', 'একডালা', '7noekdalaup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1488, 'Mirat', 'মিরাট', '8nomiratup.naogaon.gov.bd', 167, '2026-03-09 16:19:24', '2026-03-09 16:19:24'),
(1489, 'Barshail', 'বর্ষাইল', '1nobarshailup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1490, 'Kritipur', 'কির্ত্তিপুর', '2nokritipurup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1491, 'Baktiarpur', 'বক্তারপুর', '3nobaktiarpurup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1492, 'Tilakpur', 'তিলোকপুর', '4notilakpurup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1493, 'Hapaniya', 'হাপানিয়া', '5nohapaniyaup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1494, 'Dubalhati', 'দুবলহাটী', '6nodubalhatiup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1495, 'Boalia', 'বোয়ালিয়া', '7noboaliaup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1496, 'Hashaigari', 'হাঁসাইগাড়ী', '8nohashaigariup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1497, 'Chandipur', 'চন্ডিপুর', '9nochandipurup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1498, 'Bolihar', 'বলিহার', '10noboliharup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1499, 'Shekerpur', 'শিকারপুর', '11noshekerpurup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1500, 'Shailgachhi', 'শৈলগাছী', '12noshailgachhiup.naogaon.gov.bd', 168, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1501, 'Nitpur', 'নিতপুর', 'nitpurup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1502, 'Tetulia', 'তেঁতুলিয়া', '2notetuliaup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1503, 'Chhaor', 'ছাওড়', '3nochhaorup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1504, 'Ganguria', 'গাঙ্গুরিয়া', '4noganguriaup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1505, 'Ghatnagar', 'ঘাটনগর', '5noghatnagarup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1506, 'Moshidpur', 'মশিদপুর', '6nomoshidpurup.naogaon.gov.bd', 169, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1507, 'Sapahar', 'সাপাহার', '1nosapaharup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1508, 'Tilna', 'তিলনা', '3notilnaup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1509, 'Aihai', 'আইহাই', '4noaihaiup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1510, 'Shironti', 'শিরন্টী', '6noshirontiup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1511, 'Goala', 'গোয়ালা', 'goalaup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1512, 'Patari', 'পাতাড়ী', 'patariup.naogaon.gov.bd', 170, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1513, 'Nehalpur', 'নেহালপুর', 'nehalpurup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1514, 'Hariharnagar', 'হরিহরনগর', 'hariharnagarup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1515, 'Haridaskati', 'হরিদাসকাটি', 'haridaskatiup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1516, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1517, 'Rohita', 'রোহিতা', 'rohitaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1518, 'Maswimnagar', 'মশ্মিমনগর', 'maswimnagarup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1519, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1520, 'Manirampur', 'মনিরামপুর', 'manirampurup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1521, 'Bhojgati', 'ভোজগাতি', 'bhojgatiup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1522, 'Durbadanga', 'দুর্বাডাংগা', 'durbadangaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1523, 'Dhakuria', 'ঢাকুরিয়া', 'dhakuriaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1524, 'Jhanpa', 'ঝাঁপা', 'jhanpaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1525, 'Chaluahati', 'চালুয়াহাটি', 'chaluahatiup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1526, 'Khedapara', 'খেদাপাড়া', 'khedaparaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1527, 'Khanpur', 'খানপুর', 'khanpurup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1528, 'Kultia', 'কুলটিয়া', 'kultiaup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1529, 'Kashimnagar', 'কাশিমনগর', 'kashimnagarup.jessore.gov.bd', 171, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1530, 'Baghutia', 'বাঘুটিয়া', 'baghutia.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1531, 'Chalishia', 'চলিশিয়া', 'chalishiaup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1532, 'Sundoli', 'সুন্দলী', 'sundoliup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1533, 'Siddhipasha', 'সিদ্দিপাশা', 'siddhipashaup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1534, 'Sreedharpur', 'শ্রীধরপুর', 'sreedharpurup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1535, 'Subharara', 'শুভরাড়া', 'subhararaup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1536, 'Prambag', 'প্রেমবাগ', 'prambagup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1537, 'Payra', 'পায়রা', 'payraup.jessore.gov.bd', 172, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1538, 'Jaharpur', 'জহুরপুর', 'jaharpurup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1539, 'Jamdia', 'জামদিয়া', 'jamdiaup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1540, 'Darajhat', 'দরাজহাট', 'darajhatup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1541, 'Dhalgram', 'ধলগ্রাম', 'dhalgramup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1542, 'Narikelbaria', 'নারিকেলবাড়ীয়া', 'narikelbariaup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1543, 'Bandabilla', 'বন্দবিলা', 'bandabillaup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1544, 'Basuari', 'বাসুয়াড়ী', 'basuariup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1545, 'Roypur', 'রায়পুর', 'roypurup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1546, 'Dohakula', 'দোহাকুলা', 'dohakulaup.jessore.gov.bd', 173, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1547, 'Chougachha', 'চৌগাছা', 'chougachhaup5.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1548, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup6.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1549, 'Dhuliani', 'ধুলিয়ানী', 'dhulianiup4.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1550, 'Narayanpur', 'নারায়নপুর', 'narayanpurup10.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1551, 'Patibila', 'পাতিবিলা', 'patibilaup7.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1552, 'Pashapole', 'পাশাপোল', 'pashapoleup2.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1553, 'Fulsara', 'ফুলসারা', 'fulsaraup1.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1554, 'Singhajhuli', 'সিংহঝুলি', 'singhajhuliup3.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1555, 'Sukpukhuria', 'সুখপুকুরিয়া', 'sukpukhuriaup11.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1556, 'Swarupdaha', 'সরুপদাহ', 'swarupdahaup9.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1557, 'Hakimpur', 'হাকিমপুর', 'hakimpurup8.jessore.gov.bd', 174, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1558, 'Gangananda', 'গংগানন্দপুর', 'ganganandapurup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1559, 'Gadkhali', 'গদখালী', 'gadkhaliup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1560, 'Jhikargachha', 'ঝিকরগাছা', 'jhikargachhaup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1561, 'Nabharan', 'নাভারন', 'nabharanup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1562, 'Nibaskhola', 'নির্বাসখোলা', 'nibaskholaup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1563, 'Panisara', 'পানিসারা', 'panisaraup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1564, 'Bankra', 'বাঁকড়া', 'bankraup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1565, 'Shankarpur', 'শংকরপুর', 'shankarpurup10.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1566, 'Shimulia', 'শিমুলিয়া', 'shimuliaup3.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1567, 'Hajirbagh', 'হাজিরবাগ', 'hajirbaghup9.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1568, 'Magura', 'মাগুরা', 'maguraup.jessore.gov.bd', 175, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1569, 'Sufalakati', 'সুফলাকাটি', 'sufalakatiup8.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1570, 'Sagardari', 'সাগরদাড়ী', 'sagardariup2.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1571, 'Majidpur', 'মজিদপুর', 'majidpurup3.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1572, 'Mongolkot', 'মঙ্গলকোর্ট', 'mongolkotup5.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1573, 'Bidyanandakati', 'বিদ্যানন্দকাটি', 'bidyanandakatiup4.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1574, 'Panjia', 'পাজিয়া', 'panjiaup7.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1575, 'Trimohini', 'ত্রিমোহিনী', 'trimohiniup1.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1576, 'Gaurighona', 'গৌরিঘোনা', 'gaurighonaup9.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1577, 'Keshabpur', 'কেশবপুর', 'keshabpurup6.jessore.gov.bd', 176, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1578, 'Lebutala', 'লেবুতলা', 'lebutalaup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1579, 'Ichhali', 'ইছালী', 'ichhaliup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1580, 'Arabpur', 'আরবপুর', 'arabpurup9.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1581, 'Upasahar', 'উপশহর', 'upasaharup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1582, 'Kachua', 'কচুয়া', 'kachuaup13.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1583, 'Kashimpur', 'কাশিমপুর', 'kashimpurup6.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1584, 'Chanchra', 'চাঁচড়া', 'chanchraup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1585, 'Churamankati', 'চূড়ামনকাটি', 'churamankatiup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1586, 'Narendrapur', 'নরেন্দ্রপুর', 'narendrapurup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1587, 'Noapara', 'নওয়াপাড়া', 'noaparaup4.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1588, 'Fathehpur', 'ফতেপুর', 'fathehpurup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1589, 'Basundia', 'বসুন্দিয়া', 'basundiaup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1590, 'Ramnagar', 'রামনগর', 'ramnagarup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1591, 'Haibatpur', 'হৈবতপুর', 'haibatpurup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1592, 'Dearamodel', 'দেয়ারা মডেল', 'dearamodelup.jessore.gov.bd', 177, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1593, 'Ulshi', 'উলশী', 'ulshiup9.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1594, 'Sharsha', 'শার্শা', 'sharshaup10.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1595, 'Lakshmanpur', 'লক্ষণপুর', 'lakshmanpurup2.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1596, 'Benapole', 'বেনাপোল', 'benapoleup4.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1597, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup3.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1598, 'Bagachra', 'বাগআচড়া', 'bagachraup8.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1599, 'Putkhali', 'পুটখালী', 'putkhaliup5.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1600, 'Nizampur', 'নিজামপুর', 'nizampurup11.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1601, 'Dihi', 'ডিহি', 'dihiup1.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1602, 'Goga', 'গোগা', 'gogaup6.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1603, 'Kayba', 'কায়বা', 'kaybaup7.jessore.gov.bd', 178, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1604, 'Anulia', 'আনুলিয়া', 'anuliaup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1605, 'Assasuni', 'আশাশুনি', 'assasuniup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1606, 'Kadakati', 'কাদাকাটি', 'kadakatiup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1607, 'Kulla', 'কুল্যা', 'kullaup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1608, 'Khajra', 'খাজরা', 'khajraup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1609, 'Durgapur', 'দরগাহপুর', 'durgapurup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1610, 'Pratapnagar', 'প্রতাপনগর', 'pratapnagarup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1611, 'Budhhata', 'বুধহাটা', 'budhhataup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1612, 'Baradal', 'বড়দল', 'baradalup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1613, 'Sreeula', 'শ্রীউলা', 'sreeulaup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1614, 'Sobhnali', 'শোভনালী', 'sobhnaliup.satkhira.gov.bd', 179, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1615, 'Kulia', 'কুলিয়া', 'kuliaup.satkhira.gov.bd', 180, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1616, 'Debhata', 'দেবহাটা', 'debhataup.satkhira.gov.bd', 180, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1617, 'Noapara', 'নওয়াপাড়া', 'noaparaup.satkhira.gov.bd', 180, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1618, 'Parulia', 'পারুলিয়া', 'paruliaup.satkhira.gov.bd', 180, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1619, 'Sakhipur', 'সখিপুর', 'sakhipurup.satkhira.gov.bd', 180, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1620, 'Kushadanga', 'কুশোডাংগা', 'kushadangaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1621, 'Keralkata', 'কেরালকাতা', 'keralkataup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1622, 'Keragachhi', 'কেঁড়াগাছি', 'keragachhiup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1623, 'Kaila', 'কয়লা', 'kailaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1624, 'Jallabad', 'জালালাবাদ', 'jallabadup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1625, 'Jogikhali', 'যুগিখালী', 'jogikhaliup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1626, 'Langaljhara', 'লাঙ্গলঝাড়া', 'langaljharaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1627, 'Sonabaria', 'সোনাবাড়িয়া', 'sonabariaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1628, 'Helatala', 'হেলাতলা', 'helatalaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1629, 'Chandanpur', 'চন্দনপুর', 'chandanpurup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1630, 'Deara', 'দেয়ারা', 'dearaup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1631, 'Joynagar', 'জয়নগর', 'joynagarup.satkhira.gov.bd', 181, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1632, 'Shibpur', 'শিবপুর', 'shibpurup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1633, 'Labsa', 'লাবসা', 'labsaup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1634, 'Bhomra', 'ভোমরা', 'bhomraup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1635, 'Brahmarajpur', 'ব্রক্ষ্মরাজপুর', 'brahmarajpurup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1636, 'Balli', 'বল্লী', 'balliup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1637, 'Banshdaha', 'বাঁশদহ', 'banshdahaup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1638, 'Baikari', 'বৈকারী', 'baikariup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1639, 'Fingri', 'ফিংড়ি', 'fingriup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1640, 'Dhulihar', 'ধুলিহর', 'dhuliharup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1641, 'Jhaudanga', 'ঝাউডাঙ্গা', 'jhaudangaup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1642, 'Ghona', 'ঘোনা', 'ghonaup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1643, 'Kuskhali', 'কুশখালী', 'kuskhaliup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1644, 'Alipur', 'আলিপুর', 'alipurup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1645, 'Agardari', 'আগরদাড়ী', 'agardariup.satkhira.gov.bd', 182, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1646, 'Atulia', 'আটুলিয়া', 'atuliaup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1647, 'Ishwaripur', 'ঈশ্বরীপুর', 'ishwaripurup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1648, 'Kaikhali', 'কৈখালী', 'kaikhaliup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1649, 'Kashimari', 'কাশিমাড়ী', 'kashimariup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1650, 'Nurnagar', 'নুরনগর', 'nurnagarup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1651, 'Padmapukur', 'পদ্মপুকুর', 'padmapukurup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1652, 'Burigoalini', 'বুড়িগোয়ালিনী', 'burigoaliniup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1653, 'Bhurulia', 'ভুরুলিয়া', 'bhuruliaup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1654, 'Munshiganj', 'মুন্সীগজ্ঞ', 'munshiganjup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1655, 'Ramjannagar', 'রমজাননগর', 'ramjannagarup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1656, 'Shyamnagar', 'শ্যামনগর', 'shyamnagarup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1657, 'Gabura', 'গাবুরা', 'gaburaup.satkhira.gov.bd', 183, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1658, 'Sarulia', 'সরুলিয়া', 'saruliaup3.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1659, 'Magura', 'মাগুরা', 'maguraup8.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1660, 'Nagarghata', 'নগরঘাটা', 'nagarghataup1.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1661, 'Dhandia', 'ধানদিয়া', 'dhandiaup1.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1662, 'Tentulia', 'তেতুলিয়া', 'tentuliaup5.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1663, 'Tala', 'তালা', 'talaup6.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1664, 'Jalalpur', 'জালালপুর', 'jalalpurup11.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1665, 'Khesra', 'খেশরা', 'khesraup10.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1666, 'Khalishkhali', 'খলিশখালী', 'khalishkhaliup9.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1667, 'Khalilnagar', 'খলিলনগর', 'khalilnagarup12.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1668, 'Kumira', 'কুমিরা', 'kumiraup4.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1669, 'Islamkati', 'ইসলামকাটি', 'islamkatiup7.satkhira.gov.bd', 184, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1670, 'Kushlia', 'কুশুলিয়া', 'kushliaup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1671, 'Champaphul', 'চাম্পাফুল', 'champaphulup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1672, 'Tarali', 'তারালী', 'taraliup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1673, 'Dakshin Sreepur', 'দক্ষিণ শ্রীপুর', 'dakshinsreepurup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1674, 'Dhalbaria', 'ধলবাড়িয়া', 'dhalbariaup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1675, 'Nalta', 'নলতা', 'naltaup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1676, 'Bishnupur', 'বিষ্ণুপুর', 'bishnupurup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1677, 'Bharasimla', 'ভাড়াশিমলা', 'bharasimlaup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1678, 'Mathureshpur', 'মথুরেশপুর', 'mathureshpurup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1679, 'Ratanpur', 'রতনপুর', 'ratanpurup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1680, 'Mautala', 'মৌতলা', 'mautalaup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1681, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.satkhira.gov.bd', 185, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1682, 'Dariapur', 'দারিয়াপুর', 'dariapurup.meherpur.gov.bd', 186, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1683, 'Monakhali', 'মোনাখালী', 'monakhali.meherpur.gov.bd', 186, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1684, 'Bagowan', 'বাগোয়ান', 'bagowanup.meherpur.gov.bd', 186, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1685, 'Mohajanpur', 'মহাজনপুর', 'mohajanpurup.meherpur.gov.bd', 186, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1686, 'Amjhupi', 'আমঝুপি', 'amjhupi.meherpur.gov.bd', 187, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1687, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.meherpur.gov.bd', 187, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1688, 'Kutubpur', 'কতুবপুর', 'kutubpurup.meherpur.gov.bd', 187, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1689, 'Amdah', 'আমদহ', 'amdahup.meherpur.gov.bd', 187, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1690, 'Buripota', 'বুড়িপোতা', 'buripotaup.meherpur.gov.bd', 187, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1691, 'Tentulbaria', 'তেঁতুলবাড়ীয়া', 'tentulbaria.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1692, 'Kazipur', 'কাজিপুর', 'kazipurup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1693, 'Bamondi', 'বামন্দী', 'bamondiup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1694, 'Motmura', 'মটমুড়া', 'motmuraup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1695, 'Sholotaka', 'ষোলটাকা', 'sholotakaup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1696, 'Shaharbati', 'সাহারবাটী', 'shaharbatiup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1697, 'Dhankolla', 'ধানখোলা', 'dhankollaup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1698, 'Raipur', 'রায়পুর', 'raipurup.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1699, 'Kathuli', 'কাথুলী', 'kathuli.meherpur.gov.bd', 188, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1700, 'Sheikhati', 'সেখহাটী', 'sheikhatiup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1701, 'Tularampur', 'তুলারামপুর', 'tularampurup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1702, 'Kalora', 'কলোড়া', 'kaloraup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1703, 'Shahabad', 'শাহাবাদ', 'shahabadup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1704, 'Bashgram', 'বাশগ্রাম', 'bashgramup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1705, 'Habokhali', 'হবখালী', 'habokhaliup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1706, 'Maijpara', 'মাইজপাড়া', 'maijparaup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1707, 'Bisali', 'বিছালী', 'bisaliup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1708, 'Chandiborpur', 'চন্ডিবরপুর', 'chandiborpurup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1709, 'Bhadrabila', 'ভদ্রবিলা', 'bhadrabilaup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1710, 'Auria', 'আউড়িয়া', 'auriaup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1711, 'Singasholpur', 'সিঙ্গাশোলপুর', 'singasholpurup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1712, 'Mulia', 'মুলিয়া', 'muliaup.narail.gov.bd', 189, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1713, 'Lohagora', 'লোহাগড়া', 'lohagoraup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1714, 'Kashipur', 'কাশিপুর', 'kashipurup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1715, 'Naldi', 'নলদী', 'naldiup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1716, 'Noagram', 'নোয়াগ্রাম', 'noagramup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1717, 'Lahuria', 'লাহুড়িয়া', 'lahuriaup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1718, 'Mallikpur', 'মল্লিকপুর', 'mallikpurup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1719, 'Salnagar', 'শালনগর', 'salnagarup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1720, 'Lakshmipasha', 'লক্ষীপাশা', 'lakshmipashaup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1721, 'Joypur', 'জয়পুর', 'joypurup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1722, 'Kotakol', 'কোটাকোল', 'kotakolup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1723, 'Digholia', 'দিঘলিয়া', 'digholiaup1.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1724, 'Itna', 'ইতনা', 'itnaup.narail.gov.bd', 190, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1725, 'Jaynagor', 'জয়নগর', 'jaynagorup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1726, 'Pahordanga', 'পহরডাঙ্গা', 'pahordangaup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1727, 'Babrahasla', 'বাবরা-হাচলা', 'babrahaslaup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1728, 'Salamabad', 'সালামাবাদ', 'salamabadup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1729, 'Baioshona', 'বাঐসোনা', 'baioshonaup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1730, 'Chacuri', 'চাচুড়ী', 'chacuriup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1731, 'Hamidpur', 'হামিদপুর', 'hamidpurup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1732, 'Peroli', 'পেড়লী', 'peroliup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1733, 'Khashial', 'খাসিয়াল', 'khashialup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1734, 'Purulia', 'পুরুলিয়া', 'puruliaup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1735, 'Kalabaria', 'কলাবাড়ীয়া', 'kalabariaup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1736, 'Mauli', 'মাউলী', 'mauliup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1737, 'Boronaleliasabad', 'বড়নাল-ইলিয়াছাবাদ', 'boronaleliasabadup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1738, 'Panchgram', 'পাঁচগ্রাম', 'panchgramup.narail.gov.bd', 191, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1739, 'Alukdia', 'আলুকদিয়া', 'alukdia.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1740, 'Mominpur', 'মোমিনপুর', 'mominpur.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1741, 'Titudah', 'তিতুদাহ', 'titudah.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1742, 'Shankarchandra', 'শংকরচন্দ্র', 'shankarchandra.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1743, 'Begumpur', 'বেগমপুর', 'begumpur.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1744, 'Kutubpur', 'কুতুবপুর', 'kutubpur.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1745, 'Padmabila', 'পদ্মবিলা', 'padmabila.chuadanga.gov.bd', 192, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1746, 'Bhangbaria', 'ভাংবাড়ীয়া', 'bhangbaria.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1747, 'Baradi', 'বাড়াদী', 'baradiup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1748, 'Gangni', 'গাংনী', 'gangniup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1749, 'Khadimpur', 'খাদিমপুর', 'khadimpurup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1750, 'Jehala', 'জেহালা', 'jehalaup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1751, 'Belgachi', 'বেলগাছি', 'belgachiup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1752, 'Dauki', 'ডাউকী', 'daukiup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1753, 'Jamjami', 'জামজামি', 'jamjamiup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1754, 'Nagdah', 'নাগদাহ', 'nagdahup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1755, 'Kashkorara', 'খাসকররা', 'kashkoraraup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1756, 'Chitla', 'চিৎলা', 'chitlaup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1757, 'Kalidashpur', 'কালিদাসপুর', 'kalidashpurup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1758, 'Kumari', 'কুমারী', 'kumariup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1759, 'Hardi', 'হারদী', 'hardiup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1760, 'Ailhash', 'আইলহাঁস', 'ailhashup.chuadanga.gov.bd', 193, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1761, 'Damurhuda', 'দামুড়হুদা', 'damurhudaup.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1762, 'Karpashdanga', 'কার্পাসডাঙ্গা', 'karpashdanga.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1763, 'Natipota', 'নতিপোতা', 'natipota.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1764, 'Hawli', 'হাওলী', 'hawli.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1765, 'Kurulgachhi', 'কুড়ালগাছী', 'kurulgachhi.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1766, 'Perkrishnopur Madna', 'পারকৃষ্ণপুর মদনা', 'perkrishnopurmadna.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1767, 'Juranpur', 'জুড়ানপুর', 'juranpurup.chuadanga.gov.bd', 194, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1768, 'Uthali', 'উথলী', 'uthaliup.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1769, 'Andulbaria', 'আন্দুলবাড়ীয়া', 'andulbaria.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1770, 'Banka', 'বাঁকা', 'bankaup.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1771, 'Shimanto', 'সীমান্ত', 'shimanto.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1772, 'Raypur', 'রায়পুর', 'raypurup.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1773, 'Hasadah', 'হাসাদাহ', 'hasadahup.chuadanga.gov.bd', 195, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1774, 'Hatash Haripur', 'হাটশ হরিপুর', '1nohatashharipurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1775, 'Barkhada', 'বারখাদা', '2nobarkhadaup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1776, 'Mazampur', 'মজমপুর', '3nomazampurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1777, 'Bottail', 'বটতৈল', '4nobottailup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1778, 'Alampur', 'আলামপুর', '5noalampurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(1779, 'Ziaraakhi', 'জিয়ারাখী', '6noziaraakhiup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1780, 'Ailchara', 'আইলচারা', '7noailcharaup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1781, 'Patikabari', 'পাটিকাবাড়ী', '8nopatikabariup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1782, 'Jhaudia', 'ঝাউদিয়া', '9nojhaudiaup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1783, 'Ujangram', 'উজানগ্রাম', '10noujangramup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1784, 'Abdulpur', 'আব্দালপুর', '11noabdulpurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1785, 'Harinarayanpur', 'হরিনারায়নপুর', '12noharinarayanpurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1786, 'Monohardia', 'মনোহরদিয়া', '13nomonohardiaup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1787, 'Goswami Durgapur', 'গোস্বামী দুর্গাপুর', '14nogoswamidurgapurup.kushtia.gov.bd', 196, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1788, 'Kaya', 'কয়া', '1nokayaup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1789, 'Jagonnathpur', 'জগন্নাথপুর', '3nojagonnathpurup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1790, 'Sadki', 'সদকী', '4nosadkiup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1791, 'Shelaidah', 'শিলাইদহ', '2noshelaidahup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1792, 'Nandolalpur', 'নন্দলালপুর', '5nonandolalpurup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1793, 'Chapra', 'চাপড়া', '6nochapraup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1794, 'Bagulat', 'বাগুলাট', '7nobagulatup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1795, 'Jaduboyra', 'যদুবয়রা', '8nojaduboyraup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1796, 'Chadpur', 'চাঁদপুর', '9nochadpurup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1797, 'Panti', 'পান্টি', '10nopantiup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1798, 'Charsadipur', 'চরসাদীপুর', '11nocharsadipurup.kushtia.gov.bd', 197, '2026-03-09 16:19:25', '2026-03-09 16:19:25'),
(1799, 'Khoksa', 'খোকসা', '1nokhoksaup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1800, 'Osmanpur', 'ওসমানপুর', '2noosmanpurup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1801, 'Janipur', 'জানিপুর', '4nojanipurup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1802, 'Shimulia', 'শিমুলিয়া', '5noshimuliaup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1803, 'Joyntihazra', 'জয়ন্তীহাজরা', '8nojoyntihazraup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1804, 'Ambaria', 'আমবাড়ীয়া', '9noambariaup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1805, 'Bethbaria', 'বেতবাড়ীয়া', '3nobethbariaup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1806, 'Shomospur', 'শোমসপুর', '6noshomospurup.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1807, 'Gopgram', 'গোপগ্রাম', 'gopgram7up.kushtia.gov.bd', 198, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1808, 'Chithalia', 'চিথলিয়া', 'chithaliaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1809, 'Bahalbaria', 'বহলবাড়ীয়া', 'bahalbariaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1810, 'Talbaria', 'তালবাড়ীয়া', 'talbariaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1811, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1812, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1813, 'Amla', 'আমলা', 'amlaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1814, 'Sadarpur', 'সদরপুর', 'sadarpurup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1815, 'Chhatian', 'ছাতিয়ান', 'chhatianup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1816, 'Poradaha', 'পোড়াদহ', 'poradahaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1817, 'Kursha', 'কুর্শা', 'kurshaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1818, 'Ambaria', 'আমবাড়ীয়া', 'ambariaup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1819, 'Dhubail', 'ধূবইল', 'dhubailup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1820, 'Malihad', 'মালিহাদ', '11nomalihadup.kushtia.gov.bd', 199, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1821, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1822, 'Adabaria', 'ড়ীয়া', 'adabariaup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1823, 'Hogolbaria', 'হোগলবাড়ীয়া', 'hogolbariaup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1824, 'Boalia', 'বোয়ালি', 'boaliaup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1825, 'Philipnagor', 'ফিলিপনগর', 'philipnagorup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1826, 'Aria', 'আড়িয়া', 'ariaup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1827, 'Khalishakundi', 'খলিশাকুন্ডি', 'khalishakundiup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1828, 'Chilmary', 'চিলমারী', 'chilmaryup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1829, 'Mothurapur', 'মথুরাপুর', 'mothurapurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1830, 'Pragpur', 'প্রাগপুর', 'pragpurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1831, 'Piarpur', 'পিয়ারপুর', 'piarpurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1832, 'Moricha', 'মরিচা', 'morichaup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1833, 'Refaitpur', 'রিফাইতপুর', '9norefaitpurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1834, 'Ramkrishnopur', 'রামকৃষ্ণপুর', '5noramkrishnopurup.kushtia.gov.bd', 200, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1835, 'Dharampur', 'ধরমপুর', '5nodharampurup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1836, 'Bahirchar', 'বাহিরচর', '3nobahircharup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1837, 'Mukarimpur', 'মোকারিমপুর', '2nomukarimpurup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1838, 'Juniadah', 'জুনিয়াদহ', '6nojuniadahup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1839, 'Chandgram', 'চাঁদগ্রাম', '4nochandgramup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1840, 'Bahadurpur', 'বাহাদুরপুর', '1nobahadurpurup.kushtia.gov.bd', 201, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1841, 'Dhaneshwargati', 'ধনেশ্বরগাতী', 'dhaneshwargatiup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1842, 'Talkhari', 'তালখড়ি', 'talkhariup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1843, 'Arpara', 'আড়পাড়া', 'arparaup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1844, 'Shatakhali', 'শতখালী', 'shatakhaliup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1845, 'Shalikha', 'শালিখা', 'shalikhaup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1846, 'Bunagati', 'বুনাগাতী', 'bunagatiup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1847, 'Gongarampur', 'গঙ্গারামপুর', 'gongarampurup.magura.gov.bd', 202, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1848, 'Goyespur', 'গয়েশপুর', 'goyespurup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1849, 'Sreekol', 'শ্রীকোল', 'sreekolup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1850, 'Dariapur', 'দ্বারিয়াপুর', 'dariapurup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1851, 'Kadirpara', 'কাদিরপাড়া', 'kadirparaup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1852, 'Shobdalpur', 'সব্দালপুর', 'shobdalpurup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1853, 'Sreepur', 'শ্রীপুর', 'sreepurup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1854, 'Nakol', 'নাকোল', 'nakolup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1855, 'Amalshar', 'আমলসার', 'amalsharup.magura.gov.bd', 203, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1856, 'Hazipur', 'হাজীপুর', 'hazipurup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1857, 'Atharokhada', 'আঠারখাদা', 'atharokhadaup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1858, 'Kosundi', 'কছুন্দী', 'kosundiup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1859, 'Bogia', 'বগিয়া', 'bogiaup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1860, 'Hazrapur', 'হাজরাপুর', 'hazrapurup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1861, 'Raghobdair', 'রাঘবদাইড়', 'raghobdairup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1862, 'Jagdal', 'জগদল', 'jagdalup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1863, 'Chawlia', 'চাউলিয়া', 'chawliaup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1864, 'Satrijitpur', 'শত্রুজিৎপুর', 'satrijitpurup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1865, 'Baroilpolita', 'বেরইল পলিতা', 'baroilpolitaup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1866, 'Kuchiamora', 'কুচিয়ামো', 'kuchiamoraup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1867, 'Gopalgram', 'গোপালগ্রাম', 'gopalgramup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1868, 'Moghi', 'মঘী', 'moghiup.magura.gov.bd', 204, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1869, 'Digha', 'দীঘা', 'dighaup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1870, 'Nohata', 'নহাটা', 'nohataup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1871, 'Palashbaria', 'পলাশবাড়ীয়া', 'palashbariaup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1872, 'Babukhali', 'বাবুখালী', 'babukhaliup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1873, 'Balidia', 'বালিদিয়া', 'balidiaup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1874, 'Binodpur', 'বিনোদপুর', 'binodpurup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1875, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpurup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1876, 'Rajapur', 'রাজাপুর', 'rajapurup.magura.gov.bd', 205, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1877, 'Horidhali', 'হরিঢালী', 'horidhaliup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1878, 'Goroikhali', 'গড়ইখালী', 'goroikhaliup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1879, 'Kopilmuni', 'কপিলমুনি', 'kopilmuniup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1880, 'Lota', 'লতা', 'lotaup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1881, 'Deluti', 'দেলুটি', 'delutiup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1882, 'Loskor', 'লস্কর', 'loskorup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1883, 'Godaipur', 'গদাইপুর', 'godaipurup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1884, 'Raruli', 'রাড়ুলী', 'www.raruliup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1885, 'Chandkhali', 'চাঁদখালী', 'chandkhaliup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1886, 'Soladana', 'সোলাদানা', 'soladanaup.khulna.gov.bd', 206, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1887, 'Fultola', 'ফুলতলা', 'www.fultolaup.khulna.gov.bd', 207, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1888, 'Damodar', 'দামোদর', 'www.damodarup.khulna.gov.bd', 207, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1889, 'Atra Gilatola', 'আটরা গিলাতলা', 'www.atragilatolaup.khulna.gov.bd', 207, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1890, 'Jamira', 'জামিরা', 'www.jamiraup.khulna.gov.bd', 207, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1891, 'Senhati', 'সেনহাটি', 'www.senhatiup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1892, 'Gajirhat', 'গাজীরহাট', 'www.gajirhatup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1893, 'Barakpur', 'বারাকপুর', 'www.barakpurup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1894, 'Aronghata', 'আড়ংঘাটা', 'www.aronghataup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1895, 'Jogipol', 'যোগীপোল', 'www.jogipolup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1896, 'Digholia', 'দিঘলিয়া', 'www.digholiaup.khulna.gov.bd', 208, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1897, 'Aichgati', 'আইচগাতী', 'aichgatiup.khulna.gov.bd', 209, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1898, 'Srifoltola', 'শ্রীফলতলা', 'srifoltolaup.khulna.gov.bd', 209, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1899, 'Noihati', 'নৈহাটি', 'noihatiup.khulna.gov.bd', 209, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1900, 'Tsb', 'টিএসবি', 'tsbup.khulna.gov.bd', 209, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1901, 'Ghatvog', 'ঘাটভোগ', 'ghatvogup.khulna.gov.bd', 209, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1902, 'Terokhada', 'তেরখাদা', 'terokhadaup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1903, 'Chagladoho', 'ছাগলাদহ', 'chagladohoup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1904, 'Barasat', 'বারাসাত', 'www.barasatup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1905, 'Sochiadaho', 'সাচিয়াদাহ', 'www.sochiadahoup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1906, 'Modhupur', 'মধুপুর', 'www.modhupurup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1907, 'Ajgora', 'আজগড়া', 'www.ajgoraup.khulna.gov.bd', 210, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1908, 'Dumuria', 'ডুমুরিয়া', 'dumuriaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1909, 'Magurghona', 'মাগুরাঘোনা', 'magurghonaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1910, 'Vandarpara', 'ভান্ডারপাড়া', 'vandarparaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1911, 'Sahos', 'সাহস', 'sahosup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1912, 'Rudaghora', 'রুদাঘরা', 'rudaghoraup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1913, 'Ghutudia', 'গুটুদিয়া', 'ghutudiaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1914, 'Shovna', 'শোভনা', 'shovnaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1915, 'Khornia', 'খর্ণিয়া', 'khorniaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1916, 'Atlia', 'আটলিয়া', 'atliaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1917, 'Dhamalia', 'ধামালিয়া', 'dhamaliaup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1918, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1919, 'Rongpur', 'রংপুর', 'rongpurup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1920, 'Shorafpur', 'শরাফপুর', 'shorafpurup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1921, 'Magurkhali', 'মাগুরখালি', 'magurkhaliup.khulna.gov.bd', 211, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1922, 'Botiaghata', 'বটিয়াঘাটা', 'www.botiaghataup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1923, 'Amirpur', 'আমিরপুর', 'www.amirpurup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1924, 'Gongarampur', 'গঙ্গারামপুর', 'www.gongarampurup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1925, 'Surkhali', 'সুরখালী', 'www.surkhaliup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1926, 'Vandarkot', 'ভান্ডারকোট', 'www.vandarkotup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1927, 'Baliadanga', 'বালিয়াডাঙ্গা', 'www.baliadangaup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1928, 'Jolma', 'জলমা', 'www.jolmaup.khulna.gov.bd', 212, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1929, 'Dakop', 'দাকোপ', 'www.dakopup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1930, 'Bajua', 'বাজুয়া', 'bajuaup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1931, 'Kamarkhola', 'কামারখোলা', 'www.kamarkholaup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1932, 'Tildanga', 'তিলডাঙ্গা', 'www.tildangaup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1933, 'Sutarkhali', 'সুতারখালী', 'www.sutarkhaliup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1934, 'Laudoba', 'লাউডোব', 'laudobaup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1935, 'Pankhali', 'পানখালী', 'pankhaliup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1936, 'Banishanta', 'বানিশান্তা', 'banishantaup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1937, 'Koilashgonj', 'কৈলাশগঞ্জ', 'koilashgonjup.khulna.gov.bd', 213, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1938, 'Koyra', 'কয়রা', 'koyraup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1939, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1940, 'Moheswaripur', 'মহেশ্বরীপুর', 'moheswaripurup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1941, 'North Bedkashi', 'উত্তর বেদকাশী', 'northbedkashiup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1942, 'South Bedkashi', 'দক্ষিণ বেদকাশী', 'southbedkashiup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1943, 'Amadi', 'আমাদি', 'amadiup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1944, 'Bagali', 'বাগালী', 'bagaliup.khulna.gov.bd', 214, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1945, 'Betaga', 'বেতাগা', 'betagaup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1946, 'Lakhpur', 'লখপুর', 'lakhpurup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1947, 'Fakirhat', 'ফকিরহাট', 'fakirhatup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1948, 'Bahirdia-Mansa', 'বাহিরদিয়া-মানসা', 'bahirdiamansaup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1949, 'Piljanga', 'পিলজংগ', 'piljangaup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1950, 'Naldha-Mouvhog', 'নলধা-মৌভোগ', 'naldhamauvhogup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1951, 'Mulghar', 'মূলঘর', 'mulgharup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1952, 'Suvhadia', 'শুভদিয়া', 'suvhadiaup.bagerhat.gov.bd', 215, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1953, 'Karapara', 'কাড়াপাড়া', 'karaparaup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1954, 'Bamorta', 'বেমরতা', 'bamortaup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1955, 'Gotapara', 'গোটাপাড়া', 'gotaparaup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1956, 'Bishnapur', 'বিষ্ণুপুর', 'bishnapurup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1957, 'Baruipara', 'বারুইপাড়া', 'baruiparaup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1958, 'Jatharapur', 'যাত্রাপুর', 'jatharapurup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1959, 'Shaitgomboj', 'ষাটগুম্বজ', 'shaitgombojup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1960, 'Khanpur', 'খানপুর', 'khanpurup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1961, 'Rakhalgachi', 'রাখালগাছি', 'rakhalgachiup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1962, 'Dema', 'ডেমা', 'demaup.bagerhat.gov.bd', 216, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1963, 'Udoypur', 'উদয়পুর', 'udoypurup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1964, 'Chunkhola', 'চুনখোলা', 'chunkholaup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1965, 'Gangni', 'গাংনী', 'gangniup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1966, 'Kulia', 'কুলিয়া', 'kuliaup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1967, 'Gaola', 'গাওলা', 'gaolaup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1968, 'Kodalia', 'কোদালিয়া', 'kodaliaup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1969, 'Atjuri', 'আটজুড়ী', 'atjuriup.bagerhat.gov.bd', 217, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1970, 'Dhanshagor', 'ধানসাগর', 'dhanshagorup.bagerhat.gov.bd', 218, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1971, 'Khontakata', 'খোন্তাকাটা', 'khontakataup.bagerhat.gov.bd', 218, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1972, 'Rayenda', 'রায়েন্দা', 'rayendaup.bagerhat.gov.bd', 218, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1973, 'Southkhali', 'সাউথখালী', 'southkhaliup.bagerhat.gov.bd', 218, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1974, 'Gouramva', 'গৌরম্ভা', 'gouramvaup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1975, 'Uzzalkur', 'উজলকুড়', 'uzzalkurup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1976, 'Baintala', 'বাইনতলা', 'baintalaup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1977, 'Rampal', 'রামপাল', 'rampalup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1978, 'Rajnagar', 'রাজনগর', 'rajnagarup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1979, 'Hurka', 'হুড়কা', 'hurkaup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1980, 'Perikhali', 'পেড়িখালী', 'perikhaliup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1981, 'Vospatia', 'ভোজপাতিয়া', 'vospatiaup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1982, 'Mollikerbar', 'মল্লিকেরবেড়', 'mollikerbarup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1983, 'Bastoli', 'বাঁশতলী', 'bastoliup.bagerhat.gov.bd', 219, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1984, 'Teligati', 'তেলিগাতী', 'teligatiup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1985, 'Panchakaran', 'পঞ্চকরণ', 'panchakaranup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1986, 'Putikhali', 'পুটিখালী', 'putikhaliup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1987, 'Daibagnyahati', 'দৈবজ্ঞহাটি', 'daibagnyahatiup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1988, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1989, 'Chingrakhali', 'চিংড়াখালী', 'chingrakhaliup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1990, 'Jiudhara', 'জিউধরা', 'jiudharaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1991, 'Hoglapasha', 'হোগলাপাশা', 'hoglapashaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1992, 'Banagram', 'বনগ্রাম', 'banagramup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1993, 'Balaibunia', 'বলইবুনিয়া', 'balaibuniaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1994, 'Hoglabunia', 'হোগলাবুনিয়া', 'hoglabuniaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1995, 'Baharbunia', 'বহরবুনিয়া', 'baharbuniaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1996, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganjup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1997, 'Khaulia', 'খাউলিয়া', 'khauliaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1998, 'Nishanbaria', 'নিশানবাড়িয়া', 'nishanbariaup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(1999, 'Baraikhali', 'বারইখালী', 'baraikhaliup.bagerhat.gov.bd', 220, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2000, 'Gojalia', 'গজালিয়া', 'gojaliaup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2001, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2002, 'Moghia', 'মঘিয়া', 'moghiaup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2003, 'Kachua', 'কচুয়া', 'kachuaup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2004, 'Gopalpur', 'গোপালপুর', 'gopalpurup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2005, 'Raripara', 'রাড়ীপাড়া', 'rariparaup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2006, 'Badhal', 'বাধাল', 'badhalup.bagerhat.gov.bd', 221, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2007, 'Burrirdangga', 'বুড়িরডাঙ্গা', 'burrirdanggaup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2008, 'Mithakhali', 'মিঠাখালী', 'mithakhaliup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2009, 'Sonailtala', 'সোনাইলতলা', 'sonailtalaup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2010, 'Chadpai', 'চাঁদপাই', 'chadpaiup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2011, 'Chila', 'চিলা', 'chilaup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2012, 'Sundarban', 'সুন্দরবন', 'sundarbanup.bagerhat.gov.bd', 222, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2013, 'Barobaria', 'বড়বাড়িয়া', 'barobariaup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2014, 'Kalatala', 'কলাতলা', 'kalatalaup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2015, 'Hizla', 'হিজলা', 'hizlaup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2016, 'Shibpur', 'শিবপুর', 'shibpurup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2017, 'Chitalmari', 'চিতলমারী', 'chitalmariup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2018, 'Charbaniri', 'চরবানিয়ারী', 'charbaniriup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2019, 'Shantoshpur', 'সন্তোষপুর', 'shantoshpurup.bagerhat.gov.bd', 223, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2020, 'Sadhuhati', 'সাধুহাটী', 'sadhuhatiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2021, 'Modhuhati', 'মধুহাটী', 'modhuhatiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2022, 'Saganna', 'সাগান্না', 'sagannaup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2023, 'Halidhani', 'হলিধানী', 'halidhaniup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2024, 'Kumrabaria', 'কুমড়াবাড়ীয়া', 'kumrabariaup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2025, 'Ganna', 'গান্না', 'gannaup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2026, 'Maharazpur', 'মহারাজপুর', 'maharazpurup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2027, 'Paglakanai', 'পাগলাকানাই', 'paglakanaiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2028, 'Porahati', 'পোড়াহাটী', 'porahatiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2029, 'Harishongkorpur', 'হরিশংকরপুর', 'harishongkorpurup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2030, 'Padmakar', 'পদ্মাকর', 'padmakarup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2031, 'Dogachhi', 'দোগাছি', 'dogachhiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2032, 'Furshondi', 'ফুরসন্দি', 'furshondiup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2033, 'Ghorshal', 'ঘোড়শাল', 'ghorshalup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2034, 'Kalicharanpur', 'কালীচরণপুর', 'kalicharanpurup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2035, 'Surat', 'সুরাট', 'suratup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2036, 'Naldanga', 'নলডাঙ্গা', 'naldangaup.jhenaidah.gov.bd', 224, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2037, 'Tribeni', 'ত্রিবেনী', 'tribeniup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2038, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2039, 'Dignagore', 'দিগনগর', 'dignagoreup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2040, 'Kancherkol', 'কাঁচেরকোল', 'kancherkolup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2041, 'Sarutia', 'সারুটিয়া', 'sarutiaup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2042, 'Hakimpur', 'হাকিমপুর', 'hakimpurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2043, 'Dhaloharachandra', 'ধলহরাচন্দ্র', 'dhaloharachandraup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2044, 'Manoharpur', 'মনোহরপুর', 'manoharpurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2045, 'Bogura', 'বগুড়া', 'boguraup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2046, 'Abaipur', 'আবাইপুর', 'abaipurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2047, 'Nityanandapur', 'নিত্যানন্দপুর', 'nityanandapurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2048, 'Umedpur', 'উমেদপুর', 'umedpurup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2049, 'Dudshar', 'দুধসর', 'dudsharup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2050, 'Fulhari', 'ফুলহরি', 'fulhariup.jhenaidah.gov.bd', 225, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2051, 'Bhayna', 'ভায়না', 'bhaynaup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2052, 'Joradah', 'জোড়াদহ', 'joradahup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2053, 'Taherhuda', 'তাহেরহুদা', 'taherhudaup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2054, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2055, 'Kapashatia', 'কাপাশহাটিয়া', 'kapashatiaup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2056, 'Falsi', 'ফলসী', 'falsiup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2057, 'Raghunathpur', 'রঘুনাথপুর', 'raghunathpurup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2058, 'Chandpur', 'চাঁদপুর', 'chandpurup.jhenaidah.gov.bd', 226, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2059, 'Sundarpurdurgapur', 'সুন্দরপুর-দূর্গাপুর', 'sundarpurdurgapurup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2060, 'Jamal', 'জামাল', 'jamalup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2061, 'Kola', 'কোলা', 'kolaup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2062, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2063, 'Simla-Rokonpur', 'শিমলা-রোকনপুর', 'simlarokonpurup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2064, 'Trilochanpur', 'ত্রিলোচনপুর', 'trilochanpurup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2065, 'Raygram', 'রায়গ্রাম', 'raygramup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2066, 'Maliat', 'মালিয়াট', 'maliatup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2067, 'Barabazar', 'বারবাজার', 'barabazarup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2068, 'Kashtabhanga', 'কাষ্টভাঙ্গা', 'kashtabhangaup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2069, 'Rakhalgachhi', 'রাখালগাছি', 'rakhalgachhiup.jhenaidah.gov.bd', 227, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2070, 'Sabdalpur', 'সাবদালপুর', 'sabdalpurup.jhenaidah.gov.bd', 228, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2071, 'Dora', 'দোড়া', 'doraup.jhenaidah.gov.bd', 228, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2072, 'Kushna', 'কুশনা', 'kushnaup.jhenaidah.gov.bd', 228, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2073, 'Baluhar', 'বলুহর', 'baluharup.jhenaidah.gov.bd', 228, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2074, 'Elangi', 'এলাঙ্গী', 'elangiup.jhenaidah.gov.bd', 228, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2075, 'Sbk', 'এস, বি, কে', 'sbkup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2076, 'Fatepur', 'ফতেপুর', 'fatepurup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2077, 'Panthapara', 'পান্থপাড়া', 'panthaparaup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2078, 'Swaruppur', 'স্বরুপপুর', 'swaruppurup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2079, 'Shyamkur', 'শ্যামকুড়', 'shyamkurup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2080, 'Nepa', 'নেপা', 'nepaup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2081, 'Kazirber', 'কাজীরবেড়', 'kazirberup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2082, 'Banshbaria', 'বাঁশবাড়ীয়া', 'banshbariaup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2083, 'Jadabpur', 'যাদবপুর', 'jadabpurup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2084, 'Natima', 'নাটিমা', 'natimaup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2085, 'Manderbaria', 'মান্দারবাড়ীয়া', 'manderbariaup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2086, 'Azampur', 'আজমপুর', 'azampurup.jhenaidah.gov.bd', 229, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2087, 'Basanda', 'বাসন্ডা', 'basandaup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2088, 'Binoykati', 'বিনয়কাঠী', 'binoykatiup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2089, 'Gabharamchandrapur', 'গাভারামচন্দ্রপুর', 'gabharamchandrapurup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2090, 'Keora', 'কেওড়া', 'keoraup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2091, 'Kirtipasha', 'কীর্তিপাশা', 'kirtipashaup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2092, 'Nabagram', 'নবগ্রাম', 'nabagramup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2093, 'Nathullabad', 'নথুলল্লাবাদ', 'nathullabadup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2094, 'Ponabalia', 'পোনাবালিয়া', 'ponabaliaup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2095, 'Sekherhat', 'শেখেরহাট', 'sekherhatup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2096, 'Gabkhandhansiri', 'গাবখান ধানসিঁড়ি', 'gabkhandhansiriup.jhalakathi.gov.bd', 230, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2097, 'Amua', 'আমুয়া', 'amuaup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2098, 'Awrabunia', 'আওরাবুনিয়া', 'awrabuniaup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2099, 'Chenchrirampur', 'চেঁচরীরামপুর', 'chenchrirampurup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2100, 'Kanthalia', 'কাঠালিয়া', 'kanthaliaup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2101, 'Patikhalghata', 'পাটিখালঘাটা', 'patikhalghataup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2102, 'Shaulajalia', 'শৌলজালিয়া', 'shaulajaliaup.jhalakathi.gov.bd', 231, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2103, 'Subidpur', 'সুবিদপুর', 'subidpurup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2104, 'Siddhakati', 'সিদ্ধকাঠী', 'siddhakatiup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2105, 'Ranapasha', 'রানাপাশা', 'ranapashaup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2106, 'Nachanmohal', 'নাচনমহল', 'nachanmohalup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2107, 'Mollahat', 'মোল্লারহাট', 'mollahatup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2108, 'Magar', 'মগর', 'magarup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2109, 'Kusanghal', 'কুশঙ্গল', 'kusanghalup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2110, 'Kulkathi', 'কুলকাঠী', 'kulkathiup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2111, 'Dapdapia', 'দপদপিয়া', 'dapdapiaup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2112, 'Bharabpasha', 'ভৈরবপাশা', 'bharabpashaup.jhalakathi.gov.bd', 232, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2113, 'Suktagarh', 'শুক্তাগড়', 'suktagarhup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2114, 'Saturia', 'সাতুরিয়া', 'saturiaup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:26', '2026-03-09 16:19:26'),
(2115, 'Mathbari', 'মঠবাড়ী', 'mathbariup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2116, 'Galua', 'গালুয়া', 'galuaup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2117, 'Baraia', 'বড়ইয়া', 'baraiaup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2118, 'Rajapur', 'রাজাপুর', 'rajapurup.jhalakathi.gov.bd', 233, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2119, 'Adabaria', 'আদাবারিয়া', 'adabariaup.gazipur.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2120, 'Bauphal', 'বাউফল', 'bauphalup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2121, 'Daspara', 'দাস পাড়া', 'dasparaup.gazipur.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2122, 'Kalaiya', 'কালাইয়া', 'kalaiyaup.gazipur.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2123, 'Nawmala', 'নওমালা', 'nawmalaup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2124, 'Najirpur', 'নাজিরপুর', 'najirpurup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2125, 'Madanpura', 'মদনপুরা', 'madanpuraup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2126, 'Boga', 'বগা', 'bogaup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2127, 'Kanakdia', 'কনকদিয়া', 'kanakdiaup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2128, 'Shurjamoni', 'সূর্য্যমনি', 'shurjamoniup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2129, 'Keshabpur', 'কেশবপুর', 'keshabpurup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2130, 'Dhulia', 'ধুলিয়া', 'dhuliaup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2131, 'Kalisuri', 'কালিশুরী', 'kalisuriup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2132, 'Kachipara', 'কাছিপাড়া', 'kachiparaup.patuakhali.gov.bd', 234, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2133, 'Laukathi', 'লাউকাঠী', 'laukathiup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2134, 'Lohalia', 'লোহালিয়া', 'lohaliaup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2135, 'Kamalapur', 'কমলাপুর', 'kamalapurup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2136, 'Jainkathi', 'জৈনকাঠী', 'jainkathiup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2137, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2138, 'Badarpur', 'বদরপুর', 'badarpurup.patuakhali.gov.bd ', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2139, 'Itbaria', 'ইটবাড়ীয়া', 'itbariaup.patuakhali.gov.bd ', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2140, 'Marichbunia', 'মরিচবুনিয়া', 'marichbuniaup.patuakhali.gov.bd ', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2141, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2142, 'Chotobighai', 'ছোট বিঘাই', 'chotobighaiup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2143, 'Borobighai', 'বড় বিঘাই', 'borobighaiup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2144, 'Madarbunia', 'মাদারবুনিয়া', 'madarbuniaup.patuakhali.gov.bd', 235, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2145, 'Pangasia', 'পাংগাশিয়া', 'pangasiaup.patuakhali.gov.bd', 236, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2146, 'Muradia', 'মুরাদিয়া', 'muradiaup.patuakhali.gov.bd', 236, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2147, 'Labukhali', 'লেবুখালী', 'labukhaliup.patuakhali.gov.bd', 236, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2148, 'Angaria', 'আংগারিয়া', 'angariaup.patuakhali.gov.bd', 236, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2149, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.patuakhali.gov.bd', 236, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2150, 'Bashbaria', 'বাঁশবাড়ীয়া', 'bashbariaup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2151, 'Rangopaldi', 'রণগোপালদী', 'rangopaldiup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2152, 'Alipur', 'আলীপুর', 'alipurup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2153, 'Betagi Shankipur', 'বেতাগী সানকিপুর', 'betagishankipurup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2154, 'Dashmina', 'দশমিনা', 'dashminaup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2155, 'Baharampur', 'বহরমপুর', 'baharampurup.patuakhali.gov.bd', 237, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2156, 'Chakamaia', 'চাকামইয়া', 'chakamaiaup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2157, 'Tiakhali', 'টিয়াখালী', 'tiakhaliup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2158, 'Lalua', 'লালুয়া', 'laluaup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2159, 'Dhankhali', 'ধানখালী', 'dhankhaliup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2160, 'Mithagonj', 'মিঠাগঞ্জ', 'mithagonjup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2161, 'Nilgonj', 'নীলগঞ্জ', 'nilgonjup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2162, 'Dulaser', 'ধুলাসার', 'dulaserup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2163, 'Latachapli', 'লতাচাপলী', 'latachapliup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2164, 'Mahipur', 'মহিপুর', 'mahipurup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2165, 'Dalbugonj', 'ডালবুগঞ্জ', 'dalbugonjup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2166, 'Baliatali', 'বালিয়াতলী', 'baliataliup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2167, 'Champapur', 'চম্পাপুর', 'champapurup.patuakhali.gov.bd', 238, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2168, 'Madhabkhali', 'মাধবখালী', 'madhabkhaliup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2169, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganjup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2170, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2171, 'Deuli Subidkhali', 'দেউলী সুবিদখালী', 'deulisubidkhaliup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2172, 'Kakrabunia', 'কাকড়াবুনিয়া', 'kakrabuniaup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2173, 'Majidbaria', 'মজিদবাড়িয়া', 'majidbariaup.patuakhali.gov.bd', 239, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2174, 'Amkhola', 'আমখোলা', 'amkholaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2175, 'Golkhali', 'গোলখালী', 'golkhaliup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2176, 'Galachipa', 'গলাচিপা', 'galachipaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2177, 'Panpatty', 'পানপট্টি', 'panpattyup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2178, 'Ratandi Taltali', 'রতনদী তালতলী', 'ratanditaltaliup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2179, 'Dakua', 'ডাকুয়া', 'dakuaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2180, 'Chiknikandi', 'চিকনিকান্দী', 'chiknikandiup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2181, 'Gazalia', 'গজালিয়া', 'gazaliaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2182, 'Charkajol', 'চরকাজল', 'charkajolup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2183, 'Charbiswas', 'চরবিশ্বাস', 'charbiswasup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2184, 'Bakulbaria', 'বকুলবাড়ীয়া', 'bakulbariaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2185, 'Kalagachhia', 'কলাগাছিয়া', 'kalagachhiaup.patuakhali.gov.bd', 240, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2186, 'Rangabali', 'রাঙ্গাবালী', 'rangabaliup.patuakhali.gov.bd', 241, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2187, 'Barobaisdia', 'বড়বাইশদিয়া', 'barobaisdiaup.patuakhali.gov.bd', 241, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2188, 'Chattobaisdia', 'ছোটবাইশদিয়া', 'chattobaisdiaup.patuakhali.gov.bd', 241, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2189, 'Charmontaz', 'চরমোন্তাজ', 'charmontaz.patuakhali.gov.bd', 241, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2190, 'Chalitabunia', 'চালিতাবুনিয়া', 'chalitabuniaup.patuakhali.gov.bd', 241, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2191, 'Shikder Mallik', 'শিকদার মল্লিক', 'shikdermallikup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2192, 'Kodomtala', 'কদমতলা', 'kodomtalaup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2193, 'Durgapur', 'দূর্গাপুর', 'durgapurup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2194, 'Kolakhali', 'কলাখালী', 'kolakhaliup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2195, 'Tona', 'টোনা', 'tonaup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2196, 'Shariktola', 'শরিকতলা', 'shariktolaup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2197, 'Shankorpasa', 'শংকরপাশা', 'shankorpasaup.pirojpur.gov.bd', 242, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2198, 'Mativangga', 'মাটিভাংগা', 'mativanggaup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2199, 'Malikhali', 'মালিখালী', 'malikhaliup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2200, 'Daulbari Dobra', 'দেউলবাড়ী দোবড়া', 'daulbaridobraup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2201, 'Dirgha', 'দীর্ঘা', 'dirghaup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2202, 'Kolardoania', 'কলারদোয়ানিয়া', 'kolardoaniaup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2203, 'Sriramkathi', 'শ্রীরামকাঠী', 'sriramkathiup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2204, 'Shakhmatia', 'সেখমাটিয়া', 'shakhmatiaup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2205, 'Nazirpur Sadar', 'নাজিরপুর সদর', 'nazirpursadarup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2206, 'Shakharikathi', 'শাখারীকাঠী', 'shakharikathiup.pirojpur.gov.bd', 243, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2207, 'Sayna Rogunathpur', 'সয়না রঘুনাথপুর', 'saynarogunathpurup.pirojpur.gov.bd', 244, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2208, 'Amrazuri', 'আমড়াজুড়ি', 'amrazuriup.pirojpur.gov.bd', 244, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2209, 'Kawkhali Sadar', 'কাউখালি সদর', 'kawkhalisadarup.pirojpur.gov.bd', 244, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2210, 'Chirapara', 'চিরাপাড়া', 'chiraparaup.pirojpur.gov.bd', 244, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2211, 'Shialkhathi', 'শিয়ালকাঠী', 'shialkhathiup.pirojpur.gov.bd', 244, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2212, 'Balipara', 'বালিপাড়া', 'baliparaup.pirojpur.gov.bd', 245, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2213, 'Pattashi', 'পত্তাশি', 'pattashiup.pirojpur.gov.bd', 245, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2214, 'Parerhat', 'পাড়েরহাট', 'parerhatup.pirojpur.gov.bd', 245, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2215, 'Vitabaria', 'ভিটাবাড়িয়া', 'vitabariaup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2216, 'Nodmulla', 'নদমূলা শিয়ালকাঠী', 'nodmullaup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2217, 'Telikhali', 'তেলিখালী', 'telikhaliup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2218, 'Ekree', 'ইকড়ী', 'ekreeup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2219, 'Dhaoa', 'ধাওয়া', 'dhaoaup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2220, 'Vandaria Sadar', 'ভান্ডারিয়া সদর', 'vandariasadarup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(2221, 'Gouripur', 'গৌরীপুর', 'gouripurup.pirojpur.gov.bd', 246, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2222, 'Tuskhali', 'তুষখালী', 'tuskhaliup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2223, 'Dhanisafa', 'ধানীসাফা', 'dhanisafaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2224, 'Mirukhali', 'মিরুখালী', 'mirukhaliup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2225, 'Tikikata', 'টিকিকাটা', 'tikikataup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2226, 'Betmor Rajpara', 'বেতমোর রাজপাড়া', 'betmorrajparaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2227, 'Amragachia', 'আমড়াগাছিয়া', 'amragachiaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2228, 'Shapleza', 'শাপলেজা', 'shaplezaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2229, 'Daudkhali', 'দাউদখালী', 'daudkhaliup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2230, 'Mathbaria', 'মঠবাড়িয়া', 'mathbariaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2231, 'Baramasua', 'বড়মাছুয়া', 'baramasuaup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2232, 'Haltagulishakhali', 'হলতাগুলিশাখালী', 'haltagulishakhaliup.pirojpur.gov.bd', 247, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2233, 'Boldia', 'বলদিয়া', 'boldiaup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2234, 'Sohagdal', 'সোহাগদল', 'sohagdalup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2235, 'Atghorkuriana', 'আটঘর কুড়িয়ানা', 'atghorkurianaup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2236, 'Jolabari', 'জলাবাড়ী', 'jolabariup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2237, 'Doyhary', 'দৈহারী', 'doyharyup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2238, 'Guarekha', 'গুয়ারেখা', 'guarekhaup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2239, 'Somudoykathi', 'সমুদয়কাঠী', 'somudoykathiup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2240, 'Sutiakathi', 'সুটিয়াকাঠী', 'sutiakathiup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2241, 'Sarengkathi', 'সারেংকাঠী', 'sarengkathiup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2242, 'Shorupkathi', 'স্বরুপকাঠী', 'shorupkathiup.pirojpur.gov.bd', 248, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2243, 'Raipasha Karapur', 'রায়পাশা কড়াপুর', 'raipashakarapurup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2244, 'Kashipur', 'কাশীপুর', 'kashipurup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2245, 'Charbaria', 'চরবাড়িয়া', 'charbariaup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2246, 'Shyastabad', 'সায়েস্তাবাদ', 'shyastabadup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2247, 'Charmonai', 'চরমোনাই', 'charmonaiup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2248, 'Zagua', 'জাগুয়া', 'zaguaup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2249, 'Charcowa', 'চরকাউয়া', 'charcowaup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2250, 'Chandpura', 'চাঁদপুরা', 'chandpuraup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2251, 'Tungibaria', 'টুঙ্গীবাড়িয়া', 'tungibariaup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2252, 'Chandramohan', 'চন্দ্রমোহন', 'chandramohanup.barisal.gov.bd', 249, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2253, 'Charamaddi', 'চরামদ্দি', 'charamaddiup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2254, 'Charade', 'চরাদি', 'charadeup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2255, 'Darial', 'দাড়িয়াল', 'darialup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2256, 'Dudhal', 'দুধল', 'dudhalup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2257, 'Durgapasha', 'দুর্গাপাশা', 'durgapashaup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2258, 'Faridpur', 'ফরিদপুর', 'faridpurup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2259, 'Kabai', 'কবাই', 'kabaiup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2260, 'Nalua', 'নলুয়া', 'naluaup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2261, 'Kalashkathi', 'কলসকাঠী', 'kalashkathiup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2262, 'Garuria', 'গারুরিয়া', 'garuriaup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2263, 'Bharpasha', 'ভরপাশা', 'bharpashaup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2264, 'Rangasree', 'রঙ্গশ্রী', 'rangasreeup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2265, 'Padreeshibpur', 'পাদ্রিশিবপুর', 'padreeshibpurup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2266, 'Niamoti', 'নিয়ামতি', 'niamotiup.barisal.gov.bd', 250, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2267, 'Jahangir Nagar', 'জাহাঙ্গীর নগর', 'jahangirnagorup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2268, 'Kaderpur', 'কেদারপুর', 'kaderpurup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2269, 'Deherhoti', 'দেহেরগতি', 'deherhotiup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2270, 'Chandpasha', 'চাঁদপাশা', 'chandpashaup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2271, 'Rahamtpur', 'রহমতপুর', 'rahamtpurup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2272, 'Madhbpasha', 'মাধবপাশা', 'madhbpashaup.barisal.gov.bd', 251, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2273, 'Shatla', 'সাতলা', 'shatlaup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2274, 'Harta', 'হারতা', 'hartaup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2275, 'Jalla', 'জল্লা', 'jallaup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2276, 'Otra', 'ওটরা', 'otraup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2277, 'Sholok', 'শোলক', 'sholokup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2278, 'Barakhota', 'বরাকোঠা', 'barakhotaup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2279, 'Bamrail', 'বামরাইল', 'bamrailup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2280, 'Shikerpur Wazirpur', 'শিকারপুর উজিরপুর', 'shikerpurwazirpurup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2281, 'Gouthia', 'গুঠিয়া', 'gouthiaup.barisal.gov.bd', 252, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2282, 'Bisharkandi', 'বিশারকান্দি', 'bisharkandiup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2283, 'Illuhar', 'ইলুহার', 'illuharup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2284, 'Sayedkathi', 'সৈয়দকাঠী', 'sayedkathiup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2285, 'Chakhar', 'চাখার', 'chakharup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2286, 'Saliabakpur', 'সলিয়াবাকপুর', 'saliabakpurup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2287, 'Baishari', 'বাইশারী', 'baishariup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2288, 'Banaripara', 'বানারিপাড়া', 'banariparaup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2289, 'Udykhati', 'উদয়কাঠী', 'udykhatiup.barisal.gov.bd', 253, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2290, 'Khanjapur', 'খাঞ্জাপুর', 'khanjapurup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2291, 'Barthi', 'বার্থী', 'barthiup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2292, 'Chandshi', 'চাঁদশী', 'chandshiup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2293, 'Mahilara', 'মাহিলারা', 'mahilaraup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2294, 'Nalchira', 'নলচিড়া', 'nalchiraup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2295, 'Batajore', 'বাটাজোর', 'batajoreup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2296, 'Sarikal', 'সরিকল', 'sarikalup.barisal.gov.bd', 254, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2297, 'Rajihar', 'রাজিহার', 'rajiharup.barisal.gov.bd', 255, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2298, 'Bakal', 'বাকাল', 'bakalup.barisal.gov.bd', 255, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2299, 'Bagdha', 'বাগধা', 'bagdhaup.barisal.gov.bd', 255, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2300, 'Goila', 'গৈলা', 'goilaup.barisal.gov.bd', 255, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2301, 'Ratnapur', 'রত্নপুর', 'ratnapurup.barisal.gov.bd', 255, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2302, 'Andarmanik', 'আন্দারমানিক', 'andarmanikup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2303, 'Lata', 'লতা', 'lataup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2304, 'Charakkorea', 'চরএককরিয়া', 'charakkoreaup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2305, 'Ulania', 'উলানিয়া', 'ulaniaup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2306, 'Mehendigong', 'মেহেন্দিগঞ্জ', 'mehendigongup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2307, 'Biddanandapur', 'বিদ্যানন্দনপুর', 'biddanandapurup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2308, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2309, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2310, 'Alimabad', 'আলিমাবাদ', 'alimabadup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2311, 'Chandpur', 'চানপুর', 'chandpurup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2312, 'Darirchar Khajuria', 'দড়িরচর খাজুরিয়া', 'darircharkhajuriaup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2313, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2314, 'Chargopalpur', 'চরগোপালপুর', 'chargopalpurup.barisal.gov.bd', 256, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2315, 'Batamara', 'বাটামারা', 'batamaraup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2316, 'Nazirpur', 'নাজিরপুর', 'nazirpurup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2317, 'Safipur', 'সফিপুর', 'safipurup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2318, 'Gaschua', 'গাছুয়া', 'gaschuaup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2319, 'Charkalekha', 'চরকালেখা', 'charkalekhaup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2320, 'Muladi', 'মুলাদী', 'muladiup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2321, 'Kazirchar', 'কাজিরচর', 'kazircharup.barisal.gov.bd', 257, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2322, 'Harinathpur', 'হরিনাথপুর', 'harinathpurup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2323, 'Memania', 'মেমানিয়া', 'memaniaup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2324, 'Guabaria', 'গুয়াবাড়িয়া', 'guabariaup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2325, 'Barjalia', 'বড়জালিয়া', 'barjaliaup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2326, 'Hizla Gourabdi', 'হিজলা গৌরাব্দি', 'hizlagourabdiup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2327, 'Dhulkhola', 'ধুলখোলা', 'dhulkholaup.barisal.gov.bd', 258, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2328, 'Razapur', 'রাজাপুর', 'razapurup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2329, 'Ilisha', 'ইলিশা', 'ilishaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2330, 'Westilisa', 'পশ্চিম ইলিশা', 'westilisaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2331, 'Kachia', 'কাচিয়া', 'kachiaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2332, 'Bapta', 'বাপ্তা', 'baptaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2333, 'Dhania', 'ধনিয়া', 'dhaniaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2334, 'Shibpur', 'শিবপুর', 'shibpurup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2335, 'Alinagor', 'আলীনগর', 'alinagorup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2336, 'Charshamya', 'চরসামাইয়া', 'charshamyaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2337, 'Vhelumia', ' ভেলুমিয়া', 'vhelumiaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2338, 'Vheduria', 'ভেদুরিয়া', 'vheduriaup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2339, 'North Digholdi', 'উত্তর দিঘলদী', 'northdigholdiup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2340, 'South Digholdi', 'দক্ষিণ দিঘলদী', 'southdigholdiup.bhola.gov.bd', 259, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2341, 'Boromanika', 'বড় মানিকা', 'boromanikaup.bhola.gov.bd', 260, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2342, 'Deula', 'দেউলা', 'deulaup.bhola.gov.bd', 260, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2343, 'Kutuba', 'কুতুবা', 'kutubaup.bhola.gov.bd', 260, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2344, 'Pakshia', 'পক্ষিয়া', 'pakshiaup.bhola.gov.bd', 260, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2345, 'Kachia', 'কাচিয়া', 'kachiaup4.bhola.gov.bd', 260, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2346, 'Osmangonj', 'ওসমানগঞ্জ', 'osmangonjup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2347, 'Aslampur', 'আছলামপুর', 'aslampurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2348, 'Zinnagor', 'জিন্নাগড়', 'zinnagorup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2349, 'Aminabad', 'আমিনাবাদ', 'aminabadup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2350, 'Nilkomol', 'নীলকমল', 'nilkomolup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2351, 'Charmadraj', 'চরমাদ্রাজ', 'charmadrajup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2352, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2353, 'Awajpur', 'আওয়াজপুর', 'awajpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2354, 'Charkolmi', 'চরকলমী', 'charkolmiup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2355, 'Charmanika', 'চরমানিকা', 'charmanikaup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2356, 'Hazarigonj', 'হাজারীগঞ্জ', 'hazarigonjup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2357, 'Jahanpur', 'জাহানপুর', 'jahanpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2358, 'Nurabad', 'নুরাবাদ', 'nurabadup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2359, 'Rasulpur', 'রসুলপুর', 'rasulpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2360, 'Kukrimukri', 'কুকরীমূকরী', 'kukrimukriup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2361, 'Abubakarpur', 'আবুবকরপুর', 'abubakarpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2362, 'Abdullahpur', 'আবদুল্লাহ', 'abdullahpurup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2363, 'Nazrulnagar', 'নজরুল নগর', 'nazrulnagarup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2364, 'Mujibnagar', 'মুজিব নগর', 'mujibnagarup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2365, 'Dalchar', 'ঢালচর', 'dalcharup.bhola.gov.bd', 261, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2366, 'Madanpur', 'মদনপুর', 'madanpurup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2367, 'Madua', 'মেদুয়া', 'maduaup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2368, 'Charpata', 'চরপাতা', 'charpataup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2369, 'North Joy Nagar', 'উত্তর জয়নগর', 'northjoynagarup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2370, 'South Joy Nagar', 'দক্ষিন জয়নগর', 'southjoynagarup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2371, 'Char Khalipa', 'চর খলিফা', 'charkhalipaup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2372, 'Sayedpur', 'সৈয়দপুর', 'sayedpurup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2373, 'Hazipur', 'হাজীপুর', 'hazipurup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2374, 'Vhovanipur', 'ভবানীপুর', 'vhovanipurup.bhola.gov.bd', 262, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2375, 'Hazirhat', 'হাজীর হাট', 'hazirhatup.bhola.gov.bd', 263, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2376, 'Monpura', 'মনপুরা', 'monpuraup.bhola.gov.bd', 263, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2377, 'North Sakuchia', 'উত্তর সাকুচিয়া', 'sakuchianorthup.bhola.gov.bd', 263, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2378, 'South Sakuchia', 'দক্ষিন সাকুচিয়া', 'sakuchiasouthup.bhola.gov.bd', 263, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2379, 'Chanchra', 'চাচঁড়া', 'chanchraup.bhola.gov.bd', 264, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2380, 'Shambupur', 'শম্ভুপুর', 'shambupurup.bhola.gov.bd', 264, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2381, 'Sonapur', 'সোনাপুর', 'sonapurup.bhola.gov.bd', 264, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2382, 'Chadpur', 'চাঁদপুর', 'chadpurup.bhola.gov.bd', 264, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2383, 'Baro Molongchora', 'বড় মলংচড়া', 'baromolongchoraup.bhola.gov.bd', 264, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2384, 'Badarpur', 'বদরপুর', 'badarpurup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2385, 'Charbhuta', 'চরভূতা', 'charbhutaup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2386, 'Kalma', ' কালমা', 'kalmaup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2387, 'Dholigour Nagar', 'ধলীগৌর নগর', 'dholigournagarup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2388, 'Lalmohan', 'লালমোহন', 'lalmohanup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2389, 'Lord Hardinge', 'লর্ড হার্ডিঞ্জ', 'lordhardingeup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2390, 'Ramagonj', 'রমাগঞ্জ', 'ramagonjup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2391, 'Paschim Char Umed', 'পশ্চিম চর উমেদ', 'paschimcharumedup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2392, 'Farajgonj', 'ফরাজগঞ্জ', 'farajgonjup.bhola.gov.bd', 265, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2393, 'Amtali', 'আমতলী', 'amtaliup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2394, 'Gulishakhali', 'গুলিশাখালী', 'gulishakhaliup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2395, 'Athrogasia', 'আঠারগাছিয়া', 'athrogasiaup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2396, 'Kukua', 'কুকুয়া', 'kukuaup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2397, 'Haldia', 'হলদিয়া', 'haldiaup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2398, 'Chotobogi', 'ছোটবগী', 'chotobogiup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2399, 'Arpangasia', 'আড়পাঙ্গাশিয়া', 'arpangasiaup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2400, 'Chowra', 'চাওড়া', 'chowraup.barguna.gov.bd', 266, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2401, 'M. Baliatali', 'এম. বালিয়াতলী', 'm.baliataliup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2402, 'Noltona', 'নলটোনা', 'noltonaup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2403, 'Bodorkhali', 'বদরখালী', 'bodorkhaliup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2404, 'Gowrichanna', 'গৌরিচন্না', 'gowrichannaup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2405, 'Fuljhuri', 'ফুলঝুড়ি', 'fuljhuriup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2406, 'Keorabunia', 'কেওড়াবুনিয়া', 'keorabuniaup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2407, 'Ayla Patakata', 'আয়লা পাতাকাটা', 'aylaPatakataup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2408, 'Burirchor', 'বুড়িরচর', 'burirchorup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2409, 'Dhalua', 'ঢলুয়া', 'dhaluaup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2410, 'Barguna', 'বরগুনা', 'bargunaup.barguna.gov.bd', 267, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2411, 'Bibichini', 'বিবিচিন', 'bibichiniup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2412, 'Betagi', 'বেতাগী', 'betagiup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2413, 'Hosnabad', 'হোসনাবাদ', 'hosnabadup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2414, 'Mokamia', 'মোকামিয়া', 'mokamiaup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2415, 'Buramajumder', 'বুড়ামজুমদার', 'buramajumderup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2416, 'Kazirabad', 'কাজীরাবাদ', 'kazirabadup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2417, 'Sarisamuri', 'সরিষামুড়ী', 'sarisamuriup.barguna.gov.bd', 268, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2418, 'Bukabunia', 'বুকাবুনিয়া', 'bukabuniaup.barguna.gov.bd', 269, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2419, 'Bamna', 'বামনা', 'bamnaup.barguna.gov.bd', 269, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2420, 'Ramna', 'রামনা', 'ramnaup.barguna.gov.bd', 269, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2421, 'Doutola', 'ডৌয়াতলা', 'doutolaup.barguna.gov.bd', 269, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2422, 'Raihanpur', 'রায়হানপুর', 'raihanpurup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2423, 'Nachnapara', 'নাচনাপাড়া', 'nachnaparaup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2424, 'Charduany', 'চরদুয়ানী', 'charduanyup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2425, 'Patharghata', 'পাথরঘাটা', 'patharghataup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2426, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2427, 'Kakchira', 'কাকচিঢ়া', 'kakchiraup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2428, 'Kathaltali', 'কাঠালতলী', 'kathaltaliup.barguna.gov.bd', 270, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2429, 'Karibaria', 'কড়ইবাড়ীয়া', 'karibariaup.barguna.gov.bd', 271, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2430, 'Panchakoralia', 'পচাকোড়ালিয়া', 'panchakoraliaup.barguna.gov.bd', 271, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2431, 'Barabagi', 'বড়বগি', 'barabagiup.barguna.gov.bd', 271, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2432, 'Chhotabagi', 'ছোটবগি', 'chhotabagiup.barguna.gov.bd', 271, '2026-03-09 16:19:27', '2026-03-09 16:19:27'),
(2433, 'Nishanbaria', 'নিশানবাড়ীয়া', 'nishanbariaup.barguna.gov.bd', 271, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2434, 'Sarikkhali', 'শারিকখালি', 'sarikkhaliup.barguna.gov.bd', 271, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2435, 'Sonakata', 'সোনাকাটা', 'sonakataup.barguna.gov.bd', 271, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2436, 'Tazpur', 'তাজপুর', 'tazpurup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2437, 'Umorpur', 'উমরপুর', 'umorpurup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2438, 'West Poilanpur', 'পশ্চিম পৈলনপুর', 'westpoilanpurup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2439, 'East Poilanpur', 'পূর্ব পৈলনপুর', 'eastpoilanpurup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2440, 'Boaljur', 'বোয়ালজুর', 'boaljurup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2441, 'Burungabazar', 'বুরুঙ্গাবাজার', 'burungabazarup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2442, 'Goalabazar', 'গোয়ালাবাজার', 'goalabazarup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2443, 'Doyamir', 'দয়ামীর', 'doyamirup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2444, 'Usmanpur', 'উসমানপুর', 'usmanpurup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2445, 'Dewanbazar', 'দেওয়ান বাজার', 'dewanbazarup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2446, 'West Gouripur', 'পশ্চিম গৌরীপুর', 'westgouripurup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2447, 'East Gouripur', 'পূর্ব গৌরীপুর', 'eastgouripurup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2448, 'Balaganj', 'বালাগঞ্জ', 'balaganjup.sylhet.gov.bd', 272, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2449, 'Sadipur', 'সাদিরপুর', 'sadipurup.sylhet.gov.bd', 284, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2450, 'Tilpara', 'তিলপাড়া', 'tilparaup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2451, 'Alinagar', 'আলীনগর', 'alinagarup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2452, 'Charkhai', 'চরখাই', 'charkhaiup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2453, 'Dubag', 'দুবাগ', 'dubagup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2454, 'Sheola', 'শেওলা', 'sheolaup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2455, 'Kurarbazar', 'কুড়ারবাজার', 'kurarbazarup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2456, 'Mathiura', 'মাথিউরা', 'mathiuraup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2457, 'Mullapur', 'মোল্লাপুর', 'mullapurup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2458, 'Muria', 'মুড়িয়া', 'muriaup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2459, 'Lauta', 'লাউতা', 'lautaup.sylhet.gov.bd', 273, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2460, 'Rampasha', 'রামপাশা', 'rampashaup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2461, 'Lamakazi', 'লামাকাজী', 'lamakaziup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2462, 'Khajanchi', 'খাজাঞ্চী', 'khajanchiup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2463, 'Alankari', 'অলংকারী', 'alankariup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2464, 'Dewkalash', 'দেওকলস', 'dewkalashup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2465, 'Bishwanath', 'বিশ্বনাথ', 'bishwanathup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2466, 'Doshghar', 'দশঘর', 'doshgharup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2467, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.sylhet.gov.bd', 274, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2468, 'Telikhal', 'তেলিখাল', 'telikhalup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2469, 'Islampur Paschim', 'ইসলামপুর পশ্চিম', 'islampurpaschimup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2470, 'Islampur Purba', 'ইসলামপুর পূর্ব', 'islampurpurbaup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2471, 'Isakalas', 'ইসাকলস', 'isakalasup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2472, 'Uttor Ronikhai', 'উত্তর রনিখাই', 'uttorronikhaiup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2473, 'Dakkin Ronikhai', 'দক্ষিন রনিখাই', 'dakkinronikhaiup.sylhet.gov.bd', 275, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2474, 'Ghilachora', 'ঘিলাছড়া', 'ghilachoraup.sylhet.gov.bd', 276, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2475, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', '1nofenchuganjup.sylhet.gov.bd', 276, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2476, 'Uttar Kushiara', 'উত্তর কুশিয়ারা', 'uttarkushiaraup.sylhet.gov.bd', 276, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2477, 'Uttar Fenchuganj', 'উত্তর ফেঞ্চুগঞ্জ', 'uttarfenchuganjup.sylhet.gov.bd', 276, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2478, 'Maijgaon', 'মাইজগাঁও', 'maijgaonup.sylhet.gov.bd', 276, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2479, 'Golapganj', 'গোলাপগঞ্জ', 'golapganjup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2480, 'Fulbari', 'ফুলবাড়ী', 'fulbariup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2481, 'Lakshmipasha', 'লক্ষ্মীপাশা', 'lakshmipashaup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2482, 'Budhbaribazar', 'বুধবারীবাজার', 'budhbaribazarup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2483, 'Dhakadakshin', 'ঢাকাদক্ষিন', 'dhakadakshinup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2484, 'Sharifganj', 'শরিফগঞ্জ', 'sharifganjup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2485, 'Uttar Badepasha', 'উত্তর বাদেপাশা', 'uttarbadepashaup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2486, 'Lakshanaband', 'লক্ষনাবন্দ', 'lakshanabandup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2487, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2488, 'West Amura', 'পশ্চিম আমুরা', 'westamuraup.sylhet.gov.bd', 277, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2489, 'Fothepur', 'ফতেপুর', 'fothepurup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2490, 'Rustampur', 'রুস্তমপুর', 'rustampurup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2491, 'Paschim Jaflong', 'পশ্চিম জাফলং', 'paschimjaflongup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2492, 'Purba Jaflong', 'পূর্ব জাফলং', 'purbajaflongup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2493, 'Lengura', 'লেঙ্গুড়া', 'lenguraup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2494, 'Alirgaon', 'আলীরগাঁও', 'alirgaonup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2495, 'Nandirgaon', 'নন্দিরগাঁও', 'nandirgaonup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2496, 'Towakul', 'তোয়াকুল', 'towakulup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2497, 'Daubari', 'ডৌবাড়ী', 'daubariup.sylhet.gov.bd', 278, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2498, 'Nijpat', 'নিজপাট', 'nijpatup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2499, 'Jaintapur', 'জৈন্তাপুর', 'jaintapurup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2500, 'Charikatha', 'চারিকাটা', 'charikathaup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2501, 'Darbast', 'দরবস্ত', 'darbastup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2502, 'Fatehpur', 'ফতেপুর', 'fatehpurup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2503, 'Chiknagul', 'চিকনাগুল', 'chiknagulup.sylhet.gov.bd', 279, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2504, 'Rajagonj', 'রাজাগঞ্জ', 'rajagonjup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2505, 'Lakshiprashad Purbo', 'লক্ষীপ্রাসাদ পূর্ব', 'lakshiprashadpurboup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2506, 'Lakshiprashad Pashim', 'লক্ষীপ্রাসাদ পশ্চিম', 'lakshiprashadpashimup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2507, 'Digirpar Purbo', 'দিঘিরপার পূর্ব', 'digirparpurboup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2508, 'Satbakh', 'সাতবাক', 'satbakhup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2509, 'Barachotul', 'বড়চতুল', 'barachotulup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2510, 'Kanaighat', 'কানাইঘাট', 'kanaighatup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2511, 'Dakhin Banigram', 'দক্ষিন বানিগ্রাম', 'dakhinbanigramup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2512, 'Jinghabari', 'ঝিঙ্গাবাড়ী', 'jinghabariup.sylhet.gov.bd', 280, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2513, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2514, 'Hatkhula', 'হাটখোলা', 'hatkhulaup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2515, 'Khadimnagar', 'খাদিমনগর', 'khadimnagarup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2516, 'Khadimpara', 'খাদিমপাড়া', 'khadimparaup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2517, 'Tultikor', 'টুলটিকর', 'tultikorup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2518, 'Tukerbazar', 'টুকেরবাজার', 'tukerbazarup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2519, 'Mugolgaon', 'মোগলগাও', 'mugolgaonup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2520, 'Kandigaon', 'কান্দিগাও', 'kandigaonup.sylhet.gov.bd', 281, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2521, 'Manikpur', 'মানিকপুর', 'manikpurup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2522, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2523, 'Barohal', 'বারহাল', 'barohalup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2524, 'Birorsri', 'বিরশ্রী', 'birorsriup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2525, 'Kajalshah', 'কাজলশার', 'kajalshahup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2526, 'Kolachora', 'কলাছড়া', 'kolachora.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2527, 'Zakiganj', 'জকিগঞ্জ', 'zakiganjup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2528, 'Barothakuri', 'বারঠাকুরী', 'barothakuriup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2529, 'Kaskanakpur', 'কসকনকপুর', 'kaskanakpurup.sylhet.gov.bd', 282, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2530, 'Lalabazar', 'লালাবাজার', 'lalabazarup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2531, 'Moglabazar', 'মোগলাবাজার', 'moglabazarup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2532, 'Boroikandi', 'বড়ইকান্দি', 'boroikandiup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2533, 'Silam', 'সিলাম', 'silamup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2534, 'Daudpur', 'দাউদপুর', 'daudpurup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2535, 'Mollargaon', 'মোল্লারগাঁও', 'mollargaonup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2536, 'Kuchai', 'কুচাই', 'kuchaiup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2537, 'Kamalbazar', 'কামালবাজার', 'kamalbazarup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2538, 'Jalalpur', 'জালালপুর', 'jalalpurup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2539, 'Tetli', 'তেতলী', 'tetliup.sylhet.gov.bd', 283, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2540, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2541, 'Borni', 'বর্ণি', 'borniup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2542, 'Dasherbazar', 'দাসেরবাজার', 'dasherbazarup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2543, 'Nizbahadurpur', 'নিজবাহাদুরপুর', 'nizbahadurpurup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2544, 'Uttar Shahbajpur', 'উত্তর শাহবাজপুর', 'shahbajpuruttarup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2545, 'Dakkhin Shahbajpur', 'দক্ষিণ শাহবাজপুর', 'shahbajpurdakshinup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2546, 'Talimpur', 'তালিমপুর', 'talimpurup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2547, 'Baralekha', 'বড়লেখা', 'baralekhaup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2548, 'Dakshinbhag Uttar', 'দক্ষিণভাগ (উত্তর)', 'dakshinbhaguttarup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2549, 'Dakshinbhag Dakkhin', 'দক্ষিণভাগ (দক্ষিণ)', 'dakshinbhagdakshinup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2550, 'Sujanagar', 'সুজানগর', 'sujanagarup.moulvibazar.gov.bd', 285, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2551, 'Adampur', 'আদমপুর', 'adampurup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2552, 'Patanushar', 'পতনঊষার', 'patanusharup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2553, 'Madhabpur', 'মাধবপুর', 'madhabpurup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2554, 'Rahimpur', 'রহিমপুর', 'rahimpurup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2555, 'Shamshernagar', 'শমশেরনগর', 'shamshernagarup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2556, 'Kamalgonj', 'কমলগঞ্জ', 'kamalgonjup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2557, 'Islampur', 'ইসলামপুর', 'islampurup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2558, 'Munshibazar', 'মুন্সিবাজার', 'munshibazarup3.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2559, 'Alinagar', 'আলী নগর', 'alinagarup.moulvibazar.gov.bd', 286, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2560, 'Baramchal', 'বরমচাল', 'baramchalup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2561, 'Bhukshimail', 'ভূকশিমইল', 'bhukshimailup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2562, 'Joychandi', 'জয়চন্ডি', 'joychandiup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2563, 'Brammanbazar', 'ব্রাহ্মণবাজার', 'brammanbazarup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2564, 'Kadipur', 'কাদিপুর', 'kadipurup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2565, 'Kulaura', 'কুলাউড়া', 'kulauraup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2566, 'Rauthgaon', 'রাউৎগাঁও', 'rauthgaonup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2567, 'Tilagaon', 'টিলাগাঁও', 'tilagaonup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2568, 'Sharifpur', 'শরীফপুর', 'sharifpurup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2569, 'Prithimpassa', 'পৃথিমপাশা', 'prithimpassaup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2570, 'Kormodha', 'কর্মধা', 'kormodhaup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2571, 'Bhatera', 'ভাটেরা', 'bhateraup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2572, 'Hazipur', 'হাজীপুর', 'hazipurup.moulvibazar.gov.bd', 287, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2573, 'Amtail', 'আমতৈল', 'amtailup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2574, 'Khalilpur', 'খলিলপুর', 'khalilpurup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2575, 'Monumukh', 'মনুমুখ', 'monumukhup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2576, 'Kamalpur', 'কামালপুর', 'kamalpurup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2577, 'Apar Kagabala', 'আপার কাগাবলা', 'uparkagabalaup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2578, 'Akhailkura', 'আখাইলকুড়া', 'akhailkuraup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2579, 'Ekatuna', 'একাটুনা', 'ekatunaup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2580, 'Chadnighat', 'চাঁদনীঘাট', 'chadnighatup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2581, 'Konokpur', 'কনকপুর', 'konokpurup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2582, 'Nazirabad', 'নাজিরাবাদ', 'nazirabadup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2583, 'Mostafapur', 'মোস্তফাপুর', 'mostafapurup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2584, 'Giasnagar', 'গিয়াসনগর', 'giasnagarup.moulvibazar.gov.bd', 288, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2585, 'Fotepur', 'ফতেপুর', 'fotepurup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2586, 'Uttorbhag', 'উত্তরভাগ', 'uttorbhagup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2587, 'Munsibazar', 'মুন্সিবাজার', 'munsibazarup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2588, 'Panchgaon', 'পাঁচগাঁও', 'panchgaonup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2589, 'Rajnagar', 'রাজনগর', 'rajnagarup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2590, 'Tengra', 'টেংরা', 'tengraup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2591, 'Kamarchak', 'কামারচাক', 'kamarchakup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2592, 'Munsurnagar', 'মনসুরনগর', 'munsurnagarup.moulvibazar.gov.bd', 289, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2593, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2594, 'Bhunabir', 'ভূনবীর', 'bhunabirup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2595, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangalup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2596, 'Sindurkhan', 'সিন্দুরখান', 'sindurkhanup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2597, 'Kalapur', 'কালাপুর', 'kalapurup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2598, 'Ashidron', 'আশিদ্রোন', 'ashidronup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2599, 'Rajghat', 'রাজঘাট', 'rajghatup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2600, 'Kalighat', 'কালীঘাট', 'kalighatup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2601, 'Satgaon', 'সাতগাঁও', 'satgaonup.moulvibazar.gov.bd', 290, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2602, 'Jafornagar', 'জায়ফরনগর', 'jafornagarup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2603, 'West Juri', 'পশ্চিম জুড়ী', 'westjuriup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2604, 'Gualbari', 'গোয়ালবাড়ী', 'gualbariup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2605, 'Sagornal', 'সাগরনাল', 'sagornalup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2606, 'Fultola', 'ফুলতলা', 'fultolaup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2607, 'Eastjuri', 'পুর্ব জুড়ী', 'eastjuriup.moulvibazar.gov.bd', 291, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2608, 'Barabhakoir Paschim', 'বড় ভাকৈর (পশ্চিম)', 'barabhakoirpaschimup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2609, 'Barabhakoir Purba', 'বড় ভাকৈর (পূর্ব)', 'barabhakoirpurbaup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2610, 'Inatganj', 'ইনাতগঞ্জ', 'inatganjup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2611, 'Digholbak', 'দীঘলবাক', 'digholbakup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2612, 'Aushkandi', 'আউশকান্দি', 'aushkandiup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2613, 'Kurshi', 'কুর্শি', 'kurshiup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2614, 'Kargoan', 'করগাঁও', 'kargoanup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2615, 'Nabiganj Sadar', 'নবীগঞ্জ সদর', 'nabiganjsadarup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2616, 'Bausha', 'বাউসা', 'baushaup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2617, 'Debparra', 'দেবপাড়া', 'debparraup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2618, 'Gaznaipur', 'গজনাইপুর', 'gaznaipurup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2619, 'Kaliarbhanga', 'কালিয়ারভাংগা', 'kaliarbhangaup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2620, 'Paniumda', 'পানিউমদা', 'paniumdaup.habiganj.gov.bd', 292, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2621, 'Snanghat', 'স্নানঘাট', 'snanghatup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2622, 'Putijuri', 'পুটিজুরী', 'putijuriup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2623, 'Satkapon', 'সাতকাপন', 'satkaponup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2624, 'Bahubal Sadar', 'বাহুবল সদর', 'bahubalsadarup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2625, 'Lamatashi', 'লামাতাশী', 'lamatashiup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2626, 'Mirpur', 'মিরপুর', 'mirpurup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2627, 'Bhadeshwar', 'ভাদেশ্বর', 'bhadeshwarup.habiganj.gov.bd', 293, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2628, 'Shibpasha', 'শিবপাশা', 'shibpashaup.habiganj.gov.bd', 294, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2629, 'Kakailsao', 'কাকাইলছেও', 'kakailsaoup.habiganj.gov.bd', 294, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2630, 'Ajmiriganj Sadar', 'আজমিরীগঞ্জ সদর', 'ajmiriganjsadarup.habiganj.gov.bd', 294, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2631, 'Badolpur', 'বদলপুর', 'badolpurup.habiganj.gov.bd', 294, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2632, 'Jolsuka', 'জলসুখা', 'jolsukaup.habiganj.gov.bd', 294, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2633, 'Baniachong North East', 'বানিয়াচং উত্তর পূর্ব', 'baniachongnortheastup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2634, 'Baniachong North West', 'বানিয়াচং উত্তর পশ্চিম', 'baniachongnorthwestup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2635, 'Baniachong South East', 'বানিয়াচং দক্ষিণ পূর্ব', 'baniachongsoutheastup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2636, 'Baniachong South West', 'বানিয়াচং দক্ষিণ পশ্চিম', 'baniachongsouthwestup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2637, 'Daulatpur', 'দৌলতপুর', 'daulatpur.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2638, 'Khagaura', 'খাগাউড়া', 'khagauraup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2639, 'Baraiuri', 'বড়ইউড়ি', 'baraiuriup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2640, 'Kagapasha', 'কাগাপাশা', 'kagapashaup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2641, 'Pukra', 'পুকড়া', 'pukraup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2642, 'Subidpur', 'সুবিদপুর', 'subidpurup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2643, 'Makrampur', 'মক্রমপুর', 'makrampurup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2644, 'Sujatpur', 'সুজাতপুর', 'sujatpurup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2645, 'Mandari', 'মন্দরী', 'mandariup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2646, 'Muradpur', 'মুরাদপুর', 'muradpurup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2647, 'Pailarkandi', 'পৈলারকান্দি', 'pailarkandiup.habiganj.gov.bd', 295, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2648, 'Lakhai', 'লাখাই', 'lakhaiup.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2649, 'Murakari', 'মোড়াকরি', 'murakariup.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2650, 'Muriauk', 'মুড়িয়াউক', 'muriaukup.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2651, 'Bamoi', 'বামৈ', 'bamoiup.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2652, 'Karab', 'করাব', 'karabup.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2653, 'Bulla', 'বুল্লা', 'bullaup6.habiganj.gov.bd', 296, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2654, 'Gazipur', 'গাজীপুর', 'gazipurup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2655, 'Ahammadabad', 'আহম্মদাবাদ', 'ahammadabadup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2656, 'Deorgach', 'দেওরগাছ', 'deorgachup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2657, 'Paikpara', 'পাইকপাড়া', 'paikparaup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2658, 'Shankhala', 'শানখলা', 'shankhalaup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2659, 'Chunarughat', 'চুনারুঘাট', 'chunarughatup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2660, 'Ubahata', 'উবাহাটা', 'ubahataup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2661, 'Shatiajuri', 'সাটিয়াজুরী', 'shatiajuriup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(2662, 'Ranigaon', 'রাণীগাঁও', 'ranigaonup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2663, 'Mirashi', 'মিরাশী', 'mirashiup.habiganj.gov.bd', 297, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2664, 'Lukra', 'লুকড়া', 'lukraup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2665, 'Richi', 'রিচি', 'richiup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2666, 'Teghoria', 'তেঘরিয়া', 'teghoriaup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2667, 'Poil', 'পইল', 'poilup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2668, 'Gopaya', 'গোপায়া', 'gopayaup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2669, 'Rajiura', 'রাজিউড়া', 'rajiuraup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2670, 'Nurpur', 'নুরপুর', 'nurpurup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2671, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 'shayestaganjup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2672, 'Nijampur', 'নিজামপুর', 'nijampurup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2673, 'Laskerpur', 'লস্করপুর', 'laskerpurup.habiganj.gov.bd', 298, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2674, 'Dharmaghar', 'ধর্মঘর', 'dharmagharup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2675, 'Choumohani', 'চৌমুহনী', 'choumohaniup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2676, 'Bahara', 'বহরা', 'baharaup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2677, 'Adaoir', 'আদাঐর', 'adaoirup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2678, 'Andiura', 'আন্দিউড়া', 'andiuraup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2679, 'Shahjahanpur', 'শাহজাহানপুর', 'shahjahanpurup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2680, 'Jagadishpur', 'জগদীশপুর', 'jagadishpurup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2681, 'Bulla', 'বুল্লা', 'bullaup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2682, 'Noapara', 'নোয়াপাড়া', 'noaparaup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2683, 'Chhatiain', 'ছাতিয়াইন', 'chhatiainup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2684, 'Bagashura', 'বাঘাসুরা', 'bagashuraup.habiganj.gov.bd', 299, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2685, 'Jahangirnagar', 'জাহাঙ্গীরনগর', 'jahangirnagarup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2686, 'Rangarchar', 'রংগারচর', 'rangarcharup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2687, 'Aptabnagar', 'আপ্তাবনগর', 'aptabnagarup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2688, 'Gourarang', 'গৌরারং', 'gourarang.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2689, 'Mollapara', 'মোল্লাপাড়া', 'mollaparaup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2690, 'Laxmansree', 'লক্ষণশ্রী', 'laxmansreeup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2691, 'Kathair', 'কাঠইর', 'kathairup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2692, 'Surma', 'সুরমা', 'surmaup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2693, 'Mohonpur', 'মোহনপুর', 'mohonpurup.sunamganj.gov.bd', 300, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2694, 'Shimulbak', 'শিমুলবাক', 'shimulbak.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2695, 'Paschim Pagla', 'পশ্চিম পাগলা', 'paschimpagla.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2696, 'Joykalash', 'জয়কলস', 'joykalashup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2697, 'Purba Pagla', 'পূর্ব পাগলা', 'purbapaglaup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2698, 'Patharia', 'পাথারিয়া', 'pathariaup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2699, 'Purba Birgaon', 'পূর্ব বীরগাঁও', 'purbabirgaonup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2700, 'Dargapasha', 'দরগাপাশা', 'dargapashaup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2701, 'Paschim Birgaon', 'পশ্চিম বীরগাঁও', 'paschimbirgaonup.sunamganj.gov.bd', 301, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2702, 'Palash', 'পলাশ', 'palashup.sunamganj.gov.bd', 302, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2703, 'Solukabad', 'সলুকাবাদ', 'solukabadup.sunamganj.gov.bd', 302, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2704, 'Dhanpur', 'ধনপুর', 'dhanpurup.sunamganj.gov.bd', 302, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2705, 'Badaghat South', 'বাদাঘাট দক্ষিণ', 'badaghatsouthup.sunamganj.gov.bd', 302, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2706, 'Fatepur', 'ফতেপুর', 'fatepurup.sunamganj.gov.bd', 302, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2707, 'Islampur', 'ইসলামপুর', 'islampurup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2708, 'Noarai', 'নোয়ারাই', 'noaraiup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2709, 'Chhatak Sadar', 'ছাতক সদর', 'chhataksadarup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2710, 'Kalaruka', 'কালারুকা', 'kalarukaup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2711, 'Gobindganj-Syedergaon', 'গোবিন্দগঞ্জ-সৈদেরগাঁও', 'gobindganjsyedergaonup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2712, 'Chhaila Afjalabad', 'ছৈলা আফজলাবাদ', 'chhailaafjalabadup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2713, 'Khurma North', 'খুরমা উত্তর', 'khurmanorthup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2714, 'Khurma South', 'খুরমা দক্ষিণ', 'khurmasouthup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2715, 'Chormohalla', 'চরমহল্লা', 'chormohallaup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2716, 'Jauwabazar', 'জাউয়া বাজার', 'jauwabazarup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2717, 'Singchapair', 'সিংচাপইড়', 'singchapairup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2718, 'Dolarbazar', 'দোলারবাজার', 'dolarbazarup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2719, 'Bhatgaon', 'ভাতগাঁও', 'bhatgaonup.sunamganj.gov.bd', 303, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2720, 'Kolkolia', 'কলকলিয়া', 'kolkoliaup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2721, 'Patli', 'পাটলী', 'patliup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2722, 'Mirpur', 'মীরপুর', 'mirpurup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2723, 'Chilaura Holdipur', 'চিলাউড়া হলদিপুর', 'chilauraholdipurup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2724, 'Raniganj', 'রানীগঞ্জ', 'raniganjup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2725, 'Syedpur Shaharpara', 'সৈয়দপুর শাহাড়পাড়া', 'syedpurshaharparaup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2726, 'Asharkandi', 'আশারকান্দি', 'asharkandiup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2727, 'Pailgaon', 'পাইলগাঁও', 'pailgaonup.sunamganj.gov.bd', 304, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2728, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2729, 'Norsingpur', 'নরসিংহপুর', 'norsingpurup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2730, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazarup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2731, 'Mannargaon', 'মান্নারগাঁও', 'mannargaonup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2732, 'Pandargaon', 'পান্ডারগাঁও', 'pandargaonup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2733, 'Dohalia', 'দোহালিয়া', 'dohaliaup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2734, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2735, 'Boglabazar', 'বোগলাবাজার', 'boglabazarup.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2736, 'Surma', 'সুরমা', 'surma2up.sunamganj.gov.bd', 305, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2737, 'Sreepur North', 'শ্রীপুর উত্তর', 'sreepurnorthup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2738, 'Sreepur South', 'শ্রীপুর দক্ষিণ', 'sreepursouthup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2739, 'Bordal South', 'বড়দল দক্ষিণ', 'bordalsouthup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2740, 'Bordal North', 'বড়দল উত্তর', 'bordalnorthup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2741, 'Badaghat', 'বাদাঘাট', 'badaghatup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2742, 'Tahirpur Sadar', 'তাহিরপুর সদর', 'tahirpursadarup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2743, 'Balijuri', 'বালিজুরী', 'balijuriup.sunamganj.gov.bd', 306, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2744, 'Bongshikunda North', 'বংশীকুন্ডা উত্তর', 'bongshikundanorthup.sunamganj.gov.bd', 307, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2745, 'Bongshikunda South', 'বংশীকুন্ডা দক্ষিণ', 'bongshikundasouthup.sunamganj.gov.bd', 307, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2746, 'Chamordani', 'চামরদানী', 'chamordaniup.sunamganj.gov.bd', 307, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2747, 'Madhyanagar', 'মধ্যনগর', 'madhyanagarup.sunamganj.gov.bd', 307, '2026-03-09 16:19:28', '2026-03-09 16:19:28'),
(2748, 'Paikurati', 'পাইকুরাটী', 'paikuratiup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2749, 'Selbarash', 'সেলবরষ', 'selbarashup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2750, 'Dharmapasha Sadar', 'ধর্মপাশা সদর', 'dharmapashasadarup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2751, 'Joyasree', 'জয়শ্রী', 'joyasreeup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2752, 'Sukhair Rajapur North', 'সুখাইড় রাজাপুর উত্তর', 'sukhairrajapurnorthup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2753, 'Sukhair Rajapur South', 'সুখাইড় রাজাপুর দক্ষিণ', 'sukhairrajapursouthup.sunamganj.gov.bd', 307, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2754, 'Beheli', 'বেহেলী', 'beheliup.sunamganj.gov.bd', 308, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2755, 'Sachnabazar', 'সাচনাবাজার', 'sachnabazarup.sunamganj.gov.bd', 308, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2756, 'Bhimkhali', 'ভীমখালী', 'bhimkhaliup.sunamganj.gov.bd', 308, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2757, 'Fenerbak', 'ফেনারবাক', 'fenerbakup.sunamganj.gov.bd', 308, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2758, 'Jamalganj Sadar', 'জামালগঞ্জ সদর', 'jamalganjsadarup.sunamganj.gov.bd', 308, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2759, 'Atgaon', 'আটগাঁও', 'atgaonup.sunamganj.gov.bd', 309, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2760, 'Habibpur', 'হবিবপুর', 'habibpurup.sunamganj.gov.bd', 309, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2761, 'Bahara', 'বাহারা', 'baharaup.sunamganj.gov.bd', 309, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2762, 'Shalla Sadar', 'শাল্লা সদর', 'shallasadarup.sunamganj.gov.bd', 309, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2763, 'Rafinagar', 'রফিনগর', 'rafinagarup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2764, 'Bhatipara', 'ভাটিপাড়া', 'bhatiparaup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2765, 'Rajanagar', 'রাজানগর', 'rajanagarup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2766, 'Charnarchar', 'চরনারচর', 'charnarcharup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2767, 'Derai Sarmangal', 'দিরাই সরমঙ্গল', 'deraisarmangalup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2768, 'Karimpur', 'করিমপুর', 'karimpurup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2769, 'Jagddol', 'জগদল', 'jagddolup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2770, 'Taral', 'তাড়ল', 'taralup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2771, 'Kulanj', 'কুলঞ্জ', 'kulanjup.sunamganj.gov.bd', 310, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2772, 'Amlaba', 'আমলাব', 'amlabaup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2773, 'Bajnaba', 'বাজনাব', 'bajnabaup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2774, 'Belabo', 'বেলাব', 'belaboup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2775, 'Binnabayd', 'বিন্নাবাইদ', 'binnabaydup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2776, 'Charuzilab', 'চরউজিলাব', 'charuzilabup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2777, 'Naraynpur', 'নারায়নপুর', 'naraynpurup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2778, 'Sallabad', 'সল্লাবাদ', 'sallabadup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2779, 'Patuli', 'পাটুলী', 'patuliup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2780, 'Diara', 'দেয়ারা মডেল', 'diaraup.narsingdi.gov.bd', 311, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2781, 'Barachapa', 'বড়চাপা', 'barachapaup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2782, 'Chalakchar', 'চালাকচর', 'chalakcharup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2783, 'Charmandalia', 'চরমান্দালিয়া', 'charmandaliaup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2784, 'Ekduaria', 'একদুয়ারিয়া', 'ekduariaup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2785, 'Gotashia', 'গোতাশিয়া', 'gotashiaup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2786, 'Kanchikata', 'কাচিকাটা', 'kanchikataup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2787, 'Khidirpur', 'খিদিরপুর', 'khidirpurup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2788, 'Shukundi', 'শুকুন্দি', 'shukundiup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2789, 'Dawlatpur', 'দৌলতপুর', 'dawlatpurup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2790, 'Krisnopur', 'কৃষ্ণপুর', 'krisnopurup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2791, 'Labutala', 'লেবুতলা', 'labutalaup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2792, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.narsingdi.gov.bd', 312, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2793, 'Alokbali', 'আলোকবালী', 'alokbaliup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2794, 'Chardighaldi', 'চরদিঘলদী', 'chardighaldiup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2795, 'Chinishpur', 'চিনিশপুর', 'chinishpurup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2796, 'Hajipur', 'হাজীপুর', 'hajipurup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2797, 'Karimpur', 'করিমপুর', 'karimpurup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2798, 'Khathalia', 'কাঠালিয়া', 'khathaliaup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2799, 'Nuralapur', 'নূরালাপুর', 'nuralapurup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2800, 'Mahishasura', 'মহিষাশুড়া', 'mahishasuraup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2801, 'Meherpara', 'মেহেড়পাড়া', 'meherparaup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2802, 'Nazarpur', 'নজরপুর', 'nazarpurup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2803, 'Paikarchar', 'পাইকারচর', 'paikarcharup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2804, 'Panchdona', 'পাঁচদোনা', 'panchdonaup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2805, 'Silmandi', 'শিলমান্দী', 'silmandiup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2806, 'Amdia', 'আমদিয়া ২', 'amdiaup.narsingdi.gov.bd', 313, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2807, 'Danga', 'ডাংঙ্গা', 'dangaup.narsingdi.gov.bd', 314, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2808, 'Charsindur', 'চরসিন্দুর', 'charsindurup.narsingdi.gov.bd', 314, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2809, 'Jinardi', 'জিনারদী', 'jinardiup.narsingdi.gov.bd', 314, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2810, 'Gazaria', 'গজারিয়া', 'gazariaup.narsingdi.gov.bd', 314, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2811, 'Chanpur', 'চানপুর', 'chanpurup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2812, 'Alipura', 'অলিপুরা', 'alipuraup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2813, 'Amirganj', 'আমিরগঞ্জ', 'amirganjup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2814, 'Adiabad', 'আদিয়াবাদ', 'adiabadup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2815, 'Banshgari', 'বাঁশগাড়ী', 'banshgariup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2816, 'Chanderkandi', 'চান্দেরকান্দি', 'chanderkandiup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2817, 'Chararalia', 'চরআড়ালিয়া', 'chararaliaup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2818, 'Charmadhua', 'চরমধুয়া', 'charmadhuaup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2819, 'Charsubuddi', 'চরসুবুদ্দি', 'charsubuddiup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2820, 'Daukarchar', 'ডৌকারচর', 'daukarcharup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2821, 'Hairmara', 'হাইরমারা', 'hairmaraup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2822, 'Maheshpur', 'মহেষপুর', 'maheshpurup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2823, 'Mirzanagar', 'মির্জানগর', 'mirzanagarup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2824, 'Mirzarchar', 'মির্জারচর', 'mirzarcharup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2825, 'Nilakhya', 'নিলক্ষ্যা', 'nilakhyaup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2826, 'Palashtali', 'পলাশতলী', 'palashtaliup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2827, 'Paratali', 'পাড়াতলী', 'parataliup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2828, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2829, 'Roypura', 'রায়পুরা', 'roypuraup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2830, 'Musapur', 'মুছাপুর', 'musapurup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2831, 'Uttar Bakharnagar', 'উত্তর বাখরনগর', 'uttarbakharnagarup.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2832, 'Marjal', 'মরজাল', 'marjal2up.narsingdi.gov.bd', 315, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2833, 'Dulalpur', 'দুলালপুর', 'dulalpurup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2834, 'Joynagar', 'জয়নগর', 'joynagarup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2835, 'Sadharchar', 'সাধারচর', 'sadharcharup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2836, 'Masimpur', 'মাছিমপুর', 'masimpurup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2837, 'Chakradha', 'চক্রধা', 'chakradhaup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2838, 'Joshar', 'যোশর', 'josharup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2839, 'Baghabo', 'বাঘাব', 'baghaboup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2840, 'Ayubpur', 'আয়ুবপুর', 'ayubpurup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2841, 'Putia', 'পুটিয়া', 'putiaup.narsingdi.gov.bd', 316, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2842, 'Bahadursadi', 'বাহাদুরশাদী', 'bahadursadi.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2843, 'Baktarpur', 'বক্তারপুর', 'baktarpur.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2844, 'Jamalpurnew', 'জামালপুর', 'jamalpurnew.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2845, 'Jangalia', 'জাঙ্গালিয়া', 'jangalia.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2846, 'Moktarpur', 'মোক্তারপুর', 'moktarpur.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2847, 'Nagari', 'নাগরী', 'nagari.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2848, 'Tumulia', 'তুমুলিয়া', 'tumulia.gazipur.gov.bd', 317, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2849, 'Atabaha', 'আটাবহ', 'atabahaup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2850, 'Boali', 'বোয়ালী', 'boaliup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2851, 'Chapair', 'চাপাইর', 'chapairup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2852, 'Dhaliora', 'ঢালজোড়া', 'dhalioraup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2853, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2854, 'Madhyapara', 'মধ্যপাড়া', 'madhyapara.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2855, 'Mouchak', 'মৌচাক', 'mouchakup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2856, 'Sutrapur', 'সূত্রাপুর', 'sutrapurup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2857, 'Srifaltali', 'শ্রীফলতলী', 'srifaltaliup.gazipur.gov.bd', 318, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2858, 'Barishaba', 'বারিষাব', 'barishabaup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2859, 'Ghagotia', 'ঘাগটিয়া', 'ghagotiaup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2860, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2861, 'Chandpur', 'চাঁদপুর', 'chandpur.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2862, 'Targoan', 'তরগাঁও', 'targoan.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2863, 'Karihata', 'কড়িহাতা', 'karihata.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2864, 'Tokh', 'টোক', 'tokh.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2865, 'Sinhasree', 'সিংহশ্রী', 'sinhasree.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2866, 'Durgapur', 'দূর্গাপুর', 'durgapurup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2867, 'Sonmania', 'সনমানিয়া', 'sonmaniaup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2868, 'Rayed', 'রায়েদ', 'rayedup.gazipur.gov.bd', 319, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2869, 'Baria', 'বাড়ীয়া', 'bariaup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2870, 'Basan', 'বাসন', 'basanup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2871, 'Gachha', 'গাছা', 'gachhaup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2872, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2873, 'Kayaltia', 'কাউলতিয়া', 'kayaltiaup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2874, 'Konabari', 'কোনাবাড়ী', 'konabariup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2875, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2876, 'Pubail', 'পূবাইল', 'pubailup.gazipur.gov.bd', 320, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2877, 'Barmi', 'বরমী', 'barmiup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2878, 'Gazipur', 'গাজীপুর', 'gazipurup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2879, 'Gosinga', 'গোসিংগা', 'gosingaup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2880, 'Maona', 'মাওনা', 'maonaup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2881, 'Kaoraid', 'কাওরাইদ', 'kaoraidup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2882, 'Prahladpur', 'প্রহলাদপুর', 'prahladpurup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2883, 'Rajabari', 'রাজাবাড়ী', 'rajabariup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2884, 'Telihati', 'তেলিহাটী', 'telihatiup.gazipur.gov.bd', 321, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2885, 'Binodpur', 'বিনোদপুর', 'binodpurup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2886, 'Tulasar', 'তুলাসার', 'tulasarup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2887, 'Palong', 'পালং', 'palongup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2888, 'Domshar', 'ডোমসার', 'domsharup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2889, 'Rudrakar', 'রুদ্রকর', 'rudrakarup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2890, 'Angaria', 'আংগারিয়া', 'angariaup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2891, 'Chitolia', 'চিতলয়া', 'chitoliaup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2892, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2893, 'Chikondi', 'চিকন্দি', 'chikondiup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2894, 'Chandrapur', 'চন্দ্রপুর', 'chandrapurup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2895, 'Shulpara', 'শৌলপাড়া', 'shulparaup.shariatpur.gov.bd', 322, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2896, 'Kedarpur', 'কেদারপুর', 'kedarpurup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2897, 'Dingamanik', 'ডিংগামানিক', 'dingamanikup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2898, 'Garishar', 'ঘড়িষার', 'garisharup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2899, 'Nowpara', 'নওপাড়া', 'nowparaup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2900, 'Moktererchar', 'মোত্তারেরচর', 'mokterercharup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2901, 'Charatra', 'চরআত্রা', 'charatraup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2902, 'Rajnagar', 'রাজনগর', 'rajnagarup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2903, 'Japsa', 'জপসা', 'japsaup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2904, 'Vojeshwar', 'ভোজেশ্বর', 'vojeshwarup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2905, 'Fategongpur', 'ফতেজংপুর', 'fategongpurup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2906, 'Bijari', 'বিঝারি', 'bijariup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2907, 'Vumkhara', 'ভূমখাড়া', 'vumkharaup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2908, 'Nashason', 'নশাসন', 'nashasonup.shariatpur.gov.bd', 323, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2909, 'Zajira Sadar', 'জাজিরা সদর', 'zajirasadarup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2910, 'Mulna', 'মূলনা', 'mulnaup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2911, 'Barokandi', 'বড়কান্দি', 'barokandiup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2912, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2913, 'Kundarchar', 'কুন্ডেরচর', 'kundarcharup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2914, 'Palerchar', 'পালেরচর', 'palercharup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2915, 'Purba Nawdoba', 'পুর্ব নাওডোবা', 'purbanawdobaup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2916, 'Nawdoba', 'নাওডোবা', 'nawdobaup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2917, 'Shenerchar', 'সেনেরচর', 'shenercharup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2918, 'Bknagar', 'বি. কে. নগর', 'bknagarup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2919, 'Barogopalpur', 'বড়গোপালপুর', 'barogopalpurup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2920, 'Jaynagor', 'জয়নগর', 'jaynagorup.shariatpur.gov.bd', 324, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2921, 'Nager Para', 'নাগের পাড়া', 'nagerparaup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2922, 'Alaolpur', 'আলাওলপুর', 'alaolpurup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2923, 'Kodalpur', 'কোদালপুর', 'kodalpurup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2924, 'Goshairhat', 'গোসাইরহাট', 'goshairhatup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2925, 'Edilpur', 'ইদিলপুর', 'edilpurup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2926, 'Nalmuri', 'নলমুড়ি', 'nalmuriup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2927, 'Samontasar', 'সামন্তসার', 'samontasarup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2928, 'Kuchipatti', 'কুচাইপট্টি', 'kuchipattiup.shariatpur.gov.bd', 325, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2929, 'Ramvadrapur', 'রামভদ্রপুর', 'ramvadrapurup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2930, 'Mahisar', 'মহিষার', 'mahisarup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2931, 'Saygaon', 'ছয়গাঁও', 'saygaonup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2932, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2933, 'D.M Khali', 'ডি.এম খালি', 'dmkhaliup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2934, 'Charkumaria', 'চরকুমারিয়া', 'charkumariaup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2935, 'Sakhipur', 'সখিপুর', 'sakhipurup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2936, 'Kachikata', 'কাচিকাঁটা', 'kachikataup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2937, 'North Tarabunia', 'উত্তর তারাবুনিয়া', 'northtarabuniaup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2938, 'Charvaga', 'চরভাগা', 'charvagaup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2939, 'Arsinagar', 'আরশিনগর', 'arsinagarup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2940, 'South Tarabunia', 'দক্ষিন তারাবুনিয়া', 'southtarabuniaup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2941, 'Charsensas', 'চরসেনসাস', 'charsensasup.shariatpur.gov.bd', 326, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2942, 'Shidulkura', 'শিধলকুড়া', 'shidulkuraup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2943, 'Kaneshar', 'কনেস্বর', 'kanesharup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2944, 'Purba Damudya', 'পুর্ব ডামুড্যা', 'purbadamudyaup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2945, 'Islampur', 'ইসলামপুর', 'islampurup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2946, 'Dankati', 'ধানকাটি', 'dankatiup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2947, 'Sidya', 'সিড্যা', 'sidyaup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2948, 'Darulaman', 'দারুল আমান', 'darulamanup.shariatpur.gov.bd', 327, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2949, 'Satgram', 'সাতগ্রাম', 'satgramup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2950, 'Duptara', 'দুপ্তারা', 'duptaraup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2951, 'Brahammandi', 'ব্রা‏হ্মন্দী', 'brahammandiup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2952, 'Fatepur', 'ফতেপুর', 'fatepurup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2953, 'Bishnandi', 'বিশনন্দী', 'bishnandiup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2954, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2955, 'Highjadi', 'হাইজাদী', 'highjadiup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2956, 'Uchitpura', 'উচিৎপুরা', 'uchitpuraup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2957, 'Kalapaharia', 'কালাপাহাড়িয়া', 'kalapahariaup.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2958, 'Kagkanda', 'খাগকান্দা', 'kagkandaUP.narayanganj.gov.bd', 328, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2959, 'Musapur', 'মুছাপুর', 'musapurup.narayanganj.gov.bd', 329, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2960, 'Modonpur', 'মদনপুর', 'modonpurup.narayanganj.gov.bd', 329, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2961, 'Bandar', 'বন্দর', 'bandarup.narayanganj.gov.bd', 329, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2962, 'Dhamgar', 'ধামগর', 'dhamgar.narayanganj.gov.bd', 329, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2963, 'Kolagathia', ' কলাগাছিয়া', 'kolagathiaup.narayanganj.gov.bd', 329, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2964, 'Alirtek', 'আলিরটেক', 'alirtekup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2965, 'Kashipur', 'কাশীপুর', 'kashipurup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2966, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2967, 'Gognagar', 'গোগনগর', 'gognagarup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2968, 'Baktaboli', 'বক্তাবলী', 'baktaboliup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2969, 'Enayetnagor', 'এনায়েত নগর', 'enayetnagorup.narayanganj.gov.bd', 330, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2970, 'Murapara', 'মুড়াপাড়া', 'muraparaup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2971, 'Bhulta', 'ভূলতা', 'bhultaup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2972, 'Golakandail', 'গোলাকান্দাইল', 'golakandailup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2973, 'Daudpur', 'দাউদপুর', 'daudpurup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2974, 'Rupganj', 'রূপগঞ্জ', 'rupganjup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2975, 'Kayetpara', 'কায়েতপাড়া', 'kayetparaup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2976, 'Bholobo', 'ভোলাব', 'bholoboup.narayanganj.gov.bd', 331, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2977, 'Pirojpur', 'পিরোজপুর', 'pirojpurup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2978, 'Shambhupura', 'শম্ভুপুরা', 'shambhupura.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2979, 'Mograpara', 'মোগরাপাড়া', 'mograpara.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2980, 'Baidyerbazar', 'বৈদ্যেরবাজার', 'baidyerbazar.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2981, 'Baradi', 'বারদী', 'baradiup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2982, 'Noagaon', 'নোয়াগাঁও', 'noagaonup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2983, 'Jampur', 'জামপুর', 'jampurup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2984, 'Sadipur', 'সাদীপুর', 'sadipurup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2985, 'Sonmandi', 'সনমান্দি', 'sonmandiup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2986, 'Kanchpur', 'কাচপুর', 'kanchpurup.narayanganj.gov.bd', 332, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2987, 'Basail', 'বাসাইল', 'basailup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2988, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2989, 'Habla', 'হাবলা', 'hablaup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2990, 'Kashil', 'কাশিল', 'kashilup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2991, 'Fulki', 'ফুলকি', 'fulkiup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2992, 'Kauljani', 'কাউলজানী', 'kauljaniup.tangail.gov.bd', 333, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2993, 'Arjuna', 'অর্জুনা', 'arjunaup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2994, 'Gabshara', 'গাবসারা', 'gabsharaup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2995, 'Falda', 'ফলদা', 'faldaup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2996, 'Gobindashi', 'গোবিন্দাসী', 'gobindashiup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2997, 'Aloa', 'আলোয়া', 'aloaup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2998, 'Nikrail', 'নিকরাইল', 'nikrailup.tangail.gov.bd', 334, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(2999, 'Deuli', 'দেউলী', 'deuliup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3000, 'Lauhati', 'লাউহাটি', 'lauhatiup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3001, 'Patharail', 'পাথরাইল', 'patharailup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3002, 'Delduar', 'দেলদুয়ার', 'delduarup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3003, 'Fazilhati', 'ফাজিলহাটি', 'fazilhatiup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3004, 'Elasin', 'এলাসিন', 'elasinup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3005, 'Atia', 'আটিয়া', 'atiaup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3006, 'Dubail', 'ডুবাইল', 'dubailup.tangail.gov.bd', 335, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3007, 'Deulabari', 'দেউলাবাড়ী', 'deulabariup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3008, 'Ghatail', 'ঘাটাইল', 'ghatailup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3009, 'Jamuria', 'জামুরিয়া', 'jamuriaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3010, 'Lokerpara', 'লোকেরপাড়া', 'lokerparaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3011, 'Anehola', 'আনেহলা', 'aneholaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3012, 'Dighalkandia', 'দিঘলকান্দি', 'dighalkandiaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3013, 'Digar', 'দিগড়', 'digarup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3014, 'Deopara', 'দেওপাড়া', 'deoparaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3015, 'Sandhanpur', 'সন্ধানপুর', 'sandhanpurup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3016, 'Rasulpur', 'রসুলপুর', 'rasulpurup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3017, 'Dhalapara', 'ধলাপাড়া', 'dhalaparaup.tangail.gov.bd', 336, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3018, 'Hadera', 'হাদিরা', 'haderaup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3019, 'Jhawail', 'ঝাওয়াইল', 'jhawailup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3020, 'Nagdashimla', 'নগদাশিমলা', 'nagdashimlaup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3021, 'Dhopakandi', 'ধোপাকান্দি', 'dhopakandiup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3022, 'Alamnagor', 'আলমনগর', 'alamnagorup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3023, 'Hemnagor', 'হেমনগর', 'hemnagorup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3024, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.tangail.gov.bd', 337, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3025, 'Alokdia', 'আলোকদিয়া', 'alokdiaup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3026, 'Aushnara', 'আউশনারা', 'aushnaraup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3027, 'Aronkhola', 'অরণখোলা', 'aronkholaup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3028, 'Sholakuri', 'শোলাকুড়ি', 'sholakuriup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3029, 'Golabari', 'গোলাবাড়ী', 'golabariup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3030, 'Mirjabari', 'মির্জাবাড়ী', 'mirjabariup.tangail.gov.bd', 338, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3031, 'Mahera', 'মহেড়া', 'maheraup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3032, 'Jamurki', 'জামুর্কী', 'jamurkiup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3033, 'Fatepur', 'ফতেপুর', 'fatepurup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3034, 'Banail', 'বানাইল', 'banailup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3035, 'Anaitara', 'আনাইতারা', 'anaitaraup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3036, 'Warshi', 'ওয়ার্শী', 'warshiup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3037, 'Bhatram', 'ভাতগ্রাম', 'bhatramup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3038, 'Bahuria', 'বহুরিয়া', 'bahuriaup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3039, 'Gorai', 'গোড়াই', 'goraiup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3040, 'Ajgana', 'আজগানা', 'ajganaup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3041, 'Tarafpur', 'তরফপুর', 'tarafpurup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3042, 'Bastail', 'বাঁশতৈল', 'bastailup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3043, 'Baora', 'ভাওড়া', 'baoraup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3044, 'Latifpur', 'লতিফপুর', 'latifpurup.tangail.gov.bd', 339, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3045, 'Bharra', 'ভারড়া', 'bharraup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3046, 'Sahabathpur', 'সহবতপুর', 'sahabathpurup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3047, 'Goyhata', 'গয়হাটা', 'goyhataup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3048, 'Solimabad', 'সলিমাবাদ', 'solimabadup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3049, 'Nagorpur', 'নাগরপুর', 'nagorpurup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3050, 'Mamudnagor', 'মামুদনগর', 'mamudnagorup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3051, 'Mokna', 'মোকনা', 'moknaup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3052, 'Pakutia', 'পাকুটিয়া', 'pakutiaup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3053, 'Bekrah Atgram', 'বেকরা আটগ্রাম', 'bekrahatgramup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3054, 'Dhuburia', 'ধুবড়িয়া', 'dhuburiaup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3055, 'Bhadra', 'ভাদ্রা', 'bhadraup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3056, 'Doptior', 'দপ্তিয়র', 'doptiorup.tangail.gov.bd', 340, '2026-03-09 16:19:29', '2026-03-09 16:19:29'),
(3057, 'Kakrajan', 'কাকড়াজান', 'kakrajanup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3058, 'Gajaria', 'গজারিয়া', 'gajariaup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3059, 'Jaduppur', 'যাদবপুর', 'jaduppurup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3060, 'Hatibandha', 'হাতীবান্ধা', 'hatibandhaup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3061, 'Kalia', 'কালিয়া', 'kaliaup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3062, 'Dariapur', 'দরিয়াপুর', 'dariapurup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3063, 'Kalmegha', 'কালমেঘা', 'kalmeghaup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3064, 'Baharatoil', 'বহেড়াতৈল', 'baharatoilup.tangail.gov.bd', 341, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3065, 'Mogra', 'মগড়া', 'mograup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3066, 'Gala', 'গালা', 'galaup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3067, 'Gharinda', 'ঘারিন্দা', 'gharindaup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3068, 'Karatia', 'করটিয়া', 'karatiaup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3069, 'Silimpur', 'ছিলিমপুর', 'silimpurup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3070, 'Porabari', 'পোড়াবাড়ী', 'porabariup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3071, 'Dyenna', 'দাইন্যা', 'dyennaup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3072, 'Baghil', 'বাঘিল', 'baghilup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3073, 'Kakua', 'কাকুয়া', 'kakuaup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3074, 'Hugra', 'হুগড়া', 'hugraup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3075, 'Katuli', 'কাতুলী', 'katuliup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3076, 'Mahamudnagar', 'মাহমুদনগর', 'mahamudnagarup.tangail.gov.bd', 342, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3077, 'Durgapur', 'দুর্গাপুর', 'durgapurup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3078, 'Birbashinda', 'বীরবাসিন্দা', 'birbashindaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3079, 'Narandia', 'নারান্দিয়া', 'narandiaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3080, 'Shahadebpur', 'সহদেবপুর', 'shahadebpurup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3081, 'Kokdahara', 'কোকডহরা', 'kokdaharaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3082, 'Balla', 'বল্লা', 'ballaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3083, 'Salla', 'সল্লা', 'sallaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3084, 'Nagbari', 'নাগবাড়ী', 'nagbariup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3085, 'Bangra', 'বাংড়া', 'bangraup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3086, 'Paikora', 'পাইকড়া', 'paikoraup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3087, 'Dashokia', 'দশকিয়া', 'dashokiaup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3088, 'Parkhi', 'পারখী', 'parkhiup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3089, 'Gohaliabari', 'গোহালিয়াবাড়ী', 'gohaliabariup.tangail.gov.bd', 343, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3090, 'Dhopakhali', 'ধোপাখালী', 'dhopakhaliup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3091, 'Paiska', 'পাইস্কা', 'paiskaup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3092, 'Mushuddi', 'মুশুদ্দি', 'mushuddiup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3093, 'Bolibodrow', 'বলিভদ্র', 'bolibodrowup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3094, 'Birtara', 'বীরতারা', 'birtaraup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3095, 'Baniajan', 'বানিয়াজান', 'baniajanup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3096, 'Jadunathpur', 'যদুনাথপুর', 'jadunathpurup.tangail.gov.bd', 344, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3097, 'Chawganga', 'চৌগাংগা', 'chawgangaup.kishoreganj.gov.bd      ', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3098, 'Joysiddi', 'জয়সিদ্ধি', 'joysiddiup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3099, 'Alonjori', 'এলংজুরী', 'alonjoriup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3100, 'Badla', 'বাদলা', 'badlaup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3101, 'Boribari', 'বড়িবাড়ি', 'boribariup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3102, 'Itna', 'ইটনা', 'itnaup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3103, 'Mriga', 'মৃগা', 'mrigaup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3104, 'Dhonpur', 'ধনপুর', 'dhonpurup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3105, 'Raytoti', 'রায়টুটি', 'raytotiup.kishoreganj.gov.bd', 345, '2026-03-09 16:19:30', '2026-03-09 16:19:30');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(3106, 'Banagram', 'বনগ্রাম', 'banagramup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3107, 'Shahasram Dhuldia', 'সহশ্রাম ধুলদিয়া', 'shahasramdhuldiaup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3108, 'Kargaon', 'কারগাঁও', 'kargaonup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3109, 'Chandpur', 'চান্দপুর', 'chandpurup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3110, 'Mumurdia', 'মুমুরদিয়া', 'mumurdiaup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3111, 'Acmita', 'আচমিতা', 'acmitaup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3112, 'Mosua', 'মসূয়া', 'mosuaup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3113, 'Lohajuree', 'লোহাজুরী', 'lohajureeup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3114, 'Jalalpur', 'জালালপুর', 'jalalpurup.kishoreganj.gov.bd', 346, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3115, 'Sadekpur', 'সাদেকপুর', 'sadekpurup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3116, 'Aganagar', 'আগানগর', 'aganagarup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3117, 'Shimulkandi', 'শিমুলকান্দি', 'shimulkandiup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3118, 'Gajaria', 'গজারিয়া', 'gajariaup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3119, 'Kalika Prashad', 'কালিকা প্রসাদ', 'kalikaprashadup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3120, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3121, 'Shibpur', 'শিবপুর', 'shibpurup.kishoreganj.gov.bd', 347, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3122, 'Taljanga', 'তালজাঙ্গা', 'taljangaup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3123, 'Rauti', 'রাউতি', 'rautiup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3124, 'Dhola', 'ধলা', 'dholaup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3125, 'Jawar', 'জাওয়ার', 'jawarup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3126, 'Damiha', 'দামিহা', 'damihaup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3127, 'Digdair', 'দিগদাইর', 'digdairup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3128, 'Tarail-Sachail', 'তাড়াইল-সাচাইল', 'tarailsachailup.kishoreganj.gov.bd', 348, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3129, 'Jinari', 'জিনারী', 'jinariup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3130, 'Gobindapur', 'গোবিন্দপুর', 'gobindapurup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3131, 'Sidhla', 'সিদলা', 'sidhlaup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3132, 'Araibaria', 'আড়াইবাড়িয়া', 'araibariaup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3133, 'Sahedal', 'সাহেদল', 'sahedalup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3134, 'Pumdi', 'পুমদি', 'pumdiup.kishoreganj.gov.bd', 349, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3135, 'Jangalia', 'জাঙ্গালিয়া', 'jangaliaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3136, 'Hosendi', 'হোসেনদি', 'hosendiup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3137, 'Narandi', 'নারান্দি', 'narandiup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3138, 'Shukhia', 'সুখিয়া', 'shukhiaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3139, 'Patuavabga', 'পটুয়াভাঙ্গা', 'patuavabgaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3140, 'Chandipasha', 'চান্দিপাশা', 'chandipashaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3141, 'Charfaradi', 'চারফারাদি', 'charfaradiup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3142, 'Burudia', 'বুড়ুদিয়া', 'burudiaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3143, 'Egarasindur', 'ইজারাসিন্দুর', 'egarasindurup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3144, 'Pakundia', 'পাকন্দিয়া', 'pakundiaup.kishoreganj.gov.bd', 350, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3145, 'Ramdi', 'রামদী', 'ramdiup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3146, 'Osmanpur', 'উছমানপুর', 'osmanpurup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3147, 'Chhaysuti', 'ছয়সূতী', 'chhaysutiup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3148, 'Salua', 'সালুয়া', 'saluaup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3149, 'Gobaria Abdullahpur', 'গোবরিয়া আব্দুল্লাহপুর', 'gobariaabdullahpurup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3150, 'Faridpur', 'ফরিদপুর', 'faridpurup.kishoreganj.gov.bd', 351, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3151, 'Rashidabad', 'রশিদাবাদ', 'rashidabadup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3152, 'Latibabad', 'লতিবাবাদ', 'latibabadup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3153, 'Maizkhapan', 'মাইজখাপন', 'maizkhapanup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3154, 'Mohinanda', 'মহিনন্দ', 'mohinandaup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3155, 'Joshodal', 'যশোদল', 'joshodalup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3156, 'Bowlai', 'বৌলাই', 'bowlaiup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3157, 'Binnati', 'বিন্নাটি', 'binnatiup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3158, 'Maria', 'মারিয়া', 'mariaup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3159, 'Chowddoshata', 'চৌদ্দশত', 'chowddoshataup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3160, 'Karshakarial', 'কর্শাকড়িয়াইল', 'karshakarialup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3161, 'Danapatuli', 'দানাপাটুলী', 'danapatuliup.kishoreganj.gov.bd', 352, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3162, 'Kadirjangal', 'কাদিরজঙ্গল', 'kadirjangalup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3163, 'Gujadia', 'গুজাদিয়া', 'gujadiaup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3164, 'Kiraton', 'কিরাটন', 'kiratonup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3165, 'Barogharia', 'বারঘড়িয়া', 'baroghariaup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3166, 'Niamatpur', 'নিয়ামতপুর', 'niamatpurup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3167, 'Dehunda', 'দেহুন্দা', 'dehundaup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3168, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3169, 'Gunodhar', 'গুনধর', 'gunodharup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3170, 'Joyka', 'জয়কা', 'joykaup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3171, 'Zafrabad', 'জাফরাবাদ', 'zafrabadup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3172, 'Noabad', 'নোয়াবাদ', 'noabadup.kishoreganj.gov.bd', 353, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3173, 'Kailag', 'কৈলাগ', 'kailagup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3174, 'Pirijpur', 'পিরিজপুর', 'pirijpurup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3175, 'Gazirchar', 'গাজীরচর', 'gazircharup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3176, 'Hilochia', 'হিলচিয়া', 'hilochiaup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3177, 'Maijchar9', 'মাইজচর', 'maijchar9up.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3178, 'Homypur', 'হুমাইপর', 'homypurup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3179, 'Halimpur', 'হালিমপুর', 'halimpurup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3180, 'Sararchar', 'সরারচর', 'sararcharup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3181, 'Dilalpur', 'দিলালপুর', 'dilalpurup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3182, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3183, 'Boliardi', 'বলিয়ার্দী', 'boliardiup.kishoreganj.gov.bd', 354, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3184, 'Dewghar', 'দেওঘর', 'dewgharup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3185, 'Kastul', 'কাস্তুল', 'kastulup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3186, 'Austagram Sadar', 'অষ্টগ্রাম সদর', 'austagramsadarup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3187, 'Bangalpara', 'বাঙ্গালপাড়া', 'bangalparaup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3188, 'Kalma', 'কলমা', 'kalmaup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3189, 'Adampur', 'আদমপুর', 'adampurup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3190, 'Khyerpur-Abdullahpur', 'খয়েরপুর-আব্দুল্লাপুর', 'khyerpurabdullahpurup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3191, 'Purba Austagram', 'পূর্ব অষ্টগ্রাম', 'purbaaustagramup.kishoreganj.gov.bd', 355, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3192, 'Gopdighi', 'গোপদিঘী', 'gopdighiup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3193, 'Mithamoin', 'মিঠামইন', 'mithamoinup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3194, 'Dhaki', 'ঢাকী', 'dhakiup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3195, 'Ghagra', 'ঘাগড়া', 'ghagraup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3196, 'Keoarjore', 'কেওয়ারজোর', 'keoarjoreup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3197, 'Katkhal', 'কাটখাল', 'katkhalup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3198, 'Bairati', 'বৈরাটি', 'bairatiup.kishoreganj.gov.bd', 356, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3199, 'Chatirchar', 'ছাতিরচর', 'chatircharup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3200, 'Guroi', 'গুরই', 'guroiup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3201, 'Jaraitala', 'জারইতলা', 'jaraitalaup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3202, 'Nikli Sadar', 'নিকলী সদর', 'niklisadarup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3203, 'Karpasa', 'কারপাশা', 'karpasaup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3204, 'Dampara', 'দামপাড়া', 'damparaup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3205, 'Singpur', 'সিংপুর', 'singpurup.kishoreganj.gov.bd', 357, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3206, 'Balla', 'বাল্লা', 'ballaup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3207, 'Gala', 'গালা', 'galaup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3208, 'Chala', 'চালা', 'chalaup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3209, 'Blara', 'বলড়া', 'blaraup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3210, 'Harukandi', 'হারুকান্দি', 'harukandiup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3211, 'Baira', 'বয়রা', 'bairaup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3212, 'Ramkrishnapur', 'রামকৃঞ্চপুর', 'ramkrishnapurup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3213, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3214, 'Kanchanpur', 'কাঞ্চনপুর', 'kanchanpurup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3215, 'Lacharagonj', 'লেছড়াগঞ্জ', 'lacharagonjup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3216, 'Sutalorie', 'সুতালড়ী', 'sutalorieup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3217, 'Dhulsura', 'ধূলশুড়া', 'dhulsuraup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3218, 'Azimnagar', 'আজিমনগর', 'azimnagarup.manikganj.gov.bd', 358, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3219, 'Baried', 'বরাইদ', 'bariedup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3220, 'Dighulia', 'দিঘুলিয়া', 'dighuliaup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3221, 'Baliyati', 'বালিয়াটি', 'baliyatiup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3222, 'Dargram', 'দড়গ্রাম', 'dargramup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3223, 'Tilli', 'তিল্লী', 'tilliup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3224, 'Hargaj', 'হরগজ', 'hargajup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3225, 'Saturia', 'সাটুরিয়া', 'saturiaup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3226, 'Dhankora', 'ধানকোড়া', 'dhankoraup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3227, 'Fukurhati', 'ফুকুরহাটি', 'fukurhatiup.manikganj.gov.bd', 359, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3228, 'Betila-Mitara', 'বেতিলা-মিতরা', 'betilamitaraup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3229, 'Jagir', 'জাগীর', 'jagirup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3230, 'Atigram', 'আটিগ্রাম', 'atigramup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3231, 'Dighi', 'দিঘী', 'dighiup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3232, 'Putile', 'পুটাইল', 'putileup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3233, 'Hatipara', 'হাটিপাড়া', 'hatiparaup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3234, 'Vararia', 'ভাড়ারিয়া', 'varariaup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3235, 'Nbogram', 'নবগ্রাম', 'nbogramup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3236, 'Garpara', 'গড়পাড়া', 'garparaup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3237, 'Krishnapur', 'কৃঞ্চপুর', 'krishnapurup.manikganj.gov.bd', 360, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3238, 'Paila', 'পয়লা', 'pailaup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3239, 'Shingzuri', 'সিংজুড়ী', 'shingzuriup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3240, 'Baliyakhora', 'বালিয়াখোড়া', 'baliyakhoraup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3241, 'Gior', 'ঘিওর', 'giorup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3242, 'Bartia', 'বড়টিয়া', 'bartiaup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3243, 'Baniazuri', 'বানিয়াজুড়ী', 'baniazuriup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3244, 'Nalee', 'নালী', 'naleeup.manikganj.gov.bd', 361, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3245, 'Teota', 'তেওতা', 'teotaup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3246, 'Utholi', 'উথলী', 'utholiup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3247, 'Shibaloy', 'শিবালয়', 'shibaloyup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3248, 'Ulayel', 'উলাইল', 'ulayelup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3249, 'Aruoa', 'আরুয়া', 'aruoaup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3250, 'Mohadebpur', 'মহাদেবপুর', 'mohadebpurup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3251, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.manikganj.gov.bd', 362, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3252, 'Charkataree', 'চরকাটারী', 'charkatareeup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3253, 'Bachamara', 'বাচামারা', 'bachamaraup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3254, 'Baghutia', 'বাঘুটিয়া', 'baghutiaup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3255, 'Zionpur', 'জিয়নপুর', 'zionpurup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3256, 'Khalshi', 'খলশী', 'khalshiup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3257, 'Chakmirpur', 'চকমিরপুর', 'chakmirpurup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3258, 'Klia', 'কলিয়া', 'kliaup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3259, 'Dhamswar', 'ধামশ্বর', 'dhamswarup.manikganj.gov.bd', 363, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3260, 'Buyra', 'বায়রা', 'buyraup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3261, 'Talebpur', 'তালেবপুর', 'talebpurup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3262, 'Singiar', 'সিংগাইর', 'singiarup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3263, 'Baldhara', 'বলধারা', 'baldharaup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3264, 'Zamsha', 'জামশা', 'zamshaup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3265, 'Charigram', 'চারিগ্রাম', 'charigramup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3266, 'Shayesta', 'শায়েস্তা', 'shayestaup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3267, 'Joymonto', 'জয়মন্টপ', 'joymontopup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3268, 'Dhalla', 'ধল্লা', 'dhallaup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3269, 'Jamirta', 'জার্মিতা', 'jamirtaup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3270, 'Chandhar', 'চান্দহর', 'chandharup.manikganj.gov.bd', 364, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3271, 'Savar', 'সাভার', 'savarup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3272, 'Birulia', 'বিরুলিয়া', 'birulia.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3273, 'Dhamsona', 'ধামসোনা', 'dhamsonaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3274, 'Shimulia', 'শিমুলিয়া', 'shimuliaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3275, 'Ashulia', 'আশুলিয়া', 'ashuliaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3276, 'Yearpur', 'ইয়ারপুর', 'yearpurup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3277, 'Vakurta', 'ভাকুর্তা', 'vakurtaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3278, 'Pathalia', 'পাথালিয়া', 'pathaliaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3279, 'Bongaon', 'বনগাঁও', 'bongaonup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3280, 'Kaundia', 'কাউন্দিয়া', 'kaundiaup.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3281, 'Tetuljhora', 'তেঁতুলঝোড়া', 'tetuljhora.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3282, 'Aminbazar', 'আমিনবাজার', 'aminbazar.dhaka.gov.bd', 365, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3283, 'Chauhat', 'চৌহাট', 'chauhatup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3284, 'Amta', 'আমতা', 'amtaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3285, 'Balia', 'বালিয়া', 'baliaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3286, 'Jadabpur', 'যাদবপুর', 'jadabpurup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3287, 'Baisakanda', 'বাইশাকান্দা', 'baisakandaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3288, 'Kushura', 'কুশুরা', 'kushuraup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3289, 'Gangutia', 'গাংগুটিয়া', 'gangutiaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3290, 'Sanora', 'সানোড়া', 'sanoraup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3291, 'Sutipara', 'সূতিপাড়া', 'sutiparaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3292, 'Sombhag', 'সোমভাগ', 'sombhagup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3293, 'Vararia', 'ভাড়ারিয়া', 'varariaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3294, 'Dhamrai', 'ধামরাই', 'dhamraiup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3295, 'Kulla', 'কুল্লা', 'kullaup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3296, 'Rowail', 'রোয়াইল', 'rowailup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3297, 'Suapur', 'সুয়াপুর', 'suapurup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3298, 'Nannar', 'নান্নার', 'nannarup.dhaka.gov.bd', 366, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3299, 'Hazratpur', 'হযরতপুর', 'hazratpurup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3300, 'Kalatia', 'কলাতিয়া', 'kalatiaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3301, 'Taranagar', 'তারানগর', 'taranagarup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3302, 'Sakta', 'শাক্তা', 'saktaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3303, 'Ruhitpur', 'রোহিতপুর', 'ruhitpurup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3304, 'Basta', 'বাস্তা', 'bastaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3305, 'Kalindi', 'কালিন্দি', 'kalindiup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3306, 'Zinzira', 'জিনজিরা', 'zinziraup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3307, 'Suvadda', 'শুভাঢ্যা', 'suvaddaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3308, 'Taghoria', 'তেঘরিয়া', 'taghoriaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3309, 'Konda', 'কোন্ডা', 'kondaup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3310, 'Aganagar', 'আগানগর', 'aganagarup.dhaka.gov.bd', 367, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3311, 'Shikaripara', 'শিকারীপাড়া', 'shikariparaup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3312, 'Joykrishnapur', 'জয়কৃষ্ণপুর', 'joykrishnapurup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3313, 'Baruakhali', 'বারুয়াখালী', 'baruakhaliup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3314, 'Nayansree', 'নয়নশ্রী', 'nayansreeup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3315, 'Sholla', 'শোল্লা', 'shollaup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3316, 'Jantrail', 'যন্ত্রাইল', 'jantrailup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3317, 'Bandura', 'বান্দুরা', 'banduraup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3318, 'Kalakopa', 'কলাকোপা', 'kalakopaup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3319, 'Bakshanagar', 'বক্সনগর', 'bakshanagarup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3320, 'Barrah', 'বাহ্রা', 'barrahup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3321, 'Kailail', 'কৈলাইল', 'kailailup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3322, 'Agla', 'আগলা', 'aglaup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3323, 'Galimpur', 'গালিমপুর', 'galimpurup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3324, 'Churain', 'চুড়াইন', 'churainup.dhaka.gov.bd', 368, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3325, 'Nayabari', 'নয়াবাড়ী', 'nayabariup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3326, 'Kusumhathi', 'কুসুমহাটি', 'kusumhathiup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3327, 'Raipara', 'রাইপাড়া', 'raiparaup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3328, 'Sutarpara', 'সুতারপাড়া', 'sutarparaup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3329, 'Narisha', 'নারিশা', 'narishaup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3330, 'Muksudpur', 'মুকসুদপুর', 'muksudpurup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3331, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3332, 'Bilaspur', 'বিলাসপুর', 'bilaspurup.dhaka.gov.bd', 369, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3333, 'Rampal', 'রামপাল', 'rampalup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3334, 'Panchashar', 'পঞ্চসার', 'panchasharup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3335, 'Bajrajogini', 'বজ্রযোগিনী', 'bajrajoginiup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3336, 'Mohakali', 'মহাকালী', 'mohakaliup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3337, 'Charkewar', 'চরকেওয়ার', 'charkewarup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3338, 'Mollakandi', 'মোল্লাকান্দি', 'mollakandiup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3339, 'Adhara', 'আধারা', 'adharaup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3340, 'Shiloy', 'শিলই', 'shiloyup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3341, 'Banglabazar', 'বাংলাবাজার', 'banglabazarup.munshiganj.gov.bd', 370, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3342, 'Baraikhali', 'বাড়েখাল', 'baraikhaliup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3343, 'Hashara', 'হাসাড়া', 'hasharaup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3344, 'Birtara', 'বাড়তারা', 'birtaraup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3345, 'Shologhor', 'ষোলঘর', 'shologhorup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3346, 'Sreenagar', 'শ্রীনগর', 'sreenagarup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3347, 'Patabhog', 'পাঢাভোগ', 'patabhogup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3348, 'Shamshiddi', 'শ্যামসিদ্দি', 'shamshiddiup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3349, 'Kolapara', 'কুলাপাড়া', 'kolaparaup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3350, 'Vaggakol', 'ভাগ্যকুল', 'vaggakolup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3351, 'Bagra', 'বাঘড়া', 'bagraup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3352, 'Rarikhal', 'রাঢ়ীখাল', 'rarikhalup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3353, 'Kukutia', 'কুকুটিয়া', 'kukutiaup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3354, 'Atpara', 'আটপাড়া', 'atparaup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3355, 'Tantor', 'তন্তর', 'tantorup.munshiganj.gov.bd', 371, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3356, 'Chitracoat', 'চিত্রকোট', 'chitracoatup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3357, 'Sekhornagar', 'শেখরনগার', 'sekhornagarup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3358, 'Rajanagar', 'রাজানগর', 'rajanagarup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3359, 'Keyain', 'কেয়াইন', 'keyainup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3360, 'Basail', 'বাসাইল', 'basailup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3361, 'Baluchar', 'বালুচর', 'balucharup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3362, 'Latabdi', 'লতাব্দী', 'latabdiup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3363, 'Rasunia', 'রশুনিয়া', 'rasuniaup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3364, 'Ichhapura', 'ইছাপুরা', 'ichhapuraup.munshiganj.gov.bd', 372, '2026-03-09 16:19:30', '2026-03-09 16:19:30'),
(3365, 'Bairagadi', 'বয়রাগাদি', 'bairagadiup.munshiganj.gov.bd', 372, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3366, 'Malkhanagar', 'মালখানগর', 'malkhanagarup.munshiganj.gov.bd', 372, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3367, 'Madhypara', 'মধ্যপাড়া', 'madhyparaup.munshiganj.gov.bd', 372, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3368, 'Kola', 'কোলা', 'kolaup.munshiganj.gov.bd', 372, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3369, 'Joyinshar', 'জৈনসার', 'joyinsharup.munshiganj.gov.bd', 372, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3370, 'Medinimandal', 'মেদিনীমন্ডল', 'medinimandalup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3371, 'Kumarbhog', 'কুমারভোগ', 'kumarbhogup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3372, 'Haldia', 'হলদিয়া', 'haldiaup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3373, 'Kanaksar', 'কনকসার', 'kanaksarup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3374, 'Lohajang-Teotia', 'লৌহজং-তেওটিয়া', 'lohajangteotiaup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3375, 'Bejgaon', 'বেজগাঁও', 'bejgaonup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3376, 'Baultoli', 'বৌলতলী', 'baultoliup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3377, 'Khidirpara', 'খিদিরপাড়া', 'khidirparaup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3378, 'Gaodia', 'গাওদিয়া', 'gaodiaup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3379, 'Kalma', 'কলমা', 'kalmaup.munshiganj.gov.bd', 373, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3380, 'Gajaria', 'গজারিয়া', 'gajariaup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3381, 'Baushia', 'বাউশিয়া', 'baushiaup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3382, 'Vaberchar', 'ভবেরচর', 'vabercharup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3383, 'Baluakandi', 'বালুয়াকান্দী', 'baluakandiup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3384, 'Tengarchar', 'টেংগারচর', 'tengarcharup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3385, 'Hosendee', 'হোসেন্দী', 'hosendeeup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3386, 'Guagachia', 'গুয়াগাছিয়া', 'guagachiaup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3387, 'Imampur', 'ইমামপুর', 'imampurup.munshiganj.gov.bd', 374, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3388, 'Betka', 'বেতকা', 'betkaup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3389, 'Abdullapur', 'আব্দুল্লাপুর', 'abdullapurup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3390, 'Sonarong Tongibari', 'সোনারং টংগীবাড়ী', 'sonarongtongibariup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3391, 'Autshahi', 'আউটশাহী', 'autshahiup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3392, 'Arial Baligaon', 'আড়িয়ল বালিগাঁও', 'arialbaligaonup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3393, 'Dhipur', 'ধীপুর', 'dhipurup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3394, 'Kathadia Shimolia', 'কাঠাদিয়া শিমুলিয়া', 'kathadiashimoliaup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3395, 'Joslong', 'যশলং', 'joslongup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3396, 'Panchgaon', 'পাঁচগাও', 'panchgaonup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3397, 'Kamarkhara', 'কামারখাড়া', 'kamarkharaup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3398, 'Hasailbanari', 'হাসাইল বানারী', 'hasailbanariup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3399, 'Dighirpar', 'দিঘীরপাড়', 'dighirparup.munshiganj.gov.bd', 375, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3400, 'Mijanpur', 'মিজানপুর', 'mijanpurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3401, 'Borat', 'বরাট', 'boratup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3402, 'Chandoni', 'চন্দনী', 'chandoniup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3403, 'Khangonj', 'খানগঞ্জ', 'khangonjup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3404, 'Banibaha', 'বানীবহ', 'banibahaup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3405, 'Dadshee', 'দাদশী', 'dadsheeup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3406, 'Mulghar', 'মুলঘর', 'mulgharup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3407, 'Basantapur', 'বসন্তপুর', 'basantapurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3408, 'Khankhanapur', 'খানখানাপুর', 'khankhanapurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3409, 'Alipur', 'আলীপুর', 'alipurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3410, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3411, 'Shahidwahabpur', 'শহীদওহাবপুর', 'shahidwahabpurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3412, 'Panchuria', 'পাঁচুরিয়া', 'panchuriaup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3413, 'Sultanpur', 'সুলতানপুর', 'sultanpurup.rajbari.gov.bd', 376, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3414, 'Doulatdia', 'দৌলতদিয়া', 'doulatdiaup.rajbari.gov.bd', 377, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3415, 'Debugram', 'দেবগ্রাম', 'debugramup.rajbari.gov.bd', 377, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3416, 'Uzancar', 'উজানচর', 'uzancarup.rajbari.gov.bd', 377, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3417, 'Chotovakla', 'ছোটভাকলা', 'chotovaklaup.rajbari.gov.bd', 377, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3418, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3419, 'Habashpur', 'হাবাসপুর', 'habashpurup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3420, 'Jashai', 'যশাই', 'jashaiup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3421, 'Babupara', 'বাবুপাড়া', 'babuparaup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3422, 'Mourat', 'মৌরাট', 'mouratup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3423, 'Patta', 'পাট্টা', 'pattaup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3424, 'Sarisha', 'সরিষা', 'sarishaup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3425, 'Kalimahar', 'কলিমহর', 'kalimaharup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3426, 'Kasbamajhail', 'কসবামাজাইল', 'kasbamajhailup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3427, 'Machhpara', 'মাছপাড়া', 'machhparaup.rajbari.gov.bd', 378, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3428, 'Islampur', 'ইসলামপুর', 'islampurup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3429, 'Baharpur', 'বহরপুর', 'baharpurup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3430, 'Nawabpur', 'নবাবপুর', 'nawabpurup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3431, 'Narua', 'নারুয়া', 'naruaup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3432, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandiup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3433, 'Janjal', 'জঙ্গল', 'janjalup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3434, 'Jamalpur', 'জামালপুর', 'jamalpurup.rajbari.gov.bd', 379, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3435, 'Kalukhali', 'কালুখালী', 'kalukhaliup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3436, 'Ratandia', 'রতনদিয়া', 'ratandiaup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3437, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3438, 'Boalia', 'বোয়ালিয়া', 'boaliaup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3439, 'Majbari', 'মাজবাড়ী', 'majbariup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3440, 'Madapur', 'মদাপুর', 'madapurup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3441, 'Shawrail', 'সাওরাইল', 'shawrailup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3442, 'Mrigi', 'মৃগী', 'mrigiup.rajbari.gov.bd', 380, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3443, 'Sirkhara', 'শিড়খাড়া', 'sirkharaup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3444, 'Bahadurpur', 'বাহাদুরপুর', 'bahadurpurup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3445, 'Kunia', 'কুনিয়া', 'kuniaup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3446, 'Peyarpur', 'পেয়ারপুর', 'peyarpurup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3447, 'Kandua', 'কেন্দুয়া', 'kanduaup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3448, 'Mastofapur', 'মস্তফাপুর', 'mastofapurup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3449, 'Dudkhali', 'দুধখালী', 'dudkhaliup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3450, 'Kalikapur', 'কালিকাপুর', 'kalikapurup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3451, 'Chilarchar', 'ছিলারচর', 'chilarcharup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3452, 'Panchkhola', 'পাঁচখোলা', 'panchkholaup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3453, 'Ghatmajhi', 'ঘটমাঝি', 'ghatmajhiup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3454, 'Jhaoudi', 'ঝাউদী', 'jhaoudiup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3455, 'Khoajpur', 'খোয়াজপুর', 'khoajpurup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3456, 'Rasti', 'রাস্তি', 'rastiup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3457, 'Dhurail', 'ধুরাইল', 'dhurailup.madaripur.gov.bd', 381, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3458, 'Shibchar', 'শিবচর', 'shibcharup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3459, 'Ditiyakhando', 'দ্বিতীয়খন্ড', 'ditiyakhandoup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3460, 'Nilokhe', 'নিলখি', 'nilokheup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3461, 'Bandarkhola', 'বন্দরখোলা', 'bandarkholaup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3462, 'Charjanazat', 'চরজানাজাত', 'charjanazatup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3463, 'Madbarerchar', 'মাদবরেরচর', 'madbarercharup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3464, 'Panchar', 'পাঁচচর', 'pancharup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3465, 'Sannasirchar', 'সন্যাসিরচর', 'sannasircharup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3466, 'Kathalbari', 'কাঁঠালবাড়ী', 'kathalbariup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3467, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3468, 'Kadirpur', 'কাদিরপুর', 'kadirpurup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3469, 'Vhandarikandi', 'ভান্ডারীকান্দি', 'vhandarikandiup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3470, 'Bahertala South', 'বহেরাতলা দক্ষিণ', 'bahertalasouthup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3471, 'Baheratala North', 'বহেরাতলা উত্তর', 'baheratalanorthup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3472, 'Baskandi', 'বাঁশকান্দি', 'baskandiup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3473, 'Umedpur', 'উমেদপুর', 'umedpurup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3474, 'Vhadrasion', 'ভদ্রাসন', 'vhadrasionup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3475, 'Shiruail', 'শিরুয়াইল', 'shiruailup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3476, 'Dattapara', 'দত্তপাড়া', 'dattaparaup.madaripur.gov.bd', 382, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3477, 'Alinagar', 'আলীনগর', 'alinagarup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3478, 'Baligram', 'বালীগ্রাম', 'baligramup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3479, 'Basgari', 'বাঁশগাড়ী', 'basgariup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3480, 'Chardoulatkhan', 'চরদৌলতখান', 'chardoulatkhanup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3481, 'Dashar', 'ডাসার', 'dasharup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3482, 'Enayetnagor', 'এনায়েতনগর', 'enayetnagorup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3483, 'Gopalpur', 'গোপালপুর', 'gopalpurup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3484, 'Koyaria', 'কয়ারিয়া', 'koyariaup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3485, 'Kazibakai', 'কাজীবাকাই', 'kazibakaiup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3486, 'Laxmipur', 'লক্ষীপুর', 'laxmipurup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3487, 'Nabogram', 'নবগ্রাম', 'nabogramup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3488, 'Ramjanpur', 'রমজানপুর', 'ramjanpurup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3489, 'Shahebrampur', 'সাহেবরামপুর', 'shahebrampurup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3490, 'Shikarmongol', 'শিকারমঙ্গল', 'shikarmongolup.madaripur.gov.bd', 383, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3491, 'Haridasdi-Mahendrodi', 'হরিদাসদী-মহেন্দ্রদী', 'haridasdi-mahendrodiup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3492, 'Kadambari', 'কদমবাড়ী', 'kadambariup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3493, 'Bajitpur', 'বাজিতপুর', 'bajitpurup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3494, 'Amgram', 'আমগ্রাম', 'amgramup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3495, 'Rajoir', 'রাজৈর', 'rajoirup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3496, 'Khaliya', 'খালিয়া', 'khaliyaup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3497, 'Ishibpur', 'ইশিবপুর', 'ishibpurup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3498, 'Badarpasa', 'বদরপাশা', 'badarpasaup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3499, 'Kabirajpur', 'কবিরাজপুর', 'kabirajpurup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3500, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3501, 'Paikpara', 'পাইকপাড়া', 'paikparaup.madaripur.gov.bd', 384, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3502, 'Jalalabad', 'জালালাবাদ', 'jalalabadup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3503, 'Shuktail', 'শুকতাইল', 'shuktailup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3504, 'Chandradighalia', 'চন্দ্রদিঘলিয়া', 'chandradighaliaup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3505, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3506, 'Paikkandi', 'পাইককান্দি', 'paikkandiup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3507, 'Urfi', 'উরফি', 'urfiup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3508, 'Lotifpur', 'লতিফপুর', 'lotifpurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3509, 'Satpar', 'সাতপাড়', 'satparup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3510, 'Sahapur', 'সাহাপুর', 'sahapurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3511, 'Horidaspur', 'হরিদাসপুর', 'horidaspurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3512, 'Ulpur', 'উলপুর', 'ulpurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3513, 'Nizra', 'নিজড়া', 'nizraup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3514, 'Karpara', 'করপাড়া', 'karparaup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3515, 'Durgapur', 'দুর্গাপুর', 'durgapurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3516, 'Kajulia', 'কাজুলিয়া', 'kajuliaup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3517, 'Majhigati', 'মাঝিগাতী', 'majhigatiup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3518, 'Roghunathpur', 'রঘুনাথপুর', 'roghunathpurup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3519, 'Gobra', 'গোবরা', 'gobraup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3520, 'Borashi', 'বোড়াশী', 'borashiup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3521, 'Kati', 'কাঠি', 'katiup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3522, 'Boultali', 'বৌলতলী', 'boultaliup.gopalganj.gov.bd', 385, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3523, 'Kashiani', 'কাশিয়ানী', 'kashianiup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3524, 'Hatiara', 'হাতিয়াড়া', 'hatiaraup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3525, 'Fukura', 'ফুকরা', 'fukuraup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3526, 'Rajpat', 'রাজপাট', 'rajpatup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3527, 'Bethuri', 'বেথুড়ী', 'bethuriup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3528, 'Nijamkandi', 'নিজামকান্দি', 'nijamkandiup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3529, 'Sajail', 'সাজাইল', 'sajailup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3530, 'Mamudpur', 'মাহমুদপুর', 'mamudpurup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3531, 'Maheshpur', 'মহেশপুর', 'maheshpurup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3532, 'Orakandia', 'ওড়াকান্দি', 'orakandiaup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3533, 'Parulia', 'পারুলিয়া', 'paruliaup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3534, 'Ratail', 'রাতইল', 'ratailup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3535, 'Puisur', 'পুইশুর', 'puisurup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3536, 'Singa', 'সিংগা', 'singaup.gopalganj.gov.bd', 386, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3537, 'Kushli', 'কুশলী', 'kushliup.gopalganj.gov.bd', 387, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3538, 'Gopalpur', 'গোপালপুর', 'gopalpurup.gopalganj.gov.bd', 387, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3539, 'Patgati', 'পাটগাতী', 'patgatiup.gopalganj.gov.bd', 387, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3540, 'Borni', 'বর্ণি', 'borniup.gopalganj.gov.bd', 387, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3541, 'Dumaria', 'ডুমরিয়া', 'dumariaup.gopalganj.gov.bd', 387, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3542, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapurup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3543, 'Ramshil', 'রামশীল', 'ramshilup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3544, 'Bandhabari', 'বান্ধাবাড়ী', 'bandhabariup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3545, 'Kolabari', 'কলাবাড়ী', 'kolabariup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3546, 'Kushla', 'কুশলা', 'kushlaup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3547, 'Amtoli', 'আমতলী', 'amtoliup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3548, 'Pinjuri', 'পিঞ্জুরী', 'pinjuriup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3549, 'Ghaghor', 'ঘাঘর', 'ghaghorup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3550, 'Radhaganj', 'রাধাগঞ্জ', 'radhaganjup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3551, 'Hiron', 'হিরণ', 'hironup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(3552, 'Kandi', 'কান্দি', 'kandiup.gopalganj.gov.bd', 388, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3553, 'Ujani', 'উজানী', 'ujaniup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3554, 'Nanikhir', 'ননীক্ষীর', 'nanikhirup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3555, 'Dignagar', 'দিগনগর', 'dignagarup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3556, 'Poshargati', 'পশারগাতি', 'poshargatiup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3557, 'Gobindopur', 'গোবিন্দপুর', 'gobindopurup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3558, 'Khandarpara', 'খান্দারপাড়া', 'khandarparaup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3559, 'Bohugram', 'বহুগ্রাম', 'bohugramup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3560, 'Banshbaria', 'বাশঁবাড়িয়া', 'banshbariaup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3561, 'Vabrashur', 'ভাবড়াশুর', 'vabrashurup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3562, 'Moharajpur', 'মহারাজপুর', 'moharajpurup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3563, 'Batikamari', 'বাটিকামারী', 'batikamariup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3564, 'Jalirpar', 'জলিরপাড়', 'jalirparup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3565, 'Raghdi', 'রাঘদী', 'raghdiup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3566, 'Gohala', 'গোহালা', 'gohalaup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3567, 'Mochna', 'মোচনা', 'mochnaup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3568, 'Kashalia', 'কাশালিয়া', 'kashaliaup.gopalganj.gov.bd', 389, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3569, 'Ishangopalpur', 'ঈশানগোপালপুর', 'ishangopalpurup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3570, 'Charmadbdia', 'চরমাধবদিয়া', 'charmadbdiaup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3571, 'Aliabad', 'আলিয়াবাদ', 'aliabadup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3572, 'Uttarchannel', 'নর্থচ্যানেল', 'uttarchannelup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3573, 'Decreerchar', 'ডিক্রিরচর', 'decreercharup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3574, 'Majchar', 'মাচ্চর', 'majcharup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3575, 'Krishnanagar', 'কৃষ্ণনগর', 'krishnanagarup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3576, 'Ambikapur', 'অম্বিকাপুর', 'ambikapurup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3577, 'Kanaipur', 'কানাইপুর', 'kanaipurup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3578, 'Kaijuri', 'কৈজুরী', 'kaijuriup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3579, 'Greda', 'গেরদা', 'gredaup.faridpur.gov.bd', 390, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3580, 'Buraich', 'বুড়াইচ', 'buraichup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3581, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadangaup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3582, 'Tagarbanda', 'টগরবন্দ', 'tagarbandaup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3583, 'Bana', 'বানা', 'banaup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3584, 'Panchuria', 'পাঁচুড়িয়া', 'panchuriaup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3585, 'Gopalpur', 'গোপালপুর', 'gopalpurup.faridpur.gov.bd', 391, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3586, 'Boalmari', 'বোয়ালমারী', 'boalmariup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3587, 'Dadpur', 'দাদপুর', 'dadpurup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3588, 'Chatul', 'চতুল', 'chatulup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3589, 'Ghoshpur', 'ঘোষপুর', 'ghoshpurup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3590, 'Gunbaha', 'গুনবহা', 'gunbahaup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3591, 'Chandpur', 'চাঁদপুর', 'chandpurup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3592, 'Parameshwardi', 'পরমেশ্বরদী', 'parameshwardiup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3593, 'Satair', 'সাতৈর', 'satairup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3594, 'Rupapat', 'রূপাপাত', 'rupapatup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3595, 'Shekhar', 'শেখর', 'shekharup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3596, 'Moyna', 'ময়না', 'moynaup.faridpur.gov.bd', 392, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3597, 'Char Bisnopur', 'চর বিষ্ণুপুর', 'charbisnopurup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3598, 'Akoter Char', 'আকোটের চর', 'akotercharup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3599, 'Char Nasirpur', 'চর নাসিরপুর', 'charnasirpurup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3600, 'Narikel Bariya', 'নারিকেল বাড়িয়া', 'narikelbariyaup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3601, 'Bhashanchar', 'ভাষানচর', 'bhashancharup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3602, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3603, 'Sadarpur', 'সদরপুর', 'sadarpurup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3604, 'Char Manair', 'চর মানাইর', 'charmanairup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3605, 'Dhaukhali', 'ঢেউখালী', 'dhaukhaliup.faridpur.gov.bd', 393, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3606, 'Charjashordi', 'চরযশোরদী', 'charjashordiup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3607, 'Purapara', 'পুরাপাড়া', 'puraparaup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3608, 'Laskardia', 'লস্করদিয়া', 'laskardiaup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3609, 'Ramnagar', 'রামনগর', 'ramnagarup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3610, 'Kaichail', 'কাইচাইল', 'kaichailup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3611, 'Talma', 'তালমা', 'talmaup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3612, 'Fulsuti', 'ফুলসুতি', 'fulsutiup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3613, 'Dangi', 'ডাঙ্গী', 'dangiup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3614, 'Kodalia Shohidnagar', 'কোদালিয়া শহিদনগর', 'kodaliashohidnagarup.faridpur.gov.bd', 394, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3615, 'Gharua', 'ঘারুয়া', 'gharuaup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3616, 'Nurullagonj', 'নুরুল্যাগঞ্জ', 'nurullagonjup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3617, 'Manikdha', 'মানিকদহ', 'manikdhaup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3618, 'Kawlibera', 'কাউলিবেড়া', 'kawliberaup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3619, 'Nasirabad', 'নাছিরাবাদ', 'nasirabadup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3620, 'Tujerpur', 'তুজারপুর', 'tujerpurup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3621, 'Algi', 'আলগী', 'algiup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3622, 'Chumurdi', 'চুমুরদী', 'chumurdiup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3623, 'Kalamridha', 'কালামৃধা', 'kalamridhaup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3624, 'Azimnagor', 'আজিমনগর', 'azimnagorup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3625, 'Chandra', 'চান্দ্রা', 'chandraup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3626, 'Hamirdi', 'হামিরদী', 'hamirdiup.faridpur.gov.bd', 395, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3627, 'Gazirtek', 'গাজীরটেক', 'gazirtekup.faridpur.gov.bd', 396, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3628, 'Char Bhadrasan', 'চর ভদ্রাসন', 'charbhadrasanup.faridpur.gov.bd', 396, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3629, 'Char Harirampur', 'চর হরিরামপুর', 'charharirampurup.faridpur.gov.bd', 396, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3630, 'Char Jahukanda', 'চর ঝাউকান্দা', 'charjahukandaup.faridpur.gov.bd', 396, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3631, 'Madhukhali', 'মধুখালী', 'madhukhaliup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3632, 'Jahapur', 'জাহাপুর', 'jahapurup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3633, 'Gazna', 'গাজনা', 'gaznaup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3634, 'Megchami', 'মেগচামী', 'megchamiup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3635, 'Raipur', 'রায়পুর', 'raipurup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3636, 'Bagat', 'বাগাট', 'bagatup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3637, 'Dumain', 'ডুমাইন', 'dumainup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3638, 'Nowpara', 'নওপাড়া', 'nowparaup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3639, 'Kamarkhali', 'কামারখালী', 'kamarkhaliup.faridpur.gov.bd', 397, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3640, 'Bhawal', 'ভাওয়াল', 'bhawalup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3641, 'Atghar', 'আটঘর', 'atgharup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3642, 'Mazadia', 'মাঝারদিয়া', 'mazadiaup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3643, 'Ballabhdi', 'বল্লভদী', 'ballabhdiup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3644, 'Gatti', 'গট্টি', 'gattiup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3645, 'Jadunandi', 'যদুনন্দী', 'jadunandiup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3646, 'Ramkantapur', 'রামকান্তপুর', 'ramkantapurup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3647, 'Sonapur', 'সোনাপুর', 'sonapurup.faridpur.gov.bd', 398, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3648, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadarup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3649, 'Satmara', 'সাতমেরা', 'satmaraup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3650, 'Amarkhana', 'অমরখানা', 'amarkhanaup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3651, 'Haribhasa', 'হাড়িভাসা', 'haribhasaup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3652, 'Chaklahat', 'চাকলাহাট', 'chaklahatup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3653, 'Hafizabad', 'হাফিজাবাদ', 'hafizabadup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3654, 'Kamat Kajol Dighi', 'কামাত কাজল দীঘি', 'kamatkajoldighiup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3655, 'Dhakkamara', 'ধাক্কামারা', 'dhakkamaraup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3656, 'Magura', 'মাগুরা', 'maguraup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3657, 'Garinabari', 'গরিনাবাড়ী', 'garinabariup.panchagarh.gov.bd', 399, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3658, 'Chilahati', 'চিলাহাটি', 'chilahatiup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3659, 'Shaldanga', 'শালডাঙ্গা', 'shaldangaup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3660, 'Debiganj Sadar', 'দেবীগঞ্জ সদর', 'debiganjsadarup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3661, 'Pamuli', 'পামুলী', 'pamuliup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3662, 'Sundardighi', 'সুন্দরদিঘী', 'sundardighiup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3663, 'Sonahar Mollikadaha', 'সোনাহার মল্লিকাদহ', 'sonaharmollikadahaup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3664, 'Tepriganj', 'টেপ্রীগঞ্জ', 'tepriganjup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3665, 'Dandopal', 'দন্ডপাল', 'dandopalup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3666, 'Debiduba', 'দেবীডুবা', 'debidubaup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3667, 'Chengthi Hazra Danga', 'চেংঠী হাজরা ডাঙ্গা', 'chengthihazradangaup.panchagarh.gov.bd', 400, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3668, 'Jholaishal Shiri', 'ঝলইশাল শিরি', 'jholaishalshiriup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3669, 'Moidandighi', 'ময়দান দীঘি', 'moidandighiup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3670, 'Banghari', 'বেংহারী', 'banghariup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3671, 'Kajoldighi Kaligonj', 'কাজলদীঘি কালিগঞ্জ', 'kajoldighikaligonjup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3672, 'Boroshoshi', 'বড়শশী', 'boroshoshiup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3673, 'Chandanbari', 'চন্দনবাড়ী', 'chandanbariup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3674, 'Marea Bamonhat', 'মাড়েয়া বামনহাট', 'mareabamonhatup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3675, 'Boda', 'বোদা', 'bodaup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3676, 'Sakoa', 'সাকোয়া', 'sakoaup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3677, 'Pachpir', 'পাচপীর', 'pachpirup.panchagarh.gov.bd', 401, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3678, 'Mirgapur', 'মির্জাপুর', 'mirgapurup.panchagarh.gov.bd', 402, '2026-03-09 16:19:31', '2026-03-09 16:19:31'),
(3679, 'Radhanagar', 'রাধানগর', 'radhanagarup.panchagarh.gov.bd', 402, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3680, 'Toria', 'তোড়িয়া', 'toriaup.panchagarh.gov.bd', 402, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3681, 'Balarampur', 'বলরামপুর', 'balarampurup.panchagarh.gov.bd', 402, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3682, 'Alowakhowa', 'আলোয়াখোয়া', 'alowakhowaup.panchagarh.gov.bd', 402, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3683, 'Dhamor', 'ধামোর', 'dhamorup.panchagarh.gov.bd', 402, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3684, 'Banglabandha', 'বাংলাবান্ধা', 'banglabandhaup.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3685, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpurup.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3686, 'Bhojoanpur', 'ভজনপুর', 'bhojoanpur.gazipur.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3687, 'Buraburi', 'বুড়াবুড়ী', 'buraburi.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3688, 'Debnagar', 'দেবনগর', 'debnagarup.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3689, 'Salbahan', 'শালবাহান', 'salbahanup.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3690, 'Tentulia', 'তেতুলিয়া', 'tentuliaup.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3691, 'Timaihat', 'তিমাইহাট', 'timaihat.panchagarh.gov.bd', 403, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3692, 'Joypur', 'জয়পুর', 'joypurup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3693, 'Binodnagar', 'বিনোদনগর', 'binodnagarup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3694, 'Golapgonj', 'গোলাপগঞ্জ', 'golapgonjup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3695, 'Shalkhuria', 'শালখুরিয়া', 'shalkhuriaup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3696, 'Putimara', 'পুটিমারা', 'putimaraup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3697, 'Bhaduria', 'ভাদুরিয়া', 'bhaduriaup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3698, 'Daudpur', 'দাউদপুর', 'daudpurup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3699, 'Mahmudpur', 'মাহামুদপুর', 'mahmudpurup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3700, 'Kushdaha', 'কুশদহ', 'kushdahaup.dinajpur.gov.bd', 404, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3701, 'Shibrampur', 'শিবরামপুর', 'shibrampurup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3702, 'Polashbari', 'পলাশবাড়ী', 'polashbariup2.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3703, 'Shatagram', 'শতগ্রাম', 'shatagramup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3704, 'Paltapur', 'পাল্টাপুর', 'paltapurup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3705, 'Sujalpur', 'সুজালপুর', 'sujalpurup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3706, 'Nijpara', 'নিজপাড়া', 'nijparaup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3707, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3708, 'Bhognagar', 'ভোগনগর', 'bhognagarup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3709, 'Sator', 'সাতোর', 'satorup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3710, 'Mohonpur', 'মোহনপুর', 'mohonpurup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3711, 'Moricha', 'মরিচা', 'morichaup.dinajpur.gov.bd', 405, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3712, 'Bulakipur', 'বুলাকীপুর', 'bulakipurup.dinajpur.gov.bd', 406, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3713, 'Palsha', 'পালশা', 'palshaup.dinajpur.gov.bd', 406, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3714, 'Singra', 'সিংড়া', 'singraup.dinajpur.gov.bd', 406, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3715, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghatup.dinajpur.gov.bd', 406, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3716, 'Mukundopur', 'মুকুন্দপুর', 'mukundopurup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3717, 'Katla', 'কাটলা', 'katlaup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3718, 'Khanpur', 'খানপুর', 'khanpurup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3719, 'Dior', 'দিওড়', 'diorup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3720, 'Binail', 'বিনাইল', 'binailup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3721, 'Jatbani', 'জোতবানী', 'jatbaniup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3722, 'Poliproyagpur', 'পলিপ্রয়াগপুর', 'poliproyagpurup.dinajpur.gov.bd', 407, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3723, 'Belaichandi', 'বেলাইচন্ডি', 'belaichandiup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3724, 'Monmothopur', 'মন্মথপুর', 'monmothopurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3725, 'Rampur', 'রামপুর', 'rampurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3726, 'Polashbari', 'পলাশবাড়ী', 'polashbariup4.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3727, 'Chandipur', 'চন্ডীপুর', 'chandipurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3728, 'Mominpur', 'মোমিনপুর', 'mominpurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3729, 'Mostofapur', 'মোস্তফাপুর', 'mostofapurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3730, 'Habra', 'হাবড়া', 'habraup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3731, 'Hamidpur', 'হামিদপুর', 'hamidpurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3732, 'Harirampur', 'হরিরামপুর', 'harirampurup.dinajpur.gov.bd', 408, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3733, 'Nafanagar', 'নাফানগর', 'nafanagarup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3734, 'Eshania', 'ঈশানিয়া', 'eshaniaup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3735, 'Atgaon', 'আটগাঁও', 'atgaonup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3736, 'Shatail', 'ছাতইল', 'shatailup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3737, 'Rongaon', 'রনগাঁও', 'rongaonup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3738, 'Murshidhat', 'মুর্শিদহাট', 'murshidhatup.dinajpur.gov.bd', 409, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3739, 'Dabor', 'ডাবোর', 'daborup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3740, 'Rasulpur', 'রসুলপুর', 'rasulpurup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3741, 'Mukundapur', 'মুকুন্দপুর', 'mukundapurup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3742, 'Targao', 'তারগাঁও', 'targaoup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3743, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3744, 'Sundarpur', 'সুন্দরপুর', 'sundarpurup.dinajpur.gov.bd', 410, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3745, 'Aloary', 'এলুয়াড়ী', 'aloaryup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3746, 'Aladipur', 'আলাদিপুর', 'aladipurup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3747, 'Kagihal', 'কাজীহাল', 'kagihalup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3748, 'Bethdighi', 'বেতদিঘী', 'bethdighiup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3749, 'Khairbari', 'খয়েরবাড়ী', 'khairbariup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3750, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3751, 'Shibnagor', 'শিবনগর', 'shibnagorup.dinajpur.gov.bd', 411, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3752, 'Chealgazi', 'চেহেলগাজী', 'chealgaziup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3753, 'Sundorbon', 'সুন্দরবন', 'sundorbonup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3754, 'Fazilpur', 'ফাজিলপুর', 'fazilpurup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3755, 'Shekpura', 'শেখপুরা', 'shekpuraup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3756, 'Shashora', 'শশরা', 'shashoraup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3757, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3758, 'Uthrail', 'উথরাইল', 'uthrailup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3759, 'Sankarpur', 'শংকরপুর', 'sankarpurup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3760, 'Askorpur', 'আস্করপুর', 'askorpurup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3761, 'Kamalpur', 'কমলপুর', 'kamalpurup.dinajpur.gov.bd', 412, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3762, 'Alihat', 'আলীহাট', 'alihatup.dinajpur.gov.bd', 413, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3763, 'Khattamadobpara', 'খট্টামাধবপাড়া', 'khattamadobparaup.dinajpur.gov.bd', 413, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3764, 'Boalder', 'বোয়ালদার', 'boalderup.dinajpur.gov.bd', 413, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3765, 'Alokjhari', 'আলোকঝাড়ী', 'alokjhariup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3766, 'Bherbheri', 'ভেড়ভেড়ী', 'bherbheriup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3767, 'Angarpara', 'আঙ্গারপাড়া', 'angarparaup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3768, 'Goaldihi', 'গোয়ালডিহি', 'goaldihiup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3769, 'Bhabki', 'ভাবকী', 'bhabkiup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3770, 'Khamarpara', 'খামারপাড়া', 'khamarparaup.dinajpur.gov.bd', 414, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3771, 'Azimpur', 'আজিমপুর', 'azimpurup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3772, 'Farakkabad', 'ফরাক্কাবাদ', 'farakkabadup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3773, 'Dhamoir', 'ধামইর', 'dhamoirup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3774, 'Shohorgram', 'শহরগ্রাম', 'shohorgramup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3775, 'Birol', 'বিরল', 'birolup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3776, 'Bhandra', 'ভান্ডারা', 'bhandraup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3777, 'Bijora', 'বিজোড়া', 'bijoraup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3778, 'Dharmapur', 'ধর্মপুর', 'dharmapurup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3779, 'Mongalpur', 'মঙ্গলপুর', 'mongalpurup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3780, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3781, 'Rajarampur', 'রাজারামপুর', 'rajarampurup.dinajpur.gov.bd', 415, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3782, 'Nashratpur', 'নশরতপুর', 'nashratpurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3783, 'Satnala', 'সাতনালা', 'satnalaup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3784, 'Fatejangpur', 'ফতেজংপুর', 'fatejangpurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3785, 'Isobpur', 'ইসবপুর', 'isobpurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3786, 'Abdulpur', 'আব্দুলপুর', 'abdulpurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3787, 'Amarpur', 'অমরপুর', 'amarpurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3788, 'Auliapukur', 'আউলিয়াপুকুর', 'auliapukurup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3789, 'Saitara', 'সাইতারা', 'saitaraup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3790, 'Viail', 'ভিয়াইল', 'viailup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3791, 'Punotti', 'পুনট্টি', 'punottiup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3792, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3793, 'Alokdihi', 'আলোকডিহি', 'alokdihiup.dinajpur.gov.bd', 416, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3794, 'Rajpur', 'রাজপুর', 'rajpurup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3795, 'Harati', 'হারাটি', 'haratiup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3796, 'Mogolhat', 'মোগলহাট', 'mogolhatup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3797, 'Gokunda', 'গোকুন্ডা', 'gokundaup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3798, 'Barobari', 'বড়বাড়ী', 'barobariup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3799, 'Kulaghat', 'কুলাঘাট', 'kulaghatup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3800, 'Mohendranagar', 'মহেন্দ্রনগর', 'mohendranagarup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3801, 'Khuniagachh', 'খুনিয়াগাছ', 'khuniagachhup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3802, 'Panchagram', 'পঞ্চগ্রাম', 'panchagramup.lalmonirhat.gov.bd', 417, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3803, 'Bhotmari', 'ভোটমারী', 'bhotmariup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3804, 'Modati', 'মদাতী', 'modatiup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3805, 'Dologram', 'দলগ্রাম', 'dologramup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3806, 'Tushbhandar', 'তুষভান্ডার', 'tushbhandarup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3807, 'Goral', 'গোড়ল', 'goralup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3808, 'Chondropur', 'চন্দ্রপুর', 'chondropurup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3809, 'Cholbola', 'চলবলা', 'cholbolaup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3810, 'Kakina', 'কাকিনা', 'kakinaup.lalmonirhat.gov.bd', 418, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3811, 'Barokhata', 'বড়খাতা', 'barokhataup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3812, 'Goddimari', 'গড্ডিমারী', 'goddimariup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3813, 'Singimari', 'সিংগীমারী', 'singimariup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3814, 'Tongvhanga', 'টংভাঙ্গা', 'tongvhangaup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3815, 'Sindurna', 'সিন্দুর্ণা', 'sindurnaup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3816, 'Paticapara', 'পাটিকাপাড়া', 'paticaparaup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3817, 'Nowdabas', 'নওদাবাস', 'nowdabasup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3818, 'Gotamari', 'গোতামারী', 'gotamariup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3819, 'Vhelaguri', 'ভেলাগুড়ি', 'vhelaguriup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3820, 'Shaniajan', 'সানিয়াজান', 'shaniajanup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3821, 'Fakirpara', 'ফকিরপাড়া', 'fakirparaup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3822, 'Dawabari', 'ডাউয়াবাড়ী', 'dawabariup.lalmonirhat.gov.bd', 419, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3823, 'Sreerampur', 'শ্রীরামপুর', 'sreerampurup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3824, 'Patgram', 'পাটগ্রাম', 'patgramup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3825, 'Jagatber', 'জগতবেড়', 'jagatberup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3826, 'Kuchlibari', 'কুচলিবাড়ী', 'kuchlibariup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3827, 'Jongra', 'জোংড়া', 'jongraup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3828, 'Baura', 'বাউড়া', 'bauraup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3829, 'Dahagram', 'দহগ্রাম', 'dahagramup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3830, 'Burimari', 'বুড়িমারী', 'burimariup.lalmonirhat.gov.bd', 420, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3831, 'Bhelabari', 'ভেলাবাড়ী', 'bhelabariup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3832, 'Bhadai', 'ভাদাই', 'bhadaiup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3833, 'Kamlabari', 'কমলাবাড়ী', 'kamlabariup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3834, 'Durgapur', 'দূর্গাপুর', 'durgapurup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3835, 'Sarpukur', 'সারপুকুর', 'sarpukurup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3836, 'Saptibari', 'সাপ্টিবাড়ী', 'saptibariup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3837, 'Palashi', 'পলাশী', 'palashiup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3838, 'Mohishkhocha', 'মহিষখোচা', 'mohishkhochaup.lalmonirhat.gov.bd', 421, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3839, 'Kamarpukur', 'কামারপুকুর', 'kamarpukurup.nilphamari.gov.bd', 422, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3840, 'Kasiram Belpukur', 'কাশিরাম বেলপুকুর', 'kasirambelpukurup.nilphamari.gov.bd', 422, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3841, 'Bangalipur', 'বাঙ্গালীপুর', 'bangalipur.nilphamari.gov.bd', 422, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3842, 'Botlagari', 'বোতলাগাড়ী', 'botlagariup.nilphamari.gov.bd', 422, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3843, 'Khata Madhupur', 'খাতা মধুপুর', 'khatamadhupurup.nilphamari.gov.bd', 422, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3844, 'Gomnati', 'গোমনাতি', 'gomnati.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3845, 'Bhogdaburi', 'ভোগডাবুড়ী', 'bhogdaburiup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3846, 'Ketkibari', 'কেতকীবাড়ী', 'ketkibariup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3847, 'Jorabari', 'জোড়াবাড়ী', 'jorabariup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3848, 'Bamunia', 'বামুনীয়া', 'bamuniaup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3849, 'Panga Motukpur', 'পাংগা মটকপুর', 'pangamotukpurup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3850, 'Boragari', 'বোড়াগাড়ী', 'boragariup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3851, 'Domar', 'ডোমার', 'domarup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3852, 'Sonaray', 'সোনারায়', 'sonarayup2.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3853, 'Harinchara', 'হরিণচরা', 'harincharaup.nilphamari.gov.bd', 423, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3854, 'Paschim Chhatnay', 'পশ্চিম ছাতনাই', 'paschimchhatnayup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3855, 'Balapara', 'বালাপাড়া', 'balaparaup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3856, 'Dimla Sadar', 'ডিমলা সদর', 'dimlasadarup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3857, 'Khogakharibari', 'খগা খড়িবাড়ী', 'khogakharibariup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3858, 'Gayabari', 'গয়াবাড়ী', 'gayabariup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3859, 'Noutara', 'নাউতারা', 'noutaraup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3860, 'Khalisha Chapani', 'খালিশা চাপানী', 'khalishachapaniup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3861, 'Jhunagach Chapani', 'ঝুনাগাছ চাপানী', 'jhunagachhchapaniup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3862, 'Tepa Khribari', 'টেপা খরীবাড়ী', 'tepakhribariup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3863, 'Purba Chhatnay', 'পুর্ব ছাতনাই', 'purbachhatnayup.nilphamari.gov.bd', 424, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3864, 'Douabari', 'ডাউয়াবাড়ী', 'douabariup.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3865, 'Golmunda', 'গোলমুন্ডা', 'golmunda.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3866, 'Balagram', 'বালাগ্রাম', 'balagram.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3867, 'Golna', 'গোলনা', 'golna.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3868, 'Dharmapal', 'ধর্মপাল', 'dharmapal.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3869, 'Simulbari', 'শিমুলবাড়ী', 'simulbari.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3870, 'Mirganj', 'মীরগঞ্জ', 'mirganj.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3871, 'Kathali', 'কাঠালী', 'kathaliup.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3872, 'Khutamara', 'খুটামারা', 'khutamaraup.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3873, 'Shaulmari', 'শৌলমারী', 'shaulmariup.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3874, 'Kaimari', 'কৈমারী', 'kaimariup.nilphamari.gov.bd', 425, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3875, 'Barabhita', 'বড়ভিটা', 'barabhitaup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3876, 'Putimari', 'পুটিমারী', 'putimariup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3877, 'Nitai', 'নিতাই', 'nitaiup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3878, 'Bahagili', 'বাহাগিলি', 'bahagiliup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3879, 'Chandkhana', 'চাঁদখানা', 'chandkhanaup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3880, 'Kishoreganj', 'কিশোরগঞ্জ', 'kishoreganjup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3881, 'Ranachandi', 'রনচন্ডি', 'ranachandiup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3882, 'Garagram', 'গাড়াগ্রাম', 'garagramup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3883, 'Magura', 'মাগুরা', 'maguraup.nilphamari.gov.bd', 426, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3884, 'Chaora Bargacha', 'চওড়া বড়গাছা', 'chaorabargachaup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3885, 'Gorgram', 'গোড়গ্রাম', 'gorgramup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3886, 'Khoksabari', 'খোকসাবাড়ী', 'khoksabariup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3887, 'Palasbari', 'পলাশবাড়ী', 'palasbariup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3888, 'Ramnagar', 'রামনগর', 'ramnagarup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3889, 'Kachukata', 'কচুকাটা', 'kachukataup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3890, 'Panchapukur', 'পঞ্চপুকুর', 'panchapukurup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3891, 'Itakhola', 'ইটাখোলা', 'itakholaup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3892, 'Kundapukur', 'কুন্দপুকুর', 'kundapukur.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3893, 'Sonaray', 'সোনারায়', 'sonaray.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3894, 'Songalsi', 'সংগলশী', 'songalsiup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3895, 'Charaikhola', 'চড়াইখোলা', 'charaikhola.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3896, 'Chapra Sarnjami', 'চাপড়া সরঞ্জানী', 'chaprasarnjami.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3897, 'Lakshmicha', 'লক্ষ্মীচাপ', 'lakshmichapup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3898, 'Tupamari', 'টুপামারী', 'tupamariup.nilphamari.gov.bd', 427, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3899, 'Rasulpur', 'রসুলপুর', 'rasulpurup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3900, 'Noldanga', 'নলডাঙ্গা', 'noldangaup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3901, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3902, 'Jamalpur', 'জামালপুর', 'jamalpurup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3903, 'Faridpur', 'ফরিদপুর', 'faridpurup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3904, 'Dhaperhat', 'ধাপেরহাট', 'dhaperhatup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3905, 'Idilpur', 'ইদিলপুর', 'idilpurup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3906, 'Vatgram', 'ভাতগ্রাম', 'vatgramup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3907, 'Bongram', 'বনগ্রাম', 'bongramup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3908, 'Kamarpara', 'কামারপাড়া', 'kamarparaup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3909, 'Khodkomor', 'খোদকোমরপুর', 'khodkomorup.gaibandha.gov.bd', 428, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3910, 'Laxmipur', 'লক্ষ্মীপুর', 'laxmipurup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3911, 'Malibari', 'মালীবাড়ী', 'malibariup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3912, 'Kuptola', 'কুপতলা', 'kuptolaup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3913, 'Shahapara', 'সাহাপাড়া', 'shahaparaup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3914, 'Ballamjhar', 'বল্লমঝাড়', 'ballamjharup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3915, 'Ramchandrapur', 'রামচন্দ্রপুর', 'ramchandrapurup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3916, 'Badiakhali', 'বাদিয়াখালী', 'badiakhaliup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3917, 'Boali', 'বোয়ালী', 'boaliup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3918, 'Ghagoa', 'ঘাগোয়া', 'ghagoaup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3919, 'Gidari', 'গিদারী', 'gidariup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3920, 'Kholahati', 'খোলাহাটী', 'kholahatiup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3921, 'Mollarchar', 'মোল্লারচর', 'mollarcharup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3922, 'Kamarjani', 'কামারজানি', 'kamarjaniup.gaibandha.gov.bd', 429, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3923, 'Kishoregari', 'কিশোরগাড়ী', 'kishoregariup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3924, 'Hosenpur', 'হোসেনপুর', 'hosenpurup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3925, 'Palashbari', 'পলাশবাড়ী', 'palashbariup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3926, 'Barisal', 'বরিশাল', 'barisalup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3927, 'Mohdipur', 'মহদীপুর', 'mohdipurup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3928, 'Betkapa', 'বেতকাপা', 'betkapaup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3929, 'Pobnapur', 'পবনাপুর', 'pobnapurup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3930, 'Monohorpur', 'মনোহরপুর', 'monohorpurup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3931, 'Harinathpur', 'হরিণাথপুর', 'harinathpurup.gaibandha.gov.bd', 430, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3932, 'Padumsahar', 'পদুমশহর', 'padumsaharup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3933, 'Varotkhali', 'ভরতখালী', 'varotkhaliup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3934, 'Saghata', 'সাঘাটা', 'saghataup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3935, 'Muktinagar', 'মুক্তিনগর', 'muktinagarup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3936, 'Kachua', 'কচুয়া', 'kachuaup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3937, 'Ghuridah', 'ঘুরিদহ', 'ghuridahup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3938, 'Holdia', 'হলদিয়া', 'holdiaup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3939, 'Jumarbari', 'জুমারবাড়ী', 'jumarbariup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3940, 'Kamalerpara', 'কামালেরপাড়া', 'kamalerparaup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3941, 'Bonarpara', 'বোনারপাড়া', 'bonarparaup.gaibandha.gov.bd', 431, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3942, 'Kamdia', 'কামদিয়া', 'kamdiaup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3943, 'Katabari', 'কাটাবাড়ী', 'katabariup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3944, 'Shakhahar', 'শাখাহার', 'shakhaharup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3945, 'Rajahar', 'রাজাহার', 'rajaharup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3946, 'Sapmara', 'সাপমারা', 'sapmaraup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3947, 'Dorbosto', 'দরবস্ত ইয়নিয়ন', 'dorbostoup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3948, 'Talukkanupur', 'তালুককানুপুর', 'talukkanupurup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3949, 'Nakai', 'নাকাই', 'nakaiup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3950, 'Harirampur', 'হরিরামপুর', 'harirampurup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3951, 'Rakhalburuj', 'রাখালবুরুজ', 'rakhalburujup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3952, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3953, 'Gumaniganj', 'গুমানীগঞ্জ', 'gumaniganjup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3954, 'Kamardoho', 'কামারদহ', 'kamardohoup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3955, 'Kochasahar', 'কোচাশহর', 'kochasaharup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3956, 'Shibpur', 'শিবপুর', 'shibpurup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3957, 'Mahimaganj', 'মহিমাগঞ্জ', 'mahimaganjup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3958, 'Shalmara', 'শালমারা', 'shalmaraup.gaibandha.gov.bd', 432, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3959, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3960, 'Sonaroy', 'সোনারায়', 'sonaroyup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3961, 'Tarapur', 'তারাপুর', 'tarapurup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3962, 'Belka', 'বেলকা', 'belkaup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3963, 'Dohbond', 'দহবন্দ', 'dohbondup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3964, 'Sorbanondo', 'সর্বানন্দ', 'sorbanondoup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3965, 'Ramjibon', 'রামজীবন', 'ramjibonup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3966, 'Dhopadanga', 'ধোপাডাঙ্গা', 'dhopadangaup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3967, 'Chaporhati', 'ছাপরহাটী', 'chaporhatiup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3968, 'Shantiram', 'শান্তিরাম', 'shantiramup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3969, 'Konchibari', 'কঞ্চিবাড়ী', 'konchibariup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3970, 'Sreepur', 'শ্রীপুর', 'sreepurup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3971, 'Chandipur', 'চন্ডিপুর', 'chandipurup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3972, 'Kapasia', 'কাপাসিয়া', 'kapasiaup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3973, 'Haripur', 'হরিপুর', 'haripurup.gaibandha.gov.bd', 433, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3974, 'Kanchipara', 'কঞ্চিপাড়া', 'kanchiparaup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3975, 'Uria', 'উড়িয়া', 'uriaup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3976, 'Udakhali', 'উদাখালী', 'udakhaliup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3977, 'Gazaria', 'গজারিয়া', 'gazariaup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3978, 'Phulchari', 'ফুলছড়ি', 'phulchariup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3979, 'Erendabari', 'এরেন্ডাবাড়ী', 'erendabariup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3980, 'Fazlupur', 'ফজলুপুর', 'fazlupurup.gaibandha.gov.bd', 434, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3981, 'Ruhea', 'রুহিয়া', 'ruheaup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3982, 'Akhanagar', 'আখানগর', 'akhanagarup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3983, 'Ahcha', 'আকচা', 'ahchaup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3984, 'Baragaon', 'বড়গাঁও', 'baragaonup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3985, 'Balia', 'বালিয়া', 'baliaup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3986, 'Auliapur', 'আউলিয়াপুর', 'auliapurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3987, 'Chilarang', 'চিলারং', 'chilarangup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3988, 'Rahimanpur', 'রহিমানপুর', 'rahimanpurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3989, 'Roypur', 'রায়পুর', 'roypurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3990, 'Jamalpur', 'জামালপুর', 'jamalpurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3991, 'Mohammadpur', 'মোহাম্মদপুর', 'mohammadpurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(3992, 'Salandar', 'সালন্দর', 'salandarup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3993, 'Gareya', 'গড়েয়া', 'gareyaup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3994, 'Rajagaon', 'রাজাগাঁও', 'rajagaonup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3995, 'Debipur', 'দেবীপুর', 'debipurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3996, 'Nargun', 'নারগুন', 'nargunup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:32', '2026-03-09 16:19:32'),
(3997, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpurup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(3998, 'Sukhanpukhari', 'শুখানপুকুরী', 'sukhanpukhariup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(3999, 'Begunbari', 'বেগুনবাড়ী', 'begunbariup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4000, 'Ruhia Pashchim', 'রুহিয়া পশ্চিম', 'ruhiapashchimup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4001, 'Dholarhat', 'ঢোলারহাট', 'dholarhatup.thakurgaon.gov.bd', 435, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4002, 'Bhomradaha', 'ভোমরাদহ', 'bhomradahaup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4003, 'Kosharaniganj', 'কোষারাণীগঞ্জ', 'kosharaniganjup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4004, 'Khangaon', 'খনগাঁও', 'khangaonup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4005, 'Saidpur', 'সৈয়দপুর', 'saidpurup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4006, 'Pirganj', 'পীরগঞ্জ', 'pirganjup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4007, 'Hajipur', 'হাজীপুর', 'hajipurup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4008, 'Daulatpur', 'দৌলতপুর', 'daulatpurup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4009, 'Sengaon', 'সেনগাঁও', 'sengaonup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4010, 'Jabarhat', 'জাবরহাট', 'jabarhatup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4011, 'Bairchuna', 'বৈরচুনা', 'bairchunaup.thakurgaon.gov.bd', 436, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4012, 'Dhormogarh', 'ধর্মগড়', 'dhormogarhup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4013, 'Nekmorod', 'নেকমরদ', 'nekmorodup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4014, 'Hosengaon', 'হোসেনগাঁও', 'hosengaonup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4015, 'Lehemba', 'লেহেম্বা', 'lehembaup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4016, 'Bachor', 'বাচোর', 'bachorup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4017, 'Kashipur', 'কাশিপুর', 'kashipurup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4018, 'Ratore', 'রাতোর', 'ratoreup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4019, 'Nonduar', 'নন্দুয়ার', 'nonduarup.thakurgaon.gov.bd', 437, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4020, 'Gedura', 'গেদুড়া', 'geduraup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4021, 'Amgaon', 'আমগাঁও', 'amgaonup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4022, 'Bakua', 'বকুয়া', 'bakuaup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4023, 'Dangipara', 'ডাঙ্গীপাড়া', 'dangiparaup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4024, 'Haripur', 'হরিপুর', 'haripurup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4025, 'Bhaturia', 'ভাতুরিয়া', 'bhaturiaup.thakurgaon.gov.bd', 438, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4026, 'Paria', 'পাড়িয়া', 'pariaup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4027, 'Charol', 'চারোল', 'charolup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4028, 'Dhontola', 'ধনতলা', 'dhontolaup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4029, 'Boropalashbari', 'বড়পলাশবাড়ী', 'boropalashbariup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4030, 'Duosuo', 'দুওসুও', 'duosuoup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4031, 'Vanor', 'ভানোর', 'vanorup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4032, 'Amjankhore', 'আমজানখোর', 'amjankhoreup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4033, 'Borobari', 'বড়বাড়ী', 'borobariup.thakurgaon.gov.bd', 439, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4034, 'Mominpur', 'মমিনপুর', 'mominpurup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4035, 'Horidebpur', 'হরিদেবপুর', 'horidebpurup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4036, 'Uttam', 'উত্তম', 'uttamup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4037, 'Porshuram', 'পরশুরাম', 'porshuramup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4038, 'Topodhan', 'তপোধন', 'topodhanup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4039, 'Satgara', 'সাতগারা', 'satgaraup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4040, 'Rajendrapur', 'রাজেন্দ্রপুর', 'rajendrapurup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4041, 'Sadwapuskoroni', 'সদ্যপুস্করনী', 'sadwapuskoroniup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4042, 'Chandanpat', 'চন্দনপাট', 'chandanpatup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4043, 'Dorshona', 'দর্শানা', 'dorshonaup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4044, 'Tampat', 'তামপাট', 'tampatup.rangpur.gov.bd', 440, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4045, 'Betgari', 'বেতগাড়ী', 'betgariup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4046, 'Kholeya', 'খলেয়া', 'kholeyaup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4047, 'Borobil', 'বড়বিল', 'borobilup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4048, 'Kolcondo', 'কোলকোন্দ', 'kolcondoup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4049, 'Gongachora', 'গংগাচড়া', 'gongachoraup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4050, 'Gojoghonta', 'গজঘন্টা', 'gojoghontaup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4051, 'Morneya', 'মর্ণেয়া', 'morneyaup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4052, 'Alambiditor', 'আলমবিদিতর', 'alambiditorup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4053, 'Lakkhitari', 'লক্ষীটারী', 'lakkhitariup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4054, 'Nohali', 'নোহালী', 'nohaliup.rangpur.gov.bd', 441, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4055, 'Kurshatara', 'কুর্শা', 'kurshataraup.rangpur.gov.bd', 442, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4056, 'Alampur', 'আলমপুর', 'alampurup.rangpur.gov.bd', 442, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4057, 'Soyar', 'সয়ার', 'soyarup.rangpur.gov.bd', 442, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4058, 'Ikorchali', 'ইকরচালী', 'ikorchaliup.rangpur.gov.bd', 442, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4059, 'Hariarkuthi', 'হাড়িয়ারকুঠি', 'hariarkuthiup.rangpur.gov.bd', 442, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4060, 'Radhanagar', 'রাধানগর', 'radhanagarup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4061, 'Gopinathpur', 'গোপীনাথপুর', 'gopinathpurup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4062, 'Modhupur', 'মধুপুর', 'modhupurup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4063, 'Kutubpur', 'কুতুবপুর', 'kutubpurup.ranpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4064, 'Bishnapur', 'বিষ্ণপুর', 'bishnapurup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4065, 'Kalupara', 'কালুপাড়া', 'kaluparaup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4066, 'Lohanipara', 'লোহানীপাড়া', 'lohaniparaup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4067, 'Gopalpur', 'গোপালপুর', 'gopalpurup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4068, 'Damodorpur', 'দামোদরপুর', 'damodorpurup.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4069, 'Ramnathpurupb', 'রামনাথপুর', 'ramnathpurupb.rangpur.gov.bd', 443, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4070, 'Khoragach', 'খোরাগাছ', 'khoragachup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4071, 'Ranipukur', 'রাণীপুকুর', 'ranipukurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4072, 'Payrabond', 'পায়রাবন্দ', 'payrabondup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4073, 'Vangni', 'ভাংনী', 'vangniup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4074, 'Balarhat', 'বালারহাট', 'balarhatup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4075, 'Kafrikhal', 'কাফ্রিখাল', 'kafrikhalup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4076, 'Latibpur', 'লতিবপুর', 'latibpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4077, 'Chengmari', 'চেংমারী', 'chengmariup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4078, 'Moyenpur', 'ময়েনপুর', 'moyenpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4079, 'Baluya Masimpur', 'বালুয়া মাসিমপুর', 'baluyamasimpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4080, 'Borobala', 'বড়বালা', 'borobalaup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4081, 'Mirzapur', 'মির্জাপুর', 'mirzapurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4082, 'Imadpur', 'ইমাদপুর', 'imadpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4083, 'Milonpur', 'মিলনপুর', 'milonpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4084, 'Mgopalpur', 'গোপালপুর', 'mgopalpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4085, 'Durgapur', 'দূর্গাপুর', 'durgapurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4086, 'Boro Hazratpur', 'বড় হযরতপুর', 'borohazratpurup.rangpur.gov.bd', 444, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4087, 'Chattracol', 'চৈত্রকোল', 'chattracolup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4088, 'Vendabari', 'ভেন্ডাবাড়ী', 'vendabariup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4089, 'Borodargah', 'বড়দরগাহ', 'borodargahup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4090, 'Kumedpur', 'কুমেদপুর', 'kumedpurup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4091, 'Modankhali', 'মদনখালী', 'modankhaliup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4092, 'Tukuria', 'টুকুরিয়া', 'tukuriaup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4093, 'Boro Alampur', 'বড় আলমপুর', 'boroalampurup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4094, 'Raypur', 'রায়পুর', 'raypurup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4095, 'Pirgonj', 'পীরগঞ্জ', 'pirgonjup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4096, 'Shanerhat', 'শানেরহাট', 'shanerhatup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4097, 'Mithipur', 'মিঠিপুর', 'mithipurup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4098, 'Ramnathpur', 'রামনাথপুর', 'ramnathpurup1.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4099, 'Chattra', 'চতরা', 'chattraup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4100, 'Kabilpur', 'কাবিলপুর', 'kabilpurup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4101, 'Pachgachi', 'পাঁচগাছী', 'pachgachiup.rangpur.gov.bd', 445, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4102, 'Sarai', 'সারাই', 'saraiup.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4103, 'Balapara', 'বালাপাড়া', 'balaparaup.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4104, 'Shahidbag', 'শহীদবাগ', 'shahidbagup.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4105, 'Haragach', 'হারাগাছ', 'haragachup.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4106, 'Tepamodhupur', 'টেপামধুপুর', 'tepamodhupurup.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4107, 'Kurshaupk', 'কুর্শা', 'kurshaupk.rangpur.gov.bd', 446, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4108, 'Kollyani', 'কল্যাণী', 'kollyaniup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4109, 'Parul', 'পারুল', 'parulup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4110, 'Itakumari', 'ইটাকুমারী', 'itakumariup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4111, 'Saula', 'ছাওলা', 'saulaup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4112, 'Kandi', 'কান্দি', 'kandiup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4113, 'Pirgacha', 'পীরগাছা', 'pirgachaup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4114, 'Annodanagar', 'অন্নদানগর', 'annodanagarup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4115, 'Tambulpur', 'তাম্বুলপুর', 'tambulpurup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4116, 'Koikuri', 'কৈকুড়ী', 'koikuriup.rangpur.gov.bd', 447, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4117, 'Holokhana', 'হলোখানা', 'holokhanaup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4118, 'Ghogadhoh', 'ঘোগাদহ', 'ghogadhohup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4119, 'Belgacha', 'বেলগাছা', 'belgachaup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4120, 'Mogolbasa', 'মোগলবাসা', 'mogolbasaup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4121, 'Panchgachi', 'পাঁচগাছি', 'panchgachiup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4122, 'Jatrapur', 'যাত্রাপুর', 'jatrapurup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4123, 'Kanthalbari', 'কাঁঠালবাড়ী', 'kanthalbariup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4124, 'Bhogdanga', 'ভোগডাঙ্গা', 'bhogdangaup.kurigram.gov.bd', 448, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4125, 'Ramkhana', 'রামখানা', 'ramkhanaup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4126, 'Raigonj', 'রায়গঞ্জ', 'raigonjup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4127, 'Bamondanga', 'বামনডাঙ্গা', 'bamondangaup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4128, 'Berubari', 'বেরুবাড়ী', 'berubariup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4129, 'Sontaspur', 'সন্তোষপুর', 'sontaspurup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4130, 'Hasnabad', 'হাসনাবাদ', 'hasnabadup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4131, 'Newyashi', 'নেওয়াশী', 'newyashiup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4132, 'Bhitorbond', 'ভিতরবন্দ', 'bhitorbondup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4133, 'Kaligonj', 'কালীগঞ্জ', 'kaligonjup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4134, 'Noonkhawa', 'নুনখাওয়া', 'noonkhawaup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4135, 'Narayanpur', 'নারায়নপুর', 'narayanpurup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4136, 'Kedar', 'কেদার', 'kedarup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4137, 'Kachakata', 'কঁচাকাঁটা', 'kachakataup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4138, 'Bollobherkhas', 'বল্লভেরখাস', 'bollobherkhasup.kurigram.gov.bd', 449, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4139, 'Pathordubi', 'পাথরডুবি', 'pathordubiup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4140, 'Shilkhuri', 'শিলখুড়ি', 'shilkhuriup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4141, 'Tilai', 'তিলাই', 'tilaiup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4142, 'Paikarchara', 'পাইকেরছড়া', 'paikarcharaup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4143, 'Bhurungamari', 'ভূরুঙ্গামারী', 'bhurungamariup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4144, 'Joymonirhat', 'জয়মনিরহাট', 'joymonirhatup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4145, 'Andharirjhar', 'আন্ধারীরঝাড়', 'andharirjharup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4146, 'Char-Bhurungamari', 'চর-ভূরুঙ্গামারী', 'charbhurungamariup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4147, 'Bangasonahat', 'বঙ্গসোনাহাট', 'bangasonahatup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4148, 'Boldia', 'বলদিয়া', 'boldiaup.kurigram.gov.bd', 450, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4149, 'Nawdanga', 'নাওডাঙ্গা', 'nawdangaup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4150, 'Shimulbari', 'শিমুলবাড়ী', 'shimulbariup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4151, 'Phulbari', 'ফুলবাড়ী', 'phulbariup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4152, 'Baravita', 'বড়ভিটা', 'baravitaup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4153, 'Bhangamor', 'ভাঙ্গামোড়', 'bhangamorup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4154, 'Kashipur', 'কাশিপুর', 'kashipurup.kurigram.gov.bd', 451, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4155, 'Chinai', 'ছিনাই', 'chinaiup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4156, 'Rajarhat', 'রাজারহাট', 'rajarhatup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4157, 'Nazimkhan', 'নাজিমখাঁন', 'nazimkhanup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4158, 'Gharialdanga', 'ঘড়িয়ালডাঙ্গা', 'gharialdangaup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4159, 'Chakirpashar', 'চাকিরপশার', 'chakirpasharup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4160, 'Biddanondo', 'বিদ্যানন্দ', 'biddanondoup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4161, 'Umarmajid', 'উমর মজিদ', 'umarmajidup.kurigram.gov.bd', 452, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4162, 'Daldalia', 'দলদলিয়া', 'daldaliaup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4163, 'Durgapur', 'দুর্গাপুর', 'durgapurup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4164, 'Pandul', 'পান্ডুল', 'pandulup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4165, 'Buraburi', 'বুড়াবুড়ী', 'buraburiup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4166, 'Dharanibari', 'ধরণীবাড়ী', 'dharanibariup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4167, 'Dhamsreni', 'ধামশ্রেণী', 'dhamsreniup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4168, 'Gunaigas', 'গুনাইগাছ', 'gunaigasup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4169, 'Bazra', 'বজরা', 'bazraup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4170, 'Tobockpur', 'তবকপুর', 'tobockpurup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4171, 'Hatia', 'হাতিয়া', 'hatiaup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4172, 'Begumgonj', 'বেগমগঞ্জ', 'begumgonjup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4173, 'Shahabiar Alga', 'সাহেবের আলগা', 'shahabiaralgaup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4174, 'Thetrai', 'থেতরাই', 'thetraiup.kurigram.gov.bd', 453, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4175, 'Ranigonj', 'রাণীগঞ্জ', 'ranigonjup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4176, 'Nayarhat', 'নয়ারহাট', 'nayarhatup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4177, 'Thanahat', 'থানাহাট', 'thanahatup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4178, 'Ramna', 'রমনা', 'ramnaup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4179, 'Chilmari', 'চিলমারী', 'chilmariup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4180, 'Austomirchar', 'অষ্টমীর চর', 'austomircharup.kurigram.gov.bd', 454, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4181, 'Dadevanga', 'দাঁতভাঙ্গা', 'dadevangaup.kurigram.gov.bd', 455, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4182, 'Shoulemari', 'শৌলমারী', 'shoulemariup.kurigram.gov.bd', 455, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4183, 'Bondober', 'বন্দবেড়', 'bondoberup.kurigram.gov.bd', 455, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4184, 'Rowmari', 'রৌমারী', 'rowmariup.kurigram.gov.bd', 455, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4185, 'Jadurchar', 'যাদুরচর', 'jadurcharup.kurigram.gov.bd', 455, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4186, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.kurigram.gov.bd', 456, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4187, 'Kodalkati', 'কোদালকাটি', 'kodalkatiup.kurigram.gov.bd', 456, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4188, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonjup.kurigram.gov.bd', 456, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4189, 'Kamararchor', 'কামারের চর', 'kamararchorup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4190, 'Chorsherpur', 'চরশেরপুর', 'chorsherpurup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4191, 'Bajitkhila', 'বাজিতখিলা', 'bajitkhilaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4192, 'Gajir Khamar', 'গাজির খামার', 'gajirkhamarup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4193, 'Dhola', 'ধলা', 'dholaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4194, 'Pakuriya', 'পাকুরিয়া', 'pakuriyaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4195, 'Vatshala', 'ভাতশালা', 'vatshalaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4196, 'Losmonpur', 'লছমনপুর', 'losmonpurup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4197, 'Rouha', 'রৌহা', 'rouhaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4198, 'Kamariya', 'কামারিয়া', 'kamariyaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4199, 'Chor Mochoriya', 'চর মোচারিয়া', 'chormochoriyaup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4200, 'Chorpokhimari', 'চর পক্ষীমারি', 'chorpokhimariup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4201, 'Betmari Ghughurakandi', 'বেতমারি ঘুঘুরাকান্দি', 'betmarighughurakandiup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4202, 'Balairchar', 'বলাইরচর', 'balaircharup.sherpur.gov.bd', 457, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4203, 'Puraga', 'পোড়াগাও', 'puragauup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4204, 'Nonni', 'নন্নী', 'nonniup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4205, 'Morichpuran', 'মরিচপুরাণ', 'morichpuranup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4206, 'Rajnogor', 'রাজনগর', 'rajnogorup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4207, 'Nayabil', 'নয়াবীল', 'nayabilup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4208, 'Ramchondrokura', 'রামচন্দ্রকুড়া', 'ramchondrokuraup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4209, 'Kakorkandhi', 'কাকরকান্দি', 'kakorkandhiup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4210, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabariup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4211, 'Juganiya', 'যোগনীয়া', 'juganiyaup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4212, 'Bagber', 'বাঘবেড়', 'bagberup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4213, 'Koloshpar', 'কলসপাড়', 'koloshparup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4214, 'Rupnarayankura', 'রূপনারায়নকুড়া', 'rupnarayankuraup.sherpur.gov.bd', 458, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4215, 'Ranishimul', 'রানীশিমুল', 'ranishimulup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4216, 'Singabaruna', 'সিংগাবরুনা', 'singabarunaup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4217, 'Kakilakura', 'কাকিলাকুড়া', 'kakilakuraup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4218, 'Tatihati', 'তাতীহাটি', 'tatihatiup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4219, 'Gosaipur', 'গোশাইপুর', 'gosaipurup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4220, 'Sreebordi', 'শ্রীবরদী', 'sreebordiup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4221, 'Bhelua', 'ভেলুয়া', 'bheluaup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4222, 'Kharia Kazirchar', 'খড়িয়া কাজিরচর', 'khariakazircharup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4223, 'Kurikahonia', 'কুড়িকাহনিয়া', 'kurikahoniaup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4224, 'Garjaripa', 'গড়জরিপা', 'garjaripaup.sherpur.gov.bd', 459, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4225, 'Gonopoddi', 'গণপদ্দী', 'gonopoddiup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4226, 'Nokla', 'নকলা', 'noklaup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4227, 'Urpha', 'উরফা', 'urphaup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4228, 'Gourdwar', 'গৌড়দ্বার', 'gourdwarup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4229, 'Baneshwardi', 'বানেশ্বর্দী', 'baneshwardiup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4230, 'Pathakata', 'পাঠাকাটা', 'pathakataup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4231, 'Talki', 'টালকী', 'talkiup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4232, 'Choraustadhar', 'চরঅষ্টধর', 'choraustadharup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4233, 'Chandrakona', 'চন্দ্রকোনা', 'chandrakonaup.sherpur.gov.bd', 460, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4234, 'Kansa', 'কাংশা', 'kansaup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4235, 'Dansail', 'ধানশাইল', 'dansailup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4236, 'Nolkura', 'নলকুড়া', 'nolkuraup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4237, 'Gouripur', 'গৌরিপুর', 'gouripurup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4238, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigatiup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4239, 'Hatibandha', 'হাতিবান্দা', 'hatibandhaup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4240, 'Malijhikanda', 'মালিঝিকান্দা', 'malijhikandaup.sherpur.gov.bd', 461, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4241, 'Deukhola', 'দেওখোলা', 'deukholaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4242, 'Naogaon', 'নাওগাঁও', 'naogaonup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4243, 'Putijana', 'পুটিজানা', 'putijanaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4244, 'Kushmail', 'কুশমাইল', 'kushmailup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4245, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbariaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4246, 'Bakta', 'বাক্তা', 'baktaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4247, 'Rangamatia', 'রাঙ্গামাটিয়া', 'rangamatiaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4248, 'Enayetpur', 'এনায়েতপুর', 'enayetpurup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4249, 'Kaladaha', 'কালাদহ', 'kaladahaup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4250, 'Radhakanai', 'রাধাকানাই', 'radhakanaiup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4251, 'Asimpatuli', 'আছিমপাটুলী', 'asimpatuliup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4252, 'Vobanipur', 'ভবানীপুর', 'vobanipurup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4253, 'Balian', 'বালিয়ান', 'balianup.mymensingh.gov.bd', 462, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4254, 'Dhanikhola', 'ধানীখোলা', 'dhanikholaup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4255, 'Bailor', 'বৈলর', 'bailorup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4256, 'Kanthal', 'কাঁঠাল', 'kanthalup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4257, 'Kanihari', 'কানিহারী', 'kanihariup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4258, 'Trishal', 'ত্রিশাল', 'trishalup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4259, 'Harirampur', 'হরিরামপুর', 'harirampurup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4260, 'Sakhua', 'সাখুয়া', 'www.sakhuaup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4261, 'Balipara', 'বালিপাড়া', 'baliparaup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4262, 'Mokshapur', 'মোক্ষপুর', 'mokshapurup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4263, 'Mathbari', 'মঠবাড়ী', 'mathbariup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4264, 'Amirabari', 'আমিরাবাড়ী', 'amirabariup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4265, 'Rampur', 'রামপুর', 'rampurup.mymensingh.gov.bd', 463, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4266, 'Uthura', 'উথুরা', 'uthuraup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4267, 'Meduari', 'মেদুয়ারী', 'meduariup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4268, 'Varadoba', 'ভরাডোবা', 'varadobaup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4269, 'Dhitpur', 'ধীতপুর', 'dhitpurup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4270, 'Dakatia', 'ডাকাতিয়া', 'dakatiaup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4271, 'Birunia', 'বিরুনিয়া', 'biruniaup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4272, 'Bhaluka', 'ভালুকা', 'bhalukaup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4273, 'Mallikbari', 'মল্লিকবাড়ী', 'mallikbariup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4274, 'Kachina', 'কাচিনা', 'kachinaup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4275, 'Habirbari', 'হবিরবাড়ী', 'habirbariup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4276, 'Rajoi', 'রাজৈ', 'rajoiup.mymensingh.gov.bd', 464, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4277, 'Dulla', 'দুল্লা', 'dullaup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4278, 'Borogram', 'বড়গ্রাম', 'borogramup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4279, 'Tarati', 'তারাটি', 'taratiup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4280, 'Kumargata', 'কুমারগাতা', 'kumargataup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4281, 'Basati', 'বাশাটি', 'basatiup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4282, 'Mankon', 'মানকোন', 'mankonup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4283, 'Ghoga', 'ঘোগা', 'ghogaup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4284, 'Daogaon', 'দাওগাঁও', 'daogaonup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4285, 'Kashimpur', 'কাশিমপুর', 'kashimpurup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4286, 'Kheruajani', 'খেরুয়াজানী', 'kheruajaniup.mymensingh.gov.bd', 465, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4287, 'Austadhar', 'অষ্টধার', 'austadharup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4288, 'Bororchar', 'বোররচর', 'bororcharup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4289, 'Dapunia', 'দাপুনিয়া', 'dapuniaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4290, 'Aqua', 'আকুয়া', 'aquaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4291, 'Khagdohor', 'খাগডহর', 'khagdohorup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4292, 'Charnilaxmia', 'চরনিলক্ষিয়া', 'charnilaxmiaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4293, 'Kushtia', 'কুষ্টিয়া', 'kushtiaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4294, 'Paranganj', 'পরানগঞ্জ', 'paranganjup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4295, 'Sirta', 'সিরতা', 'sirtaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4296, 'Char Ishwardia', 'চর ঈশ্বরদিয়া', 'charishwardiaup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4297, 'Ghagra', 'ঘাগড়া', 'ghagraup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4298, 'Vabokhali', 'ভাবখালী', 'vabokhaliup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4299, 'Boyra', 'বয়ড়া', 'boyraup.mymensingh.gov.bd', 466, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4300, 'Dakshin Maijpara', 'দক্ষিণ মাইজপাড়া', 'dakshinmaijparaup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4301, 'Gamaritola', 'গামারীতলা', 'gamaritolaup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4302, 'Dhobaura', 'ধোবাউড়া', 'dhobauraup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4303, 'Porakandulia', 'পোড়াকান্দুলিয়া', 'porakanduliaup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4304, 'Goatala', 'গোয়াতলা', 'goatalaup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4305, 'Ghoshgaon', 'ঘোষগাঁও', 'ghoshgaonup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4306, 'Baghber', 'বাঘবেড়', 'baghberup.mymensingh.gov.bd', 467, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4307, 'Rambhadrapur', 'রামভদ্রপুর', 'rambhadrapurup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4308, 'Sondhara', 'ছনধরা', 'sondharaup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4309, 'Vaitkandi', 'ভাইটকান্দি', 'vaitkandiup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4310, 'Singheshwar', 'সিংহেশ্বর', 'singheshwarup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4311, 'Phulpur', 'ফুলপুর', 'phulpurup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4312, 'Banihala', 'বানিহালা', 'banihalaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4313, 'Biska', 'বিস্কা', 'biskaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4314, 'Baola', 'বওলা', 'baolaup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4315, 'Payari', 'পয়ারী', 'payariup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4316, 'Balia', 'বালিয়া', 'baliaup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4317, 'Rahimganj', 'রহিমগঞ্জ', 'rahimganjup.mymensingh.gov.bd', 468, '2026-03-09 16:19:33', '2026-03-09 16:19:33'),
(4318, 'Balikha', 'বালিখা', 'balikhaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4319, 'Kakni', 'কাকনী', 'kakniup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4320, 'Dhakua', 'ঢাকুয়া', 'dhakuaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4321, 'Rupasi', 'রূপসী', 'rupasiup.mymensingh.gov.bd', 468, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4322, 'Tarakanda', 'তারাকান্দা', 'tarakandaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4323, 'Galagaon', 'গালাগাঁও', 'galagaonup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4324, 'Kamargaon', 'কামারগাঁও', 'kamargaonup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4325, 'Kamaria', 'কামারিয়া', 'kamariaup.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4326, 'Rampur', 'রামপুর', 'rampurup2.mymensingh.gov.bd', 474, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4327, 'Bhubankura', 'ভূবনকুড়া', 'bhubankuraup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4328, 'Jugli', 'জুগলী', 'jugliup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4329, 'Kaichapur', 'কৈচাপুর', 'kaichapurup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4330, 'Haluaghat', 'হালুয়াঘাট', 'haluaghatup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4331, 'Gazirbhita', 'গাজিরভিটা', 'gazirbhitaup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4332, 'Bildora', 'বিলডোরা', 'bildoraup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4333, 'Sakuai', 'শাকুয়াই', 'sakuaiup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4334, 'Narail', 'নড়াইল', 'narailup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4335, 'Dhara', 'ধারা', 'dharaup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4336, 'Dhurail', 'ধুরাইল', 'dhurailup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4337, 'Amtoil', 'আমতৈল', 'amtoilup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4338, 'Swadeshi', 'স্বদেশী', 'swadeshiup.mymensingh.gov.bd', 469, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4339, 'Sahanati', 'সহনাটি', 'sahanatiup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4340, 'Achintapur', 'অচিন্তপুর', 'achintapurup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4341, 'Mailakanda', 'মইলাকান্দা', 'mailakandaup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4342, 'Bokainagar', 'বোকাইনগর', 'bokainagarup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4343, 'Gouripur', 'গৌরীপুর', 'gouripurup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4344, 'Maoha', 'মাওহা', 'maohaup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4345, 'Ramgopalpur', 'রামগোপালপুর', 'ramgopalpurup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4346, 'Douhakhola', 'ডৌহাখলা', 'douhakholaup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4347, 'Bhangnamari', 'ভাংনামারী', 'bhangnamariup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4348, 'Sidhla', 'সিধলা', 'sidhlaup.mymensingh.gov.bd', 470, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4349, 'Rasulpur', 'রসুলপুর', 'rasulpurup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4350, 'Barobaria', 'বারবারিয়া', 'barobariaup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4351, 'Charalgi', 'চরআলগী', 'charalgiup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4352, 'Saltia', 'সালটিয়া', 'saltiaup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4353, 'Raona', 'রাওনা', 'raonaup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4354, 'Longair', 'লংগাইর', 'longairup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4355, 'Paithol', 'পাইথল', 'paitholup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4356, 'Gafargaon', 'গফরগাঁও', 'gafargaonup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4357, 'Josora', 'যশরা', 'josoraup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4358, 'Moshakhali', 'মশাখালী', 'moshakhaliup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4359, 'Panchbagh', 'পাঁচবাগ', 'panchbaghup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4360, 'Usthi', 'উস্থি', 'usthiup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4361, 'Dotterbazar', 'দত্তেরবাজার', 'dotterbazarup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4362, 'Niguari', 'নিগুয়ারী', 'niguariup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4363, 'Tangabo', 'টাংগাব', 'tangaboup.mymensingh.gov.bd', 471, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4364, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganjup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4365, 'Sarisha', 'সরিষা', 'sarishaup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4366, 'Sohagi', 'সোহাগী', 'sohagiup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4367, 'Atharabari', 'আঠারবাড়ী', 'atharabariup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4368, 'Rajibpur', 'রাজিবপুর', 'rajibpurup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4369, 'Maijbagh', 'মাইজবাগ', 'maijbaghup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4370, 'Magtula', 'মগটুলা', 'magtulaup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4371, 'Jatia', 'জাটিয়া', 'jatiaup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4372, 'Uchakhila', 'উচাখিলা', 'uchakhilaup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4373, 'Tarundia', 'তারুন্দিয়া', 'tarundiaup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4374, 'Barahit', 'বড়হিত', 'barahitup.mymensingh.gov.bd', 472, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4375, 'Batagoir', 'বেতাগৈর', 'batagoirup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4376, 'Nandail', 'নান্দাইল', 'nandailup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4377, 'Chandipasha', 'চন্ডীপাশা', 'chandipashaup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4378, 'Gangail', 'গাংগাইল', 'gangailup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4379, 'Rajgati', 'রাজগাতী', 'rajgatiup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4380, 'Muajjempur', 'মোয়াজ্জেমপুর', 'muajjempurup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4381, 'Sherpur', 'শেরপুর', 'sherpurup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4382, 'Singroil', 'সিংরইল', 'singroilup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4383, 'Achargaon', 'আচারগাঁও', 'achargaonup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4384, 'Mushulli', 'মুশুল্লী', 'mushulliup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4385, 'Kharua', 'খারুয়া', 'kharuaup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4386, 'Jahangirpur', 'জাহাঙ্গীরপুর', 'jahangirpurup.mymensingh.gov.bd', 473, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4387, 'Kendua', 'কেন্দুয়া', 'kenduaup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4388, 'Sharifpur', 'শরিফপুর', 'sharifpurup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4389, 'Laxirchar', 'লক্ষীরচর', 'laxircharup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4390, 'Tolshirchar', 'তুলশীরচর', 'tolshircharup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4391, 'Itail', 'ইটাইল', 'itailup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4392, 'Narundi', 'নরুন্দী', 'narundiup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4393, 'Ghorada', 'ঘোড়াধাপ', 'ghoradapup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4394, 'Bashchara', 'বাশঁচড়া', 'bashcharaup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4395, 'Ranagacha', 'রানাগাছা', 'ranagachaup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4396, 'Sheepur', 'শ্রীপুর', 'sheepurup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4397, 'Shahbajpur', 'শাহবাজপুর', 'shahbajpurup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4398, 'Titpalla', 'তিতপল্লা', 'titpallaup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4399, 'Mesta', 'মেষ্টা', 'mestaup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4400, 'Digpait', 'দিগপাইত', 'digpaitup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4401, 'Rashidpur', 'রশিদপুর', 'rashidpurup.jamalpur.gov.bd', 475, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4402, 'Durmot', 'দুরমুট', 'durmotup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4403, 'Kulia', 'কুলিয়া', 'kuliaup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4404, 'Mahmudpur', 'মাহমুদপুর', 'mahmudpurup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4405, 'Nangla', 'নাংলা', 'nanglaup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4406, 'Nayanagar', 'নয়ানগর', 'nayanagarup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4407, 'Adra', 'আদ্রা', 'adraup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4408, 'Charbani Pakuria', 'চরবানী পাকুরিয়া', 'charbanipakuriaup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4409, 'Fulkucha', 'ফুলকোচা', 'fulkuchaup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4410, 'Ghuserpara', 'ঘোষেরপাড়া', 'ghuserparaup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4411, 'Jhaugara', 'ঝাউগড়া', 'jhaugaraup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4412, 'Shuampur', 'শ্যামপুর', 'shuampurup.jamalpur.gov.bd', 476, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4413, 'Kulkandi', 'কুলকান্দি', 'kulkandiup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4414, 'Belghacha', 'বেলগাছা', 'belghachaup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4415, 'Chinaduli', 'চিনাডুলী', 'chinaduliup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4416, 'Shapdari', 'সাপধরী', 'shapdariup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4417, 'Noarpara', 'নোয়ারপাড়া', 'noarparaup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4418, 'Islampur', 'ইসলামপুর', 'islampurup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4419, 'Partharshi', 'পাথশী', 'partharshiup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4420, 'Palabandha', 'পলবান্ধা', 'palabandhaup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4421, 'Gualerchar', 'গোয়ালেরচর', 'gualercharup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4422, 'Gaibandha', 'গাইবান্ধা', 'gaibandhaup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4423, 'Charputimari', 'চরপুটিমারী', 'charputimariup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4424, 'Chargualini', 'চরগোয়ালীনি', 'chargualiniup.jamalpur.gov.bd', 477, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4425, 'Dungdhara', 'ডাংধরা', 'dungdharaup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4426, 'Char Amkhawa', 'চর আমখাওয়া', 'charamkhawaup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4427, 'Parram Rampur', 'পাররাম রামপুর', 'parramrampurup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4428, 'Hatibanga', 'হাতীভাঙ্গা', 'hatibangaup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4429, 'Bahadurabad', 'বাহাদুরাবাদ', 'bahadurabadup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4430, 'Chikajani', 'চিকাজানী', 'chikajaniup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4431, 'Chukaibari', 'চুকাইবাড়ী', 'chukaibariup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4432, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonjup.jamalpur.gov.bd', 478, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4433, 'Satpoa', 'সাতপোয়া', 'satpoaup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4434, 'Pogaldigha', 'পোগলদিঘা', 'pogaldighaup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4435, 'Doail', 'ডোয়াইল', 'doailup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4436, 'Aona', 'আওনা', 'aonaup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34');
INSERT INTO `unions` (`id`, `name`, `bn_name`, `url`, `thana_id`, `created_at`, `updated_at`) VALUES
(4437, 'Pingna', 'পিংনা', 'pingnaup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4438, 'Bhatara', 'ভাটারা', 'bhataraup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4439, 'Kamrabad', 'কামরাবাদ', 'kamrabadup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4440, 'Mahadan', 'মহাদান', 'mahadanup.jamalpur.gov.bd', 479, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4441, 'Char Pakerdah', 'চর পাকেরদহ', 'charpakerdahup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4442, 'Karaichara', 'কড়ইচড়া', 'karaicharaup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4443, 'Gunaritala', 'গুনারীতলা', 'gunaritalaup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4444, 'Balijuri', 'বালিজুড়ী', 'balijuriup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4445, 'Jorekhali', 'জোড়খালী', 'jorekhaliup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4446, 'Adarvita', 'আদারভিটা', 'adarvitaup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4447, 'Sidhuli', 'সিধুলী', 'sidhuliup.jamalpur.gov.bd', 480, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4448, 'Danua', 'ধানুয়া', 'danuaup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4449, 'Bagarchar', 'বগারচর', 'bagarcharup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4450, 'Battajore', 'বাট্রাজোড়', 'battajoreup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4451, 'Shadurpara', 'সাধুরপাড়া', 'shadurparaup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4452, 'Bakshigonj', 'বকসীগঞ্জ', 'bakshigonjup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4453, 'Nilakhia', 'নিলক্ষিয়া', 'nilakhiaup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4454, 'Merurchar', 'মেরুরচর', 'merurcharup.jamalpur.gov.bd', 481, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4455, 'Asma', 'আসমা', 'asma.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4456, 'Chhiram', 'চিরাম', 'chhiram.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4457, 'Baushi', 'বাউশী', 'baushiup.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4458, 'Barhatta', 'বারহাট্টা', 'barhattaup.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4459, 'Raypur', 'রায়পুর', 'raypurup.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4460, 'Sahata', 'সাহতা', 'sahataup.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4461, 'Singdha', 'সিংধা', 'singdhaup.netrokona.gov.bd', 482, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4462, 'Durgapur', 'দূর্গাপুর', 'durgapurup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4463, 'Kakoirgora', 'কাকৈরগড়া', 'kakoirgoraup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4464, 'Kullagora', 'কুল্লাগড়া', 'kullagoraup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4465, 'Chandigarh', 'চণ্ডিগড়', 'chandigarhup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4466, 'Birisiri', 'বিরিশিরি', 'birisiriup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4467, 'Bakaljora', 'বাকলজোড়া', 'bakaljoraup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4468, 'Gawkandia', 'গাঁওকান্দিয়া', 'gawkandiaup.netrokona.gov.bd', 483, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4469, 'Asujia', 'আশুজিয়া', 'asujiaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4470, 'Dalpa', 'দলপা', 'dalpaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4471, 'Goraduba', 'গড়াডোবা', 'goradubaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4472, 'Gonda', 'গণ্ডা', 'gondaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4473, 'Sandikona', 'সান্দিকোনা', 'sandikonaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4474, 'Maska', 'মাসকা', 'maskaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4475, 'Bolaishimul', 'বলাইশিমুল', 'bolaishimulup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4476, 'Noapara', 'নওপাড়া', 'noaparaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4477, 'Kandiura', 'কান্দিউড়া', 'kandiuraup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4478, 'Chirang', 'চিরাং', 'chirangup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4479, 'Roailbari Amtala', 'রোয়াইলবাড়ী আমতলা', 'roailbariamtalaup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4480, 'Paikura', 'পাইকুড়া', 'paikuraup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4481, 'Muzafarpur', 'মোজাফরপুর', 'muzafarpurup.netrokona.gov.bd', 484, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4482, 'Shormushia', 'স্বরমুশিয়া', 'shormushiaup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4483, 'Shunoi', 'শুনই', 'shunoiup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4484, 'Lunesshor', 'লুনেশ্বর', 'lunesshorup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4485, 'Baniyajan', 'বানিয়াজান', 'baniyajanup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4486, 'Teligati', 'তেলিগাতী', 'teligatiup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4487, 'Duoj', 'দুওজ', 'duojup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4488, 'Sukhari', 'সুখারী', 'sukhariup.netrokona.gov.bd', 485, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4489, 'Fathepur', 'ফতেপুর', 'fathepurup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4490, 'Nayekpur', 'নায়েকপুর', 'nayekpurup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4491, 'Teosree', 'তিয়শ্রী', 'teosreeup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4492, 'Magan', 'মাঘান', 'maganup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4493, 'Gobindasree', 'গেবিন্দশ্রী', 'gobindasreeup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4494, 'Madan', 'মদন', 'madanup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4495, 'Chandgaw', 'চানগাঁও', 'chandgawup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4496, 'Kytail', 'কাইটাল', 'kytailup.netrokona.gov.bd', 486, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4497, 'Krishnapur', 'কৃষ্ণপুর', 'krishnapurup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4498, 'Nogor', 'নগর', 'nogorup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4499, 'Chakua', 'চাকুয়া', 'chakuaup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4500, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuriup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4501, 'Mendipur', 'মেন্দিপুর', 'mendipurup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4502, 'Gazipur', 'গাজীপুর', 'gazipurup.netrokona.gov.bd', 487, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4503, 'Koilati', 'কৈলাটী', 'koilatiup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4504, 'Najirpur', 'নাজিরপুর', 'najirpurup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4505, 'Pogla', 'পোগলা', 'poglaup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4506, 'Kolmakanda', 'কলমাকান্দা', 'kolmakandaup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4507, 'Rongchati', 'রংছাতি', 'rongchatiup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4508, 'Lengura', 'লেংগুরা', 'lenguraup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4509, 'Borokhapon', 'বড়খাপন', 'borokhaponup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4510, 'Kharnoi', 'খারনৈ', 'kharnoiup.netrokona.gov.bd', 488, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4511, 'Borokashia Birampur', 'বড়কাশিয়া বিরামপুর', 'borokashiabirampurup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4512, 'Borotoli Banihari', 'বড়তলী বানিহারী', 'borotolibanihariup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4513, 'Tetulia', 'তেতুলিয়া', 'tetuliaup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4514, 'Maghan Siadar', 'মাঘান সিয়াদার', 'maghansiadarup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4515, 'Somaj Sohildeo', 'সমাজ সহিলদেও', 'somajsohildeoup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4516, 'Suair', 'সুয়াইর', 'suairup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4517, 'Gaglajur', 'গাগলাজুর', 'gaglajurup.netrokona.gov.bd', 489, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4518, 'Khalishaur', 'খলিশাউড়', 'khalishaurup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4519, 'Ghagra', 'ঘাগড়া', 'ghagraup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4520, 'Jaria', 'জারিয়া', 'jariaup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4521, 'Narandia', 'নারান্দিয়া', 'narandiaup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4522, 'Bishkakuni', 'বিশকাকুনী', 'bishkakuniup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4523, 'Bairaty', 'বৈরাটী', 'bairaty.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4524, 'Hogla', 'হোগলা', 'hoglaup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4525, 'Gohalakanda', 'গোহালাকান্দা', 'gohalakandaup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4526, 'Dhalamulgaon', 'ধলামুলগাঁও', 'dhalamulgaonup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4527, 'Agia', 'আগিয়া', 'agia.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4528, 'Purbadhala', 'পূর্বধলা', 'purbadhalaup.netrokona.gov.bd', 490, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4529, 'Chollisha', 'চল্লিশা', 'chollishaup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4530, 'Kailati', 'কাইলাটি', 'kailatiup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4531, 'Dokkhin Bishiura', 'দক্ষিণ বিশিউড়া', 'dokkhinbishiuraup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4532, 'Modonpur', 'মদনপুর', 'modonpurup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4533, 'Amtola', 'আমতলা', 'amtolaup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4534, 'Lokkhiganj', 'লক্ষীগঞ্জ', 'lokkhiganj.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4535, 'Singher Bangla', 'সিংহের বাংলা', 'singherbanglaup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4536, 'Thakurakona', 'ঠাকুরাকোণা', 'thakurakonaup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4537, 'Mougati', 'মৌগাতি', 'mougatiup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4538, 'Rouha', 'রৌহা', 'rouhaup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4539, 'Medni', 'মেদনী', 'medniup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(4540, 'Kaliara Babragati', 'কালিয়ারা গাবরাগাতি', 'kaliaragabragatiup.netrokona.gov.bd', 491, '2026-03-09 16:19:34', '2026-03-09 16:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` bigint NOT NULL DEFAULT '1773073145',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_otp` bigint NOT NULL DEFAULT '0',
  `password_otp_hits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `login_request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `login_permit` enum('allowed','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'allowed',
  `role` enum('super-admin','admin','teacher','staff','governing','committee','accountant','receptionist','librarian','author','student','guardian') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'staff',
  `designation_id` bigint UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `serial`, `email`, `email_verified_at`, `password`, `password_token`, `password_otp`, `password_otp_hits`, `login_request`, `login_permit`, `role`, `designation_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Teacher', 1773073174, 'teacher@example.com', '2026-03-09 16:19:34', '$2y$12$nJY4V.3kURTHAFzAHheZb.oSLeHU4wOjfLRScvHtSzXzuCAmO.tL2', NULL, 0, '0', '0', 'allowed', 'teacher', NULL, NULL, '2026-03-09 16:19:34', '2026-03-09 16:19:34'),
(2, 'Staff Member', 1773073175, 'staff@example.com', '2026-03-09 16:19:35', '$2y$12$Twe2PoH/S4Sk3xWWHzwF4eAQDMv5Av3Os9xagq3Q/CCkzb5UUVSgq', NULL, 0, '0', '0', 'allowed', 'staff', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(3, 'Governing Body', 1773073175, 'governing@example.com', '2026-03-09 16:19:35', '$2y$12$dUZKLLfBY0eWneQFDx.KAeqIjag0knAvp.6dhqMoSwoRkCbbZWR8i', NULL, 0, '0', '0', 'allowed', 'governing', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(4, 'Committee Member', 1773073175, 'comity@example.com', '2026-03-09 16:19:35', '$2y$12$6Y3s8ubkmtDmMri9ZW4hbeHUUw5r0bN4xWxlcwvR3O9W2eWSJW9oq', NULL, 0, '0', '0', 'allowed', 'committee', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(5, 'Accountant User', 1773073175, 'accountant@example.com', '2026-03-09 16:19:35', '$2y$12$6wsZABB2a76Kak7sBOdRfuCcV4lJbE0PI7MwmuhVEoZWISYLnvAhC', NULL, 0, '0', '0', 'allowed', 'accountant', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(6, 'Receptionist User', 1773073175, 'receptionist@example.com', '2026-03-09 16:19:35', '$2y$12$EKGQo/Pfhml6YaiY16X/RO1r176.CEwR.s6FS/flmziemwhWJ.QpW', NULL, 0, '0', '0', 'allowed', 'receptionist', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(7, 'Librarian User', 1773073175, 'librarian@example.com', '2026-03-09 16:19:35', '$2y$12$lGrWZz8IMOy0X.gIWjvmuOfXsjvifOPSHdZb1HTJ7SpPiBbuhHFB.', NULL, 0, '0', '0', 'allowed', 'librarian', NULL, NULL, '2026-03-09 16:19:35', '2026-03-09 16:19:35'),
(8, 'Cuddy', 1773073176, 'rowling@example.com', '2026-03-09 16:19:36', '$2y$12$3Z.YL26OrFy/icPe7fgbLun3TjzZbRCtJV322IwHSfE.K5lQCnC2O', NULL, 0, '0', '0', 'allowed', 'author', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(9, 'George', 1773073176, 'george@example.com', '2026-03-09 16:19:36', '$2y$12$nmdvnWAQp/HRH598oUn1wOTT3pD.sCso9G1/uBIyMPJmIoFebvmR2', NULL, 0, '0', '0', 'allowed', 'author', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(10, 'Georgel', 1773073176, 'georgel@example.com', '2026-03-09 16:19:36', '$2y$12$/BShmfqym0foegAtAFhUz.RC20ZSOrKXbDOnFCrxdwcfDzyzheaTa', NULL, 0, '0', '0', 'allowed', 'guardian', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(11, 'Agatha', 1773073176, 'agatha@example.com', '2026-03-09 16:19:36', '$2y$12$yFgvdMan/Ld3o/3ILeviO.EG6equcEdFj1MA9Im4vB2QkqM2UOsZq', NULL, 0, '0', '0', 'allowed', 'author', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(12, 'Abdur Rahman', 1773073176, 'abdur@example.com', '2026-03-09 16:19:36', '$2y$12$ukxKFaRC29z5RBFOMFru9OxhRyPn9r4hFU.Zi/bil4TQ6MkynNnZG', NULL, 0, '0', '0', 'allowed', 'student', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(13, 'Beny howel', 1773073176, 'benny@example.com', '2026-03-09 16:19:36', '$2y$12$P9WGjQKbimemeM2gwbLYRO1lZi4NNDSiGXPbDgdy6CxuSjt55SaK6', NULL, 0, '0', '0', 'allowed', 'student', NULL, NULL, '2026-03-09 16:19:36', '2026-03-09 16:19:36'),
(14, 'Monty sing', 1773073177, 'msing@example.com', '2026-03-09 16:19:37', '$2y$12$0r2nywrOR/96F6iKAbTyU.md87scwnmDASxg9bd4xagripjYRXUom', NULL, 0, '0', '0', 'allowed', 'student', NULL, NULL, '2026-03-09 16:19:37', '2026-03-09 16:19:37'),
(15, 'Sompa islam', 1773073177, 'silam@example.com', '2026-03-09 16:19:37', '$2y$12$xTLlSl3NzfKUzFiYSGaqb.vakeTvofW1Mpj8ysQFvSjHTW9HOItTu', NULL, 0, '0', '0', 'allowed', 'student', NULL, NULL, '2026-03-09 16:19:37', '2026-03-09 16:19:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_supplier_id_foreign` (`supplier_id`),
  ADD KEY `assets_added_by_foreign` (`added_by`),
  ADD KEY `assets_canceled_by_foreign` (`canceled_by`),
  ADD KEY `assets_accepted_by_foreign` (`accepted_by`),
  ADD KEY `assets_returned_by_foreign` (`returned_by`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `assignments_subject_id_foreign` (`subject_id`),
  ADD KEY `assignments_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_teacher_id_foreign` (`teacher_id`),
  ADD KEY `attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `attendances_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `attendances_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_book_shelf_id_foreign` (`book_shelf_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_name_unique` (`name`);

--
-- Indexes for table `book_reservations`
--
ALTER TABLE `book_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_reservations_user_id_foreign` (`user_id`),
  ADD KEY `book_reservations_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_shelves`
--
ALTER TABLE `book_shelves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_user_id_foreign` (`user_id`),
  ADD KEY `certificates_edu_class_id_foreign` (`edu_class_id`);

--
-- Indexes for table `class_promotions`
--
ALTER TABLE `class_promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_promotions_student_id_foreign` (`student_id`),
  ADD KEY `class_promotions_from_class_id_foreign` (`from_class_id`),
  ADD KEY `class_promotions_to_class_id_foreign` (`to_class_id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routines_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `class_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `class_routines_class_room_id_foreign` (`class_room_id`),
  ADD KEY `class_routines_edu_section_id_foreign` (`edu_section_id`),
  ADD KEY `class_routines_edu_group_id_foreign` (`edu_group_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu_classes`
--
ALTER TABLE `edu_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_classes_department_id_foreign` (`department_id`);

--
-- Indexes for table `edu_groups`
--
ALTER TABLE `edu_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_groups_edu_section_id_foreign` (`edu_section_id`);

--
-- Indexes for table `edu_sections`
--
ALTER TABLE `edu_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_sections_edu_class_id_foreign` (`edu_class_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_code_unique` (`code`),
  ADD KEY `exams_edu_class_id_foreign` (`edu_class_id`);

--
-- Indexes for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_admit_cards_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_admit_cards_student_id_foreign` (`student_id`);

--
-- Indexes for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_fees_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `exam_marksheets`
--
ALTER TABLE `exam_marksheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_marksheets_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_marksheets_student_id_foreign` (`student_id`);

--
-- Indexes for table `exam_marksheet_items`
--
ALTER TABLE `exam_marksheet_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_marksheet_items_exam_marksheet_id_foreign` (`exam_marksheet_id`),
  ADD KEY `exam_marksheet_items_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `exam_subjects`
--
ALTER TABLE `exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_subjects_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_subjects_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_head_id_foreign` (`expense_head_id`),
  ADD KEY `expenses_added_by_foreign` (`added_by`);

--
-- Indexes for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_heads_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_collections_collected_by_foreign` (`collected_by`),
  ADD KEY `fee_collections_fee_id_foreign` (`fee_id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_heads_user_id_foreign` (`user_id`),
  ADD KEY `fee_heads_fee_group_id_foreign` (`fee_group_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_contents`
--
ALTER TABLE `gallery_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_contents_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `gateway_configurations`
--
ALTER TABLE `gateway_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holydays`
--
ALTER TABLE `holydays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installed_modules`
--
ALTER TABLE `installed_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `installed_modules_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_number_unique` (`invoice_number`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_management`
--
ALTER TABLE `leave_management`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_management_leaved_by_foreign` (`leaved_by`),
  ADD KEY `leave_management_student_id_foreign` (`student_id`),
  ADD KEY `leave_management_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news_notices`
--
ALTER TABLE `news_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_notices_created_by_foreign` (`created_by`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_student_id_foreign` (`student_id`),
  ADD KEY `notifications_parent_model_id_foreign` (`parent_model_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_settings_division_id_foreign` (`division_id`),
  ADD KEY `site_settings_district_id_foreign` (`district_id`),
  ADD KEY `site_settings_thana_id_foreign` (`thana_id`),
  ADD KEY `site_settings_union_id_foreign` (`union_id`),
  ADD KEY `site_settings_country_id_foreign` (`country_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_shortcode_unique` (`shortcode`),
  ADD KEY `sliders_page_id_foreign` (`page_id`),
  ADD KEY `sliders_post_id_foreign` (`post_id`);

--
-- Indexes for table `slider_contents`
--
ALTER TABLE `slider_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_contents_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `sms_active_methods`
--
ALTER TABLE `sms_active_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_active_methods_sms_method_id_foreign` (`sms_method_id`);

--
-- Indexes for table `sms_methods`
--
ALTER TABLE `sms_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_attendances_user_id_foreign` (`user_id`),
  ADD KEY `staff_attendances_attendance_by_foreign` (`attendance_by`),
  ADD KEY `staff_attendances_attendance_edited_by_foreign` (`attendance_edited_by`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_fee_head_id_foreign` (`fee_head_id`),
  ADD KEY `student_fees_student_id_foreign` (`student_id`),
  ADD KEY `student_fees_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `student_fees_edu_section_id_foreign` (`edu_section_id`),
  ADD KEY `student_fees_edu_group_id_foreign` (`edu_group_id`),
  ADD KEY `student_fees_student_profile_id_foreign` (`student_profile_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_profiles_parent_id_foreign` (`parent_id`),
  ADD KEY `student_profiles_student_id_foreign` (`student_id`),
  ADD KEY `student_profiles_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `student_profiles_division_id_foreign` (`division_id`),
  ADD KEY `student_profiles_district_id_foreign` (`district_id`),
  ADD KEY `student_profiles_thana_id_foreign` (`thana_id`),
  ADD KEY `student_profiles_union_id_foreign` (`union_id`),
  ADD KEY `student_profiles_edu_section_id_foreign` (`edu_section_id`),
  ADD KEY `student_profiles_edu_group_id_foreign` (`edu_group_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_added_by_foreign` (`added_by`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thanas_district_id_foreign` (`district_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unions_thana_id_foreign` (`thana_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_designation_id_foreign` (`designation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_reservations`
--
ALTER TABLE `book_reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_shelves`
--
ALTER TABLE `book_shelves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_promotions`
--
ALTER TABLE `class_promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `edu_classes`
--
ALTER TABLE `edu_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `edu_groups`
--
ALTER TABLE `edu_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edu_sections`
--
ALTER TABLE `edu_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_fees`
--
ALTER TABLE `exam_fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_marksheets`
--
ALTER TABLE `exam_marksheets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_marksheet_items`
--
ALTER TABLE `exam_marksheet_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_subjects`
--
ALTER TABLE `exam_subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_heads`
--
ALTER TABLE `expense_heads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_contents`
--
ALTER TABLE `gallery_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway_configurations`
--
ALTER TABLE `gateway_configurations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holydays`
--
ALTER TABLE `holydays`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `installed_modules`
--
ALTER TABLE `installed_modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_management`
--
ALTER TABLE `leave_management`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `news_notices`
--
ALTER TABLE `news_notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_contents`
--
ALTER TABLE `slider_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_active_methods`
--
ALTER TABLE `sms_active_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_methods`
--
ALTER TABLE `sms_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4541;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_accepted_by_foreign` FOREIGN KEY (`accepted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_canceled_by_foreign` FOREIGN KEY (`canceled_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_returned_by_foreign` FOREIGN KEY (`returned_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_book_shelf_id_foreign` FOREIGN KEY (`book_shelf_id`) REFERENCES `book_shelves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_reservations`
--
ALTER TABLE `book_reservations`
  ADD CONSTRAINT `book_reservations_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_promotions`
--
ALTER TABLE `class_promotions`
  ADD CONSTRAINT `class_promotions_from_class_id_foreign` FOREIGN KEY (`from_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_promotions_to_class_id_foreign` FOREIGN KEY (`to_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_edu_group_id_foreign` FOREIGN KEY (`edu_group_id`) REFERENCES `edu_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_edu_section_id_foreign` FOREIGN KEY (`edu_section_id`) REFERENCES `edu_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edu_classes`
--
ALTER TABLE `edu_classes`
  ADD CONSTRAINT `edu_classes_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edu_groups`
--
ALTER TABLE `edu_groups`
  ADD CONSTRAINT `edu_groups_edu_section_id_foreign` FOREIGN KEY (`edu_section_id`) REFERENCES `edu_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edu_sections`
--
ALTER TABLE `edu_sections`
  ADD CONSTRAINT `edu_sections_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  ADD CONSTRAINT `exam_admit_cards_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_admit_cards_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD CONSTRAINT `exam_fees_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_marksheets`
--
ALTER TABLE `exam_marksheets`
  ADD CONSTRAINT `exam_marksheets_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_marksheets_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_marksheet_items`
--
ALTER TABLE `exam_marksheet_items`
  ADD CONSTRAINT `exam_marksheet_items_exam_marksheet_id_foreign` FOREIGN KEY (`exam_marksheet_id`) REFERENCES `exam_marksheets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_marksheet_items_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_subjects`
--
ALTER TABLE `exam_subjects`
  ADD CONSTRAINT `exam_subjects_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `exam_subjects_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_expense_head_id_foreign` FOREIGN KEY (`expense_head_id`) REFERENCES `expense_heads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD CONSTRAINT `expense_heads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD CONSTRAINT `fee_collections_collected_by_foreign` FOREIGN KEY (`collected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_collections_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `student_fees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD CONSTRAINT `fee_heads_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_heads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gallery_contents`
--
ALTER TABLE `gallery_contents`
  ADD CONSTRAINT `gallery_contents_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_management`
--
ALTER TABLE `leave_management`
  ADD CONSTRAINT `leave_management_leaved_by_foreign` FOREIGN KEY (`leaved_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_management_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_management_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_notices`
--
ALTER TABLE `news_notices`
  ADD CONSTRAINT `news_notices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_parent_model_id_foreign` FOREIGN KEY (`parent_model_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD CONSTRAINT `site_settings_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `site_settings_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `site_settings_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `site_settings_thana_id_foreign` FOREIGN KEY (`thana_id`) REFERENCES `thanas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `site_settings_union_id_foreign` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_contents`
--
ALTER TABLE `slider_contents`
  ADD CONSTRAINT `slider_contents_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_active_methods`
--
ALTER TABLE `sms_active_methods`
  ADD CONSTRAINT `sms_active_methods_sms_method_id_foreign` FOREIGN KEY (`sms_method_id`) REFERENCES `sms_methods` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD CONSTRAINT `staff_attendances_attendance_by_foreign` FOREIGN KEY (`attendance_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_attendances_attendance_edited_by_foreign` FOREIGN KEY (`attendance_edited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD CONSTRAINT `student_fees_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_edu_group_id_foreign` FOREIGN KEY (`edu_group_id`) REFERENCES `edu_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_edu_section_id_foreign` FOREIGN KEY (`edu_section_id`) REFERENCES `edu_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_fee_head_id_foreign` FOREIGN KEY (`fee_head_id`) REFERENCES `fee_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_student_profile_id_foreign` FOREIGN KEY (`student_profile_id`) REFERENCES `student_profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_edu_group_id_foreign` FOREIGN KEY (`edu_group_id`) REFERENCES `edu_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_edu_section_id_foreign` FOREIGN KEY (`edu_section_id`) REFERENCES `edu_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_thana_id_foreign` FOREIGN KEY (`thana_id`) REFERENCES `thanas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_profiles_union_id_foreign` FOREIGN KEY (`union_id`) REFERENCES `unions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thanas`
--
ALTER TABLE `thanas`
  ADD CONSTRAINT `thanas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unions`
--
ALTER TABLE `unions`
  ADD CONSTRAINT `unions_thana_id_foreign` FOREIGN KEY (`thana_id`) REFERENCES `thanas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
