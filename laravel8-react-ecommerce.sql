-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 08:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8-react-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `delivery_charge` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(7, 'Easy1660008366773', 'JMK Kryotox 205g0', '0119-4801', 'Size: S', 'Color: Red', '1', '1.00', '1', 'bannedefused@gmail.com', 'Carl Caraan', '1', 'Laguna', 'Manila', '00', '09-08-2022', '09:26:07am', 'Complete', NULL, '2022-08-21 13:05:02'),
(8, 'Easy1661091258824', 'JMK Kryotox 205g0', '0119-4801', 'Size: M', 'Color: Red', '1', '1.00', '1', 'bannedefused@gmail.com', 'Carl Caraan', '1', 'SML', 'Laguna', '00', '21-08-2022', '10:14:19pm', 'Pending', NULL, NULL),
(9, 'Easy1661301190798', 'JMK Kryotox 205g0aaa', '0119-4801', 'Size: S', 'Color: Red', '1', '1.00', '1', 'undefined', 'Carl Caraan', '2', 'Laguna', 'SML', '00', '24-08-2022', '08:33:11am', 'Pending', NULL, NULL),
(10, 'Easy1685126648093', '【In Stock】KTT Kang White Switch', '0119-4801', 'Size: M', 'Color: Red', '3', '86.81', '260.43', 'undefined', 'Ali', '2', 'hkhuhlokokok', 'Rabat', '00', '27-05-2023', '02:44:11am', 'Complete', NULL, '2023-05-27 16:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Devices', 'https://lzd-img-global.slatic.net/g/p/45192c7167f3bbe7751f658e2a36f85a.png_400x400q75.png_.webp', NULL, '2023-05-25 20:51:51'),
(2, 'Electronic Accessories', 'https://lzd-img-global.slatic.net/g/p/965278e6abe2f822b5e4f23a168c6a72.jpg_400x400q75.jpg_.webp', NULL, NULL),
(3, 'TV & Home Appliances', 'https://lzd-img-global.slatic.net/g/p/22fb0272538c8fee6326583c911a5504.png_400x400q75.png_.webp', NULL, NULL),
(4, 'Health & Beauty', 'http://127.0.0.1:8000/storage/default_image.jpg', NULL, NULL),
(5, 'Babies & Toys', 'https://lzd-img-global.slatic.net/g/p/312d3de8e258d35d6bafcfc542a87e59.jpg_400x400q75.jpg_.webp', NULL, NULL),
(6, 'Groceries & Pets', 'https://lzd-img-global.slatic.net/g/p/c5ee11feae308e8da1b41d8c5b8ce1b8.jpg_400x400q75.jpg_.webp', NULL, NULL),
(7, 'Home & Living', 'https://lzd-img-global.slatic.net/g/p/5d67a73b02573c6dbb8d3cc50eefd83b.jpg_400x400q75.jpg_.webp', NULL, NULL),
(8, 'Women\'s Fashion & Accessories', 'https://lzd-img-global.slatic.net/g/p/58a0be0f52bb84a5be47cd84bfe1fb96.jpg_400x400q75.jpg_.webp', NULL, NULL),
(9, 'Men\'s Fashion & Accessories', 'https://lzd-img-global.slatic.net/g/p/5a9604cd6f16914a55857fac6546d4d3.jpg_400x400q75.jpg_.webp', NULL, NULL),
(10, 'Kid\'s Fashion & Accessories', 'http://127.0.0.1:8000/storage/default_image.jpg', NULL, NULL),
(11, 'Sports & Lifestyle', 'https://lzd-img-global.slatic.net/g/p/788f2df20fd884b4e75685db4fed20f6.jpg_400x400q75.jpg_.webp', NULL, NULL),
(12, 'Automotive & Motorcycles', 'https://lzd-img-global.slatic.net/g/p/ef5d7850fd735701ebebffba273bb0ab.jpg_400x400q75.jpg_.webp', NULL, NULL),
(13, 'Cosmetic', 'http://127.0.0.1:8000/upload/category/1766976382460335.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_date` varchar(255) NOT NULL,
  `contact_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Ali', 'ali@gmail.com', 'Hello', '28-05-2023', '01:30:51am', NULL, NULL);

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(21, 'JMK Kryotox 205g0', 'https://cf.shopee.ph/file/576cce38678ffddfcab138cd81521d2c', '0119-4801', 'undefined', NULL, NULL),
(23, 'JMK Kryotox 205g0', 'https://cf.shopee.ph/file/576cce38678ffddfcab138cd81521d2c', '0119-4801', 'bannedefused@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'http://127.0.0.1:8000/upload/slider/1767059382439283.jpg', NULL, '2023-05-27 13:53:01'),
(3, 'https://icms-image.slatic.net/images/ims-web/8af2c410-406d-4945-8a69-6ac97cf78ad1.jpg', NULL, NULL),
(4, 'https://lzd-img-global.slatic.net/g/icms/images/ims-web/421a97c3-5ecb-49c9-b381-bfbf396b49fb.jpg_2200x2200q90.jpg_.webp', NULL, NULL),
(5, 'https://lzd-img-global.slatic.net/g/icms/images/ims-web/f76699e7-c160-4c04-9b2d-fee489e569d1.jpg_2200x2200q90.jpg_.webp', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_10_052530_create_sessions_table', 1),
(7, '2022_06_10_072747_create_visitors_table', 2),
(8, '2022_06_11_053503_create_contacts_table', 3),
(9, '2022_06_12_052836_create_site_infos_table', 4),
(10, '2022_06_14_020034_create_categories_table', 5),
(11, '2022_06_14_024120_create_subcategories_table', 6),
(12, '2022_06_19_063330_create_product_lists_table', 7),
(13, '2022_07_19_055156_create_home_sliders_table', 8),
(14, '2022_07_21_054428_create_product_details_table', 9),
(15, '2022_07_26_064038_create_notifications_table', 10),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 11),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 11),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 11),
(24, '2016_06_01_000004_create_oauth_clients_table', 11),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 11),
(26, '2022_08_03_133950_create_product_reviews_table', 12),
(27, '2022_08_04_045807_create_product_carts_table', 13),
(28, '2022_08_05_061705_create_favourites_table', 14),
(29, '2022_08_08_051412_create_cart_orders_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, '1 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL),
(2, '2 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL),
(3, '3 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL),
(4, '4 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL),
(5, '5 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL),
(6, '6 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '07/26/22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0002eb8930858b8fc638be0de099344fd7262bfbbce8381199d12fa182f107f5b671b9cb0b36327c', 8, 1, 'app', '[]', 0, '2022-08-01 00:33:47', '2022-08-01 00:33:47', '2023-08-01 01:33:47'),
('05644006b918b46d80dbfb7f67888010a46cbc86b4b1ebd498cf641fa7fc1723f06ecbf438acb01d', 6, 1, 'app', '[]', 0, '2022-07-31 22:43:35', '2022-07-31 22:43:35', '2023-07-31 23:43:35'),
('0639f7e4acae0462710b0ba110780f571e16f85489dd34ef2737a95b0ded80c1431718ce220760a8', 8, 1, 'app', '[]', 0, '2022-07-31 23:39:49', '2022-07-31 23:39:49', '2023-08-01 00:39:49'),
('0739acf509f25227c542f95c3f29020a3b51a0e3b658ccf852ddcace0a6bd41d980da8a1db959f99', 5, 1, 'app', '[]', 0, '2022-07-30 13:21:57', '2022-07-30 13:21:57', '2023-07-30 14:21:57'),
('0b125be8ed5f06283c2a9ee92b198480882a443d6e94e72b05a4fcf64343d2b8c575b91e28396fae', 8, 1, 'app', '[]', 0, '2022-07-31 23:44:42', '2022-07-31 23:44:42', '2023-08-01 00:44:42'),
('0c78d1df2464512b50b605eb40162648d8407e38e946e74152a389edc85a040a2b7f7cfba2924c20', 6, 1, 'app', '[]', 0, '2022-07-31 22:42:56', '2022-07-31 22:42:56', '2023-07-31 23:42:56'),
('0d050a7fcab354933445278353f26fff6d5531c24671754735d4b9c8d19b76919e7ccbca114b2abe', 8, 1, 'app', '[]', 0, '2022-09-28 07:39:04', '2022-09-28 07:39:04', '2023-09-28 08:39:04'),
('19f930e9bf8f443d4d14813628567469c717aac2cf77e8244ceb36aa3ae16b8ba409d6c68dafbd7a', 10, 1, 'app', '[]', 0, '2023-05-25 20:26:34', '2023-05-25 20:26:34', '2024-05-25 21:26:34'),
('1ee40ab83c569ed5e1f8fa6e091586a91885511473e44d005be94e41fa7e3c23c325115af1ab495a', 8, 1, 'app', '[]', 0, '2022-07-31 23:17:06', '2022-07-31 23:17:06', '2023-08-01 00:17:06'),
('247c9dadbc8604c27d17f8ed5d0e964e8c4579fbe03825a7b84cf1b0d013da0349d4814a462d0e9e', 8, 1, 'app', '[]', 0, '2022-08-01 01:22:46', '2022-08-01 01:22:46', '2023-08-01 02:22:46'),
('26d32b8af031dacaa41da02fbfd2d721c92fe192a1a59e38e0ae29cb0e776395dbba349aa1a79a01', 8, 1, 'app', '[]', 0, '2022-07-31 23:46:56', '2022-07-31 23:46:56', '2023-08-01 00:46:56'),
('26efae86837158bcc957059765054376e2c6bee3b1b265de8ad66f60e31134db4e38ee0970fbc37d', 8, 1, 'app', '[]', 0, '2022-08-01 00:50:56', '2022-08-01 00:50:56', '2023-08-01 01:50:56'),
('279a2cef4655aa8098fd9477a1661b25654988b0ecfe4efd1a8e0af27e06b3b58ed24d7205449448', 8, 1, 'app', '[]', 0, '2022-08-01 00:15:29', '2022-08-01 00:15:29', '2023-08-01 01:15:29'),
('2a1d3532a6eba2a3c800f2f0f71abcf30b1e16abd28588cb07d3a3a64e0a6efb4cfec38fd5dcc638', 8, 1, 'app', '[]', 0, '2022-08-01 00:15:14', '2022-08-01 00:15:14', '2023-08-01 01:15:14'),
('2b114aee6b447944a06c33e1bcd67de9087b5afacb1f4940fc2efb74957f95be888ef2cf48b86992', 8, 1, 'app', '[]', 0, '2022-07-31 22:53:11', '2022-07-31 22:53:11', '2023-07-31 23:53:11'),
('2cf02890d5d4a1ffdc19f80a7076df228cc92f204a1d7ef988923bd5254f8efeb789a0d2ddbc4444', 8, 1, 'app', '[]', 0, '2022-08-01 00:22:52', '2022-08-01 00:22:52', '2023-08-01 01:22:52'),
('2d1cddf98171a62a49340b1f3583c223fe9be4e6aeb45082fefae322bfba28c0e369f609770dec1d', 8, 1, 'app', '[]', 0, '2022-07-31 22:50:45', '2022-07-31 22:50:45', '2023-07-31 23:50:45'),
('32b8c5939fc49be6fc6a9b1f9a7bec85d2dbcb742065006e1b0b7cd2817ef483aaaba18ddd4a315f', 8, 1, 'app', '[]', 0, '2022-08-01 00:17:19', '2022-08-01 00:17:19', '2023-08-01 01:17:19'),
('36178dc9b33e2e708f74f3cd6420b1383ac7fc58befe93aa2917713ec33c4bd423f65eaf2e4f9f8e', 8, 1, 'app', '[]', 0, '2022-08-01 01:27:06', '2022-08-01 01:27:06', '2023-08-01 02:27:06'),
('3890d0db9577cd9f25e9b8028bbecfc80d2bc3bb48e85753e792f07d6fca3484bfdf8cdfef3ff371', 6, 1, 'app', '[]', 0, '2022-07-31 22:45:38', '2022-07-31 22:45:38', '2023-07-31 23:45:38'),
('3d6b2bd0511814346c4597137cbb2ea55585539ebf3045162e5c4c6cbd6eccbf92d582fb63b72369', 8, 1, 'app', '[]', 0, '2022-08-01 01:37:33', '2022-08-01 01:37:33', '2023-08-01 02:37:33'),
('3f10094c7d0653c238fdf23c3d2740f8f5c9cd414f70fe9d1e9a5571a8cce97867fa2a7d3528c07e', 8, 1, 'app', '[]', 0, '2022-07-31 23:13:07', '2022-07-31 23:13:07', '2023-08-01 00:13:07'),
('3fbcb8a9cf0bca5cb6f4944473b6b9ad2c9013d09e7219d38fd907d998638d3da09708dc54978a1d', 8, 1, 'app', '[]', 0, '2022-07-31 23:01:17', '2022-07-31 23:01:17', '2023-08-01 00:01:17'),
('482a1cfcd6ee567c8d85355f52ed7af1ee91a8780b7ff1669c9882714afc466e4b16b291f5c45bac', 8, 1, 'app', '[]', 0, '2022-08-01 01:04:44', '2022-08-01 01:04:44', '2023-08-01 02:04:44'),
('492dc0ce11577f399369c0d9f19e7d694243eec9bc636baadb9288f688b12bddf102423561c8d8d2', 8, 1, 'app', '[]', 0, '2022-08-01 00:24:00', '2022-08-01 00:24:00', '2023-08-01 01:24:00'),
('4a3bdb7e1b889278570b41a27859011409ff7851008585234a68548f56293acc1fc176e9654c1326', 12, 1, 'app', '[]', 0, '2023-05-26 17:11:44', '2023-05-26 17:11:44', '2024-05-26 18:11:44'),
('4aef22b73ac1cf6564d18767bbe395903458d05464a9d0d7ef0a4f74f045e1be5f160855da4846d2', 8, 1, 'app', '[]', 0, '2022-07-31 23:33:01', '2022-07-31 23:33:01', '2023-08-01 00:33:01'),
('507f67fd11ab4d2f8246201af25ff1cc13e830ad403dbbdbd23e43385a53c4013b7a03975a5eeb7e', 8, 1, 'app', '[]', 0, '2022-08-01 00:14:06', '2022-08-01 00:14:06', '2023-08-01 01:14:06'),
('5263fbe216bcc28fd445f0d975d2aa52109b49c9cc6df3bff7bd462167b17b1f04db2d384bd739dd', 8, 1, 'app', '[]', 0, '2022-08-01 00:07:28', '2022-08-01 00:07:28', '2023-08-01 01:07:28'),
('55ddd14fa2e1ecfedd640246cc61a7973689d04f1073a916cc13ecf3c25fb72547f2847d514ef093', 8, 1, 'app', '[]', 0, '2022-07-31 23:38:16', '2022-07-31 23:38:16', '2023-08-01 00:38:16'),
('5a4d2c190ce421c9c14e07f7291caf22baff3e5747a5a0e0c5f1f5747593ffbd15826400fed79a77', 8, 1, 'app', '[]', 0, '2022-07-31 23:35:09', '2022-07-31 23:35:09', '2023-08-01 00:35:09'),
('5d40826c85f1297ed0c471d930feede18b32b9e9a0629dc6199e8894d10838578c18996e068bc4f4', 8, 1, 'app', '[]', 0, '2022-08-01 00:44:55', '2022-08-01 00:44:55', '2023-08-01 01:44:55'),
('5dcaaeaf75b1a72131f40b448e81c2109fecbc46d08047bd910a88444f894d8b410f0c2873cdafc0', 5, 1, 'app', '[]', 0, '2022-07-31 04:38:39', '2022-07-31 04:38:39', '2023-07-31 05:38:39'),
('6007a002248aeecb076f889f58236546d3804cd2cdc7c2088c3540e450db603642492ef350c9541b', 8, 1, 'app', '[]', 0, '2022-08-01 00:59:56', '2022-08-01 00:59:56', '2023-08-01 01:59:56'),
('64e9d1ddf1faeafd95afee5ef1dccca42b84045462cb409f3c1b98c49fcd1311226473d17e39c023', 8, 1, 'app', '[]', 0, '2022-08-01 00:05:34', '2022-08-01 00:05:34', '2023-08-01 01:05:34'),
('651dcd5715af0d25098b66c5b68203d71682314b7405258fac9dac95d56605efd0eff6d9e18e75f0', 8, 1, 'app', '[]', 0, '2022-08-23 23:30:55', '2022-08-23 23:30:55', '2023-08-24 00:30:55'),
('66cf7a7154a71cda55bb796bb03ca2de1fea8d92dd15296b9bdf981c7dc094ea7f4436407f9c5ddf', 9, 1, 'app', '[]', 0, '2022-08-01 11:28:12', '2022-08-01 11:28:12', '2023-08-01 12:28:12'),
('66f1683c11d18dcd6b5a2c190c57824a581ac7f524bcbf625e9574f0eef4c5405c42e4f788e0417b', 6, 1, 'app', '[]', 0, '2022-07-31 22:49:06', '2022-07-31 22:49:06', '2023-07-31 23:49:06'),
('6869b0b173ad39f6a12537651596969d4a16ff5a779b1716621da19061925edc3613fe67560962a3', 6, 1, 'app', '[]', 0, '2022-07-31 22:43:16', '2022-07-31 22:43:16', '2023-07-31 23:43:16'),
('68ac7a1c9f8ae77ce96e290a730f90f02c9383c3853cfdd94a4532a87d4b5bdc46cc7dda8d4ff478', 8, 1, 'app', '[]', 0, '2022-07-31 23:39:50', '2022-07-31 23:39:50', '2023-08-01 00:39:50'),
('6c078e9bae5f4353c027630e40d01bf12c3d948a86fcb5adb6e7e39514e19244fccaab6c71efde64', 7, 1, 'app', '[]', 0, '2022-07-31 22:46:25', '2022-07-31 22:46:25', '2023-07-31 23:46:25'),
('6dddcd376d4ea1785a8d2d4bbca721aa69425a3d7924a1ff167b88f28df139080d914270d2f34bc0', 8, 1, 'app', '[]', 0, '2022-07-31 23:33:16', '2022-07-31 23:33:16', '2023-08-01 00:33:16'),
('6e6a0869944dc107eeafd16b2bcf157d4ec5b8ccfbc60f8d448a4c5e91c84458bb2189134bef1316', 8, 1, 'app', '[]', 0, '2022-08-01 00:15:53', '2022-08-01 00:15:53', '2023-08-01 01:15:53'),
('6f0aae1ff72ead89fddaf094f2e6ed72e9336faa46656f9f877136278de762572d1ec0c780af83b0', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:20', '2022-08-01 01:00:20', '2023-08-01 02:00:20'),
('6fbeed9ca986ad14b2d5eee90727ce498e6fd3ec82130f9e3d5984ae3ff31ba6df1c1a27fb987724', 8, 1, 'app', '[]', 0, '2022-08-01 01:05:56', '2022-08-01 01:05:56', '2023-08-01 02:05:56'),
('70d0ddc21cf972268807351afdc5588a997fb613de8d7847303b8212cb3a5001445a533dcf559744', 5, 1, 'app', '[]', 0, '2022-07-31 12:02:35', '2022-07-31 12:02:35', '2023-07-31 13:02:35'),
('7bb5bb73ba7d482c59216e1f56cee96f6cbfa9914b65be1a3c9c9e82fc49954295fdea7aa8dc2b57', 8, 1, 'app', '[]', 0, '2022-07-31 23:09:55', '2022-07-31 23:09:55', '2023-08-01 00:09:55'),
('7cf96f863c9b3c062deb37c9afb6aba920ec14f6b7d688125547abb276fa4d87a9f1d1479d2323c5', 8, 1, 'app', '[]', 0, '2022-08-21 13:11:46', '2022-08-21 13:11:46', '2023-08-21 14:11:46'),
('7cfec9652a7baf2a5181e7616fe2debcb011e19d3aaef47deb5ca188bb2fae33e8ed48d8a3b863e1', 8, 1, 'app', '[]', 0, '2022-08-01 00:11:00', '2022-08-01 00:11:00', '2023-08-01 01:11:00'),
('7d49640ba54dad768bf259790f5748ba037ad6b689ad9c3a65dbe5ecdd0b79f599fb5699382c2fbf', 8, 1, 'app', '[]', 0, '2022-08-01 00:07:13', '2022-08-01 00:07:13', '2023-08-01 01:07:13'),
('7dd5838eff42eac9995123428f0a100de832300213c86a21970d41581061e5add47e0f71fab66c56', 8, 1, 'app', '[]', 0, '2022-08-04 23:03:18', '2022-08-04 23:03:18', '2023-08-05 00:03:18'),
('88c14c22b975f0e9d6df337f9df25cfb5c2dcd8132ddf5d20eeccd5520fb96902d8c01aa1589dd04', 8, 1, 'app', '[]', 0, '2022-08-01 00:52:55', '2022-08-01 00:52:55', '2023-08-01 01:52:55'),
('8a96a1011eb872882b291c4ade359f81c50fda7d162199a42075454e0ce4d19a5364aaa92b72126b', 8, 1, 'app', '[]', 0, '2022-08-10 04:12:47', '2022-08-10 04:12:47', '2023-08-10 05:12:47'),
('8ad15736e164445c3cc5d51734bd3e67b224d7e81c2ac987d4c89324f67416d49976f74a7fac6617', 8, 1, 'app', '[]', 0, '2022-08-01 00:07:50', '2022-08-01 00:07:50', '2023-08-01 01:07:50'),
('8f69adc201954f617461a562daf2d01ec504b47a1bb6c228aef12c9e27af76e4dbd1511b0f9b1406', 8, 1, 'app', '[]', 0, '2022-07-31 22:51:07', '2022-07-31 22:51:07', '2023-07-31 23:51:07'),
('90e7f289070b6ddb74dd0d7206d981f0ce2a69aaa87f7f17b65c342f19b2cb6d087f34bfdf4e4786', 8, 1, 'app', '[]', 0, '2022-07-31 23:26:21', '2022-07-31 23:26:21', '2023-08-01 00:26:21'),
('91685267536b73ef2cbb0078fcc99dfbf39572cfedeb595486b1e97a84d404d4d97abb531a425eb2', 8, 1, 'app', '[]', 0, '2022-08-01 08:47:22', '2022-08-01 08:47:22', '2023-08-01 09:47:22'),
('917ec7c47f7311755ed7595a0ee0f6be53d9fb766692c8a5d6ce61eaeb80c23d8e106b61f9f85060', 8, 1, 'app', '[]', 0, '2022-07-31 23:28:35', '2022-07-31 23:28:35', '2023-08-01 00:28:35'),
('92ef88480b76fcc141b605df1f670b6564d3ab22a083c0b02fca73736b6f0536f985a96a23b66352', 8, 1, 'app', '[]', 0, '2022-08-01 00:14:57', '2022-08-01 00:14:57', '2023-08-01 01:14:57'),
('97534020cae967a8ce88eeb83ee63c2bcde1f1311b8f91f5fb90b835423e885a131176ada81c995f', 8, 1, 'app', '[]', 0, '2022-07-31 23:50:50', '2022-07-31 23:50:50', '2023-08-01 00:50:50'),
('9b13c3e9cb23f2529c7aea95e2dc599eee74cb2330eaad739727b062a2475c5e7825eca4f87c9673', 8, 1, 'app', '[]', 0, '2022-08-01 01:24:52', '2022-08-01 01:24:52', '2023-08-01 02:24:52'),
('9b74134a10bc444f68e30a780b4de5a2ef5dd9a45659903007cf24adb5cdb864cc0982434dac66a7', 12, 1, 'app', '[]', 0, '2023-05-26 17:39:18', '2023-05-26 17:39:18', '2024-05-26 18:39:18'),
('9f55d8545aa3a4b4c4f26667856b9b8f62f9eba874c510e99ecbb5b41f85097961300f38e38312d6', 5, 1, 'app', '[]', 0, '2022-07-31 04:38:15', '2022-07-31 04:38:15', '2023-07-31 05:38:15'),
('a0dc99149b1830bd23a8977e012df500c2e7be4fc7f3d6e16a9bc11ce90de4d4adab889892c710c9', 8, 1, 'app', '[]', 0, '2022-08-21 13:11:49', '2022-08-21 13:11:49', '2023-08-21 14:11:49'),
('a1d28a9df8874e69e4bb0af51a5a2c3c7f3f34aa13a9af1fcaecb27f3307087e4269d36cc5e26205', 8, 1, 'app', '[]', 0, '2022-08-01 00:25:24', '2022-08-01 00:25:24', '2023-08-01 01:25:24'),
('a6e5ba5341e64259c78860e6eaafdfb8656f4bd40d3d6591ff35ac69ce80536e63a67fec16345d24', 5, 1, 'app', '[]', 0, '2022-07-30 07:20:14', '2022-07-30 07:20:14', '2023-07-30 08:20:14'),
('a6eb045b98b9118ace81038a72412b4973095be62e3fa21e04fae8f344f56af2ade56d56d0dcc873', 8, 1, 'app', '[]', 0, '2022-08-01 01:24:53', '2022-08-01 01:24:53', '2023-08-01 02:24:53'),
('a86d209069ccabb2b256c38a95b1a51cb12861417bdd271a575831d046a3f0db15c5f6fe93e84692', 8, 1, 'app', '[]', 0, '2022-08-01 00:50:31', '2022-08-01 00:50:31', '2023-08-01 01:50:31'),
('aaeab5315324fe8c7767a35cb13abf4276a496a44eab36578ce9918cfc24606fd35b13e14606e465', 8, 1, 'app', '[]', 0, '2022-08-01 00:49:54', '2022-08-01 00:49:54', '2023-08-01 01:49:54'),
('ac171464ea86fb296faf85894241eff6bfaf29072976e0d029ba5f975ad59e6f661e93c08bd401f0', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:25', '2022-08-01 01:00:25', '2023-08-01 02:00:25'),
('adb8f63e16b9e7ae950d86c70f9cd9d75c95da420c1a986f3f8ff713c1443220887db8016eb7630b', 8, 1, 'app', '[]', 0, '2022-08-05 13:15:42', '2022-08-05 13:15:42', '2023-08-05 14:15:42'),
('b1aa213261cd82409ac8c3992acf7f7225d38248e864c08051cd214648bbda03e6feda90acf2361e', 8, 1, 'app', '[]', 0, '2022-08-01 01:08:09', '2022-08-01 01:08:09', '2023-08-01 02:08:09'),
('b20dbb0a29330d55362a7f34fcfd2a37c565a22752183630831aec3c44b314c2af61112c61d51822', 8, 1, 'app', '[]', 0, '2022-08-01 08:46:20', '2022-08-01 08:46:20', '2023-08-01 09:46:20'),
('b38a44f67b9c9fbebc74064f24b7f4edf55b16f33ada89afa244c75d14206a98b06cbfb09d5d376f', 8, 1, 'app', '[]', 0, '2022-08-06 13:16:47', '2022-08-06 13:16:47', '2023-08-06 14:16:47'),
('bda9cf9f3b3fd962557a27984044b838f38a4ef74803f9da0f8422d92fca0cf5fdf5f26602183acb', 8, 1, 'app', '[]', 0, '2022-07-31 23:35:37', '2022-07-31 23:35:37', '2023-08-01 00:35:37'),
('c4aa9e36e49a66a6e20645312925fcbd1788d140a9325c88427114209c42433e6364b9230a00a4dd', 8, 1, 'app', '[]', 0, '2022-08-01 12:52:46', '2022-08-01 12:52:46', '2023-08-01 13:52:46'),
('c5aba19eface49ddf73c302974dff546304766ef4da24744abc3628045b40ed7f2ee45a793af4cec', 8, 1, 'app', '[]', 0, '2022-08-01 00:17:49', '2022-08-01 00:17:49', '2023-08-01 01:17:49'),
('cb9d995f52aa0c128cce64875d0a3194fb23b2a90a1ad26e1ca92ca458d11861c29ef70c96c7fd5d', 6, 1, 'app', '[]', 0, '2022-07-31 13:32:49', '2022-07-31 13:32:49', '2023-07-31 14:32:49'),
('cbe443ee4421e08b4e204749836ab11fbb3f93614f4646c80dac3998c0edcb9e25d004bbe09c4192', 8, 1, 'app', '[]', 0, '2022-09-28 07:00:04', '2022-09-28 07:00:04', '2023-09-28 08:00:04'),
('d53daf1736bdf3711929b0e3ed02858de2d9206753399a8e14b6f0f593407e608b081b6bad58f368', 8, 1, 'app', '[]', 0, '2022-08-01 00:58:33', '2022-08-01 00:58:33', '2023-08-01 01:58:33'),
('d7e57cbc9e9b51ed57c7c1baf8c85997b1b80bbea4db65d670999a0e2ed32dcfa5ae2ee2f9853c75', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:26', '2022-08-01 01:00:26', '2023-08-01 02:00:26'),
('db0adf4b76e4579cd15b9a1a4f95079a40a8387d0e5666d45dc3a4637e815ed3e078f9971edd7188', 8, 1, 'app', '[]', 0, '2022-08-01 00:24:48', '2022-08-01 00:24:48', '2023-08-01 01:24:48'),
('dcb37182ad1a2b4218ffa19631619f085f82c67a40adb5979551e20d46b6efa5067fc06be8dc3170', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:26', '2022-08-01 01:00:26', '2023-08-01 02:00:26'),
('dce01a0b093d83ba952ac1d0715440636c415df4b001d6e49f17187a3695890d1c6d1b954ac4b012', 8, 1, 'app', '[]', 0, '2022-08-01 00:22:02', '2022-08-01 00:22:02', '2023-08-01 01:22:02'),
('dcf983119c971f427bff67f1ee0893511af176f89c284216c5bd5d28bf5826fdf35267796aab49df', 8, 1, 'app', '[]', 0, '2022-07-31 23:04:57', '2022-07-31 23:04:57', '2023-08-01 00:04:57'),
('dda49329b892535dba002720bf0c2078aa55f83c5228900f367e3907f4f0a37707226918490ae176', 8, 1, 'app', '[]', 0, '2022-07-31 23:09:02', '2022-07-31 23:09:02', '2023-08-01 00:09:02'),
('dda9dc7a9b4343d74591f225b86872981b3b406b4a4d16e1cbd92140ecb322b03e9a5098b9d65e6b', 8, 1, 'app', '[]', 0, '2022-08-01 00:27:32', '2022-08-01 00:27:32', '2023-08-01 01:27:32'),
('ddde70fb9368a59160c02460f6b13ced06ba5c13b0fa35bc5ff1669f2211c607db7abeb894da2fa0', 8, 1, 'app', '[]', 0, '2022-07-31 22:53:35', '2022-07-31 22:53:35', '2023-07-31 23:53:35'),
('decac0edfda6acb4f678836d11e501f51ed459b5bb63711d70f018bae452eea121a75a3d0d29ca3b', 8, 1, 'app', '[]', 0, '2022-07-31 23:49:55', '2022-07-31 23:49:55', '2023-08-01 00:49:55'),
('e58e7aec7c43835869cad60e09eff059c35ba0cc227d6e834859fdbfd3b8cee9428adbee6dccc24c', 5, 1, 'app', '[]', 0, '2022-07-30 23:12:08', '2022-07-30 23:12:08', '2023-07-31 00:12:08'),
('e6a48dc784fad1e8b1487f6e05f567bbea0a3c7cb9e2aaadeff8ca8835b1a7522a24124b77a25b7f', 8, 1, 'app', '[]', 0, '2022-07-31 23:19:39', '2022-07-31 23:19:39', '2023-08-01 00:19:39'),
('e6c4908ec1809bc52a4bcec8fd41357c4a7bc834643b9324fc633f383ba8cce35d1efc4709150736', 8, 1, 'app', '[]', 0, '2022-08-01 00:11:56', '2022-08-01 00:11:56', '2023-08-01 01:11:56'),
('e9be5adfb425573b11494998d5561d7f4ac31b779306aad371ce13205f4b3d188d243857fd45c2da', 5, 1, 'app', '[]', 0, '2022-07-30 07:16:40', '2022-07-30 07:16:40', '2023-07-30 08:16:40'),
('e9d8e19b0a6d5a285710ac1a52b719ad2ae6d219d6ce4f5f4a15edb442398a8cf329a0f53251a4b3', 8, 1, 'app', '[]', 0, '2022-08-01 01:25:14', '2022-08-01 01:25:14', '2023-08-01 02:25:14'),
('ed624c792c691cbe56073cbefab5b2d2b8b96f1249b6224c9f66b6f2bda7743fdc4c304862bed5d6', 8, 1, 'app', '[]', 0, '2022-07-31 23:36:24', '2022-07-31 23:36:24', '2023-08-01 00:36:24'),
('ee67f2f2076a4c759dd9fc1b93de68b5921aad9469aa7b090e69f6efe0db736b01a65b1fa226705e', 5, 1, 'app', '[]', 0, '2022-07-31 04:04:38', '2022-07-31 04:04:38', '2023-07-31 05:04:38'),
('efd4087e023abe1422d3d4cb76bcddcf2f2dbd6d9dfb28037030e58b43475f4758a931e6ca6e63ed', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:27', '2022-08-01 01:00:27', '2023-08-01 02:00:27'),
('f022c5ec705bf38a151de1e363e6e13e4c4a65d6b0af71fb907f65081e2c08dcd229d82a573982dc', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:52', '2022-08-01 01:00:52', '2023-08-01 02:00:52'),
('f1ff7fec7f4af77019c9dcf1700e94df56b499223a025a6a056ba6a1f912418a2d5821852fa2bf02', 8, 1, 'app', '[]', 0, '2022-08-01 01:04:29', '2022-08-01 01:04:29', '2023-08-01 02:04:29'),
('f36628a62c0c383a5c27e4a45e064265b3d23f89df56ac42f8bffcb43ed2ef5e257718787906d18b', 8, 1, 'app', '[]', 0, '2022-07-31 23:58:35', '2022-07-31 23:58:35', '2023-08-01 00:58:35'),
('fe2cfe210e988d73c023c551cc3ced97ffe89c58b02ee90517eae3b0e31f8ac97f64580a2c00a4a8', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:18', '2022-08-01 01:00:18', '2023-08-01 02:00:18'),
('ff6c23f20fb8dd7b3a81ea2e3a1f970ea708e3dbcd6b6dce17528d13104193534b875a2d77ba26b2', 8, 1, 'app', '[]', 0, '2022-08-01 01:00:27', '2022-08-01 01:00:27', '2023-08-01 02:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Nx2OSEDQhQ8ndLxFga1jMuCXFGZaPfbigmbxxBJ1', NULL, 'http://localhost', 1, 0, 0, '2022-07-30 07:15:40', '2022-07-30 07:15:40'),
(2, NULL, 'Laravel Password Grant Client', 'VENLhHZNHvbelrnLsi1p3NvLVtD4WJfXhfRFZLE6', 'users', 'http://localhost', 0, 1, 0, '2022-07-30 07:15:40', '2022-07-30 07:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-30 07:15:40', '2022-07-30 07:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'ali@gmail.com', '22780', NULL),
(2, 'ali@gmail.com', '37517', NULL),
(3, 'Ali@gmail.com', '69950', NULL),
(4, 'sami@gmail.com', '94526', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `image`, `email`, `product_name`, `product_code`, `size`, `color`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(3, 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'bannedefused@gmail.com', '【In Stock】KTT Kang White Switch ', '0119-4801', 'Size: M', 'Color: Red', '1', '86.81', '86.81', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) DEFAULT NULL,
  `image_two` varchar(255) DEFAULT NULL,
  `image_three` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `seller`, `short_description`, `color`, `size`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://127.0.0.1:8000/upload/productdetails/1767066355455409.webp', 'http://127.0.0.1:8000/upload/productdetails/1767066356964539.webp', 'http://127.0.0.1:8000/upload/productdetails/1767066358494318.webp', 'Jelly House', NULL, NULL, NULL, NULL, NULL, '2023-05-27 15:43:23'),
(2, 24, 'http://127.0.0.1:8000/upload/productdetails/1766976835128576.jpg', 'http://127.0.0.1:8000/upload/productdetails/1766976836442361.jpg', 'http://127.0.0.1:8000/upload/productdetails/1766976837936016.jpg', NULL, 'this is java img', 'Red,White,Black', 'S,M,L,XL', '<p style=\"text-align: left;\">this is java img this is java img this is java img this is java img this is java img this is java img</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `special_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `star` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, '【In Stock】KTT Kang White Switch', '158.00', '86.81', 'http://127.0.0.1:8000/upload/product/1766978511618599.png', 'Select Category', 'Mobiles', 'SALE', 'Fekker', '4', '0119-4801', NULL, '2023-05-26 16:27:06'),
(2, 'Spiderman Gloves', '2.00', 'na', 'http://127.0.0.1:8000/upload/product/1767066353837996.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4802', NULL, '2023-05-27 15:43:18'),
(3, 'KTT Kang', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4803', NULL, NULL),
(4, 'KTT Kang', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4804', NULL, NULL),
(7, 'KTT Kang', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4807', NULL, NULL),
(8, 'KTT Kang', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4808', NULL, NULL),
(9, 'KTT Kang', '2.00', '1.00', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4809', NULL, NULL),
(10, 'KTT Kang', '2.00', '1.00', 'https://lzd-img-global.slatic.net/g/p/44ee17a51ce42f686aafcda93e84f240.jpg_720x720q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'NEW', 'Fekker', '4', '0119-4810', NULL, NULL),
(11, 'Spiderman Gloves', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/35f1bfaa1d8c001450cc6634f455ff92.jpg_200x200q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4811', NULL, NULL),
(12, 'Spiderman Gloves', '2.00', 'na', 'https://lzd-img-global.slatic.net/g/p/35f1bfaa1d8c001450cc6634f455ff92.jpg_200x200q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4812', NULL, NULL),
(13, 'Spiderman Gloves', '2.00', '1.00', 'https://lzd-img-global.slatic.net/g/p/35f1bfaa1d8c001450cc6634f455ff92.jpg_200x200q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4813', NULL, NULL),
(14, 'Spiderman Gloves', '2.00', '1.00', 'https://lzd-img-global.slatic.net/g/p/35f1bfaa1d8c001450cc6634f455ff92.jpg_200x200q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4814', NULL, NULL),
(15, 'Spiderman Gloves', '2.00', '1.00', 'https://lzd-img-global.slatic.net/g/p/35f1bfaa1d8c001450cc6634f455ff92.jpg_200x200q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'COLLECTION', 'Fekker', '4', '0119-4815', NULL, NULL),
(17, 'Audioengine A5+ Wireless Powered Speaker', '25,990.00', '23,790.00', 'https://lzd-img-global.slatic.net/g/p/263d875cc64ef73636c4f277abb8c702.png_400x400q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'SALE', 'Fekker', '4', '0119-4816', NULL, NULL),
(18, 'PAPITE 【In Stock】 Heroes Spider Man', '200.00', '124.00', 'https://lzd-img-global.slatic.net/g/p/2e50eb96f30512a009df87162f8c66a3.jpg_400x400q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'SALE', 'Fekker', '4', '0119-4817', NULL, NULL),
(19, 'Tecware Veil 80 TKL Black 3 mode BT Wireless', '5,110.00', 'na', 'https://lzd-img-global.slatic.net/g/p/08bd22764dd0f5dcfd1ef98be484ab6e.jpg_400x400q80.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'SALE', 'Fekker', '4', '0119-4818', NULL, NULL),
(20, 'JMK Kryotox 205g0', '5,095.00', '4,177.00', 'https://lzd-img-global.slatic.net/g/p/195d527059b2f16c748297ad55a6ef41.jpg_400x400q75.jpg_.webp', 'Sports & Lifestyle', 'Boxing', 'SALE', 'Fekker', '4', '0119-4819', NULL, NULL),
(21, 'JMK Kryotox 205g0', '12,990.00', '9,990.00', 'https://lzd-img-global.slatic.net/g/p/c0ddf694c73b456fcfb5af75a20e2061.png_400x400q75.png_.webp', 'Sports & Lifestyle', 'Boxing', 'SALE', 'Fekker', '4', '0119-4820', NULL, NULL),
(22, 'Java', '900', '840', 'http://127.0.0.1:8000/upload/product/1766976701923745.jpg', 'Cosmetic', 'Select SubCategory', 'SALE', 'Select Brand', NULL, '1300', NULL, NULL),
(23, 'Java', '900', '840', 'http://127.0.0.1:8000/upload/product/1766976758919293.jpg', 'Cosmetic', 'Select SubCategory', 'SALE', 'Select Brand', NULL, '1300', NULL, NULL),
(24, 'Java', '900', '840', 'http://127.0.0.1:8000/upload/product/1766976834061544.jpg', 'Cosmetic', 'Select SubCategory', 'SALE', 'Select Brand', NULL, '1300', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) NOT NULL DEFAULT '',
  `product_name` varchar(255) NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `reviewer_photo` varchar(255) DEFAULT NULL,
  `reviewer_rating` varchar(255) NOT NULL,
  `reviewer_comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_code`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(5, '0119-4801', 'JMK Kryotox 205g0', 'Carl Caraan', NULL, '5', 'This is best', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iBxFwSjUy1fsWRGy2xEHDlz88fzZbmc4kdaYQ9hG', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibFU3QkkzUWdld1pxYkdEQ3NxSnNwYUQ4M1VuUlhiMnNETG9Jc0tVNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbGwvbWVzc2FnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRtYkYzSDJGWkhnY2hObThCcGNhY3AudWgwOUdxaWFmZFVhRW1TM2xIOUdkQ2NEVFZuaGtZbSI7fQ==', 1685208845);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `privacy` text NOT NULL,
  `address` text NOT NULL,
  `android_app_link` varchar(255) NOT NULL,
  `ios_app_link` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `copyright_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<p>A 22-year-old Full Stack Web Developer based in Laguna, Philippines with background knowledge mostly in React and Laravel. Skilled in Frontend technologies such as Html, CSS, Javascript, Bootstrap, and Backend technologies such as Php, Python, NodeJs, and MySQL. Learning a variety of scripting languages and technology stacks is one of my strengths. I am also a hard worker and a team player. I am looking for a challenging opportunity that will enable me to use my skills and abilities to achieve a challenging goal.</p>', '<h4>Privacy Policy for LazapeePH</h4>\r\n<p>At Lazapee, accessible from https://lazapee-ph.netlify.app/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Lazapee and how we use it.</p>\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Lazapee. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n<h4>Consent</h4>\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n<h4>Information we collect</h4>\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n<h4>How we use your information</h4>\r\n<p>We use the information we collect in various ways, including to:</p>\r\n<ul>\r\n<li>Provide, operate, and maintain our website</li>\r\n<li>Improve, personalize, and expand our website</li>\r\n<li>Understand and analyze how you use our website</li>\r\n<li>Develop new products, services, features, and functionality</li>\r\n<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n<li>Send you emails</li>\r\n<li>Find and prevent fraud</li>\r\n</ul>\r\n<h4>Log Files</h4>\r\n<p>Lazapee follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\r\n<h4>Advertising Partners Privacy Policies</h4>\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of Lazapee.</p>\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Lazapee, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n<p>Note that Lazapee has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n<h4>Third Party Privacy Policies</h4>\r\n<p>Lazapee\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.{\" \"}</p>\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\r\n<h4>CCPA Privacy Rights (Do Not Sell My Personal Information)</h4>\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h4>GDPR Data Protection Rights</h4>\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access &acirc;&euro;&ldquo; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification &acirc;&euro;&ldquo; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n<p>The right to erasure &acirc;&euro;&ldquo; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing &acirc;&euro;&ldquo; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n<p>The right to object to processing &acirc;&euro;&ldquo; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability &acirc;&euro;&ldquo; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h4>Children\'s Information</h4>\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n<p>Lazapee does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 'Lazada Southeast Asia', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', '&copy; Lazapee 2022', NULL, '2022-08-20 12:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Device', 'Mobiles', NULL, NULL),
(2, 'Electronic Device', 'Desktop', NULL, NULL),
(3, 'Electronic Device', 'Laptop', NULL, NULL),
(4, 'Sports & Lifestyle', 'Boxing', NULL, NULL),
(5, 'Groceries & Pets', 'Dogs', NULL, '2022-08-16 06:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(8, 'Admin', 'Account', 'bannedefused@gmail.com', NULL, '$2y$10$axi4hlngG1wY.GzVRZzFYeTd1cdWdeZRIQG0X3IdFAjmNkrYCOa5m', NULL, NULL, NULL, NULL, NULL, '202208130003jordi2.jpg', '2022-07-31 22:50:45', '2022-08-13 11:21:33'),
(9, 'Carl', 'Carl', 'bannedefused1@gmail.com', NULL, '$2y$10$HVnv4DNzjpoiKkRtGd3v6ObscdmkVreZtOqr46WI2sIRUrcVPutjm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 11:28:12', '2022-08-01 11:28:12'),
(10, 'Ali', 'Ali', 'Ali@gmail.com', NULL, '$2y$10$jTpJxC6BGnJi3uufLO/Kb.iPyAgxHkt1tU4fmBvqS9CLMGiQaSO0y', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-25 20:26:32', '2023-05-25 20:26:32'),
(11, 'Benajaji', 'Abdelali', 'abdelalibenajaji@gmail.com', NULL, '$2y$10$mbF3H2FZHgchNm8Bpcacp.uh09GqiafdUaEmS3lH9GdCcDTVnhkYm', NULL, NULL, NULL, NULL, NULL, '202305271723189-1896588_user-image-unidentified-person-icon-clipart.png', '2023-05-25 20:41:21', '2023-05-27 16:23:44'),
(12, 'Sami', 'Sami', 'sami@gmail.com', NULL, '$2y$10$E8.yLI4PiMkpo8Sn1e5MI.FemwzCeCa5WAURF5cBQcuLvxbU60dgO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 17:11:39', '2023-05-26 17:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `visit_time` varchar(255) NOT NULL,
  `visit_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(159, '127.0.0.1', '04:40:42pm', '28-09-2022', NULL, NULL),
(160, '127.0.0.1', '04:41:07pm', '28-09-2022', NULL, NULL),
(161, '127.0.0.1', '04:44:38pm', '28-09-2022', NULL, NULL),
(162, '127.0.0.1', '04:44:44pm', '28-09-2022', NULL, NULL),
(163, '127.0.0.1', '04:45:39pm', '28-09-2022', NULL, NULL),
(164, '127.0.0.1', '04:49:09pm', '28-09-2022', NULL, NULL),
(165, '127.0.0.1', '04:49:22pm', '28-09-2022', NULL, NULL),
(166, '127.0.0.1', '04:50:41pm', '28-09-2022', NULL, NULL),
(167, '127.0.0.1', '04:51:14pm', '28-09-2022', NULL, NULL),
(168, '127.0.0.1', '06:02:24pm', '30-09-2022', NULL, NULL),
(169, '127.0.0.1', '06:10:07pm', '30-09-2022', NULL, NULL),
(170, '127.0.0.1', '05:20:01am', '26-05-2023', NULL, NULL),
(171, '127.0.0.1', '05:23:22am', '26-05-2023', NULL, NULL),
(172, '127.0.0.1', '05:29:44am', '26-05-2023', NULL, NULL),
(173, '127.0.0.1', '05:30:33am', '26-05-2023', NULL, NULL),
(174, '127.0.0.1', '06:07:00am', '26-05-2023', NULL, NULL),
(175, '127.0.0.1', '06:27:57am', '26-05-2023', NULL, NULL),
(176, '127.0.0.1', '06:29:05am', '26-05-2023', NULL, NULL),
(177, '127.0.0.1', '06:32:24am', '26-05-2023', NULL, NULL),
(178, '127.0.0.1', '06:34:00am', '26-05-2023', NULL, NULL),
(179, '127.0.0.1', '06:37:05am', '26-05-2023', NULL, NULL),
(180, '127.0.0.1', '06:38:44am', '26-05-2023', NULL, NULL),
(181, '127.0.0.1', '12:38:07am', '27-05-2023', NULL, NULL),
(182, '127.0.0.1', '12:43:57am', '27-05-2023', NULL, NULL),
(183, '127.0.0.1', '01:02:50am', '27-05-2023', NULL, NULL),
(184, '127.0.0.1', '01:03:52am', '27-05-2023', NULL, NULL),
(185, '127.0.0.1', '01:05:44am', '27-05-2023', NULL, NULL),
(186, '127.0.0.1', '01:22:16am', '27-05-2023', NULL, NULL),
(187, '127.0.0.1', '01:23:21am', '27-05-2023', NULL, NULL),
(188, '127.0.0.1', '01:24:45am', '27-05-2023', NULL, NULL),
(189, '127.0.0.1', '01:30:17am', '27-05-2023', NULL, NULL),
(190, '127.0.0.1', '01:50:54am', '27-05-2023', NULL, NULL),
(191, '127.0.0.1', '02:00:45am', '27-05-2023', NULL, NULL),
(192, '127.0.0.1', '02:13:01am', '27-05-2023', NULL, NULL),
(193, '127.0.0.1', '02:21:51am', '27-05-2023', NULL, NULL),
(194, '127.0.0.1', '02:22:41am', '27-05-2023', NULL, NULL),
(195, '127.0.0.1', '02:36:56am', '27-05-2023', NULL, NULL),
(196, '127.0.0.1', '02:40:47am', '27-05-2023', NULL, NULL),
(197, '127.0.0.1', '09:58:26pm', '27-05-2023', NULL, NULL),
(198, '127.0.0.1', '10:11:46pm', '27-05-2023', NULL, NULL),
(199, '127.0.0.1', '10:49:27pm', '27-05-2023', NULL, NULL),
(200, '127.0.0.1', '10:55:52pm', '27-05-2023', NULL, NULL),
(201, '127.0.0.1', '11:07:10pm', '27-05-2023', NULL, NULL),
(202, '127.0.0.1', '11:11:06pm', '27-05-2023', NULL, NULL),
(203, '127.0.0.1', '11:20:26pm', '27-05-2023', NULL, NULL),
(204, '127.0.0.1', '11:33:00pm', '27-05-2023', NULL, NULL),
(205, '127.0.0.1', '12:38:49am', '28-05-2023', NULL, NULL),
(206, '127.0.0.1', '12:45:11am', '28-05-2023', NULL, NULL),
(207, '127.0.0.1', '01:30:27am', '28-05-2023', NULL, NULL),
(208, '127.0.0.1', '01:40:53am', '28-05-2023', NULL, NULL),
(209, '127.0.0.1', '01:42:38am', '28-05-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
