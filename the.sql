-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2018 at 10:18 AM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slammad`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-06-25 14:17:21', '2018-06-25 14:17:21'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-06-25 14:17:21', '2018-06-25 14:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(2, 'Desktops', 'desktops', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(3, 'Mobile Phones', 'mobile-phones', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(4, 'Tablets', 'tablets', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(5, 'TVs', 'tvs', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(6, 'Digital Cameras', 'digital-cameras', '2018-06-25 14:16:59', '2018-06-25 14:16:59'),
(7, 'Appliances', 'appliances', '2018-06-25 14:16:59', '2018-06-25 14:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 3000, NULL, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(2, 'DEF456', 'percent', NULL, 50, '2018-06-25 14:17:10', '2018-06-25 14:17:10');

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
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '', 1),
(56, 7, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 2),
(57, 7, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '', 3),
(58, 7, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, '', 4),
(59, 7, 'price', 'number', 'price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|regex:/^\\\\d*(\\\\.\\\\d{1,2})?$/\"}}', 5),
(60, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '', 6),
(61, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 7),
(62, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"quality\":\"70%\",\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(63, 7, 'images', 'multiple_images', 'Images', 1, 1, 1, 1, 1, 1, '', 9),
(64, 7, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 1, 1, '', 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 1, 1, 1, '', 11),
(66, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(67, 8, 'code', 'text', 'code', 1, 1, 1, 1, 1, 1, '', 2),
(68, 8, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed Value\",\"percent\":\"Percent Off\"}}', 3),
(69, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(70, 8, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '', 7),
(73, 9, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(74, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(75, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '', 3),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 4),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 5),
(78, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '', 1),
(79, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '', 2),
(80, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '', 3),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 4),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 5),
(83, 11, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(84, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '', 2),
(85, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 0, '', 3),
(86, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 0, '', 4),
(87, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 0, '', 5),
(88, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 0, '', 6),
(89, 11, 'billing_province', 'text', 'Billing Province', 1, 0, 1, 1, 1, 0, '', 7),
(90, 11, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 0, 1, 1, 1, 0, '', 8),
(91, 11, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 0, '', 9),
(92, 11, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 0, '', 10),
(93, 11, 'billing_discount', 'number', 'Discount', 1, 1, 1, 0, 0, 0, '', 11),
(94, 11, 'billing_discount_code', 'text', 'Discount Code', 0, 0, 1, 0, 0, 0, '', 12),
(95, 11, 'billing_subtotal', 'number', 'Subtotal', 1, 1, 1, 0, 0, 0, '', 13),
(96, 11, 'billing_tax', 'number', 'Tax', 1, 1, 1, 0, 0, 0, '', 14),
(97, 11, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, '', 15),
(98, 11, 'payment_gateway', 'text', 'Payment Gateway', 1, 0, 1, 0, 0, 0, '', 16),
(99, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 0, 0, '{\"on\":\"Yes\",\"off\":\"No\"}', 17),
(100, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, '', 18),
(101, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 19),
(102, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 20);

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
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-06-25 14:17:11', '2018-06-25 14:17:11'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', '', 1, 1, '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(8, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, '', '', 1, 0, '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(9, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, '', '', 1, 0, '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\CategoryProduct', NULL, '', '', 1, 0, '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, '2018-06-25 14:17:24', '2018-06-25 14:17:24');

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
(1, 'admin', '2018-06-25 14:17:15', '2018-06-25 14:17:15'),
(2, 'main', '2018-06-25 14:17:27', '2018-06-25 14:17:27'),
(3, 'footer', '2018-06-25 14:17:27', '2018-06-25 14:17:27');

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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-25 14:17:15', '2018-06-25 14:17:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 14, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 11, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2018-06-25 14:17:15', '2018-06-25 14:17:28', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-06-25 14:17:15', '2018-06-25 14:17:29', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-06-25 14:17:15', '2018-06-25 14:17:29', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-06-25 14:17:15', '2018-06-25 14:17:29', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2018-06-25 14:17:15', '2018-06-25 14:17:28', 'voyager.settings.index', NULL),
(13, 1, 'Orders', '/admin/orders', '_self', 'voyager-documentation', NULL, NULL, 2, '2018-06-25 14:17:28', '2018-06-25 14:17:28', NULL, NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-bag', NULL, NULL, 3, '2018-06-25 14:17:28', '2018-06-25 14:17:28', NULL, NULL),
(15, 1, 'Categories', '/admin/category', '_self', 'voyager-tag', NULL, NULL, 4, '2018-06-25 14:17:28', '2018-06-25 14:17:28', NULL, NULL),
(16, 1, 'Coupons', '/admin/coupons', '_self', 'voyager-dollar', NULL, NULL, 5, '2018-06-25 14:17:28', '2018-06-25 14:17:28', NULL, NULL),
(17, 1, 'Category Products', '/admin/category-product', '_self', 'voyager-categories', NULL, NULL, 6, '2018-06-25 14:17:28', '2018-06-25 14:17:28', NULL, NULL),
(18, 2, 'Shop', '', '_self', NULL, NULL, NULL, 1, '2018-06-25 14:17:29', '2018-06-25 14:17:29', 'shop.index', NULL),
(19, 2, 'About', '#', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(20, 2, 'Blog', '#', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(21, 3, 'Follow Me:', '', '_self', NULL, NULL, NULL, 1, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(22, 3, 'fa-globe', 'http://andremadarang.com', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(23, 3, 'fa-youtube', 'http://youtube.com/drehimself', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(24, 3, 'fa-github', 'http://github.com/drehimself', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL),
(25, 3, 'fa-twitter', 'http://twitter.com/drehimself', '_self', NULL, NULL, NULL, 2, '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL, NULL);

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
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_12_11_054653_create_products_table', 1),
(25, '2018_01_11_060124_create_category_table', 1),
(26, '2018_01_11_060548_create_category_product_table', 1),
(27, '2018_01_14_215535_create_coupons_table', 1),
(28, '2018_02_08_021546_add_image_to_products_table', 1),
(29, '2018_02_08_032544_add_images_to_products_table', 1),
(30, '2018_02_25_005243_create_orders_table', 1),
(31, '2018_02_25_010522_create_order_product_table', 1),
(32, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(33, '2018_04_23_012009_create_user_roles_table_fix', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, NULL, 'email@email.com', 'Fake Order', 'Fake Address', 'Fake City', 'Fake Province', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, NULL, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(2, NULL, 'another@another.com', 'Fake Order 2', 'Fake Address 2', 'Fake City 2', 'Fake Province 2', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, 'Card was declined', '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(3, NULL, 'fake@fake.com', 'Fake Order 3', 'Fake Address 3', 'Fake City 3', 'Fake Province 3', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 1, NULL, '2018-06-25 14:17:10', '2018-06-25 14:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(2, 1, NULL, 1, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(3, 2, NULL, 1, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(4, 2, NULL, 1, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(5, 3, NULL, 1, '2018-06-25 14:17:10', '2018-06-25 14:17:10'),
(6, 3, NULL, 1, '2018-06-25 14:17:11', '2018-06-25 14:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-06-25 14:17:22', '2018-06-25 14:17:22');

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
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(2, 'browse_database', NULL, '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(3, 'browse_media', NULL, '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(4, 'browse_compass', NULL, '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(5, 'browse_menus', 'menus', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(6, 'read_menus', 'menus', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(7, 'edit_menus', 'menus', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(8, 'add_menus', 'menus', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(9, 'delete_menus', 'menus', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(10, 'browse_pages', 'pages', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(11, 'read_pages', 'pages', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(12, 'edit_pages', 'pages', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(13, 'add_pages', 'pages', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(14, 'delete_pages', 'pages', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(15, 'browse_roles', 'roles', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(16, 'read_roles', 'roles', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(17, 'edit_roles', 'roles', '2018-06-25 14:17:16', '2018-06-25 14:17:16', NULL),
(18, 'add_roles', 'roles', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(19, 'delete_roles', 'roles', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(20, 'browse_users', 'users', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(21, 'read_users', 'users', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(22, 'edit_users', 'users', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(23, 'add_users', 'users', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(24, 'delete_users', 'users', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(25, 'browse_posts', 'posts', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(26, 'read_posts', 'posts', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(27, 'edit_posts', 'posts', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(28, 'add_posts', 'posts', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(29, 'delete_posts', 'posts', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(30, 'browse_categories', 'categories', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(31, 'read_categories', 'categories', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(32, 'edit_categories', 'categories', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(33, 'add_categories', 'categories', '2018-06-25 14:17:17', '2018-06-25 14:17:17', NULL),
(34, 'delete_categories', 'categories', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(35, 'browse_settings', 'settings', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(36, 'read_settings', 'settings', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(37, 'edit_settings', 'settings', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(38, 'add_settings', 'settings', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(39, 'delete_settings', 'settings', '2018-06-25 14:17:18', '2018-06-25 14:17:18', NULL),
(40, 'browse_products', 'products', '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL),
(41, 'read_products', 'products', '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL),
(42, 'edit_products', 'products', '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL),
(43, 'add_products', 'products', '2018-06-25 14:17:29', '2018-06-25 14:17:29', NULL),
(44, 'delete_products', 'products', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(45, 'browse_coupons', 'coupons', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(46, 'read_coupons', 'coupons', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(47, 'edit_coupons', 'coupons', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(48, 'add_coupons', 'coupons', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(49, 'delete_coupons', 'coupons', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(50, 'browse_category', 'category', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(51, 'read_category', 'category', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(52, 'edit_category', 'category', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(53, 'add_category', 'category', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(54, 'delete_category', 'category', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(55, 'browse_category-product', 'category-product', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(56, 'read_category-product', 'category-product', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(57, 'edit_category-product', 'category-product', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(58, 'add_category-product', 'category-product', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(59, 'delete_category-product', 'category-product', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(60, 'browse_orders', 'orders', '2018-06-25 14:17:30', '2018-06-25 14:17:30', NULL),
(61, 'read_orders', 'orders', '2018-06-25 14:17:31', '2018-06-25 14:17:31', NULL),
(62, 'edit_orders', 'orders', '2018-06-25 14:17:31', '2018-06-25 14:17:31', NULL),
(63, 'add_orders', 'orders', '2018-06-25 14:17:31', '2018-06-25 14:17:31', NULL),
(64, 'delete_orders', 'orders', '2018-06-25 14:17:31', '2018-06-25 14:17:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3);

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
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 14:17:21', '2018-06-25 14:17:21'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 14:17:21', '2018-06-25 14:17:21'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 14:17:21', '2018-06-25 14:17:21'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-25 14:17:22', '2018-06-25 14:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-25 14:17:15', '2018-06-25 14:17:15'),
(2, 'user', 'Normal User', '2018-06-25 14:17:15', '2018-06-25 14:17:15'),
(3, 'adminweb', 'Admin Web', '2018-06-25 14:17:29', '2018-06-25 14:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
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
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-06-25 14:17:22', '2018-06-25 14:17:22'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-06-25 14:17:23', '2018-06-25 14:17:23'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-06-25 14:17:24', '2018-06-25 14:17:24'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-06-25 14:17:24', '2018-06-25 14:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$cOhCLxC20nHBD/aYKmobC.USjrjqRs/ujqozRyErLjB7NLw1LenLK', 'Rf58rRbvvXDF7YLFUcGk70L2mGQqmCOKoED9WFbwSlZQDpJ2iZxluTPB9ewn', '2018-06-25 14:17:21', '2018-06-25 14:17:21'),
(2, 3, 'Admin Web', 'adminweb@adminweb.com', 'users/default.png', '$2y$10$uKFKXBa/./GW7Cy6PX/bpupyWXYrBbIA6n/jl55U3NPS/Ds3Wj0be', 'HlOOlJRAP54sYdoHzF5EwBlP8wHEVpzpEi6WujYAJZaWRfYZBafukETMvhK0', '2018-06-25 14:17:35', '2018-06-25 14:17:35'),
(3, 2, 'Saidu Bello', 'saidu4rockstars@gmail.com', 'users/default.png', '$2y$10$tWcmipGtNPNCa8yi1oRDdulLJMmRE6QPsaLaFmmeIhSKJWL1gT.ki', 'gc20AXxGf49E8axg8GGo8uP0kR3e09CMolIRPTD9DI00AsfW4IIOTpf7XDzS', '2018-06-26 09:45:42', '2018-06-26 09:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

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
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
