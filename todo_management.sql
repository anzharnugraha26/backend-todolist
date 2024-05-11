-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 04:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_management`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_02_135129_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `expires_at` int(11) DEFAULT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `expires_at`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(53, 'App\\Models\\User', 3, 'main', 'c77e7c80c9df3b8b3dbb62a573fa4d4f04dbe8198930e0a1c96a23e108a17d93', NULL, '[\"*\"]', '2024-05-06 02:43:10', '2024-05-06 02:25:32', '2024-05-06 02:43:10'),
(84, 'App\\Models\\User', 6, 'main', '2d7baec537bd28d25e3ec48a026b0c166cc125bc5f66f86335c69f5b14d05991', NULL, '[\"*\"]', NULL, '2024-05-08 17:48:17', '2024-05-08 17:48:17'),
(85, 'App\\Models\\User', 7, 'main', '201173b6a2fc33bc3249464b5c59d07847b44744cb716a959d1a93e84306728d', NULL, '[\"*\"]', NULL, '2024-05-11 06:06:41', '2024-05-11 06:06:41'),
(86, 'App\\Models\\User', 8, 'main', 'fc1792eef26677c4b46d3783fcac2500d7df0fe9345e02c6887e5d5a405a91f9', NULL, '[\"*\"]', NULL, '2024-05-11 06:08:51', '2024-05-11 06:08:51'),
(87, 'App\\Models\\User', 9, 'main', '39bccbf5f661e74cbfb5236552d36e952456fd032e6e82b11b8951722ae9ea59', NULL, '[\"*\"]', NULL, '2024-05-11 06:36:33', '2024-05-11 06:36:33'),
(88, 'App\\Models\\User', 9, 'authToken', '7ee038d31447d5d09556aeca2d9aaae2fe107851855b049ff7d56f10bd0698e8', NULL, '[\"*\"]', NULL, '2024-05-11 06:44:04', '2024-05-11 06:44:04'),
(89, 'App\\Models\\User', 9, 'authToken', '160b8a15e0c2e44b7958cd9d33cc17759777cbb13f1fdcbbc659ea0be550360b', NULL, '[\"*\"]', NULL, '2024-05-11 06:44:12', '2024-05-11 06:44:12'),
(90, 'App\\Models\\User', 9, 'authToken', '168dd66aed32abd490634902e9dfaf79eceb1b6f4a2d646bc04954abd9bf8869', NULL, '[\"*\"]', NULL, '2024-05-11 06:51:40', '2024-05-11 06:51:40'),
(91, 'App\\Models\\User', 9, 'authToken', '60ca271c44415189984e2c00f3bc30e70d208f3cff1d23ba1b4f718d11e51459', NULL, '[\"*\"]', NULL, '2024-05-11 06:52:00', '2024-05-11 06:52:00'),
(92, 'App\\Models\\User', 9, 'authToken', '80d8321e5cb711e3b021180a1bdf9114c18b9b3312fa53556e4bb4a9f459d523', NULL, '[\"*\"]', NULL, '2024-05-11 06:52:19', '2024-05-11 06:52:19'),
(94, 'App\\Models\\User', 4, 'authToken', 'e12da3d897f00afe6d3ba522556bef4b27a0563b17957d4d2fe139b0fc87aa88', NULL, '[\"*\"]', NULL, '2024-05-11 06:58:31', '2024-05-11 06:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `userid`, `title`, `created_at`, `updated_at`) VALUES
(5, 1, 'hasil update', '2024-05-08 00:31:12', '2024-05-08 01:48:42'),
(7, 1, 'SASASASAS', '2024-05-08 00:35:16', '2024-05-08 00:35:16'),
(8, 1, 'sasasa', '2024-05-08 01:01:26', '2024-05-08 01:01:26'),
(9, 1, 'saya akan ke sini', '2024-05-08 01:02:17', '2024-05-08 01:02:17'),
(10, 1, 'test', '2024-05-08 01:03:21', '2024-05-08 01:03:21'),
(12, 1, 'create 1', '2024-05-08 01:48:56', '2024-05-08 01:48:56');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'anzhar', 'anzhar26@gmail.com', NULL, '$2y$10$nf8pvSSmGOrAOM9YMDV1tOfWvn9NQqWjHxZiG4XAKqq96tmAUCB3G', NULL, '2024-05-02 21:34:22', '2024-05-02 21:34:22'),
(2, 'anzhar', 'anzhar@gmail.com', NULL, '$2y$10$9jF6B.rwB/nwJngnP9nCieqBMG74Uvam.S5GNJHvpgIJyPYOWDUsm', NULL, '2024-05-05 18:32:21', '2024-05-05 18:32:21'),
(3, 'a', 'anzhar2612@gmail.com', NULL, '$2y$10$jaFOghIVCbIAZKxmPQGlluLmaY7Mz5pHgDu5TtRH6yMYacNfRQIlG', NULL, '2024-05-06 02:25:32', '2024-05-06 02:25:32'),
(4, 'anzhar', 'anzharnugraha26@gmail.com', NULL, '$2y$10$GLCqibBEc4lIzzP.bTOPce/hg8rwYtOQjr7FhetwgANJUy0xJhhyy', NULL, '2024-05-06 02:30:47', '2024-05-06 02:30:47'),
(5, 'harap', 'harap2cemas@gmail.com', NULL, '$2y$10$GBGKvpTGjosx2Qk3/ZljTe0OWEDOOg7xdnk.JRBGbIawedzie4CAq', NULL, '2024-05-06 02:48:58', '2024-05-06 02:48:58'),
(6, 'anzhar', 'anzhartestmobile@gmail.com', NULL, '$2y$10$SAcP9likCqizkA/FskqsDOO74I5Wvz3VeyJqliThIDMfoSmndTsRW', NULL, '2024-05-08 17:48:17', '2024-05-08 17:48:17'),
(7, 'Ee', 'anzharnugrahtfa26@gmail.com', NULL, '$2y$10$AbACLX70dZcimzXGSsLheeuPjic2Mj0Qu3sa.njwdLa/nqIpdQrv6', NULL, '2024-05-11 06:06:41', '2024-05-11 06:06:41'),
(8, 'Ee', 'anzharnugrahthagsgafa26@gmail.com', NULL, '$2y$10$UU2eprOnNMwkMoT8yNS66OqU.5z8FZUL33rvf47I.0z3ww30nAyqG', NULL, '2024-05-11 06:08:51', '2024-05-11 06:08:51'),
(9, 'anzhar', 'anzharnugraha50@gmail.com', NULL, '$2y$10$ZUex7a38DOxe71Ca6owS7uuXDzaEIkf/Q/M8iKe.VbuMIrwzeKYyW', NULL, '2024-05-11 06:36:33', '2024-05-11 06:36:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
