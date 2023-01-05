-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 08:33 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itenology`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_ur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `created_at`, `updated_at`, `client_ur`) VALUES
(1, 'Maryland State Highway Administration', '2022-12-15 10:42:07', '2022-12-15 10:42:07', 'https://www.roads.maryland.gov/pages/home.aspx'),
(2, 'Maryland Department of Information Technology', '2022-12-15 10:42:43', '2022-12-15 10:42:43', 'https://doit.maryland.gov/Pages/default.aspx'),
(3, 'Maryland Transportation Authority', '2022-12-15 10:44:36', '2022-12-15 10:44:36', 'https://mdta.maryland.gov/'),
(4, 'City of Baltimore', '2022-12-15 10:45:28', '2022-12-15 10:45:28', 'https://www.baltimorecity.gov/');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Roro', 'rrr@gmail.com', 'lllll', '2023-01-02 06:22:15', '2023-01-02 06:22:15'),
(2, 'Bob DeBlase', 'hayakh.1992@outlook.com', 'kkkkkkkkkkkkkkkk', '2023-01-02 06:23:30', '2023-01-02 06:23:30'),
(3, 'Bob DeBlase', 'hayakh.1992@outlook.com', 'kkkkkkkkkkkkkkkk', '2023-01-02 06:24:08', '2023-01-02 06:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(27, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 12, 'service_name', 'text', 'Service Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 12, 'image_url', 'image', 'Service Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(30, 12, 'image_caption', 'text', 'Image Caption', 0, 1, 1, 1, 1, 1, '{}', 4),
(31, 12, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(32, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(33, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(34, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 15, 'service_id', 'text', 'Service Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(36, 15, 'subtitle_name', 'text', 'Subtitle Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(37, 15, 'subtitle_image_url', 'image', 'Subtitle Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(38, 15, 'subtitle_image_caption', 'text', 'Subtitle Image Caption', 0, 1, 1, 1, 1, 1, '{}', 5),
(39, 15, 'subtitle_description', 'rich_text_box', 'Subtitle Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(40, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(41, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(42, 15, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(43, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 16, 'service_id', 'text', 'Service Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(45, 16, 'project_name', 'text', 'Project Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(46, 16, 'project_image_url', 'image', 'Project Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(47, 16, 'project_image_caption', 'text', 'Project Image Caption', 0, 1, 1, 1, 1, 1, '{}', 5),
(48, 16, 'project_description', 'rich_text_box', 'Project Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(49, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(50, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(52, 15, 'subtitle_belongsto_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsTo\",\"column\":\"service_id\",\"key\":\"id\",\"label\":\"service_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(53, 16, 'project_belongsto_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsTo\",\"column\":\"service_id\",\"key\":\"id\",\"label\":\"service_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(58, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 20, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 20, 'image_url', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(62, 20, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(63, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(64, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(65, 15, 'subtitle_belongsto_project_relationship', 'relationship', 'projects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"project_name\",\"pivot_table\":\"clients\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(66, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 21, 'url', 'image', 'Slide Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(70, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(76, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 23, 'client_name', 'text', 'Client Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(78, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(79, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(80, 23, 'client_ur', 'text', 'Client Url', 1, 1, 1, 1, 1, 1, '{}', 5),
(81, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 30, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 30, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(84, 30, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(85, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(86, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-12-08 06:36:30', '2022-12-08 06:36:30'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-12-08 06:36:31', '2022-12-08 06:36:31'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-12-08 06:36:31', '2022-12-08 06:36:31'),
(12, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-12 06:14:33', '2022-12-15 09:39:27'),
(15, 'subtitles', 'subtitles', 'Subtitle', 'Subtitles', NULL, 'App\\Subtitle', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-12 06:51:45', '2022-12-15 09:48:34'),
(16, 'projects', 'projects', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-12 06:53:53', '2022-12-15 09:49:23'),
(19, 'team', 'team', 'Team', 'Teams', NULL, 'App\\Team', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(20, 'teams', 'teams', 'Team', 'Teams', NULL, 'App\\Team', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-13 08:05:33', '2022-12-13 08:06:28'),
(21, 'homepage_sliders', 'homepage-sliders', 'Homepage Slider', 'Homepage Sliders', NULL, 'App\\HomepageSlider', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(23, 'clients', 'clients', 'Client', 'Clients', NULL, 'App\\Client', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(29, 'contact', 'contact', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-01-02 06:12:50', '2023-01-02 06:12:50'),
(30, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-01-02 06:17:13', '2023-01-02 06:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage_sliders`
--

CREATE TABLE `homepage_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_sliders`
--

INSERT INTO `homepage_sliders` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'homepage-sliders\\December2022\\4DYP6TUBdpkm1vUjjFcF.jpg', '2022-12-15 09:18:50', '2022-12-15 09:18:50'),
(2, NULL, 'homepage-sliders\\December2022\\KQslp0qjt681saNNtSGK.jpg', '2022-12-15 09:26:13', '2022-12-15 09:26:13'),
(4, NULL, 'homepage-sliders\\December2022\\qcdvte8MWsBmKy3lbuLH.jpg', '2022-12-15 09:30:55', '2022-12-15 09:30:55'),
(5, NULL, 'homepage-sliders\\December2022\\UhdkHsTBV1kVx3GXIgRf.jpg', '2022-12-15 09:31:46', '2022-12-15 09:31:46'),
(6, NULL, 'homepage-sliders\\December2022\\M6pfR1mLGhRQKSAy0LIu.jpg', '2022-12-15 09:32:21', '2022-12-15 09:32:21'),
(7, NULL, 'homepage-sliders\\December2022\\vx1v6Hc0VFh4Smwsau1y.jpg', '2022-12-15 09:32:42', '2022-12-15 09:32:42'),
(8, NULL, 'homepage-sliders\\December2022\\JqERm1qlIu2wFnU00AYN.jpg', '2022-12-15 09:33:10', '2022-12-15 09:33:10'),
(9, NULL, 'homepage-sliders\\December2022\\p99RcHkwzCWdLpNY5Ksu.jpg', '2022-12-15 09:33:25', '2022-12-15 09:33:25'),
(10, NULL, 'homepage-sliders\\December2022\\wUcDcpyjajZdLgbwtzLV.png', '2022-12-15 09:33:50', '2022-12-15 09:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-12-08 06:36:34', '2022-12-08 06:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-12-08 06:36:35', '2022-12-08 06:36:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-12-08 06:36:35', '2022-12-12 06:54:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-12-08 06:36:35', '2022-12-08 06:36:35', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-12-08 06:36:35', '2022-12-08 06:36:35', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2022-12-08 06:36:35', '2022-12-13 05:32:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-12-08 06:36:35', '2022-12-12 06:54:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-12-08 06:36:35', '2022-12-12 06:54:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-12-08 06:36:36', '2022-12-12 06:54:20', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-12-08 06:36:36', '2022-12-12 06:54:20', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2022-12-08 06:36:36', '2022-12-13 08:07:10', 'voyager.settings.index', NULL),
(15, 1, 'Services', '', '_self', NULL, NULL, 19, 2, '2022-12-12 06:14:35', '2022-12-15 09:19:33', 'voyager.services.index', NULL),
(16, 1, 'Subtitles', '', '_self', NULL, NULL, 19, 4, '2022-12-12 06:51:47', '2022-12-15 09:19:34', 'voyager.subtitles.index', NULL),
(17, 1, 'Projects', '', '_self', NULL, NULL, 19, 3, '2022-12-12 06:53:54', '2022-12-15 09:19:33', 'voyager.projects.index', NULL),
(19, 1, 'Website Content', '', '_self', 'voyager-news', '#000000', NULL, 5, '2022-12-12 06:57:52', '2022-12-12 07:07:17', NULL, ''),
(23, 1, 'Teams', '', '_self', NULL, NULL, 19, 5, '2022-12-13 08:05:34', '2022-12-13 08:07:10', 'voyager.teams.index', NULL),
(24, 1, 'Homepage Sliders', '', '_self', NULL, NULL, 19, 1, '2022-12-15 09:18:24', '2022-12-15 09:19:33', 'voyager.homepage-sliders.index', NULL),
(26, 1, 'Clients', '', '_self', NULL, NULL, 19, 6, '2022-12-15 10:40:42', '2022-12-15 10:41:07', 'voyager.clients.index', NULL),
(31, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 9, '2023-01-02 06:17:14', '2023-01-02 06:17:14', 'voyager.contacts.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(2, 'browse_bread', NULL, '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(3, 'browse_database', NULL, '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(4, 'browse_media', NULL, '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(5, 'browse_compass', NULL, '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(6, 'browse_menus', 'menus', '2022-12-08 06:36:38', '2022-12-08 06:36:38'),
(7, 'read_menus', 'menus', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(8, 'edit_menus', 'menus', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(9, 'add_menus', 'menus', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(10, 'delete_menus', 'menus', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(11, 'browse_roles', 'roles', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(12, 'read_roles', 'roles', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(13, 'edit_roles', 'roles', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(14, 'add_roles', 'roles', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(15, 'delete_roles', 'roles', '2022-12-08 06:36:39', '2022-12-08 06:36:39'),
(16, 'browse_users', 'users', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(17, 'read_users', 'users', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(18, 'edit_users', 'users', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(19, 'add_users', 'users', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(20, 'delete_users', 'users', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(21, 'browse_settings', 'settings', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(22, 'read_settings', 'settings', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(23, 'edit_settings', 'settings', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(24, 'add_settings', 'settings', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(25, 'delete_settings', 'settings', '2022-12-08 06:36:40', '2022-12-08 06:36:40'),
(41, 'browse_services', 'services', '2022-12-12 06:14:34', '2022-12-12 06:14:34'),
(42, 'read_services', 'services', '2022-12-12 06:14:34', '2022-12-12 06:14:34'),
(43, 'edit_services', 'services', '2022-12-12 06:14:34', '2022-12-12 06:14:34'),
(44, 'add_services', 'services', '2022-12-12 06:14:34', '2022-12-12 06:14:34'),
(45, 'delete_services', 'services', '2022-12-12 06:14:34', '2022-12-12 06:14:34'),
(46, 'browse_subtitles', 'subtitles', '2022-12-12 06:51:46', '2022-12-12 06:51:46'),
(47, 'read_subtitles', 'subtitles', '2022-12-12 06:51:46', '2022-12-12 06:51:46'),
(48, 'edit_subtitles', 'subtitles', '2022-12-12 06:51:46', '2022-12-12 06:51:46'),
(49, 'add_subtitles', 'subtitles', '2022-12-12 06:51:46', '2022-12-12 06:51:46'),
(50, 'delete_subtitles', 'subtitles', '2022-12-12 06:51:46', '2022-12-12 06:51:46'),
(51, 'browse_projects', 'projects', '2022-12-12 06:53:53', '2022-12-12 06:53:53'),
(52, 'read_projects', 'projects', '2022-12-12 06:53:53', '2022-12-12 06:53:53'),
(53, 'edit_projects', 'projects', '2022-12-12 06:53:53', '2022-12-12 06:53:53'),
(54, 'add_projects', 'projects', '2022-12-12 06:53:53', '2022-12-12 06:53:53'),
(55, 'delete_projects', 'projects', '2022-12-12 06:53:53', '2022-12-12 06:53:53'),
(66, 'browse_team', 'team', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(67, 'read_team', 'team', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(68, 'edit_team', 'team', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(69, 'add_team', 'team', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(70, 'delete_team', 'team', '2022-12-13 08:01:03', '2022-12-13 08:01:03'),
(71, 'browse_teams', 'teams', '2022-12-13 08:05:34', '2022-12-13 08:05:34'),
(72, 'read_teams', 'teams', '2022-12-13 08:05:34', '2022-12-13 08:05:34'),
(73, 'edit_teams', 'teams', '2022-12-13 08:05:34', '2022-12-13 08:05:34'),
(74, 'add_teams', 'teams', '2022-12-13 08:05:34', '2022-12-13 08:05:34'),
(75, 'delete_teams', 'teams', '2022-12-13 08:05:34', '2022-12-13 08:05:34'),
(76, 'browse_homepage_sliders', 'homepage_sliders', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(77, 'read_homepage_sliders', 'homepage_sliders', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(78, 'edit_homepage_sliders', 'homepage_sliders', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(79, 'add_homepage_sliders', 'homepage_sliders', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(80, 'delete_homepage_sliders', 'homepage_sliders', '2022-12-15 09:18:23', '2022-12-15 09:18:23'),
(86, 'browse_clients', 'clients', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(87, 'read_clients', 'clients', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(88, 'edit_clients', 'clients', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(89, 'add_clients', 'clients', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(90, 'delete_clients', 'clients', '2022-12-15 10:40:42', '2022-12-15 10:40:42'),
(106, 'browse_contact', 'contact', '2023-01-02 06:12:51', '2023-01-02 06:12:51'),
(107, 'read_contact', 'contact', '2023-01-02 06:12:51', '2023-01-02 06:12:51'),
(108, 'edit_contact', 'contact', '2023-01-02 06:12:51', '2023-01-02 06:12:51'),
(109, 'add_contact', 'contact', '2023-01-02 06:12:51', '2023-01-02 06:12:51'),
(110, 'delete_contact', 'contact', '2023-01-02 06:12:51', '2023-01-02 06:12:51'),
(111, 'browse_contacts', 'contacts', '2023-01-02 06:17:13', '2023-01-02 06:17:13'),
(112, 'read_contacts', 'contacts', '2023-01-02 06:17:13', '2023-01-02 06:17:13'),
(113, 'edit_contacts', 'contacts', '2023-01-02 06:17:13', '2023-01-02 06:17:13'),
(114, 'add_contacts', 'contacts', '2023-01-02 06:17:13', '2023-01-02 06:17:13'),
(115, 'delete_contacts', 'contacts', '2023-01-02 06:17:13', '2023-01-02 06:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
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
(41, 1),
(41, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 4),
(47, 1),
(47, 4),
(48, 1),
(48, 4),
(49, 1),
(49, 4),
(50, 1),
(50, 4),
(51, 1),
(51, 4),
(52, 1),
(52, 4),
(53, 1),
(53, 4),
(54, 1),
(54, 4),
(55, 1),
(55, 4),
(66, 1),
(66, 4),
(67, 1),
(67, 4),
(68, 1),
(68, 4),
(69, 1),
(69, 4),
(70, 1),
(70, 4),
(71, 1),
(71, 4),
(72, 1),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(76, 4),
(77, 1),
(77, 4),
(78, 1),
(78, 4),
(79, 1),
(79, 4),
(80, 1),
(80, 4),
(86, 1),
(86, 4),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(90, 1),
(90, 4),
(106, 1),
(106, 4),
(107, 1),
(107, 4),
(108, 1),
(109, 1),
(110, 1),
(110, 4),
(111, 1),
(111, 4),
(112, 1),
(112, 4),
(113, 1),
(114, 1),
(115, 1),
(115, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `service_id`, `project_name`, `project_image_url`, `project_image_caption`, `project_description`, `created_at`, `updated_at`) VALUES
(1, 3, 'MD 202 Diet Study', 'projects\\December2022\\LDdgzWoS1VssXeuGmoW1.png', 'MD 202 from MD 450 to I-95/I-495 Roadway Diet Lane Configuration', '<p>MD 202 connects major communities along the center of Prince George\'s County. This corridor was studied for a roadway diet lane configuration from MD 450 to I-95/I-495 to create an exclusive lane for bus travels.</p>\r\n<p>Itenology Corporation performed a comprehensive data collection and field observation along the corridor and provided the final technical report which included capacity analysis, crash analysis, field observation, data collection and traffic volumes, and description of the corridor study, as well as recommendations on the roadway diet lane configuration.</p>', '2022-12-15 09:55:38', '2022-12-15 09:55:38'),
(2, 3, 'MD 355 Travel Time Study', 'projects\\December2022\\0ICjWSPvmmhUf2xNfo4z.jpg', NULL, '<p>Travel Time Measures are conducted to mitigate congestion, reduce delay, and improve volume throughput by means of minimizing starvation or spillback, usually caused by poor coordination, along adjoining signalized intersections and along corridors. The MD SHA conducts travel time runs on a regular basis along roadways in order to better serve its patrons, save time, and improve services. Itenology Corporation assists in conducting these studies utilizing sophisticated software tools that minimize the potential for errors during and after the runs. Itenology Corporation also provides valuable field observations and pictures that help in identifying issues that are usually overlooked.</p>\r\n<p>Itenology Corporation performed a comprehensive travel time study between Bethesda and Clarksburg Road which involved collecting travel time data, average speeds, and delays along MD 355 and major cross streets utilizing PC-Travel. The study involved post processing and analysis of data collected, and the deliverable included technical reports for use in traffic engineering studies.</p>', '2022-12-15 09:57:24', '2022-12-15 09:57:24'),
(3, 3, 'Arterial Congestion Management', 'projects\\December2022\\qBjWS3nPHUsb9LdK9GzB.jpg', NULL, '<p>Itenology Corporation performed comprehensive field studies for:<br>&nbsp;<br>* MD 450 between MD 3 and Stonybrook Drive<br>* MD 5 Business between MD 5/St. Charles Parkway and US 301<br>* US 301 between Charles County Line and Dyson Road<br>&nbsp;<br>Itenology Corporation investigated the characteristics and traffic operations of the roads and intersections along the corridors, collected field observation data and travel time data, identified road failures, analyzed the data collected, and generated separate technical reports for each corridor.</p>', '2022-12-15 09:59:24', '2022-12-15 09:59:24'),
(4, 3, 'Crash Analysis', 'projects\\December2022\\fbKfewOlj6gnW1gFMrF4.jpg', NULL, '<p>MD 500, Queens Chapel Road, is a four-lane divided highway with a center grass median. The study corridor between the DC Line and MD 208 experiences a significantly higher crash rate than the statewide average, and the 2015 Average Daily Traffic (ADT) in this area was recorded at 22,250 vehicles per day. A pedestrian intersection control beacon (ICB) was installed along MD 500 at the Anacostia Tributary Trail System south of Jamestown Road in Prince George\'s County to facilitate pedestrian movements across MD 500 while providing safe and secure pedestrian access to the Anacostia Tributary Trail System.</p>\r\n<p>Itenology Corporation provided assistance with the crash analysis for this location. Crash data was compared over a period of three years both prior to and after the installation of the ICB to determine if the ICB had any impact on the frequency, type, or severity of these crashes. Itenology Corporation performed a field review and sought on-site opinions from the pedestrians to obtain the users\' point of view. Although a 42% decline in crashes was observed, the number of pedestrian related crashes increased. It was concluded from the analysis that there was no viable correlation between the ICB and the number or type of crashes or the severity. From the standpoint of safety and based on the reconnaissance conducted in the field, it was recommended that the hardware and signage be upgraded to increase visibility for pedestrians and bikers as well as motorists.</p>\r\n<p>Note: The above image does not represent actual data and is shown only as an example.</p>', '2022-12-15 10:02:31', '2022-12-15 10:02:31'),
(5, 3, 'Before and After Studies', 'projects\\December2022\\v1awy05afSrqpA0sHVTc.jpg', NULL, '<p>The Statewide Mobility Report is a valuable metric provided by MD SHA on an annual basis. This report focuses on key metrics such as mobility trends and mitigation strategies resulting in user cost savings. More specifically the reports depicts trends in growth, congestion, and reliability.</p>\r\n<p>Itenology Corporation provides technical support to MD SHA in the development and improvement of the MD Mobility Report and has conducted &ldquo;Before &amp; After Studies at various locations throughout the State of Maryland. Recent assignments included:</p>\r\n<ul>\r\n<li class=\"icon fa-arrow-circle-right\">&nbsp;&nbsp;&nbsp;MD 145 and MD 146 in Baltimore County</li>\r\n<li class=\"icon fa-arrow-circle-right\">&nbsp;&nbsp;&nbsp;US 50 at Friendship Road/Seahawk Road in Worcester County</li>\r\n<li class=\"icon fa-arrow-circle-right\">&nbsp;&nbsp;&nbsp;MD 197 and Powder Mill Road in Prince George\'s County</li>\r\n<li class=\"icon fa-arrow-circle-right\">&nbsp;&nbsp;&nbsp;MD175 and Rockenbach Road/Ridge Road in Anne Arundel County</li>\r\n</ul>\r\n<p>From the Cost-Benefit Analysis viewpoint, the Before and After Studies involve comparative analyses of conditions prior to and after an improvement project, thus quantifying the resulting benefits to the traveling public. These results typically include comparison of measures of effectiveness such as speed, density, level of service, travel time, overall network delay, etc. to quantify benefits derived from VISSIM or Synchro/SimTraffic simulation.</p>', '2022-12-15 10:04:31', '2022-12-15 10:04:31'),
(6, 3, 'Corridor Analysis', 'projects\\December2022\\dPQEbgnyrbFgiVu7kf5T.jfif', NULL, '<p>Itenology Corporation has vast knowledge and technical expertise with multi modal micro simulation software such as VISSIM and Synchro/SimTraffic. With 3-D capabilities, the user has the benefit of realizing real-world traffic-pedestrian interactions and gauge behavior. VISSIM can also assist in mesoscopic simulation when the effects of a detour, for example, is to be calculated on a smaller scale within a larger network given alternative routes are available to the motorists.</p>\r\n<p>Itenology Corporation staff has assisted its clients with the developing VISSIM network from ground up and introducing signals and remaining appurtenance of the roadway features including geometry, configuration, and distribution of traffic i.e., vehicular and truck routing on the model network. With the physical features on the network, the modelers began calibration process to mimic the real world conditions from the peak periods including the traffic volume surge, motorists\' behavior and pedestrian interactions on the roadway.</p>\r\n<p>The resulting models followed strict metrics in calibration such as speed, travel time and volume throughput before future conditions were analyzed. Future conditions varied not only in traffic volume served but also in roadway geometry and tacit change in motorists\' behavior.</p>\r\n<p>When it comes to analyzing projects with freeway-to-freeway, freeway-to-arterial, and multi modal networks, Itenology Corporation experience is among the best in the industry</p>', '2022-12-15 10:06:11', '2022-12-15 10:06:11'),
(7, 3, 'Roadway Sign Inventory', 'projects\\December2022\\7lV1KqFJCvIhvEyXkbfr.jpg', NULL, '<p>The MDTA offers discounts up to 25% for E-ZPass &reg; patrons on its roadway network. This information is not widely disseminated and hence some toll roads have less than expected patronage than others with convenience in toll transactions utilizing E-ZPass &reg;. Recently, MDTA began advertising toll rates on DMS on its facilities with applicable discounts.</p>\r\n<p>Itenology Corporation staff has assisted its clients with the developing VISSIM network from ground up and introducing signals and remaining appurtenance of the roadway features including geometry, configuration, and distribution of traffic i.e., vehicular and truck routing on the model network. With the physical features on the network, the modelers began calibration process to mimic the real world conditions from the peak periods including the traffic volume surge, motorists\' behavior and pedestrian interactions on the roadway.</p>\r\n<p>The development of these templates along with the actual signage along both approaches to the Intercounty Connector at all entry points would help MDTA identify critical messages and locations thereof. The intent of the study is to help modify signage to influence motorists to use Intercounty Connector more often.</p>', '2022-12-15 10:08:17', '2022-12-15 10:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-12-08 06:36:36', '2022-12-08 06:36:36'),
(2, 'user', 'Normal User', '2022-12-08 06:36:36', '2022-12-08 06:36:36'),
(4, 'website_admin', 'website_admin', '2022-12-13 05:19:39', '2022-12-13 05:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `image_url`, `image_caption`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Traffic Engineering', 'services\\December2022\\flIk31UmUEt0RUpx1C43.jpg', NULL, '<p>Itenology Corporation\'s staff includes registered professional traffic engineers specializing in the performance of Traffic Operations Analyses and development of Traffic Engineering Studies.</p>', '2022-12-15 09:47:13', '2022-12-15 09:47:13'),
(4, 'Construction Management and Inspection', 'services\\December2022\\KRhG0ruzeibZpBzIsHrC.jpg', NULL, '<p>Itenology Corporation staff has performed construction inspection on roadway infrastructures, new bridge construction, caisson drilling/pouring, and rehab of historic structures; and prepared training material and certificates for the inspection of the installation of ancillary structures for MDOT SHA.</p>', '2022-12-15 10:11:06', '2022-12-15 10:11:06'),
(5, 'Inspection', 'services\\December2022\\kyQRdJmxr7NcyhFgfxdx.jpg', NULL, '<p>Itenology Corporation employs Professional Engineers who are registered in multiple states and who possess more than 30 years of experience in the inspection of bridges and ancillary structures. Itenology Team Leaders are NBIS certified with many years of experience.</p>\r\n<p>Itenology inspectors have performed hands-on inspection on over 1000 bridges and more than 5000 ancillary structures including sign structures, signal structures, lighting structures, and high-mast lighting poles.</p>', '2022-12-15 10:23:43', '2022-12-15 10:23:43'),
(6, 'Web Development', 'services\\December2022\\qCeMk4lW5e95J2QzwRyB.jpg', NULL, '<p>Itenology Corporation specializes in developing websites for the Internet as well as the Intranet using the latest available technologies.</p>\r\n<p>All of Internet and Intranet applications that Itenology Corporation has developed are dynamic pages that are database driven. Websites are developed using the latest technologies including .NET, PHP, SharePoint, Responsive Design, etc. linked to database systems such as Microsoft Access, SQL, or Oracle.</p>\r\n<p>Itenology Corporation can provide you with an excellent job in the creation of your websites for the Internet and your local Intranet.</p>', '2022-12-15 10:26:53', '2022-12-15 10:26:53'),
(7, 'SharePoint Solutions', 'services\\December2022\\hd7xRYOBwpBFr8MGXFuV.jpg', NULL, '<p>Itenology Corporation created several SharePoint solutions to its clients to provide document management, news announcemnets, tracking of requests, and several other&nbsp;</p>', '2022-12-15 10:29:40', '2022-12-15 10:29:40'),
(8, 'Database Applications', 'services\\December2022\\XScf07Uy9c0BxaEKbYJA.jpg', NULL, '<p>Relational database applications are necessary for your company to be able to find and update the information necessay to run the company. The success of your company depends on this information, and how easy you can find it.</p>\r\n<p>All of your clients, contacts, projects, and employees information, can be available to you with a click, through a state-of-the-art database applications that we can creat for you.</p>', '2022-12-15 10:32:23', '2022-12-15 10:32:23'),
(9, 'GIS Projects', 'services\\December2022\\D2hLwKIK8Hc4kuH4KyU4.jpg', NULL, '<p>Itenology has spearheaded the georeferencing and digitization of Conduit Utility Plans for Baltimore City Department of Transportation. The Cityworks application was leveraged to streamline workflows throughout the process. Work Orders were created for each Utility Plan and tracked using task assignments. Relationships were implemented in ArcMap to maintain the association between each Utility Plan Area, and the Conduit features contained within.</p>', '2022-12-15 10:34:17', '2022-12-15 10:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subtitles`
--

CREATE TABLE `subtitles` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `subtitle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subtitles`
--

INSERT INTO `subtitles` (`id`, `service_id`, `subtitle_name`, `subtitle_image_url`, `subtitle_image_caption`, `subtitle_description`, `created_at`, `updated_at`, `project_id`) VALUES
(2, 3, 'Traffic Engineering Studies:', NULL, NULL, '<p>Itenology Corporation\'s staff members are experienced in the performance of a wide variety of Traffic Engineering Studies including Traffic Impact Studies, Before &amp; After Studies, Candidate Safety Improvement Intersection Studies, etc. These studies may be conducted to identify safety conditions or operational constraints, to assess the potential effects of a new development, or to identify potential improvement concepts.</p>', '2022-12-15 09:50:51', '2022-12-15 09:50:51', NULL),
(3, 3, 'Traffic Operations Analyses:', NULL, NULL, '<p>Itenology Corporation\'s Traffic Engineering staff is well versed in the use of a variety of traffic operations analysis tools and techniques including Critical Lane Volume Analyses and Highway Capacity Manual 2010 techniques, as well as SidraIntersection, Synchro/SimTraffic and Vissim software tools. Analyses may be conducted as either static or simulation, and may be performed for stop-controlled intersections, signalized intersections, roundabouts, interchanges, freeway segments, and arterial corridors.</p>', '2022-12-15 09:51:49', '2022-12-15 09:51:49', NULL),
(4, 3, 'Traffic Volumes:', NULL, NULL, '<p>Itenology Corporation\'s Traffic Engineers are also experienced in the development of balanced turning movement volumes for existing and future conditions. Traffic volume data developed typically includes AM and PM peak hour data, Average Daily Traffic (ADT) volume data, and vehicle classification data. Accurate traffic volume data yields reliable results.</p>', '2022-12-15 09:52:31', '2022-12-15 09:52:31', NULL),
(5, 3, 'Presentations and Reports', NULL, NULL, '<p>Itenology Corporation\'s staff includes well-trained writers, experienced in the development of presentation materials for both client and public meetings. Moreover, our Traffic Engineering Studies, analyses results, and improvement concepts are presented in concise, easy to follow reports</p>', '2022-12-15 09:53:00', '2022-12-15 10:13:24', NULL),
(6, 4, 'Construction Inspection Manual of Ancillary Structures', 'subtitles\\December2022\\hLSRNySqJ70Yz1CnmP4y.jpg', NULL, '<p>Itenology Corporation developed the training material for installation of traffic control devices for the Maryland Department of Transportation State Highway Administration. The training material included a manual on the construction inspection of different types of sign structures as well as a PowerPoint presentation to use during the training of inspectors and test questions to certify inspectors.</p>', '2022-12-15 10:12:41', '2022-12-15 10:12:41', NULL),
(7, 4, 'Office Engineer for MDTA Bay Bridge Projects', 'subtitles\\December2022\\Ebusq5qG7h9BuFBBjo5z.jpg', NULL, '<p>Itenology Corporation provided office engineer for Maryland Transportation Authority Contract Number BB 2819-0000 - Deck Rehabilitation of westbound Bay Bridge, and Contract Number BB 3014 - AET Conversion and Automated Lane Control System at Bay Bridge.</p>', '2022-12-15 10:15:09', '2022-12-15 10:15:09', NULL),
(8, 7, 'SharePoint Examples', NULL, NULL, '<p><strong>Leave Request Application:</strong>&nbsp;The Leave Request System is a SharePoint 2010 based solution that provides a method to add, edit, cancel, approve, and reject leave requests. The system also allows administrators to view leave requests based on divisions and teams. The Leave Request System contains specific sections that are only accessible by the site administrators. Team leads and approvers will see different views of leave requests to allow them to approve and reject them. Users can update or cancel their request at any time before it is approved. Notifications are sent to both requestors and approvers whenever a request is added, updated, approved, or rejected.</p>\r\n<p>In addition to out of the box SharePoint functionality, there are several forms that were developed with custom code (JavaScript Client Object Model). The tool used to develop the application is SharePoint Designer, in which the custom code and workflows were created. The team leads and timesheet administrators use reports in the form of customizable views to verify individuals&rsquo; leave hours and check them against the leave hours entered into the their timesheet. Several team calendar views were also created to allow users to view approved leave requests on their calendars.</p>\r\n<p><strong>DSED SharePoint Application:</strong>&nbsp;The Data Services Engineering Division, DSED, SharePoint application is an internal site that encompasses multiple subsites representing teams within the division, such as Data Collection, Geographic Information System, Information Technology, Mapping, Travel Forecasting, Traffic Monitoring, and State and Local. Each of these subsites contains all information required by the team, such as goals, missions, organizational chart, products, services, featured applications, blogs, files, and links to related sites. Every site, within the DSED Site Collection, has a site administrator who can administer the site and members can collaborate on documents and share information.</p>\r\n<p>The DSED application is SharePoint 2010 based and was built using out of the box functionality, SharePoint Designer Workflows, JavaScript Client Object Model, and Server Side code. The JavaScript code is used to validate forms and to update related lists. The Server Side code is used for permissions, such as adding and removing users to permission groups and giving elevated permissions when required.</p>\r\n<p>The DSED application played a major role in centralizing information for each team and provides a repository for users to electronically manage their documents and to make them available to everyone under the &ldquo;Employee&rsquo;s Resource Area.&rdquo; The DSED application contains reports in a form of PDF, views, excel sheets, and datasheet views.</p>', '2022-12-15 10:30:44', '2022-12-15 10:30:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `image_url`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Amal Abou-Sef', 'President', 'teams\\December2022\\mKLkT7gtrhwUGDRbRFML.jpg', 'Mrs. Abou-Sef has a Bachelor of Science in Civil Engineering and more than 25 years of experience.', '2022-12-21 10:17:12', '2022-12-21 10:17:12'),
(2, 'Morteza Tadayon', 'Vice President', 'teams\\December2022\\7DehBqX6cEE1LfaxT7PJ.jpg', 'Mr. Tadayon has a Bachelor of Science in Electrical Engineering and a Master\'s Degree in Engineering with more than 35 years of experience in the transportation industry where he spent 30 years at Maryland Department of Transportation, State Highway Administration.', '2022-12-21 10:20:19', '2022-12-21 10:20:19'),
(3, 'Rabih Najib, PhD, PE', 'Chief Operations Officer', 'teams\\December2022\\6JD1FcfHHLe3L78TOUFZ.jpg', 'Dr. Najib is a licensed professional engineer in Maryland, Virginia, and Pennsylvania. Dr. Najib has more than 30 years of experience in the fields of transportation and information technology.', '2022-12-21 10:21:20', '2022-12-21 10:21:20'),
(4, 'Sherif Naoum, PhD, PE, GISP, PMP', 'Program Manager', 'teams\\December2022\\ZRXZX3JOfYLzbNUGzoDG.png', 'Dr. Naoum has over 28 years of experience and has served as a program manager, asset manager and project manager on a variety of contracts of varying sizes and scopes such as: water and wastewater condition assessment and asset management; wet weather consent decree design and construction; wastewater and stormwater urgent needs/on-call investigation, recommendations, design and construction; PS&E (plans, specification and estimate) development; permit preparation and infrastructure mapping. He is also experienced in the development of GIS applications, including statistical and spatial modeling and analysis using ArcGIS products.', '2022-12-21 10:22:18', '2022-12-21 10:22:18'),
(5, 'Ghulam Ashar', 'Senior Traffic Engineer', 'teams\\December2022\\jmoCv1i27SEIURlizEBr.jpg', 'Mr. Ashar has a Bachelor of Science in Civil Engineering; a Master of Science in Transportation Planning and Engineering; a Master of Science in Management Science, and an MBA. Mr. Ashar has more than16 years of experience in traffic engineering with duties that included collection and analysis of data for planning and engineering projects, traffic studies, travel demand forecasts, and the development of corridor wide network models using Synchro, CORSIM, and VISSIM.', '2022-12-21 10:23:43', '2022-12-21 10:23:43'),
(6, 'Elham Shayanfar, PhD', 'Transportation Engineer', 'teams\\December2022\\HED803nGcoOIGdNDCIJZ.jpg', 'Dr. Shayanfar has extensive experience in transportation planning and engineering including operational analysis utilizing micro, meso and macroscopic simulation modeling, signal warrant analyses, traffic impact and speed studies as well as geometric design. She has also been involved with various transportation research projects and has extensive experience working with the MWCOG Travel Demand Model as well as the Maryland Statewide Transportation Model to develop future travel demand.', '2022-12-21 10:24:45', '2022-12-21 10:24:45'),
(7, 'Bob DeBlase', 'Traffic Signal Timing Expert', 'teams\\December2022\\bmB1YZowiKBqadCjFOsD.jpg', 'Bob brings to Itenology over 45 years of experience in the Traffic Signal Maintenance and Engineering field. He worked for MDOT-SHA, Office of Traffic and Safety and District 5 Construction where he was the Signal System Team Leader and was responsible for managing a team of ITS technicians that performed signal operational modifications and signal timing optimization. Mr. DeBlase programmed, managed, and operated the Econolite CENTRACS and ARIES Signal software applications. He Has expert knowledge in closed loop Signal Systems with on street Master Control and Adaptive Signal Systems using cellular modems communicating to a Central Server. Bob performed signal plan review and signal phasing design to assist Traffic Engineering Design Division. He also worked as a Traffic Engineer Consultant for MDOT-SHA District 2 Traffic. In this position, he provided assistance to the ADE-Traffic investigating and responding to citizen complaints on Maryland State Highways with regard to traffic signals, signing, pavement markings and various other issues.', '2022-12-21 10:26:17', '2022-12-21 10:26:17'),
(8, 'Curtis Lowery', 'GIS Analyst', 'teams\\December2022\\i2ULek1BEfsSt3VYVxSj.jpg', 'Mr. Lowery has over 10 years of work experience as a GIS specialist. Specialized software skills include ESRI Software: ArcGIS (9.3 to 10.8), ArcCatalog, ArcSDE, ArcGIS Online, Collector App for ArcGIS, ArcGIS extensions: Spatial Analyst, Network Analyst, and Publisher. Specialized hardware knowledge includes GPS hardware, Trimble Geo XT, Data collection & Post Processing. Other specialized skills include: georeferencing, digitizing, utility networks, asset management, geocoding, schema design, data management, data driven pages, and Model Builder.', '2022-12-21 10:27:24', '2022-12-21 10:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$wL56iQvn0HsK6S5jIhErVusXj.Ydi3PUqE2DqWiOltYOTuFYN1zmC', NULL, NULL, '2022-12-08 06:41:17', '2022-12-08 06:41:19'),
(2, 4, 'Raghad', 'raghad@admin.com', 'users\\December2022\\CVNlCCyVwuJEEGd3drGt.png', NULL, '$2y$10$bww5gVnRiizpzfyhcONcbuvV5f1IUo0sACVl54eWZWn6PDcABuCiK', NULL, '{\"locale\":\"en\"}', '2022-12-13 05:20:52', '2022-12-13 05:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subtitles`
--
ALTER TABLE `subtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subtitles`
--
ALTER TABLE `subtitles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
