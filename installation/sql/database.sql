-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2025 at 02:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edumart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '928n1lHm8J7Ffl', '1', 'Grant Cantu', 'Blake Snider', '814', '29-Jan-2003', 'women', 'Hakeem Moses', 'Cameron Vasquez', '290', '26-Jun-2007', '01892311511', 'Nehru Richards', 'Maggie David', '148', '05-Oct-2015', '445', 'Sylhet', 'Sylhet', 'Kanaighat', 'Digirpar Purbo', 'Suscipit ut harum no', 'Ut lorem impedit la', 'Dhaka', 'Madaripur', 'Kalkini', 'Ramjanpur', 'Aut qui consequatur ', 'Qui quia rerum tempo', 'Rajshahi', 'Bogura', 'Sherpur', 'Grady Sargent', 'Autem eveniet corpo', 'CGPA', '2005', 'Quia eu deserunt ull', 'Maite Noble', '895', 'Quod amet modi exer', 'Sunt animi repellen', 'brother', 'Davis Meyer', 'Karen Mcclain', '781', '998', '31-Oct-1970', 'guardian', 'yes', 'no', 'yes', 'no', '/public/resource/images/c68658b8fdf6770207b4cd72319de88d.png', '/public/resource/images/34a4c4cf176b90ea8d92b79a833a8fec.jpg', 'approved', '', NULL, '2025-10-19 14:24:23', '2023-11-23 13:31:08'),
(2, '09J6FGk5vIMEAJ_1676332561', '2', 'শিক্ষার্থীর নাম', 'শিক্ষার্থীর নাম', '295', '20-Sep-2016', 'women', 'পিতার নাম', 'Eos officia nesciun', 'In voluptatem Tempo', '20-Aug-2020', '01892311511', 'মাতার নাম ', 'Omnis consequatur E', 'Ab sunt in lorem ni', '18-Sep-2018', 'Velit temporibus qui', 'খুলনা', 'খুলনা', 'তেরখাদা', 'সাচিয়াদাহ', 'Et commodi ut eos a', 'Quidem non vel saepe', 'রংপুর', 'রংপুর', 'মিঠাপুকুর', 'চেংমারী', 'Eum omnis est occae', 'Ducimus et omnis nu', 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'কমলনগর', 'Beatae eum animi ve', 'Reprehenderit minim ', 'CGPA', '1974', 'Quis laboris eiusmod', 'Soluta minima doloru', 'Dolores nulla quisqu', 'Occaecat sint ipsa ', 'Non repudiandae volu', 'others', 'Laboriosam quae off', 'Quibusdam ex est ull', 'Saepe vel ut ex at i', 'Et mollit voluptatib', '20-Jul-1979', 'mother', 'yes', 'yes', 'yes', 'yes', '/public/resource/images/bee5f6b7d06ea92bb5fbf05633ec440c.png', '/public/resource/images/3ebbb3d1ee664b2ff098b7f6aa181d87.png', 'pending', '', NULL, '2025-10-19 14:24:23', '2023-11-23 13:35:52');

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

INSERT INTO `attendances` (`id`, `student_id`, `subject_id`, `edu_class_id`, `class_room_id`, `attendance_date`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2025-10-14', 'Present', 'On time', NULL, NULL),
(2, 2, 2, 1, 1, '2025-10-14', 'Absent', 'Sick leave', NULL, NULL),
(3, 3, 3, 2, 2, '2025-10-14', 'Late', 'Arrived 10 minutes late', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `bio`, `dob`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'J.K.', 'Rowling', 'jk.rowling@example.com', 'British author, best known for the Harry Potter series.', '1965-07-31', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(2, 'George', 'Orwell', 'george.orwell@example.com', 'English novelist and essayist, famous for 1984 and Animal Farm.', '1903-06-25', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(3, 'Agatha', 'Christie', 'agatha.christie@example.com', 'English writer known for her 66 detective novels and short stories.', '1890-09-15', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL);

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
(1, 'Harry Potter and the Philosopher\'s Stone', 1, 1, NULL, '9780747532699', 1997, 223, 'The first book in the Harry Potter series.', 'available', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(2, '1984', 2, 3, NULL, '9780451524935', 1949, 328, 'A dystopian novel set in a totalitarian society.', 'available', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(3, 'Murder on the Orient Express', 3, 4, NULL, '9780007119318', 1934, 256, 'Detective Hercule Poirot investigates a murder on a train.', 'available', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL);

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
(1, 'Fiction', 'Literary works invented by the imagination.', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(2, 'Non-Fiction', 'Based on real events and facts.', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(3, 'Science Fiction', 'Fiction based on futuristic science and technology.', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(4, 'Mystery', 'Fiction dealing with the solution of a crime or unraveling secrets.', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(5, 'Biography', 'An account of someone’s life written by another person.', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_reservations`
--

CREATE TABLE `book_reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `reserved_at` date NOT NULL DEFAULT '2025-10-19',
  `expires_at` date DEFAULT NULL,
  `status` enum('active','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_reservations`
--

INSERT INTO `book_reservations` (`id`, `user_id`, `book_id`, `reserved_at`, `expires_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-10-19', '2025-10-26', 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24');

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
(1, 'Shelf A', 'First Floor - Left Wing', 100, 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(2, 'Shelf B', 'First Floor - Right Wing', 120, 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL),
(3, 'Shelf C', 'Second Floor - Left Wing', 150, 'active', '2025-10-19 08:24:24', '2025-10-19 08:24:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'General', 'general', 'General purpose category', 1, '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 'Sports', 'sports', 'Sports-related category', 1, '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(3, 'Football', 'football', 'All about football', 1, '2025-10-19 08:24:23', '2025-10-19 08:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `issue_date` date NOT NULL DEFAULT '2025-10-19',
  `expiry_date` date DEFAULT NULL,
  `status` enum('active','expired','revoked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `user_id`, `issue_date`, `expiry_date`, `status`, `template`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Completion Certificate', 1, '2025-10-19', '2026-10-19', 'active', 'default_template.pdf', 'Issued for completing the course successfully.', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(2, 'Excellence Certificate', 1, '2025-10-19', NULL, 'active', 'excellence_template.pdf', 'Issued for outstanding performance.', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL);

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
  `subject_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `edu_class_id`, `subject_id`, `teacher_id`, `day`, `start_time`, `end_time`, `room`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 'Monday', '09:00:00', '10:00:00', 'Room 101', NULL, NULL),
(2, 1, 2, 3, 'Monday', '10:15:00', '11:15:00', 'Room 102', NULL, NULL),
(3, 2, 3, 1, 'Tuesday', '09:00:00', '10:00:00', 'Lab 1', NULL, NULL);

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
(1, 'John Doe', 'john@example.com', 'Inquiry about library membership', 'Hello, I want to know more about your membership plans.', 'pending', NULL, '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(2, 'Jane Smith', 'jane@example.com', 'Book request', 'Can you get a copy of \"The Great Gatsby\" for me?', 'pending', NULL, '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL);

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
-- Table structure for table `edu_classes`
--

CREATE TABLE `edu_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edu_classes`
--

INSERT INTO `edu_classes` (`id`, `name`, `section`, `order`, `capacity`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Class 1', 'A', 1, NULL, NULL, NULL, NULL),
(2, 'Class 2', 'A', 2, NULL, NULL, NULL, NULL),
(3, 'Class 3', 'A', 3, NULL, NULL, NULL, NULL),
(4, 'Class 4', 'A', 4, NULL, NULL, NULL, NULL),
(5, 'Class 5', 'A', 5, NULL, NULL, NULL, NULL),
(6, 'Class 6', 'Science', 6, NULL, NULL, NULL, NULL),
(7, 'Class 7', 'Science', 7, NULL, NULL, NULL, NULL),
(8, 'Class 8', 'Commerce', 8, NULL, NULL, NULL, NULL),
(9, 'Class 9', 'Arts', 9, NULL, NULL, NULL, NULL),
(10, 'Class 10', 'Science', 10, NULL, NULL, NULL, NULL);

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
  `year` year NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `status` enum('Scheduled','Completed','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Scheduled',
  `type` enum('Class Test','Mid-Term','Final','Quiz','Practical','Other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `code`, `year`, `session`, `edu_class_id`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Mid Term', 'MID2025-C1', '2025', '2024-2025', 1, 'Scheduled', 'Mid-Term', NULL, NULL),
(2, 'Final Exam', 'FIN2025-C1', '2025', '2024-2025', 1, 'Scheduled', 'Final', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_admit_cards`
--

CREATE TABLE `exam_admit_cards` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `roll_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_room_id` bigint UNSIGNED DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `status` enum('Issued','Pending','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Issued',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_admit_cards`
--

INSERT INTO `exam_admit_cards` (`id`, `exam_id`, `student_id`, `roll_number`, `seat_number`, `class_room_id`, `issue_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'C1-001', 'A1', 1, '2025-10-25', 'Issued', NULL, NULL),
(2, 1, 2, 'C1-002', 'A2', 1, '2025-10-25', 'Issued', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_fees`
--

CREATE TABLE `exam_fees` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `late_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_date` date DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_fees`
--

INSERT INTO `exam_fees` (`id`, `exam_id`, `edu_class_id`, `amount`, `late_fee`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 500.00, 100.00, '2025-10-30', 'Active', NULL, NULL),
(2, 1, 2, 600.00, 150.00, '2025-10-30', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `total_marks` int DEFAULT NULL,
  `obtained_marks` int DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pass','fail','incomplete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'incomplete',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `student_id`, `exam_id`, `total_marks`, `obtained_marks`, `grade`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 85, 'A', 'pass', 'Excellent performance', '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 2, 1, 100, 45, 'D', 'fail', 'Needs improvement', '2025-10-19 08:24:23', '2025-10-19 08:24:23');

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
  `mcq_marks` int NOT NULL DEFAULT '0',
  `writing_marks` int NOT NULL DEFAULT '0',
  `practical_marks` int NOT NULL DEFAULT '0',
  `attendance_marks` int NOT NULL DEFAULT '0',
  `pass_marks` decimal(8,2) NOT NULL DEFAULT '40.00',
  `total_marks` int NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_subjects`
--

INSERT INTO `exam_subjects` (`id`, `exam_id`, `subject_id`, `class_room_id`, `exam_date`, `start_time`, `end_time`, `mcq_marks`, `writing_marks`, `practical_marks`, `attendance_marks`, `pass_marks`, `total_marks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-03-01', '10:00:00', '12:00:00', 20, 60, 10, 10, 40.00, 100, NULL, NULL),
(2, 1, 2, 1, '2025-03-02', '10:00:00', '12:00:00', 25, 50, 15, 10, 40.00, 100, NULL, NULL),
(3, 2, 3, NULL, '2025-04-01', '09:00:00', '11:00:00', 30, 50, 10, 10, 40.00, 100, NULL, NULL);

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
(1, 'INV-WS6ROX', 1, 150.00, 'pending', '2025-10-26', 'Library membership fee', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(2, 'INV-HDQDEN', 1, 75.50, 'paid', '2025-10-22', 'Book late return fine', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_14_062236_create_roles_table', 1),
(5, '2025_10_14_062251_create_permissions_table', 1),
(6, '2025_10_14_062321_create_profiles_table', 1),
(7, '2025_10_14_062656_create_departments_table', 1),
(8, '2025_10_14_063122_create_edu_classes_table', 1),
(9, '2025_10_14_063226_create_designations_table', 1),
(10, '2025_10_14_063407_create_events_table', 1),
(11, '2025_10_14_063421_create_holydays_table', 1),
(12, '2025_10_14_063441_create_subjects_table', 1),
(13, '2025_10_14_063442_create_class_rooms_table', 1),
(14, '2025_10_14_063449_create_class_routines_table', 1),
(15, '2025_10_14_063525_create_attendances_table', 1),
(16, '2025_10_14_063535_create_assignments_table', 1),
(17, '2025_10_14_063750_create_exams_table', 1),
(18, '2025_10_14_063755_create_exam_subjects_table', 1),
(19, '2025_10_14_063758_create_exam_fees_table', 1),
(20, '2025_10_14_063813_create_exam_admit_cards_table', 1),
(21, '2025_10_14_064027_create_exam_results_table', 1),
(22, '2025_10_14_064111_create_news_notices_table', 1),
(23, '2025_10_14_064124_create_notifications_table', 1),
(24, '2025_10_14_064150_create_categories_table', 1),
(25, '2025_10_14_064256_create_posts_table', 1),
(26, '2025_10_14_064331_create_staff_table', 1),
(27, '2025_10_14_064544_create_admissions_table', 1),
(28, '2025_10_14_064836_create_authors_table', 1),
(29, '2025_10_14_064844_create_book_shelves_table', 1),
(30, '2025_10_14_065107_create_book_categories_table', 1),
(31, '2025_10_14_065114_create_books_table', 1),
(32, '2025_10_14_065350_create_book_reservations_table', 1),
(33, '2025_10_14_065521_create_sliders_table', 1),
(34, '2025_10_14_065530_create_slider_contents_table', 1),
(35, '2025_10_14_065616_create_invoices_table', 1),
(36, '2025_10_14_065632_create_transactions_table', 1),
(37, '2025_10_14_065705_create_salaries_table', 1),
(38, '2025_10_14_065956_create_pages_table', 1),
(39, '2025_10_14_070007_create_contacts_table', 1),
(40, '2025_10_14_070048_create_backups_table', 1),
(41, '2025_10_14_070124_create_gateway_configurations_table', 1),
(42, '2025_10_14_070243_create_certificates_table', 1),
(43, '2025_10_18_191437_create_site_settings_table', 1),
(44, '2025_10_18_203514_create_languages_table', 1);

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
(1, 'School Reopening Announcement', 'The school will reopen on 1st November as per government guidelines.', 'notice', '2025-10-19', NULL, 'published', 1, '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 'Sports Week Event', 'Annual sports week will be held from 10th to 15th December.', 'news', '2025-10-19', NULL, 'published', 1, '2025-10-19 08:24:23', '2025-10-19 08:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
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

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'Welcome to the platform!', 'Your account has been successfully created.', '/dashboard', 0, '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 2, 'New Notice Published', 'A new school notice has been posted. Check it out!', '/news-notices/1', 0, '2025-10-19 08:24:23', '2025-10-19 08:24:23');

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
(1, 'About Us', 'about-us', '<p>Welcome to our library. We offer a wide range of books and resources.</p>', 'About Our Library', 'Learn more about our library and services.', 'published', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(2, 'Contact', 'contact', '<p>Contact us at contact@library.com or call +123456789.</p>', 'Contact Us', 'Get in touch with our library team.', 'published', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(3, 'Privacy Policy', 'privacy-policy', '<p>This is our privacy policy page.</p>', 'Privacy Policy', 'Read our privacy policy.', 'published', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL);

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
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'Welcome to Our Platform', 'welcome-to-our-platform', 'This is the first official post on our platform.', 'Thank you for joining us! This post announces the beginning of something great.', 1, 1, NULL, 'published', '2025-10-19 08:24:23', '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 'Maintenance Scheduled', 'maintenance-scheduled', 'Scheduled maintenance will occur this weekend.', 'Please be advised that the system will be down between 2 AM - 4 AM for routine maintenance.', 1, 1, NULL, 'published', '2025-10-19 08:24:23', '2025-10-19 08:24:23', '2025-10-19 08:24:23');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `avatar`, `first_name`, `last_name`, `phone`, `gender`, `date_of_birth`, `address`, `city`, `state`, `country`, `post`, `village`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'John', 'Doe', '1234567890', 'male', '1990-05-15', '123 Main Street', 'Dhaka', 'Dhaka', 'Bangladesh', NULL, NULL, NULL, NULL),
(2, 2, NULL, 'Jane', 'Smith', '0987654321', 'female', '1995-07-20', '456 College Road', 'Chittagong', 'Chittagong', 'Bangladesh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 50000.00, 5000.00, 2000.00, 53000.00, '2025-10-19', 'paid', 'Monthly salary for October', '2025-10-19 08:24:25', '2025-10-19 08:24:25'),
(2, 1, 50000.00, 4500.00, 1500.00, 53000.00, '2025-09-19', 'paid', 'Monthly salary for September', '2025-10-19 08:24:25', '2025-10-19 08:24:25');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `logo`, `favicon`, `theme`, `contact_email`, `contact_phone`, `address`, `social_links`, `created_at`, `updated_at`) VALUES
(1, 'My Awesome Website', 'uploads/logo.png', 'uploads/favicon.ico', 'default', 'admin@example.com', '+1234567890', '123 Main Street, City, Country', '{\"twitter\": \"https://twitter.com/example\", \"facebook\": \"https://facebook.com/example\", \"instagram\": \"https://instagram.com/example\"}', '2025-10-19 08:24:25', '2025-10-19 08:24:25');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `type`, `status`, `shortcode`, `created_at`, `updated_at`) VALUES
(1, 'Homepage Slider', 'image', 'active', 'WdXNVclq', '2025-10-19 08:24:25', '2025-10-19 08:24:25'),
(2, 'Promo Video Slider', 'video', 'active', 'iOSlRlTh', '2025-10-19 08:24:25', '2025-10-19 08:24:25');

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
(1, 1, 'Welcome to Our Library', 'Discover new books and resources.', 'sliders/slider1.jpg', 'image', 1, 'active', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL),
(2, 1, 'Join Our Membership', 'Get access to exclusive content.', 'sliders/slider2.mp4', 'video', 2, 'active', '2025-10-19 08:24:25', '2025-10-19 08:24:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','resigned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `phone`, `gender`, `dob`, `position`, `department`, `address`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', '01234567890', 'male', '1990-05-12', 'Teacher', 'Mathematics', '123 Main Street', NULL, 'active', '2025-10-19 08:24:23', '2025-10-19 08:24:23'),
(2, 'Sarah Khan', 'sarah@example.com', '01987654321', 'female', '1992-09-20', 'Accountant', 'Finance', '456 Elm Road', NULL, 'active', '2025-10-19 08:24:23', '2025-10-19 08:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu_class_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `edu_class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Mathematics', 'MATH101', 1, 3, NULL, NULL),
(2, 'English', 'ENG101', 1, 1, NULL, NULL),
(3, 'Physics', 'PHY101', 1, 2, NULL, NULL),
(4, 'Chemistry', 'CHEM101', 2, 1, NULL, NULL),
(5, 'Accounting', 'ACC101', 1, 3, NULL, NULL);

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
(1, 1, 1, 150.00, 'debit', 'cash', 'completed', 'Library membership fee payment', '2025-10-19 08:24:25', '2025-10-19 08:24:25'),
(2, 1, NULL, 20.00, 'credit', 'online', 'completed', 'Refund for overpaid fine', '2025-10-19 08:24:25', '2025-10-19 08:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_otp` bigint NOT NULL DEFAULT '0',
  `password_otp_hits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `login_request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `role` enum('admin','teacher','student','parent','staff','governing','comity','accountant','receptionist','librarian') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `password_token`, `password_otp`, `password_otp_hits`, `login_request`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@example.com', '2025-10-19 08:24:13', '$2y$12$R8q4VafANdcYamSS/wY0zu3/m33Rr4kKZ7BhSkLapZRyymRBIoVD2', NULL, 0, '0', '0', 'admin', NULL, '2025-10-19 08:24:14', '2025-10-19 08:24:14'),
(2, 'John Teacher', 'teacher@example.com', '2025-10-19 08:24:14', '$2y$12$6SB2mYj6dHo79zoFctfz5OZMBSiz7OwnN08OqkCNxF/3eQfCsJ34O', NULL, 0, '0', '0', 'teacher', NULL, '2025-10-19 08:24:15', '2025-10-19 08:24:15'),
(3, 'Jane Student', 'student@example.com', '2025-10-19 08:24:15', '$2y$12$bB8cE6cd9YMdiQ2OS8V.Wukv6F2QKcVg9F.2e8YU78NrStMbILVNe', NULL, 0, '0', '0', 'student', NULL, '2025-10-19 08:24:16', '2025-10-19 08:24:16'),
(4, 'Parent User', 'parent@example.com', '2025-10-19 08:24:16', '$2y$12$VhXDFOA5N7NQBKo1PpcYLupdCt6UhQlXQrd/aja5agoAm/.9JSiSa', NULL, 0, '0', '0', 'parent', NULL, '2025-10-19 08:24:17', '2025-10-19 08:24:17'),
(5, 'Staff Member', 'staff@example.com', '2025-10-19 08:24:17', '$2y$12$LIXOyULsUINk881.ZAokvenEBLUrm1bf1w0hM0asZh1IB45KXVn/q', NULL, 0, '0', '0', 'staff', NULL, '2025-10-19 08:24:18', '2025-10-19 08:24:18'),
(6, 'Governing Body', 'governing@example.com', '2025-10-19 08:24:18', '$2y$12$blwnjfvSEtok6T22pDQ4n.E4tbpIJ1UecFUpyuJCNKJ.Hm0KGHz2O', NULL, 0, '0', '0', 'governing', NULL, '2025-10-19 08:24:18', '2025-10-19 08:24:18'),
(7, 'Committee Member', 'comity@example.com', '2025-10-19 08:24:19', '$2y$12$GxEtig.r3DqqsLK7XF0f7.YjHHf8kDjCbn8XvxdO.WFaIGEEvk.MK', NULL, 0, '0', '0', 'comity', NULL, '2025-10-19 08:24:19', '2025-10-19 08:24:19'),
(8, 'Accountant User', 'accountant@example.com', '2025-10-19 08:24:20', '$2y$12$dbCKpVt4OWOTEVNvOXPVs.UUxjzwFOu0iIdZlF03kPpeUaQm.jw6C', NULL, 0, '0', '0', 'accountant', NULL, '2025-10-19 08:24:20', '2025-10-19 08:24:20'),
(9, 'Receptionist User', 'receptionist@example.com', '2025-10-19 08:24:20', '$2y$12$gOx2IJhT/O65sx0D0bsU1.Y1NNHcBkt0TPrLwovWbYXLGufzB26AS', NULL, 0, '0', '0', 'receptionist', NULL, '2025-10-19 08:24:21', '2025-10-19 08:24:21'),
(10, 'Librarian User', 'librarian@example.com', '2025-10-19 08:24:21', '$2y$12$CY9E9iRLxFNWsuB5G2VwL.ULLkJGCi89vlzCC9a0jPaDk51T.TBMq', NULL, 0, '0', '0', 'librarian', NULL, '2025-10-19 08:24:22', '2025-10-19 08:24:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `attendances_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `attendances_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`);

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
  ADD KEY `certificates_user_id_foreign` (`user_id`);

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
  ADD KEY `class_routines_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `edu_classes`
--
ALTER TABLE `edu_classes`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `exam_admit_cards_student_id_foreign` (`student_id`),
  ADD KEY `exam_admit_cards_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_fees_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_fees_edu_class_id_foreign` (`edu_class_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_student_id_foreign` (`student_id`),
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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `notifications_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

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
  ADD UNIQUE KEY `roles_name_unique` (`name`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_shortcode_unique` (`shortcode`);

--
-- Indexes for table `slider_contents`
--
ALTER TABLE `slider_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_contents_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_edu_class_id_foreign` (`edu_class_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`);

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
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
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
-- AUTO_INCREMENT for table `edu_classes`
--
ALTER TABLE `edu_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
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
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  ADD CONSTRAINT `exam_admit_cards_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `exam_admit_cards_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_admit_cards_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD CONSTRAINT `exam_fees_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_fees_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_subjects`
--
ALTER TABLE `exam_subjects`
  ADD CONSTRAINT `exam_subjects_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `exam_subjects_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_notices`
--
ALTER TABLE `news_notices`
  ADD CONSTRAINT `news_notices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
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
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_contents`
--
ALTER TABLE `slider_contents`
  ADD CONSTRAINT `slider_contents_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_edu_class_id_foreign` FOREIGN KEY (`edu_class_id`) REFERENCES `edu_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
