-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 02:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larazillow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `beds` tinyint(3) UNSIGNED NOT NULL,
  `baths` tinyint(3) UNSIGNED NOT NULL,
  `area` smallint(5) UNSIGNED NOT NULL,
  `city` tinytext NOT NULL,
  `code` tinytext NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `street` tinytext NOT NULL,
  `street_nr` tinytext NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `sold_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `beds`, `baths`, `area`, `city`, `code`, `user_id`, `street`, `street_nr`, `price`, `sold_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 7, 199, 'Cormierfurt', '45394', 2, '140 Skylar Ways Suite 446', '139', 885865, '2024-10-10 03:25:30', '2024-10-10 03:07:36', '2024-10-10 03:25:30', NULL),
(2, 7, 1, 260, 'East Hilmaville', '93947', 1, '478 Rosetta Mall Suite 376', '35', 1567976, '2024-10-10 06:35:36', '2024-10-10 03:07:36', '2024-10-10 06:35:36', NULL),
(3, 4, 6, 310, 'New Logan', '91690', 1, '77579 Jade Trafficway Suite 952', '163', 1484160, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(4, 4, 6, 285, 'New Anika', '43883-7456', 1, '74764 Kozey Canyon Apt. 666', '113', 1874437, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(5, 6, 5, 282, 'North Clarissa', '67278', 1, '9085 Gusikowski Fields', '138', 745576, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(6, 5, 1, 388, 'Nathanielburgh', '46867-8139', 1, '8268 Spencer Place Suite 817', '193', 1150261, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(7, 1, 5, 387, 'North Sharon', '35483', 1, '9271 Turner Flat Apt. 994', '51', 1612478, '2024-10-10 03:59:28', '2024-10-10 03:07:36', '2024-10-10 03:59:28', NULL),
(8, 1, 7, 73, 'East Rickey', '41661-7423', 1, '41663 Romaguera Plaza Suite 906', '81', 1809611, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(9, 5, 4, 122, 'West Mellie', '31757-4629', 1, '4334 Elmo Heights Suite 291', '169', 1604354, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(10, 4, 6, 69, 'West Benmouth', '73872', 1, '4291 Prohaska Stravenue', '130', 1168805, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(11, 1, 4, 43, 'North Dulcehaven', '11909', 2, '1655 Skiles Turnpike', '111', 605318, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(12, 6, 7, 348, 'South Clarabellebury', '14798-5891', 2, '8811 Gutmann Ville', '103', 141835, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(13, 3, 3, 379, 'Grantton', '94666-0797', 2, '3617 Reinger Road Apt. 425', '108', 1329090, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(14, 3, 3, 313, 'North Merle', '09469', 2, '9457 Bartell Canyon', '31', 71778, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(15, 5, 4, 138, 'Weimannview', '25503', 2, '2978 Ryann Corners', '18', 1046549, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(16, 6, 1, 296, 'North Dejah', '00943-4966', 2, '82269 Moriah Turnpike', '185', 1905360, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(17, 1, 5, 87, 'Port Oswaldoborough', '50101', 2, '838 Carroll Mountains Suite 062', '100', 1367439, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(18, 6, 6, 104, 'South Marcelinaton', '66734', 2, '8830 Labadie Lodge Apt. 890', '67', 234929, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(19, 7, 7, 204, 'New Adaline', '09030-6478', 2, '748 Kris Roads', '11', 1116873, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL),
(20, 4, 2, 129, 'New Ottilie', '01806-3201', 2, '440 Kelley Meadows', '145', 91132, NULL, '2024-10-10 03:07:36', '2024-10-10 03:07:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listing_images`
--

CREATE TABLE `listing_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(27, '0001_01_01_000000_create_users_table', 1),
(28, '0001_01_01_000001_create_cache_table', 1),
(29, '0001_01_01_000002_create_jobs_table', 1),
(30, '2024_08_31_102037_create_listings_table', 1),
(31, '2024_09_09_062550_create_listing_images_table', 1),
(32, '2024_10_09_063228_create_offers_table', 1),
(33, '2024_10_10_094750_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0d4048f2-9849-4194-8900-2c5c557fa85f', 'App\\Notifications\\OfferMade', 'App\\Models\\User', 2, '{\"offer_id\":13,\"listing_id\":16,\"amount\":1905360,\"bidder_id\":2}', NULL, '2024-10-10 06:42:27', '2024-10-10 06:42:27'),
('13e05ff4-3e2c-4201-a7f8-41f72bd76314', 'App\\Notifications\\OfferMade', 'App\\Models\\User', 1, '{\"offer_id\":11,\"listing_id\":8,\"amount\":1874806,\"bidder_id\":2}', '2024-10-10 06:33:24', '2024-10-10 04:44:47', '2024-10-10 06:33:24'),
('306334ea-5f3a-43af-94ea-30d3e8e5b694', 'App\\Notifications\\OfferMade', 'App\\Models\\User', 1, '{\"offer_id\":14,\"listing_id\":3,\"amount\":1484160,\"bidder_id\":2}', '2024-10-10 06:43:45', '2024-10-10 06:42:59', '2024-10-10 06:43:45'),
('cd2b0dda-f0ce-459b-a8d8-f9dc3f6abaa2', 'App\\Notifications\\OfferMade', 'App\\Models\\User', 2, '{\"offer_id\":12,\"listing_id\":12,\"amount\":141835,\"bidder_id\":2}', NULL, '2024-10-10 06:41:43', '2024-10-10 06:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `bidder_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `listing_id`, `bidder_id`, `amount`, `accepted_at`, `rejected_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1022933, NULL, '2024-10-10 03:25:30', '2024-10-10 03:24:47', '2024-10-10 03:25:30'),
(2, 1, 2, 1002933, '2024-10-10 03:25:30', NULL, '2024-10-10 03:25:08', '2024-10-10 03:25:30'),
(3, 2, 3, 1613988, '2024-10-10 06:35:36', NULL, '2024-10-10 03:40:31', '2024-10-10 06:35:36'),
(4, 7, 3, 1686239, '2024-10-10 03:59:28', NULL, '2024-10-10 03:57:15', '2024-10-10 03:59:28'),
(5, 6, 1, 1150261, NULL, NULL, '2024-10-10 04:31:20', '2024-10-10 04:31:20'),
(6, 6, 1, 1195131, NULL, NULL, '2024-10-10 04:32:02', '2024-10-10 04:32:02'),
(7, 9, 2, 1604354, NULL, NULL, '2024-10-10 04:33:04', '2024-10-10 04:33:04'),
(8, 11, 2, 612659, NULL, NULL, '2024-10-10 04:33:34', '2024-10-10 04:33:34'),
(9, 5, 2, 745576, NULL, NULL, '2024-10-10 04:36:43', '2024-10-10 04:36:43'),
(10, 6, 2, 1150261, NULL, NULL, '2024-10-10 04:39:02', '2024-10-10 04:39:02'),
(11, 8, 2, 1874806, NULL, NULL, '2024-10-10 04:44:47', '2024-10-10 04:44:47'),
(12, 12, 2, 141835, NULL, NULL, '2024-10-10 06:41:43', '2024-10-10 06:41:43'),
(13, 16, 2, 1905360, NULL, NULL, '2024-10-10 06:42:27', '2024-10-10 06:42:27'),
(14, 3, 2, 1484160, NULL, NULL, '2024-10-10 06:42:59', '2024-10-10 06:42:59');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2a8SHiZ3cgt6pTGZsVYHSyVGeKEQxERev8xf3jnC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVIwd01Vam9XRUUzQ2RJc01mc2liaTZwekVzamtPblp0amw3TzJNTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1728562425),
('ePTw1vOR5VMOhv86kIUOC479wJVJlthJQoUhLEuP', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidW5LOHA4eEx4QkNsSHBCRHVuMVpLOWZ6aHZXcHBqbHZwb0w5TW45MCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbGlzdGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1728560942);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test User', 'test@example.com', '2024-10-10 03:07:36', '$2y$12$FTAuGf11cjzxMJ1P5YuhzOUO2/iZDRyoQNCPwP7YFjTP6n79.YXK.', 'MRvbdykafHjswhfl7ZH658eJPnxuSNIX6zpGOtZGPUUMSu7if3ApaBfkzCBZ', '2024-10-10 03:07:36', '2024-10-10 03:07:36'),
(2, 0, 'Test User', 'test2@example.com', '2024-10-10 03:07:36', '$2y$12$FTAuGf11cjzxMJ1P5YuhzOUO2/iZDRyoQNCPwP7YFjTP6n79.YXK.', 'cUg0hPJTIV15Sc1voBAtKBv4gCrsBcqIsXfwCHVMHXqdzePHfQrYsbsF8GK4', '2024-10-10 03:07:36', '2024-10-10 03:07:36'),
(3, 0, 'technician', 'technician@gmail.com', NULL, '$2y$12$a4HWn1o7f6IWQvwKgj.3M.wmNw71aF73sC32SuDeflHOAaiuJ333O', 'Tez5ZL8OQAiIln11HxGzfsd2DdoDS0TdOCf5jYiED0uB5pUDxvfzZZAgi7mP', '2024-10-10 03:39:50', '2024-10-10 03:39:50');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `listing_images`
--
ALTER TABLE `listing_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_images_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_listing_id_foreign` (`listing_id`),
  ADD KEY `offers_bidder_id_foreign` (`bidder_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `listing_images`
--
ALTER TABLE `listing_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `listing_images`
--
ALTER TABLE `listing_images`
  ADD CONSTRAINT `listing_images_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_bidder_id_foreign` FOREIGN KEY (`bidder_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `offers_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
