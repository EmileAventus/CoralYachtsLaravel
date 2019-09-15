-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 06:17 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coralyachts`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `Customers_customerID` int(11) NOT NULL,
  `Yachts_YachtID` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Option',
  `paymentstatus` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Open',
  `paymentpreference` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catering` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skipper` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flottielje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `groceries` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurence` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `childlifejackets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fishinggear` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddleboard` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agreedtoterms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `Customers_customerID`, `Yachts_YachtID`, `status`, `paymentstatus`, `paymentpreference`, `date_start`, `date_end`, `catering`, `skipper`, `flottielje`, `groceries`, `transfer`, `insurence`, `childlifejackets`, `fishinggear`, `paddleboard`, `agreedtoterms`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 'OPTION', 'PENDING', 'asdasd', '2019-08-28 00:00:00', '2019-09-11 00:00:00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2019-09-15 13:53:03', '2019-09-15 13:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-09-14 10:25:18', '2019-09-14 10:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interalnotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `address`, `zipcode`, `city`, `country`, `phone`, `email`, `interalnotes`, `created_at`, `updated_at`) VALUES
(1, 'Jan', 'Boskamp', 'Fantasia Land 69', 'AAAA 12', 'City', 'NL', '0612345678', 'Jan@Boskamp.com', 'Niks', '2019-09-14 19:18:21', '2019-09-15 10:20:19'),
(2, 'Ronald', 'Koeman', 'Oranje', '0000', 'Oranje', 'NL', '0612345252', 'RK@oranje.nl', 'Nee', '2019-09-15 11:55:14', '2019-09-15 11:55:14');

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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(64, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 0, '{}', 2),
(66, 8, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 0, '{}', 3),
(67, 8, 'length', 'number', 'Length', 0, 1, 1, 1, 1, 0, '{}', 4),
(68, 8, 'depth', 'number', 'Depth', 0, 1, 1, 1, 1, 0, '{}', 5),
(69, 8, 'engine', 'text', 'Engine', 0, 1, 1, 1, 1, 0, '{}', 6),
(70, 8, 'sail', 'text', 'Sail', 0, 1, 1, 1, 1, 0, '{}', 7),
(71, 8, 'onepersoncabins', 'number', 'One person cabins', 0, 1, 1, 1, 1, 0, '{}', 8),
(72, 8, 'twopersoncabins', 'number', 'Two person cabins', 0, 1, 1, 1, 1, 0, '{}', 9),
(73, 8, 'beds', 'number', 'Beds', 0, 1, 1, 1, 1, 0, '{}', 10),
(74, 8, 'toilets', 'number', 'Toilets', 0, 1, 1, 1, 1, 0, '{}', 11),
(75, 8, 'showers', 'number', 'Showers', 0, 1, 1, 1, 1, 0, '{}', 12),
(76, 8, 'gear', 'text', 'Gear', 0, 1, 1, 1, 1, 0, '{}', 13),
(77, 8, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 0, '{}', 14),
(78, 8, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 15),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 16),
(81, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 0, '{}', 2),
(83, 9, 'city', 'text', 'City', 1, 1, 1, 1, 1, 0, '{}', 3),
(84, 9, 'country', 'text', 'Country (ISO 3166-2 code)', 1, 1, 1, 1, 1, 0, '{}', 4),
(85, 9, 'contactperson', 'text', 'Contact person', 1, 1, 1, 1, 1, 0, '{}', 5),
(86, 9, 'contactphone', 'text', 'Contact phone', 1, 1, 1, 1, 1, 0, '{}', 6),
(87, 9, 'contactemail', 'text', 'Contact email', 1, 1, 1, 1, 1, 0, '{}', 7),
(88, 9, 'facilities', 'text', 'Facilities', 1, 1, 1, 1, 1, 0, '{}', 8),
(89, 9, 'directions', 'text', 'Directions', 1, 1, 1, 1, 1, 0, '{}', 9),
(90, 9, 'parking', 'text', 'Parking', 1, 1, 1, 1, 1, 0, '{}', 10),
(91, 9, 'catering', 'select_dropdown', 'Catering', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 11),
(92, 9, 'skipper', 'select_dropdown', 'Skipper', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 12),
(93, 9, 'groceries', 'select_dropdown', 'Groceries', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 13),
(94, 9, 'transfer', 'select_dropdown', 'Transfer', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 14),
(95, 9, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 15),
(97, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(108, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 11, 'Yachttypes_yachttypeID', 'hidden', 'Yachttypes YachttypeID', 0, 0, 0, 0, 0, 0, '{}', 3),
(110, 11, 'Ports_portID', 'hidden', 'Ports PortID', 0, 0, 0, 0, 0, 0, '{}', 6),
(111, 11, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 0, '{}', 8),
(112, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 0, '{}', 2),
(113, 11, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 0, '{}', 5),
(114, 11, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 9),
(115, 11, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 10),
(116, 11, 'yacht_belongsto_yachttype_relationship', 'relationship', 'Yacht type', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Yachttype\",\"table\":\"yachttypes\",\"type\":\"belongsTo\",\"column\":\"Yachttypes_yachttypeID\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(117, 11, 'yacht_belongsto_port_relationship', 'relationship', 'Port', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Port\",\"table\":\"ports\",\"type\":\"belongsTo\",\"column\":\"Ports_portID\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(118, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 12, 'firstname', 'text', 'Firstname', 0, 1, 1, 1, 1, 0, '{}', 2),
(120, 12, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 0, '{}', 3),
(121, 12, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 0, '{}', 4),
(122, 12, 'zipcode', 'text', 'Zipcode', 0, 1, 1, 1, 1, 0, '{}', 5),
(123, 12, 'city', 'text', 'City', 0, 1, 1, 1, 1, 0, '{}', 6),
(124, 12, 'country', 'text', 'Country (ISO 3166-2 code)', 0, 1, 1, 1, 1, 0, '{}', 7),
(125, 12, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 0, '{}', 8),
(126, 12, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 0, '{}', 9),
(127, 12, 'interalnotes', 'text', 'Interalnotes', 0, 1, 1, 1, 1, 0, '{}', 10),
(128, 12, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 11),
(129, 12, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 12),
(130, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(131, 13, 'Customers_customerID', 'hidden', 'Customers CustomerID', 1, 0, 0, 0, 0, 0, '{}', 2),
(132, 13, 'Yachts_YachtID', 'hidden', 'Yachts YachtID', 1, 0, 0, 0, 0, 0, '{}', 4),
(133, 13, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 0, 0, '{\"options\":{\"OPTION\":\"Option\",\"CONFIRMED\":\"Confirmed\",\"CANCELED\":\"Canceled\"}}', 6),
(134, 13, 'paymentstatus', 'select_dropdown', 'Payment status', 1, 1, 1, 1, 0, 0, '{\"options\":{\"OPEN\":\"Open\",\"PENDING\":\"Pending\",\"PARTIALLYCOMPLETED\":\"Partilly completed\",\"Completed\":\"Completed\",\"CREDITED\":\"Credited\"}}', 7),
(135, 13, 'paymentpreference', 'text', 'Payment preference', 1, 1, 1, 1, 1, 0, '{}', 9),
(136, 13, 'date_start', 'date', 'Date Start', 1, 1, 1, 1, 1, 0, '{}', 10),
(137, 13, 'date_end', 'date', 'Date End', 1, 1, 1, 1, 1, 0, '{}', 11),
(138, 13, 'catering', 'select_dropdown', 'Catering', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 12),
(139, 13, 'skipper', 'select_dropdown', 'Skipper', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 13),
(140, 13, 'flottielje', 'select_dropdown', 'Flottielje', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 14),
(141, 13, 'groceries', 'select_dropdown', 'Groceries', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 15),
(142, 13, 'transfer', 'select_dropdown', 'Transfer', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 16),
(143, 13, 'insurence', 'select_dropdown', 'Insurence', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 17),
(144, 13, 'childlifejackets', 'select_dropdown', 'Child life jackets', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 18),
(145, 13, 'fishinggear', 'select_dropdown', 'Fishing gear', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 19),
(146, 13, 'paddleboard', 'select_dropdown', 'Paddle board', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 20),
(147, 13, 'agreedtoterms', 'select_dropdown', 'Agreed to terms', 1, 1, 1, 1, 1, 0, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 21),
(148, 13, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 22),
(149, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(150, 13, 'booking_belongsto_customer_relationship', 'relationship', 'Customer', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"Customers_customerID\",\"key\":\"id\",\"label\":\"firstname\",\"pivot_table\":\"bookings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(151, 13, 'booking_hasone_yacht_relationship', 'relationship', 'Yacht', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Yacht\",\"table\":\"yachts\",\"type\":\"belongsTo\",\"column\":\"Yachts_YachtID\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"bookings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(154, 9, 'flottielje', 'select_dropdown', 'Flottielje', 1, 1, 1, 1, 1, 1, '{\"options\":{\"YES\":\"Yes\",\"NO\":\"No\"}}', 13);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(8, 'yachttypes', 'yachttypes', 'Yachttype', 'Yachttypes', NULL, 'App\\Yachttype', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-14 13:35:40', '2019-09-14 20:03:26'),
(9, 'ports', 'ports', 'Port', 'Ports', NULL, 'App\\Port', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-14 14:33:41', '2019-09-15 14:13:54'),
(11, 'yachts', 'yachts', 'Yacht', 'Yachts', NULL, 'App\\Yacht', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-14 15:30:50', '2019-09-15 10:38:33'),
(12, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Customer', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-14 19:10:41', '2019-09-14 20:03:43'),
(13, 'bookings', 'bookings', 'Booking', 'Bookings', NULL, 'App\\Booking', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-14 19:35:41', '2019-09-15 14:14:23'),
(14, 'paymentstatusmodel', 'paymentstatusmodel', 'Paymentstatusmodel', 'Paymentstatusmodels', NULL, 'App\\Paymentstatusmodel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-15 10:45:01', '2019-09-15 10:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', '2019-09-14 10:25:17', '2019-09-14 10:25:17');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 1, '2019-09-14 10:25:17', '2019-09-14 15:27:33', 'voyager.dashboard', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2019-09-14 10:25:17', '2019-09-14 19:42:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2019-09-14 10:25:17', '2019-09-14 19:42:05', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-09-14 10:25:17', '2019-09-14 19:42:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-09-14 10:25:17', '2019-09-14 11:33:46', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-09-14 10:25:17', '2019-09-14 11:33:46', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-09-14 10:25:17', '2019-09-14 11:33:46', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-09-14 10:25:17', '2019-09-14 11:33:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-09-14 10:25:17', '2019-09-14 19:42:05', 'voyager.settings.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2019-09-14 10:25:18', '2019-09-14 19:42:05', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-09-14 10:25:18', '2019-09-14 11:33:46', 'voyager.hooks', NULL),
(17, 1, 'Yacht types', '', '_self', 'voyager-rocket', '#000000', NULL, 3, '2019-09-14 13:35:40', '2019-09-14 15:32:36', 'voyager.yachttypes.index', 'null'),
(18, 1, 'Ports', '', '_self', 'voyager-anchor', '#000000', NULL, 4, '2019-09-14 14:33:42', '2019-09-14 15:31:28', 'voyager.ports.index', 'null'),
(20, 1, 'Yachts', '', '_self', 'voyager-boat', '#000000', NULL, 2, '2019-09-14 15:30:50', '2019-09-14 15:32:15', 'voyager.yachts.index', 'null'),
(21, 1, 'Customers', '', '_self', 'voyager-people', '#000000', NULL, 5, '2019-09-14 19:10:42', '2019-09-14 19:14:21', 'voyager.customers.index', 'null'),
(22, 1, 'Bookings', '', '_self', 'voyager-book', '#000000', NULL, 6, '2019-09-14 19:35:42', '2019-09-14 19:42:11', 'voyager.bookings.index', 'null');

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
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Development Notes: Problems', 'Development notes: problems', '<p>Probleem #1: Dashboard widgets verwijzen naar goede pagina\'s maar geeft verkeerde tekst weer.</p>\r\n<p>Het lijkt erop dat de tekst gebaseerd is op bepaalde Model klassen. Het veranderen van de klasse in de source code werkt niet. Hoewel het model wel bestaat, ontstaat er een error dat het model niet gevonden kan worden.</p>\r\n<p>Tijdelijke oplossing: ?</p>', NULL, 'development-notes-problems', 'Development notes: problems', 'Development notes: problems', 'INACTIVE', '2019-09-14 14:20:00', '2019-09-15 13:58:01'),
(3, 1, 'Development Notes', 'Development Notes', NULL, NULL, 'development-notes', 'Development Notes', 'Development Notes', 'INACTIVE', '2019-09-14 19:01:35', '2019-09-15 14:12:18');

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
(1, 'browse_admin', NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(2, 'browse_bread', NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(3, 'browse_database', NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(4, 'browse_media', NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(5, 'browse_compass', NULL, '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(6, 'browse_menus', 'menus', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(7, 'read_menus', 'menus', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(8, 'edit_menus', 'menus', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(9, 'add_menus', 'menus', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(10, 'delete_menus', 'menus', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(11, 'browse_roles', 'roles', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(12, 'read_roles', 'roles', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(13, 'edit_roles', 'roles', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(14, 'add_roles', 'roles', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(15, 'delete_roles', 'roles', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(16, 'browse_users', 'users', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(17, 'read_users', 'users', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(18, 'edit_users', 'users', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(19, 'add_users', 'users', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(20, 'delete_users', 'users', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(21, 'browse_settings', 'settings', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(22, 'read_settings', 'settings', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(23, 'edit_settings', 'settings', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(24, 'add_settings', 'settings', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(25, 'delete_settings', 'settings', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(26, 'browse_categories', 'categories', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(27, 'read_categories', 'categories', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(28, 'edit_categories', 'categories', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(29, 'add_categories', 'categories', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(30, 'delete_categories', 'categories', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(31, 'browse_posts', 'posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(32, 'read_posts', 'posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(33, 'edit_posts', 'posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(34, 'add_posts', 'posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(35, 'delete_posts', 'posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(36, 'browse_pages', 'pages', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(37, 'read_pages', 'pages', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(38, 'edit_pages', 'pages', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(39, 'add_pages', 'pages', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(40, 'delete_pages', 'pages', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(41, 'browse_hooks', NULL, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(47, 'browse_yachttypes', 'yachttypes', '2019-09-14 13:35:40', '2019-09-14 13:35:40'),
(48, 'read_yachttypes', 'yachttypes', '2019-09-14 13:35:40', '2019-09-14 13:35:40'),
(49, 'edit_yachttypes', 'yachttypes', '2019-09-14 13:35:40', '2019-09-14 13:35:40'),
(50, 'add_yachttypes', 'yachttypes', '2019-09-14 13:35:40', '2019-09-14 13:35:40'),
(51, 'delete_yachttypes', 'yachttypes', '2019-09-14 13:35:40', '2019-09-14 13:35:40'),
(52, 'browse_ports', 'ports', '2019-09-14 14:33:41', '2019-09-14 14:33:41'),
(53, 'read_ports', 'ports', '2019-09-14 14:33:41', '2019-09-14 14:33:41'),
(54, 'edit_ports', 'ports', '2019-09-14 14:33:41', '2019-09-14 14:33:41'),
(55, 'add_ports', 'ports', '2019-09-14 14:33:41', '2019-09-14 14:33:41'),
(56, 'delete_ports', 'ports', '2019-09-14 14:33:41', '2019-09-14 14:33:41'),
(62, 'browse_yachts', 'yachts', '2019-09-14 15:30:50', '2019-09-14 15:30:50'),
(63, 'read_yachts', 'yachts', '2019-09-14 15:30:50', '2019-09-14 15:30:50'),
(64, 'edit_yachts', 'yachts', '2019-09-14 15:30:50', '2019-09-14 15:30:50'),
(65, 'add_yachts', 'yachts', '2019-09-14 15:30:50', '2019-09-14 15:30:50'),
(66, 'delete_yachts', 'yachts', '2019-09-14 15:30:50', '2019-09-14 15:30:50'),
(67, 'browse_customers', 'customers', '2019-09-14 19:10:42', '2019-09-14 19:10:42'),
(68, 'read_customers', 'customers', '2019-09-14 19:10:42', '2019-09-14 19:10:42'),
(69, 'edit_customers', 'customers', '2019-09-14 19:10:42', '2019-09-14 19:10:42'),
(70, 'add_customers', 'customers', '2019-09-14 19:10:42', '2019-09-14 19:10:42'),
(71, 'delete_customers', 'customers', '2019-09-14 19:10:42', '2019-09-14 19:10:42'),
(72, 'browse_bookings', 'bookings', '2019-09-14 19:35:41', '2019-09-14 19:35:41'),
(73, 'read_bookings', 'bookings', '2019-09-14 19:35:41', '2019-09-14 19:35:41'),
(74, 'edit_bookings', 'bookings', '2019-09-14 19:35:41', '2019-09-14 19:35:41'),
(75, 'add_bookings', 'bookings', '2019-09-14 19:35:42', '2019-09-14 19:35:42'),
(76, 'delete_bookings', 'bookings', '2019-09-14 19:35:42', '2019-09-14 19:35:42'),
(77, 'browse_paymentstatusmodel', 'paymentstatusmodel', '2019-09-15 10:45:01', '2019-09-15 10:45:01'),
(78, 'read_paymentstatusmodel', 'paymentstatusmodel', '2019-09-15 10:45:01', '2019-09-15 10:45:01'),
(79, 'edit_paymentstatusmodel', 'paymentstatusmodel', '2019-09-15 10:45:01', '2019-09-15 10:45:01'),
(80, 'add_paymentstatusmodel', 'paymentstatusmodel', '2019-09-15 10:45:01', '2019-09-15 10:45:01'),
(81, 'delete_paymentstatusmodel', 'paymentstatusmodel', '2019-09-15 10:45:01', '2019-09-15 10:45:01');

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
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactperson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactphone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactemail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `directions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parking` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catering` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skipper` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flottielje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `groceries` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ports`
--

INSERT INTO `ports` (`id`, `name`, `city`, `country`, `contactperson`, `contactphone`, `contactemail`, `facilities`, `directions`, `parking`, `catering`, `skipper`, `flottielje`, `groceries`, `transfer`, `created_at`, `updated_at`) VALUES
(2, 'Port Haven', 'Apeldoorn', 'NL', 'Willem', '0612345678', 'Willem@willem.com', 'Industrial Complex', '1', '1', '1', '1', '', '1', '1', '2019-09-14 14:51:59', '2019-09-14 14:51:59'),
(3, 'Port Test', 'test', 'NL', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', '1', '1', '', '1', '1', '2019-09-15 10:12:38', '2019-09-15 10:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-14 10:25:18', '2019-09-14 10:25:18');

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
(1, 'admin', 'Administrator', '2019-09-14 10:25:17', '2019-09-14 10:25:17'),
(2, 'user', 'Normal User', '2019-09-14 10:25:17', '2019-09-14 10:25:17');

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

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-09-14 10:25:18', '2019-09-14 10:25:18'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-09-14 10:25:18', '2019-09-14 10:25:18');

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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$BNgLbjKYFKMR0gSC008xr.ruU8nR6t6RKuEC5.pQniuZbR7wrjaNm', 'uJwwL1KqoJgyRqJVS8QiYTsLQQnNmE3jFkHrDU1yykRS8YrDpG3qg9EAKXYB', NULL, '2019-09-14 10:25:18', '2019-09-14 10:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yachts`
--

CREATE TABLE `yachts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Yachttypes_yachttypeID` int(10) UNSIGNED NOT NULL,
  `Ports_portID` int(10) UNSIGNED NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yachts`
--

INSERT INTO `yachts` (`id`, `Yachttypes_yachttypeID`, `Ports_portID`, `status`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Available', 'Noisy boat', '23', '2019-09-14 15:44:32', '2019-09-14 15:44:32'),
(2, 2, 3, 'Test', 'Yacht 2', '55', '2019-09-15 11:53:39', '2019-09-15 11:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `yachttypes`
--

CREATE TABLE `yachttypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` double NOT NULL,
  `depth` double NOT NULL,
  `engine` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sail` double NOT NULL,
  `onepersoncabins` int(10) UNSIGNED NOT NULL,
  `twopersoncabins` int(10) UNSIGNED NOT NULL,
  `beds` int(10) UNSIGNED NOT NULL,
  `toilets` int(10) UNSIGNED NOT NULL,
  `showers` int(10) UNSIGNED NOT NULL,
  `gear` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yachttypes`
--

INSERT INTO `yachttypes` (`id`, `name`, `code`, `length`, `depth`, `engine`, `sail`, `onepersoncabins`, `twopersoncabins`, `beds`, `toilets`, `showers`, `gear`, `text`, `created_at`, `updated_at`) VALUES
(2, 'Noisy boat', '23', 10.5, 5.5, 'Noisy Turbo Engine', 5, 2, 2, 4, 1, 1, 'Equipped with Smoke Bombs and Laser Cannons', 'Premium Edition', '2019-09-14 13:51:29', '2019-09-14 13:51:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

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
-- Indexes for table `yachts`
--
ALTER TABLE `yachts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yachttypes`
--
ALTER TABLE `yachttypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ports`
--
ALTER TABLE `ports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yachts`
--
ALTER TABLE `yachts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `yachttypes`
--
ALTER TABLE `yachttypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
