-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 12:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msr-mbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2023-05-28 05:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'msr-iriga-2023', 'Ms. San Ramon 2023', '2023-04-06 13:25:10', '2023-10-04 00:48:55'),
(2, 1, 'mbm-iriga-2023', 'Ms. Barakong Magayon 2023', '2023-04-23 09:59:52', '2023-10-04 00:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'msr-mbm-2023', 'Ms. San Ramon and Ms. Barakong Magayon 2023', '2023-04-06 13:24:04', '2023-04-06 13:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Overall Appeal ', 30, '2023-10-05 08:07:15', '2023-10-05 08:07:15'),
(2, 1, 'Mastery and Execution', 40, '2023-10-05 08:07:29', '2023-10-05 08:07:29'),
(3, 1, 'Poise and Bearing', 20, '2023-10-05 08:07:58', '2023-10-05 08:07:58'),
(4, 1, 'Audience Impact', 10, '2023-10-05 08:08:11', '2023-10-05 08:08:11'),
(5, 7, 'Overall Appeal', 30, '2023-10-05 08:09:44', '2023-10-05 08:09:44'),
(6, 7, 'Mastery and Execution', 40, '2023-10-05 08:09:58', '2023-10-05 08:09:58'),
(7, 7, 'Poise and Bearing', 20, '2023-10-05 08:10:10', '2023-10-05 08:10:10'),
(8, 7, 'Audience Impact', 10, '2023-10-05 08:11:32', '2023-10-05 08:11:32'),
(9, 2, 'Poise and Bearing', 30, '2023-10-05 08:16:10', '2023-10-05 08:16:10'),
(10, 2, 'Beauty', 30, '2023-10-05 08:16:19', '2023-10-05 08:16:19'),
(11, 2, 'Overall Appeal', 30, '2023-10-05 08:16:32', '2023-10-05 08:16:32'),
(12, 2, 'Audience Impact ', 10, '2023-10-05 08:19:46', '2023-10-05 08:19:46'),
(13, 8, 'Poise and Bearing ', 30, '2023-10-05 08:20:08', '2023-10-05 08:20:08'),
(14, 8, 'Beauty ', 30, '2023-10-05 08:20:37', '2023-10-05 08:20:37'),
(15, 8, 'Overall Appeal', 30, '2023-10-05 08:20:49', '2023-10-05 08:20:49'),
(16, 8, 'Audience Impact', 10, '2023-10-05 08:20:59', '2023-10-05 08:20:59'),
(17, 3, 'Uniqueness of the Attire', 30, '2023-10-05 08:22:55', '2023-10-05 08:22:55'),
(18, 3, 'Elegance', 30, '2023-10-05 08:23:06', '2023-10-05 08:23:06'),
(19, 3, 'Overall Appeal', 30, '2023-10-05 08:23:20', '2023-10-05 08:23:20'),
(20, 3, 'Audience Impact', 10, '2023-10-05 08:23:33', '2023-10-05 08:23:33'),
(21, 9, 'Uniqueness of the attire', 30, '2023-10-05 08:24:05', '2023-10-05 08:24:05'),
(22, 9, 'Elegance ', 30, '2023-10-05 08:24:13', '2023-10-05 08:24:13'),
(23, 9, 'Overall Appeal', 30, '2023-10-05 08:24:24', '2023-10-05 08:24:24'),
(24, 9, 'Audience Impact', 10, '2023-10-05 08:24:34', '2023-10-05 08:24:34'),
(25, 4, 'Poise and Bearing ', 30, '2023-10-05 08:25:06', '2023-10-05 08:25:06'),
(26, 4, 'Beauty and Carriage', 30, '2023-10-05 08:25:18', '2023-10-05 08:25:18'),
(27, 4, 'Elegance and Sophistication', 30, '2023-10-05 08:25:39', '2023-10-05 08:25:46'),
(28, 4, 'Audience Impact ', 10, '2023-10-05 08:26:00', '2023-10-05 08:26:00'),
(29, 10, 'Poise and Bearing ', 30, '2023-10-05 08:26:46', '2023-10-05 08:26:46'),
(30, 10, 'Beauty and Carriage', 30, '2023-10-05 08:26:57', '2023-10-05 08:26:57'),
(31, 10, 'Elegance and Sophistication', 30, '2023-10-05 08:27:11', '2023-10-05 08:27:11'),
(32, 10, 'Audience Impact', 10, '2023-10-05 08:27:26', '2023-10-05 08:27:26'),
(33, 5, 'Beauty of Face', 40, '2023-10-05 08:29:51', '2023-10-05 08:29:51'),
(34, 5, 'Intelligence for Q&A', 30, '2023-10-05 08:30:08', '2023-10-05 08:30:08'),
(35, 5, 'Speech (Delivery, Content, & Topic)', 30, '2023-10-05 08:30:34', '2023-10-05 08:30:34'),
(36, 11, 'Beauty of Face', 40, '2023-10-05 08:31:31', '2023-10-05 08:31:31'),
(37, 11, 'Intelligence for Q&A', 30, '2023-10-05 08:31:52', '2023-10-05 08:31:52'),
(38, 11, 'Speech (Delivery, Content, & Topic)', 30, '2023-10-05 08:32:13', '2023-10-05 08:32:13'),
(39, 6, 'Beauty of Face', 35, '2023-10-05 08:33:08', '2023-10-05 08:33:08'),
(40, 6, 'Intelligence ', 35, '2023-10-05 08:33:18', '2023-10-05 08:33:18'),
(41, 6, 'Figure', 15, '2023-10-05 08:33:27', '2023-10-05 08:33:27'),
(42, 6, 'Personality', 15, '2023-10-05 08:33:37', '2023-10-05 08:33:37'),
(43, 12, 'Beauty of Face', 35, '2023-10-05 08:34:07', '2023-10-05 08:34:07'),
(44, 12, 'Intelligence', 35, '2023-10-05 08:34:15', '2023-10-05 08:34:15'),
(45, 12, 'Figure', 15, '2023-10-05 08:34:23', '2023-10-05 08:34:23'),
(46, 12, 'Personality', 15, '2023-10-05 08:34:37', '2023-10-05 08:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duos`
--

CREATE TABLE `duos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_id_1` smallint(5) UNSIGNED NOT NULL,
  `event_id_2` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duos`
--

INSERT INTO `duos` (`id`, `slug`, `title`, `event_id_1`, `event_id_2`, `created_at`, `updated_at`) VALUES
(1, 'production', 'PRODUCTION', 1, 7, '2023-10-05 09:02:35', '2023-10-05 09:02:35'),
(2, 'swimsuit', 'SWIMSUIT', 2, 8, '2023-10-05 09:04:43', '2023-10-05 09:04:43'),
(3, 'festival-attire', 'FESTIVAL ATTIRE', 3, 9, '2023-10-05 09:04:43', '2023-10-05 09:04:43'),
(4, 'long-gown', 'LONG GOWN', 4, 10, '2023-10-05 09:06:39', '2023-10-05 09:06:39'),
(5, 'advocacy-preliminary-qa', 'ADVOCACY - Q&A', 5, 11, '2023-10-05 09:06:39', '2023-10-05 09:29:48'),
(6, 'final-qa-picture', 'FINAL Q&A', 6, 12, '2023-10-05 09:07:38', '2023-10-05 09:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2023-10-05 09:14:32', '2023-10-05 09:14:32'),
(2, 1, 9, '2023-10-05 09:14:36', '2023-10-05 09:14:36'),
(3, 1, 10, '2023-10-05 09:14:39', '2023-10-05 09:14:39'),
(4, 1, 11, '2023-10-05 09:14:41', '2023-10-05 09:14:41'),
(5, 1, 12, '2023-10-05 09:14:43', '2023-10-05 09:14:43'),
(6, 1, 13, '2023-10-05 09:14:45', '2023-10-05 09:14:45'),
(7, 1, 14, '2023-10-05 09:14:46', '2023-10-05 09:14:46'),
(8, 2, 8, '2023-10-05 09:14:48', '2023-10-05 09:14:48'),
(9, 2, 9, '2023-10-05 09:14:49', '2023-10-05 09:14:49'),
(10, 2, 10, '2023-10-05 09:14:50', '2023-10-05 09:14:50'),
(11, 2, 11, '2023-10-05 09:14:51', '2023-10-05 09:14:51'),
(12, 2, 12, '2023-10-05 09:14:52', '2023-10-05 09:14:52'),
(13, 2, 13, '2023-10-05 09:14:53', '2023-10-05 09:14:53'),
(14, 2, 14, '2023-10-05 09:14:54', '2023-10-05 09:14:54'),
(15, 3, 8, '2023-10-05 09:15:00', '2023-10-05 09:15:00'),
(16, 3, 9, '2023-10-05 09:15:04', '2023-10-05 09:15:04'),
(17, 3, 10, '2023-10-05 09:15:06', '2023-10-05 09:15:06'),
(18, 3, 11, '2023-10-05 09:15:07', '2023-10-05 09:15:07'),
(19, 3, 12, '2023-10-05 09:15:07', '2023-10-05 09:15:07'),
(20, 3, 13, '2023-10-05 09:15:08', '2023-10-05 09:15:08'),
(21, 3, 14, '2023-10-05 09:15:09', '2023-10-05 09:15:09'),
(22, 4, 8, '2023-10-05 09:16:19', '2023-10-05 09:16:19'),
(23, 4, 9, '2023-10-05 09:16:19', '2023-10-05 09:16:19'),
(24, 4, 10, '2023-10-05 09:16:21', '2023-10-05 09:16:21'),
(25, 4, 11, '2023-10-05 09:16:22', '2023-10-05 09:16:22'),
(26, 4, 12, '2023-10-05 09:16:23', '2023-10-05 09:16:23'),
(27, 4, 13, '2023-10-05 09:16:25', '2023-10-05 09:16:25'),
(28, 4, 14, '2023-10-05 09:16:25', '2023-10-05 09:16:25'),
(29, 5, 8, '2023-10-05 09:16:52', '2023-10-05 09:16:52'),
(30, 5, 9, '2023-10-05 09:16:54', '2023-10-05 09:16:54'),
(31, 5, 10, '2023-10-05 09:16:55', '2023-10-05 09:16:55'),
(32, 5, 11, '2023-10-05 09:16:59', '2023-10-05 09:16:59'),
(33, 5, 12, '2023-10-05 09:16:59', '2023-10-05 09:16:59'),
(34, 5, 13, '2023-10-05 09:17:01', '2023-10-05 09:17:01'),
(35, 5, 14, '2023-10-05 09:17:02', '2023-10-05 09:17:02'),
(36, 6, 1, '2023-10-05 09:17:07', '2023-10-05 09:17:07'),
(37, 6, 8, '2023-10-05 09:17:08', '2023-10-05 09:17:08'),
(38, 6, 2, '2023-10-05 09:17:08', '2023-10-05 09:17:08'),
(39, 6, 9, '2023-10-05 09:17:09', '2023-10-05 09:17:09'),
(40, 6, 3, '2023-10-05 09:17:09', '2023-10-05 09:17:09'),
(41, 6, 10, '2023-10-05 09:17:09', '2023-10-05 09:17:09'),
(42, 6, 4, '2023-10-05 09:17:10', '2023-10-05 09:17:10'),
(43, 6, 11, '2023-10-05 09:17:11', '2023-10-05 09:17:11'),
(44, 6, 5, '2023-10-05 09:17:11', '2023-10-05 09:17:11'),
(45, 6, 12, '2023-10-05 09:17:12', '2023-10-05 09:17:12'),
(46, 6, 6, '2023-10-05 09:17:12', '2023-10-05 09:17:12'),
(47, 6, 13, '2023-10-05 09:17:13', '2023-10-05 09:17:13'),
(48, 6, 7, '2023-10-05 09:17:13', '2023-10-05 09:17:13'),
(49, 6, 14, '2023-10-05 09:17:14', '2023-10-05 09:17:14'),
(50, 7, 1, '2023-10-05 09:17:23', '2023-10-05 09:17:23'),
(51, 7, 2, '2023-10-05 09:17:25', '2023-10-05 09:17:25'),
(52, 7, 3, '2023-10-05 09:17:27', '2023-10-05 09:17:27'),
(53, 7, 4, '2023-10-05 09:17:28', '2023-10-05 09:17:28'),
(54, 7, 5, '2023-10-05 09:17:29', '2023-10-05 09:17:29'),
(55, 7, 6, '2023-10-05 09:17:30', '2023-10-05 09:17:30'),
(56, 7, 7, '2023-10-05 09:17:32', '2023-10-05 09:17:32'),
(57, 8, 1, '2023-10-05 09:17:34', '2023-10-05 09:17:34'),
(58, 8, 2, '2023-10-05 09:17:36', '2023-10-05 09:17:36'),
(59, 8, 3, '2023-10-05 09:17:36', '2023-10-05 09:17:36'),
(60, 8, 4, '2023-10-05 09:17:39', '2023-10-05 09:17:39'),
(61, 8, 5, '2023-10-05 09:17:44', '2023-10-05 09:17:44'),
(62, 8, 6, '2023-10-05 09:17:46', '2023-10-05 09:17:46'),
(63, 8, 7, '2023-10-05 09:17:47', '2023-10-05 09:17:47'),
(64, 9, 1, '2023-10-05 09:17:50', '2023-10-05 09:17:50'),
(65, 9, 2, '2023-10-05 09:17:50', '2023-10-05 09:17:50'),
(66, 9, 3, '2023-10-05 09:17:51', '2023-10-05 09:17:51'),
(67, 9, 4, '2023-10-05 09:17:52', '2023-10-05 09:17:52'),
(68, 9, 5, '2023-10-05 09:17:53', '2023-10-05 09:17:53'),
(69, 9, 6, '2023-10-05 09:17:54', '2023-10-05 09:17:54'),
(70, 9, 7, '2023-10-05 09:17:55', '2023-10-05 09:17:55'),
(71, 10, 1, '2023-10-05 09:17:56', '2023-10-05 09:17:56'),
(72, 10, 2, '2023-10-05 09:17:57', '2023-10-05 09:17:57'),
(73, 10, 3, '2023-10-05 09:18:00', '2023-10-05 09:18:00'),
(74, 10, 4, '2023-10-05 09:18:01', '2023-10-05 09:18:01'),
(75, 10, 5, '2023-10-05 09:18:03', '2023-10-05 09:18:03'),
(76, 10, 6, '2023-10-05 09:18:05', '2023-10-05 09:18:05'),
(77, 10, 7, '2023-10-05 09:18:05', '2023-10-05 09:18:05'),
(78, 11, 1, '2023-10-05 09:18:07', '2023-10-05 09:18:07'),
(79, 11, 2, '2023-10-05 09:18:09', '2023-10-05 09:18:09'),
(80, 11, 3, '2023-10-05 09:18:09', '2023-10-05 09:18:09'),
(81, 11, 4, '2023-10-05 09:18:10', '2023-10-05 09:18:10'),
(82, 11, 5, '2023-10-05 09:18:11', '2023-10-05 09:18:11'),
(83, 11, 6, '2023-10-05 09:18:12', '2023-10-05 09:18:12'),
(84, 11, 7, '2023-10-05 09:18:14', '2023-10-05 09:18:14'),
(85, 12, 1, '2023-10-05 09:18:17', '2023-10-05 09:18:17'),
(86, 12, 8, '2023-10-05 09:18:18', '2023-10-05 09:18:18'),
(87, 12, 2, '2023-10-05 09:18:18', '2023-10-05 09:18:18'),
(88, 12, 9, '2023-10-05 09:18:18', '2023-10-05 09:18:18'),
(89, 12, 3, '2023-10-05 09:18:19', '2023-10-05 09:18:19'),
(90, 12, 10, '2023-10-05 09:18:19', '2023-10-05 09:18:19'),
(91, 12, 4, '2023-10-05 09:18:20', '2023-10-05 09:18:20'),
(92, 12, 11, '2023-10-05 09:18:20', '2023-10-05 09:18:20'),
(93, 12, 5, '2023-10-05 09:18:21', '2023-10-05 09:18:21'),
(94, 12, 12, '2023-10-05 09:18:21', '2023-10-05 09:18:21'),
(95, 12, 6, '2023-10-05 09:18:22', '2023-10-05 09:18:22'),
(96, 12, 13, '2023-10-05 09:18:23', '2023-10-05 09:18:23'),
(97, 12, 7, '2023-10-05 09:18:23', '2023-10-05 09:18:23'),
(98, 12, 14, '2023-10-05 09:18:23', '2023-10-05 09:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'production-msr', '(MS) Production Number', '2023-10-05 07:47:26', '2023-10-05 07:48:37'),
(2, 1, 'swimsuit-msr', '(MS) Swimsuit Competition', '2023-10-05 07:48:30', '2023-10-05 07:48:44'),
(3, 1, 'festival-attire-msr', '(MS) Festival Attire', '2023-10-05 07:49:11', '2023-10-05 07:49:11'),
(4, 1, 'long-gown-msr', '(MS) Long Gown Competition', '2023-10-05 07:49:52', '2023-10-05 07:58:42'),
(5, 1, 'advocacy-preliminary-qa-msr', '(MS) Advocacy - Preliminary Q&A', '2023-10-05 07:52:37', '2023-10-05 08:01:58'),
(6, 1, 'final-qa-picture-msr', '(MS) Final  Q&A - Picture Analysis', '2023-10-05 07:53:43', '2023-10-05 08:02:24'),
(7, 2, 'production-mbm', '(MB) Production Number', '2023-10-05 07:54:34', '2023-10-05 07:54:34'),
(8, 2, 'swimsuit-mbm', '(MB) Swimsuit Competition', '2023-10-05 07:55:42', '2023-10-05 07:55:42'),
(9, 2, 'festival-attire-mbm', '(MB) Festival Attire ', '2023-10-05 07:57:00', '2023-10-05 07:57:00'),
(10, 2, 'long-gown-mbm', '(MB) Long Gown Competition', '2023-10-05 07:58:23', '2023-10-05 07:58:23'),
(11, 2, 'advocacy-preliminary-qa-mbm', '(MB) Advocacy - Preliminary Q&A', '2023-10-05 08:01:11', '2023-10-05 08:02:11'),
(12, 2, 'final-qa-picture-mbm', '(MB) Final Q&A - Picture Analysis', '2023-10-05 08:03:20', '2023-10-05 08:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2023-10-05 10:35:56'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2023-10-05 09:24:48'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2023-10-05 09:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2023-10-05 09:09:46', '2023-10-05 09:09:46'),
(2, 1, 2, 0, '2023-10-05 09:09:55', '2023-10-05 09:09:55'),
(3, 1, 3, 0, '2023-10-05 09:10:00', '2023-10-05 09:10:00'),
(4, 1, 4, 0, '2023-10-05 09:10:03', '2023-10-05 09:10:03'),
(5, 1, 5, 0, '2023-10-05 09:10:07', '2023-10-05 09:10:07'),
(6, 1, 6, 0, '2023-10-05 09:10:12', '2023-10-05 09:10:12'),
(7, 1, 7, 0, '2023-10-05 09:10:26', '2023-10-05 09:10:26'),
(8, 1, 8, 0, '2023-10-05 09:10:30', '2023-10-05 09:10:30'),
(9, 1, 9, 0, '2023-10-05 09:10:34', '2023-10-05 09:10:34'),
(10, 1, 10, 0, '2023-10-05 09:10:37', '2023-10-05 09:10:37'),
(11, 1, 11, 0, '2023-10-05 09:10:41', '2023-10-05 09:10:41'),
(12, 1, 12, 0, '2023-10-05 09:10:45', '2023-10-05 09:10:45'),
(13, 2, 1, 0, '2023-10-05 09:10:58', '2023-10-05 09:10:58'),
(14, 2, 2, 0, '2023-10-05 09:11:10', '2023-10-05 09:11:10'),
(15, 2, 3, 0, '2023-10-05 09:11:14', '2023-10-05 09:11:14'),
(16, 2, 4, 0, '2023-10-05 09:11:17', '2023-10-05 09:11:17'),
(17, 2, 5, 0, '2023-10-05 09:11:20', '2023-10-05 09:11:20'),
(18, 2, 6, 0, '2023-10-05 09:11:23', '2023-10-05 09:11:23'),
(19, 2, 7, 0, '2023-10-05 09:11:27', '2023-10-05 09:11:27'),
(20, 2, 8, 0, '2023-10-05 09:11:30', '2023-10-05 09:11:30'),
(21, 2, 9, 0, '2023-10-05 09:11:34', '2023-10-05 09:11:34'),
(22, 2, 10, 0, '2023-10-05 09:11:37', '2023-10-05 09:11:37'),
(23, 2, 11, 0, '2023-10-05 09:11:41', '2023-10-05 09:11:41'),
(24, 2, 12, 0, '2023-10-05 09:11:48', '2023-10-05 09:11:48'),
(25, 3, 1, 0, '2023-10-05 09:11:56', '2023-10-05 09:11:56'),
(26, 3, 2, 0, '2023-10-05 09:12:00', '2023-10-05 09:12:00'),
(27, 3, 3, 0, '2023-10-05 09:12:03', '2023-10-05 09:12:03'),
(28, 3, 4, 0, '2023-10-05 09:12:08', '2023-10-05 09:12:08'),
(29, 3, 5, 0, '2023-10-05 09:12:12', '2023-10-05 09:12:12'),
(30, 3, 6, 0, '2023-10-05 09:12:16', '2023-10-05 09:12:16'),
(31, 3, 7, 0, '2023-10-05 09:12:19', '2023-10-05 09:12:19'),
(32, 3, 8, 0, '2023-10-05 09:12:22', '2023-10-05 09:12:22'),
(33, 3, 9, 0, '2023-10-05 09:12:25', '2023-10-05 09:12:25'),
(34, 3, 10, 0, '2023-10-05 09:12:28', '2023-10-05 09:12:28'),
(35, 3, 11, 0, '2023-10-05 09:12:32', '2023-10-05 09:12:32'),
(36, 3, 12, 0, '2023-10-05 09:12:35', '2023-10-05 09:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jenilyn Padrigon', 'Sagrada, Iriga City', 'msr-01-jenilyn-padrigon.jpg', '2023-10-05 07:10:50', '2023-10-05 07:28:01'),
(2, 2, 'Ivy Bayla', 'San Ramon, Iriga City', 'msr-02-ivy-bayla.jpg', '2023-10-05 07:14:31', '2023-10-05 07:28:06'),
(3, 3, 'Sherry Ann Nuqui', 'San Ramon, Iriga City', 'msr-03-sherry-ann-nuqui.jpg', '2023-10-05 07:15:03', '2023-10-05 07:28:13'),
(4, 4, 'Laila Vargas', 'Cristo Rey, Iriga City', 'msr-04-laila-vargas.jpg', '2023-10-05 07:15:40', '2023-10-05 07:28:17'),
(5, 5, 'Myjonica Jean Rabino', 'Santa Teresita, Iriga City', 'msr-05-myjonica-jean-rabino.jpg', '2023-10-05 07:16:15', '2023-10-05 07:28:24'),
(6, 6, 'Princess Saludo', 'San Ramon, Iriga City', 'msr-06-princess-saludo.jpg', '2023-10-05 07:16:46', '2023-10-05 07:28:33'),
(7, 7, 'Jessica Corporal', 'Antipolo, Iriga City', 'msr-07-jessica-corporal.jpg', '2023-10-05 07:17:29', '2023-10-05 07:28:38'),
(8, 1, 'Owen Kelly Magistrado', 'San Ramon, Iriga City', 'mbm-01-owen-kelly-magistrado.jpg', '2023-10-05 07:18:42', '2023-10-05 07:28:42'),
(9, 2, 'Jayzar Taduran', 'San Ramon, Iriga City', 'mbm-02-jayzar-taduran.jpg', '2023-10-05 07:20:17', '2023-10-05 07:28:47'),
(10, 3, 'Arjay Bagayawa', 'Cristo Rey, Iriga City', 'mbm-03-arjay-bagayawa.jpg', '2023-10-05 07:20:48', '2023-10-05 07:28:52'),
(11, 4, 'Earlson Alanis', 'Cristo Rey, Iriga City', 'mbm-04-earlson-alanis.jpg', '2023-10-05 07:22:24', '2023-10-05 09:14:01'),
(12, 5, 'Eric Magistrado', 'Sagrada, Iriga City', 'mbm-05-eric-magistrado.jpg', '2023-10-05 07:24:28', '2023-10-05 09:14:04'),
(13, 6, 'Cedric Hubert Laniog', 'San Isidro, Iriga City', 'mbm-06-cedric-hubert-laniog.jpg', '2023-10-05 07:25:13', '2023-10-05 09:14:08'),
(14, 7, 'Nathaniel Salonga', 'Antipolo, Iriga City', 'mbm-07-nathaniel-salonga.jpg', '2023-10-05 07:25:58', '2023-10-05 09:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(2, 1, 2, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(3, 1, 3, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(4, 1, 4, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(5, 1, 5, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(6, 1, 6, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(7, 1, 7, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(8, 1, 8, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(9, 1, 9, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(10, 1, 10, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(11, 1, 11, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(12, 1, 12, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(13, 1, 13, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(14, 1, 14, '', '2023-10-05 09:24:48', '2023-10-05 09:24:48'),
(15, 2, 1, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(16, 2, 2, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(17, 2, 3, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(18, 2, 4, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(19, 2, 5, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(20, 2, 6, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(21, 2, 7, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(22, 2, 8, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(23, 2, 9, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(24, 2, 10, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(25, 2, 11, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(26, 2, 12, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(27, 2, 13, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(28, 2, 14, '', '2023-10-05 09:24:49', '2023-10-05 09:24:49'),
(29, 3, 1, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(30, 3, 2, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(31, 3, 3, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(32, 3, 4, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(33, 3, 5, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(34, 3, 6, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(35, 3, 7, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(36, 3, 8, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(37, 3, 9, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(38, 3, 10, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(39, 3, 11, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(40, 3, 12, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(41, 3, 13, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(42, 3, 14, '', '2023-10-05 09:24:50', '2023-10-05 09:24:50'),
(43, 4, 1, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(44, 4, 2, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(45, 4, 3, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(46, 4, 4, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(47, 4, 5, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(48, 4, 6, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(49, 4, 7, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(50, 4, 8, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(51, 4, 9, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(52, 4, 10, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(53, 4, 11, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(54, 4, 12, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(55, 4, 13, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(56, 4, 14, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(57, 5, 1, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(58, 5, 2, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(59, 5, 3, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(60, 5, 4, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(61, 5, 5, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(62, 5, 6, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(63, 5, 7, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(64, 5, 8, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(65, 5, 9, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(66, 5, 10, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(67, 5, 11, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(68, 5, 12, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(69, 5, 13, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(70, 5, 14, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(71, 6, 1, 'Miss San Ramon 2023', '2023-10-05 09:24:51', '2023-10-05 10:48:28'),
(72, 6, 2, '1st Runner Up', '2023-10-05 09:24:51', '2023-10-05 10:47:41'),
(73, 6, 3, '2nd Runner Up', '2023-10-05 09:24:51', '2023-10-05 10:47:25'),
(74, 6, 4, '3rd Runner Up', '2023-10-05 09:24:51', '2023-10-05 10:46:09'),
(75, 6, 5, '4th Runner Up', '2023-10-05 09:24:51', '2023-10-05 10:47:11'),
(76, 6, 6, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(77, 6, 7, '', '2023-10-05 09:24:51', '2023-10-05 09:24:51'),
(78, 6, 8, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(79, 6, 9, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(80, 6, 10, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(81, 6, 11, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(82, 6, 12, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(83, 6, 13, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(84, 6, 14, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(85, 7, 1, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(86, 7, 2, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(87, 7, 3, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(88, 7, 4, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(89, 7, 5, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(90, 7, 6, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(91, 7, 7, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(92, 7, 8, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(93, 7, 9, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(94, 7, 10, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(95, 7, 11, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(96, 7, 12, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(97, 7, 13, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(98, 7, 14, '', '2023-10-05 09:24:52', '2023-10-05 09:24:52'),
(99, 8, 1, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(100, 8, 2, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(101, 8, 3, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(102, 8, 4, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(103, 8, 5, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(104, 8, 6, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(105, 8, 7, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(106, 8, 8, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(107, 8, 9, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(108, 8, 10, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(109, 8, 11, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(110, 8, 12, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(111, 8, 13, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(112, 8, 14, '', '2023-10-05 09:24:53', '2023-10-05 09:24:53'),
(113, 9, 1, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(114, 9, 2, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(115, 9, 3, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(116, 9, 4, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(117, 9, 5, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(118, 9, 6, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(119, 9, 7, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(120, 9, 8, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(121, 9, 9, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(122, 9, 10, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(123, 9, 11, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(124, 9, 12, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(125, 9, 13, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(126, 9, 14, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(127, 10, 1, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(128, 10, 2, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(129, 10, 3, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(130, 10, 4, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(131, 10, 5, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(132, 10, 6, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(133, 10, 7, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(134, 10, 8, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(135, 10, 9, '', '2023-10-05 09:24:54', '2023-10-05 09:24:54'),
(136, 10, 10, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(137, 10, 11, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(138, 10, 12, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(139, 10, 13, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(140, 10, 14, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(141, 11, 1, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(142, 11, 2, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(143, 11, 3, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(144, 11, 4, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(145, 11, 5, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(146, 11, 6, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(147, 11, 7, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(148, 11, 8, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(149, 11, 9, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(150, 11, 10, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(151, 11, 11, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(152, 11, 12, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(153, 11, 13, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(154, 11, 14, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(155, 12, 1, 'Miss Barakong Magayon 2023', '2023-10-05 09:24:55', '2023-10-05 10:48:42'),
(156, 12, 2, '1st Runner Up', '2023-10-05 09:24:55', '2023-10-05 10:47:41'),
(157, 12, 3, '2nd Runner Up', '2023-10-05 09:24:55', '2023-10-05 10:47:25'),
(158, 12, 4, '3rd Runner Up', '2023-10-05 09:24:55', '2023-10-05 10:46:09'),
(159, 12, 5, '4th Runner Up', '2023-10-05 09:24:55', '2023-10-05 10:47:11'),
(160, 12, 6, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(161, 12, 7, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(162, 12, 8, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(163, 12, 9, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(164, 12, 10, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(165, 12, 11, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(166, 12, 12, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(167, 12, 13, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55'),
(168, 12, 14, '', '2023-10-05 09:24:55', '2023-10-05 09:24:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `duos`
--
ALTER TABLE `duos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event1` (`event_id_1`),
  ADD KEY `event2` (`event_id_2`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duos`
--
ALTER TABLE `duos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duos`
--
ALTER TABLE `duos`
  ADD CONSTRAINT `duos_ibfk_1` FOREIGN KEY (`event_id_1`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `duos_ibfk_2` FOREIGN KEY (`event_id_2`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
