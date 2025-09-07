-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 07 Eyl 2025, 12:58:16
-- Sunucu sürümü: 10.3.39-MariaDB
-- PHP Sürümü: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `softbbsf_nextalya`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `businessrequest`
--

CREATE TABLE `businessrequest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `tax_office` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 24, 'test', '2025-08-26 00:50:50', '2025-08-26 00:50:50'),
(2, 2, 24, 'asd', '2025-08-26 00:50:54', '2025-08-26 00:50:54'),
(3, 2, 8, 'asdsa', '2025-08-26 21:07:19', '2025-08-26 21:07:19'),
(4, 2, 8, 'asdasd', '2025-08-26 21:07:21', '2025-08-26 21:07:21'),
(5, 2, 8, 'zxczxc', '2025-08-26 21:07:24', '2025-08-26 21:07:24'),
(6, 2, 8, 'ana', '2025-08-26 21:07:28', '2025-08-26 21:07:28'),
(7, 10, 23, '👍👍', '2025-08-28 06:09:19', '2025-08-28 06:09:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `communities`
--

CREATE TABLE `communities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `community_token` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `communities`
--

INSERT INTO `communities` (`id`, `user_id`, `name`, `slug`, `description`, `community_token`, `created_at`, `updated_at`) VALUES
(2, 2, 'adsasd', 'adsasd-jPWkISaLSuE9SI8P', 'asdasd', 'jPWkISaLSuE9SI8P', '2025-08-26 20:21:05', '2025-08-26 20:21:05'),
(3, 2, 'zxczxc', 'zxczxc-cLveRoJrEg7DGN54', 'asczxc', 'cLveRoJrEg7DGN54', '2025-08-26 20:24:46', '2025-08-26 20:24:46'),
(4, 2, 'asdasd', 'asdasd-glJLlKVbXtQVCz5Y', 'asd', 'glJLlKVbXtQVCz5Y', '2025-08-26 20:26:42', '2025-08-26 20:26:42'),
(5, 2, 'adasdasdasd', 'adasdasdasd-egAwGsw34mYIFLRi', 'asdasd', 'egAwGsw34mYIFLRi', '2025-08-26 20:27:32', '2025-08-26 20:27:32'),
(6, 11, 'test', 'test-6r57Nu9WmEeo4lTN', 'testtt', '6r57Nu9WmEeo4lTN', '2025-08-29 16:56:38', '2025-08-29 16:56:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `communityproducts`
--

CREATE TABLE `communityproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `community_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `communityproducts`
--

INSERT INTO `communityproducts` (`id`, `product_id`, `community_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 19, 2, 2, '2025-08-26 20:34:58', '2025-08-26 20:34:58'),
(3, 19, 3, 2, '2025-08-26 20:34:58', '2025-08-26 20:34:58'),
(4, 24, 2, 2, '2025-08-26 20:37:44', '2025-08-26 20:37:44'),
(5, 20, 6, 11, '2025-08-29 16:56:54', '2025-08-29 16:56:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customlogs`
--

CREATE TABLE `customlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `customlogs`
--

INSERT INTO `customlogs` (`id`, `user_id`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(5, 4, 'like', 'Ultra HD 4K Televizyon 50 ürünü abdullah balıkçı tarafından beğenildi.', 'unread', '2025-08-26 00:15:13', '2025-08-26 00:15:13'),
(7, 2, 'favorite', 'Masaüstü Nemlendirici Difüzör ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 00:17:13', '2025-08-26 00:17:13'),
(8, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürünü abdullah balıkçı tarafından beğenildi.', 'unread', '2025-08-26 00:28:27', '2025-08-26 00:28:27'),
(9, 2, 'favorite', 'Kaymaz Tabanlı Banyo Paspası ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 00:28:29', '2025-08-26 00:28:29'),
(10, 2, 'favorite', 'Kaymaz Tabanlı Banyo Paspası ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 00:38:17', '2025-08-26 00:38:17'),
(11, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürünü abdullah balıkçı tarafından beğenildi.', 'unread', '2025-08-26 00:38:18', '2025-08-26 00:38:18'),
(12, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 00:50:50', '2025-08-26 00:50:50'),
(13, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 00:50:54', '2025-08-26 00:50:54'),
(14, 2, 'favorite', 'Vakumlu Saklama Torbası ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 20:34:37', '2025-08-26 20:34:37'),
(15, 2, 'favorite', 'Bambu Çamaşır Sepeti ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 21:06:29', '2025-08-26 21:06:29'),
(16, 3, 'favorite', 'Akıllı Saat X100 ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 21:06:30', '2025-08-26 21:06:30'),
(17, 5, 'favorite', 'Dizüstü Bilgisayar 15.6 i5 ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 21:06:32', '2025-08-26 21:06:32'),
(18, 2, 'favorite', 'Masaüstü Nemlendirici Difüzör ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 21:06:42', '2025-08-26 21:06:42'),
(19, 2, 'favorite', 'Dijital Oda Termometresi ve Higrometre ürünü abdullah balıkçı tarafından favorilere eklendi.', 'unread', '2025-08-26 21:06:44', '2025-08-26 21:06:44'),
(20, 3, 'comment', 'Akıllı Saat X100 ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 21:07:19', '2025-08-26 21:07:19'),
(21, 3, 'comment', 'Akıllı Saat X100 ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 21:07:21', '2025-08-26 21:07:21'),
(22, 3, 'comment', 'Akıllı Saat X100 ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 21:07:24', '2025-08-26 21:07:24'),
(23, 3, 'comment', 'Akıllı Saat X100 ürününüze abdullah balıkçı tarafından yorum yapıldı.', 'unread', '2025-08-26 21:07:28', '2025-08-26 21:07:28'),
(24, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:15:37', '2025-08-27 04:15:37'),
(25, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:15:38', '2025-08-27 04:15:38'),
(26, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:15:40', '2025-08-27 04:15:40'),
(27, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:15:42', '2025-08-27 04:15:42'),
(28, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:15:45', '2025-08-27 04:15:45'),
(29, 5, 'like', 'Ergonomik Ofis Sandalyesi ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:16:04', '2025-08-27 04:16:04'),
(30, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 04:16:13', '2025-08-27 04:16:13'),
(31, 5, 'like', 'Akıllı Robot Süpürge Max ürünü huseyin tarafından beğenildi.', 'unread', '2025-08-27 09:21:41', '2025-08-27 09:21:41'),
(32, 5, 'like', 'Akıllı Robot Süpürge Max ürünü huseyin tarafından beğenildi.', 'unread', '2025-08-27 09:21:42', '2025-08-27 09:21:42'),
(33, 2, 'like', 'Katlanabilir Çamaşır Kurutmalık ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:17', '2025-08-27 11:06:17'),
(34, 2, 'like', 'Katlanabilir Çamaşır Kurutmalık ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:19', '2025-08-27 11:06:19'),
(35, 5, 'like', 'Akıllı Robot Süpürge Max ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:21', '2025-08-27 11:06:21'),
(36, 2, 'like', 'Masaüstü Nemlendirici Difüzör ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:28', '2025-08-27 11:06:28'),
(37, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:43', '2025-08-27 11:06:43'),
(38, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:45', '2025-08-27 11:06:45'),
(39, 2, 'like', 'Vakumlu Saklama Torbası ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 11:06:48', '2025-08-27 11:06:48'),
(40, 2, 'favorite', 'Dijital Oda Termometresi ve Higrometre ürünü Büşra tarafından favorilere eklendi.', 'unread', '2025-08-27 11:07:09', '2025-08-27 11:07:09'),
(41, 2, 'favorite', 'Bambu Çamaşır Sepeti ürünü Büşra tarafından favorilere eklendi.', 'unread', '2025-08-27 11:07:11', '2025-08-27 11:07:11'),
(42, 2, 'like', 'Kaymaz Tabanlı Banyo Paspası ürünü Büşra tarafından beğenildi.', 'unread', '2025-08-27 17:00:01', '2025-08-27 17:00:01'),
(43, 2, 'like', 'Katlanabilir Çamaşır Kurutmalık ürünü Kerem tarafından beğenildi.', 'unread', '2025-08-27 17:04:56', '2025-08-27 17:04:56'),
(44, 2, 'favorite', 'Katlanabilir Çamaşır Kurutmalık ürünü Kerem tarafından favorilere eklendi.', 'unread', '2025-08-27 17:05:52', '2025-08-27 17:05:52'),
(45, 2, 'favorite', 'Katlanabilir Çamaşır Kurutmalık ürünü Tuğçe Kocagün tarafından favorilere eklendi.', 'unread', '2025-08-27 17:24:54', '2025-08-27 17:24:54'),
(46, 2, 'comment', 'Masaüstü Nemlendirici Difüzör ürününüze Tuğçe Kocagün tarafından yorum yapıldı.', 'unread', '2025-08-28 06:09:19', '2025-08-28 06:09:19'),
(47, 2, 'favorite', 'Masaüstü Nemlendirici Difüzör ürünü Tuğçe Kocagün tarafından favorilere eklendi.', 'unread', '2025-08-28 06:09:40', '2025-08-28 06:09:40'),
(48, 5, 'like', 'Dizüstü Bilgisayar 15.6 i5 ürünü Gülay tarafından beğenildi.', 'unread', '2025-08-28 06:16:53', '2025-08-28 06:16:53'),
(49, 2, 'like', 'Vakumlu Saklama Torbası ürünü 1283213kdfj82jflkaee8242 tarafından beğenildi.', 'unread', '2025-08-28 12:06:09', '2025-08-28 12:06:09'),
(50, 2, 'favorite', 'Vakumlu Saklama Torbası ürünü 1283213kdfj82jflkaee8242 tarafından favorilere eklendi.', 'unread', '2025-08-28 12:06:11', '2025-08-28 12:06:11'),
(51, 2, 'favorite', 'Masaüstü Nemlendirici Difüzör ürünü 1283213kdfj82jflkaee8242 tarafından favorilere eklendi.', 'unread', '2025-08-28 12:06:25', '2025-08-28 12:06:25'),
(52, 3, 'favorite', 'Akıllı Saat X100 ürünü 1283213kdfj82jflkaee8242 tarafından favorilere eklendi.', 'unread', '2025-08-28 12:06:27', '2025-08-28 12:06:27'),
(53, 2, 'favorite', 'Kaymaz Tabanlı Banyo Paspası ürünü 1283213kdfj82jflkaee8242 tarafından favorilere eklendi.', 'unread', '2025-08-28 13:01:35', '2025-08-28 13:01:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `favories`
--

CREATE TABLE `favories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `favories`
--

INSERT INTO `favories` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 21, 2, '2025-08-26 20:34:37', '2025-08-26 20:34:37'),
(8, 20, 2, '2025-08-26 21:06:29', '2025-08-26 21:06:29'),
(9, 8, 2, '2025-08-26 21:06:30', '2025-08-26 21:06:30'),
(10, 12, 2, '2025-08-26 21:06:32', '2025-08-26 21:06:32'),
(11, 23, 2, '2025-08-26 21:06:42', '2025-08-26 21:06:42'),
(12, 22, 2, '2025-08-26 21:06:44', '2025-08-26 21:06:44'),
(13, 22, 7, '2025-08-27 11:07:09', '2025-08-27 11:07:09'),
(14, 20, 7, '2025-08-27 11:07:11', '2025-08-27 11:07:11'),
(15, 19, 6, '2025-08-27 17:05:52', '2025-08-27 17:05:52'),
(16, 19, 10, '2025-08-27 17:24:54', '2025-08-27 17:24:54'),
(17, 23, 10, '2025-08-28 06:09:40', '2025-08-28 06:09:40'),
(18, 21, 6, '2025-08-28 12:06:11', '2025-08-28 12:06:11'),
(19, 23, 6, '2025-08-28 12:06:25', '2025-08-28 12:06:25'),
(20, 8, 6, '2025-08-28 12:06:27', '2025-08-28 12:06:27'),
(21, 24, 6, '2025-08-28 13:01:35', '2025-08-28 13:01:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `follows`
--

CREATE TABLE `follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `follows`
--

INSERT INTO `follows` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '2025-08-22 23:51:01', '2025-08-22 23:51:01'),
(3, 2, 4, '2025-08-22 23:51:03', '2025-08-22 23:51:03'),
(4, 5, 4, '2025-08-23 00:27:16', '2025-08-23 00:27:16'),
(5, 5, 3, '2025-08-23 00:27:18', '2025-08-23 00:27:18'),
(6, 5, 2, '2025-08-23 00:27:18', '2025-08-23 00:27:18'),
(7, 2, 3, '2025-08-25 23:21:29', '2025-08-25 23:21:29'),
(8, 6, 4, '2025-08-27 17:07:10', '2025-08-27 17:07:10'),
(10, 10, 3, '2025-08-27 17:14:12', '2025-08-27 17:14:12'),
(11, 10, 6, '2025-08-27 17:14:23', '2025-08-27 17:14:23'),
(13, 11, 2, '2025-08-27 17:17:05', '2025-08-27 17:17:05'),
(14, 11, 4, '2025-08-27 17:17:06', '2025-08-27 17:17:06'),
(16, 11, 10, '2025-08-27 17:17:08', '2025-08-27 17:17:08'),
(18, 11, 8, '2025-08-27 17:17:58', '2025-08-27 17:17:58'),
(19, 11, 9, '2025-08-27 17:18:02', '2025-08-27 17:18:02'),
(20, 11, 3, '2025-08-27 17:23:36', '2025-08-27 17:23:36'),
(21, 10, 7, '2025-08-28 06:06:58', '2025-08-28 06:06:58'),
(22, 10, 9, '2025-08-28 06:12:41', '2025-08-28 06:12:41'),
(23, 10, 5, '2025-08-28 06:13:57', '2025-08-28 06:13:57'),
(24, 10, 4, '2025-08-28 06:13:58', '2025-08-28 06:13:58'),
(25, 10, 2, '2025-08-28 06:13:58', '2025-08-28 06:13:58'),
(26, 10, 8, '2025-08-28 06:13:59', '2025-08-28 06:13:59'),
(27, 10, 11, '2025-08-28 06:14:00', '2025-08-28 06:14:00'),
(28, 10, 12, '2025-08-28 06:14:01', '2025-08-28 06:14:01'),
(29, 11, 5, '2025-08-28 17:17:15', '2025-08-28 17:17:15'),
(30, 11, 12, '2025-08-28 17:17:17', '2025-08-28 17:17:17'),
(31, 11, 6, '2025-08-28 17:17:19', '2025-08-28 17:17:19'),
(32, 11, 7, '2025-08-28 17:17:22', '2025-08-28 17:17:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
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
-- Tablo için tablo yapısı `job_batches`
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
-- Tablo için tablo yapısı `lowcats`
--

CREATE TABLE `lowcats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_07_172420_create_topcats_table', 1),
(5, '2025_03_07_172428_create_subcats_table', 1),
(6, '2025_03_07_172435_create_lowcats_table', 1),
(7, '2025_07_12_050820_add_multiple_columns_to_users_table', 1),
(8, '2025_07_25_102602_add_columnname_to_users_table', 1),
(9, '2025_07_28_091730_create_products_table', 1),
(10, '2025_07_28_091948_create_productfeatures_table', 1),
(11, '2025_07_28_092027_create_productviews_table', 1),
(12, '2025_07_30_101642_create_productlikes_table', 1),
(13, '2025_07_30_184411_create_businessrequest_table', 1),
(14, '2025_07_30_194508_create_favories_table', 1),
(15, '2025_07_31_122346_create_communities_table', 1),
(16, '2025_08_06_204337_create_communityproducts_table', 1),
(17, '2025_08_13_195200_create_follows_table', 1),
(18, '2025_08_20_012124_create_customlogs_table', 1),
(19, '2025_08_20_152821_create_reposts_table', 1),
(20, '2025_09_26_114610_create_polloptions_table', 1),
(21, '2025_09_26_114654_create_pollvotes_table', 1),
(22, '2025_08_26_032516_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `polloptions`
--

CREATE TABLE `polloptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `polloptions`
--

INSERT INTO `polloptions` (`id`, `poll_id`, `option_text`, `created_at`, `updated_at`) VALUES
(6, 17, 'Çok iyi', '2025-08-22 23:49:14', '2025-08-22 23:49:14'),
(7, 17, 'Ortalama', '2025-08-22 23:49:14', '2025-08-22 23:49:14'),
(8, 17, 'Daha iyi olabilir', '2025-08-22 23:49:14', '2025-08-22 23:49:14'),
(9, 17, 'Meryem işi bıraksın', '2025-08-22 23:49:14', '2025-08-22 23:49:14'),
(10, 26, 'asdsa', '2025-08-25 23:41:12', '2025-08-25 23:41:12'),
(11, 26, 'dsad', '2025-08-25 23:41:12', '2025-08-25 23:41:12'),
(12, 28, 'Filtre kahve', '2025-08-27 09:19:26', '2025-08-27 09:19:26'),
(13, 28, 'Türk kahvesi', '2025-08-27 09:19:26', '2025-08-27 09:19:26'),
(14, 28, 'Latte', '2025-08-27 09:19:26', '2025-08-27 09:19:26'),
(15, 30, 'JBL', '2025-08-27 17:00:41', '2025-08-27 17:00:41'),
(16, 30, 'Sonny', '2025-08-27 17:00:41', '2025-08-27 17:00:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pollvotes`
--

CREATE TABLE `pollvotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `poll_option_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pollvotes`
--

INSERT INTO `pollvotes` (`id`, `user_id`, `poll_id`, `poll_option_id`, `created_at`, `updated_at`) VALUES
(1, 2, 17, 9, '2025-08-23 00:27:12', '2025-08-23 00:27:12'),
(2, 5, 17, 9, '2025-08-23 00:27:22', '2025-08-23 00:27:22'),
(3, 2, 26, 10, '2025-08-25 23:53:50', '2025-08-25 23:53:50'),
(4, 10, 30, 16, '2025-08-27 17:01:11', '2025-08-27 17:01:11'),
(5, 11, 30, 15, '2025-08-27 17:18:23', '2025-08-27 17:18:23'),
(6, 10, 26, 10, '2025-08-28 06:07:40', '2025-08-28 06:07:40'),
(7, 2, 30, 15, '2025-08-28 10:55:50', '2025-08-28 10:55:50'),
(8, 11, 26, 10, '2025-08-28 18:07:40', '2025-08-28 18:07:40'),
(9, 6, 26, 10, '2025-09-01 04:19:20', '2025-09-01 04:19:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productfeatures`
--

CREATE TABLE `productfeatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `productfeatures`
--

INSERT INTO `productfeatures` (`id`, `product_id`, `feature_name`, `created_at`, `updated_at`) VALUES
(7, 8, 'özellik 1', '2025-08-22 23:38:18', '2025-08-22 23:38:18'),
(8, 8, 'özellik 2', '2025-08-22 23:38:18', '2025-08-22 23:38:18'),
(9, 9, 'özellik 1', '2025-08-22 23:38:42', '2025-08-22 23:38:42'),
(10, 9, 'özellik 2', '2025-08-22 23:38:42', '2025-08-22 23:38:42'),
(11, 10, 'özellik 1', '2025-08-22 23:39:16', '2025-08-22 23:39:16'),
(12, 10, 'özellik 2', '2025-08-22 23:39:16', '2025-08-22 23:39:16'),
(13, 11, 'özellik 1', '2025-08-22 23:39:40', '2025-08-22 23:39:40'),
(14, 11, 'özellik 2', '2025-08-22 23:39:40', '2025-08-22 23:39:40'),
(15, 12, 'özellik 1', '2025-08-22 23:40:05', '2025-08-22 23:40:05'),
(16, 12, 'özellik 2', '2025-08-22 23:40:05', '2025-08-22 23:40:05'),
(17, 13, 'özellik 1', '2025-08-22 23:40:22', '2025-08-22 23:40:22'),
(18, 13, 'özellik 2', '2025-08-22 23:40:22', '2025-08-22 23:40:22'),
(19, 19, 'Özellik', '2025-08-25 23:16:34', '2025-08-25 23:16:34'),
(20, 19, 'özellik 2', '2025-08-25 23:16:34', '2025-08-25 23:16:34'),
(21, 20, 'özellik 1', '2025-08-25 23:16:55', '2025-08-25 23:16:55'),
(22, 20, 'özellik 2', '2025-08-25 23:16:55', '2025-08-25 23:16:55'),
(23, 21, 'özellik 1', '2025-08-25 23:17:22', '2025-08-25 23:17:22'),
(24, 21, 'özellik 2', '2025-08-25 23:17:22', '2025-08-25 23:17:22'),
(25, 22, 'özellik 1', '2025-08-25 23:17:45', '2025-08-25 23:17:45'),
(26, 22, 'özellik 2', '2025-08-25 23:17:45', '2025-08-25 23:17:45'),
(27, 23, 'özellik 1', '2025-08-25 23:18:07', '2025-08-25 23:18:07'),
(28, 23, 'özellik 2', '2025-08-25 23:18:07', '2025-08-25 23:18:07'),
(29, 24, 'özellik 1', '2025-08-25 23:18:31', '2025-08-25 23:18:31'),
(30, 24, 'özellik 2', '2025-08-25 23:18:31', '2025-08-25 23:18:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productlikes`
--

CREATE TABLE `productlikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `productlikes`
--

INSERT INTO `productlikes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 23, 2, '2025-08-26 00:14:39', '2025-08-26 00:14:39'),
(14, 10, 2, '2025-08-26 00:15:13', '2025-08-26 00:15:13'),
(16, 24, 2, '2025-08-26 00:38:18', '2025-08-26 00:38:18'),
(20, 24, 6, '2025-08-27 04:15:42', '2025-08-27 04:15:42'),
(27, 13, 9, '2025-08-27 09:21:42', '2025-08-27 09:21:42'),
(29, 19, 7, '2025-08-27 11:06:19', '2025-08-27 11:06:19'),
(31, 13, 7, '2025-08-27 11:06:21', '2025-08-27 11:06:21'),
(32, 23, 7, '2025-08-27 11:06:28', '2025-08-27 11:06:28'),
(35, 21, 7, '2025-08-27 11:06:48', '2025-08-27 11:06:48'),
(37, 19, 6, '2025-08-27 17:04:56', '2025-08-27 17:04:56'),
(38, 12, 12, '2025-08-28 06:16:53', '2025-08-28 06:16:53'),
(39, 21, 6, '2025-08-28 12:06:09', '2025-08-28 12:06:09');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lowcat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `base_token` varchar(32) NOT NULL,
  `visibility` enum('friends','everyone','just_me') NOT NULL,
  `type` enum('product','post','poll','discussion') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `user_id`, `topcat_id`, `subcat_id`, `lowcat_id`, `title`, `slug`, `description`, `image`, `price`, `platform`, `url`, `base_token`, `visibility`, `type`, `created_at`, `updated_at`) VALUES
(8, 3, 1, NULL, NULL, 'Akıllı Saat X100', 'akilli-saat-x100-d35GxPVDo7NuKQx3', 'Adım sayar, uyku takibi ve kalp ritmi ölçümü özelliklerine sahip modern tasarımlı akıllı saat.', '68a8ff6abc0b3.jpg', '1.299', NULL, 'https://nextalya.com', 'd35GxPVDo7NuKQx3', 'friends', 'product', '2025-08-22 23:38:18', '2025-08-22 23:38:18'),
(9, 4, 1, NULL, NULL, 'Kablosuz Bluetooth Kulaklık Pro', 'kablosuz-bluetooth-kulaklik-pro-FACpcZN0MJ4jGx9A', 'Gürültü engelleme, hızlı şarj ve 24 saat pil ömrü sunan yüksek kaliteli kulaklık.', '68a8ff8293dc4.jpg', '899', NULL, 'https://nextalya.com', 'FACpcZN0MJ4jGx9A', 'friends', 'product', '2025-08-22 23:38:42', '2025-08-22 23:38:42'),
(10, 4, 1, NULL, NULL, 'Ultra HD 4K Televizyon 50', 'ultra-hd-4k-televizyon-50-bIvY77vQxebV1mpn', '4K çözünürlük, HDR desteği ve dahili uygulamalarla eğlence deneyimini artıran televizyon.', '68a8ffa4bc4cb.jpg', '8.499', NULL, 'https://nextalya.com', 'bIvY77vQxebV1mpn', 'friends', 'product', '2025-08-22 23:39:16', '2025-08-22 23:39:16'),
(11, 5, 1, NULL, NULL, 'Ergonomik Ofis Sandalyesi', 'ergonomik-ofis-sandalyesi-KZkRsx3Q4xl7i4uc', 'Bel ve boyun destekli, ayarlanabilir kolçaklı rahat ofis sandalyesi.', '68a8ffbc1a370.jpg', '2.199', NULL, 'https://nextalya.com', 'KZkRsx3Q4xl7i4uc', 'friends', 'product', '2025-08-22 23:39:40', '2025-08-22 23:40:46'),
(12, 5, 1, NULL, NULL, 'Dizüstü Bilgisayar 15.6 i5', 'dizustu-bilgisayar-156-i5-JGK7HbAEtrNkYRZe', 'Intel i5 işlemci, 8GB RAM ve 512GB SSD ile günlük işlerinizi hızla yapabileceğiniz laptop.', '68a8ffd5abcda.jpg', '14.999', NULL, 'https://nextalya.com', 'JGK7HbAEtrNkYRZe', 'friends', 'product', '2025-08-22 23:40:05', '2025-08-22 23:40:49'),
(13, 5, 1, NULL, NULL, 'Akıllı Robot Süpürge Max', 'akilli-robot-supurge-max-twG05vTwouG1PRdA', 'Haritalama özelliği, güçlü emiş gücü ve mobil uygulama kontrolüyle evinizi zahmetsizce temizleyen robot süpürge.', '68a8ffe6c1164.jpg', '6.799', NULL, 'https://nextalya.com', 'twG05vTwouG1PRdA', 'friends', 'product', '2025-08-22 23:40:22', '2025-08-22 23:40:33'),
(14, 5, NULL, NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent felis nibh, porta dictum interdum quis, fringilla vitae mi. Donec dui elit, lacinia vel elementum sed, congue et dolor', NULL, NULL, NULL, NULL, 'jyOKNdNdtxk5hP0C', 'just_me', 'post', '2025-08-22 23:46:06', '2025-08-22 23:46:06'),
(15, 5, NULL, NULL, NULL, NULL, NULL, 'Suspendisse aliquam bibendum neque. Praesent feugiat eros et facilisis condimentum. Vivamus a ex in massa consectetur ornare. Quisque lacus diam, facilisis id quam vitae, faucibus convallis orci. Duis tellus diam, lobortis sit amet erat sit amet, mollis consectetur sapien. Nulla ultricies nisl eget', NULL, NULL, NULL, NULL, '4J2STRotGeZe2LOi', 'friends', 'post', '2025-08-22 23:46:16', '2025-08-22 23:46:16'),
(16, 5, NULL, NULL, NULL, NULL, NULL, NULL, '68a9016cc5573.jpg', NULL, NULL, NULL, 'XLdtB60vjyBUMX3p', 'everyone', 'post', '2025-08-22 23:46:52', '2025-08-22 23:46:52'),
(17, 4, NULL, NULL, NULL, 'Nextalya platformu hakkında ne düşünüyorsunuz?', NULL, NULL, NULL, NULL, NULL, NULL, 'opOiGb2BMvAi6Akn', 'friends', 'poll', '2025-08-22 23:49:14', '2025-08-22 23:49:14'),
(18, 5, NULL, NULL, NULL, 'Bu konu hakkındaki tartışma konumuz', 'bu-konu-hakkindaki-tartisma-konumuz-SQkr0KxbsMeRbiXW', 'Curabitur fermentum fringilla mauris eu tincidunt. Suspendisse tristique eu dui in malesuada. Sed eget pretium leo. Sed dolor leo, ullamcorper ac varius id, accumsan at risus. Donec a eros lorem. Integer risus massa, elementum pulvinar justo sagittis, maximus gravida elit. Donec mattis sem mi, ac co', NULL, NULL, NULL, NULL, 'SQkr0KxbsMeRbiXW', 'friends', 'discussion', '2025-08-23 00:13:45', '2025-08-23 00:13:45'),
(19, 2, 4, NULL, NULL, 'Katlanabilir Çamaşır Kurutmalık', 'katlanabilir-camasir-kurutmalik-dyUfTtHgVuQx0DMq', 'Dayanıklı metal gövdesi ve geniş asma alanı sayesinde çamaşırlarınızı pratik şekilde kurutabilirsiniz. Katlanabilir yapısıyla yer kaplamaz.', '68aceed204676.jpg', '649', NULL, 'https://nextalya.com', 'dyUfTtHgVuQx0DMq', 'everyone', 'product', '2025-08-25 23:16:34', '2025-08-25 23:16:34'),
(20, 2, 4, NULL, NULL, 'Bambu Çamaşır Sepeti', 'bambu-camasir-sepeti-6qqKAAsQSY3b6i2q', 'Doğal bambu malzemeden üretilmiş, şık ve sağlam çamaşır sepeti. Ev dekorasyonunuza uyum sağlar, geniş iç hacmi ile kullanışlıdır', '68aceee778768.jpg', '459', NULL, 'https://nextalya.com', '6qqKAAsQSY3b6i2q', 'everyone', 'product', '2025-08-25 23:16:55', '2025-08-25 23:16:55'),
(21, 2, 4, NULL, NULL, 'Vakumlu Saklama Torbası', 'vakumlu-saklama-torbasi-oPmHXxpBGdRbM6W0', 'Yorgan, battaniye ve kıyafetleri %75’e kadar küçülterek saklamanıza yardımcı olur. Seyahatlerde de pratik kullanım sunar.', '68acef022efe2.jpg', '299', NULL, 'https://nextalya.com', 'oPmHXxpBGdRbM6W0', 'everyone', 'product', '2025-08-25 23:17:22', '2025-08-25 23:17:22'),
(22, 2, 2, NULL, NULL, 'Dijital Oda Termometresi ve Higrometre', 'dijital-oda-termometresi-ve-higrometre-uzok6VvFfhh7ZzyS', 'İç mekân sıcaklık ve nem oranını ölçer. Sağlıklı bir yaşam ortamı oluşturmanız için idealdir', '68acef19311dd.jpg', '229', NULL, 'https://nextalya.com', 'uzok6VvFfhh7ZzyS', 'everyone', 'product', '2025-08-25 23:17:45', '2025-08-25 23:17:45'),
(23, 2, 2, NULL, NULL, 'Masaüstü Nemlendirici Difüzör', 'masaustu-nemlendirici-difuzor-H6LQkjsmAQr2OZYe', 'Sessiz çalışma özelliğiyle havayı nemlendirir, esansiyel yağlarla kullanıldığında ferah bir ortam oluşturur.', '68acef2f55893.jpg', '379', NULL, 'https://nextalya.com', 'H6LQkjsmAQr2OZYe', 'everyone', 'product', '2025-08-25 23:18:07', '2025-08-25 23:18:07'),
(24, 2, 3, NULL, NULL, 'Kaymaz Tabanlı Banyo Paspası', 'kaymaz-tabanli-banyo-paspasi-od9CkznTsw7uJnEP', 'Yumuşak dokulu, suyu hızlı emer ve kaymaz tabanı sayesinde güvenli kullanım sağlar. Çamaşır makinesinde kolayca yıkanabilir', '68acef47bd4f4.jpg', '189', NULL, 'https://nextalya.com', 'od9CkznTsw7uJnEP', 'everyone', 'product', '2025-08-25 23:18:31', '2025-08-25 23:18:31'),
(25, 4, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, 'd4nCoGPJqemOu3cA', 'friends', 'post', '2025-08-25 23:39:57', '2025-08-25 23:39:57'),
(26, 4, NULL, NULL, NULL, 'asdsad', NULL, NULL, NULL, NULL, NULL, NULL, 'A3PeBOb7XEzApMGA', 'everyone', 'poll', '2025-08-25 23:41:12', '2025-08-25 23:41:12'),
(27, 2, NULL, NULL, NULL, 'asdas', 'asdas-wWEqJhxZB1XxHuRh', 'dasdsadsadsad', NULL, NULL, NULL, NULL, 'wWEqJhxZB1XxHuRh', 'just_me', 'discussion', '2025-08-25 23:45:51', '2025-08-25 23:45:51'),
(28, 7, NULL, NULL, NULL, 'Hangi kahveyi tercih edersiniz?', NULL, NULL, NULL, NULL, NULL, NULL, 'zf6dIpHJn7pmpF9q', 'just_me', 'poll', '2025-08-27 09:19:26', '2025-08-27 09:19:26'),
(29, 7, NULL, NULL, NULL, 'Telefon alırken ucuz mu pahalı mı mantıklı?', 'telefon-alirken-ucuz-mu-pahali-mi-mantikli-I24idRq3RBIPegBW', 'Sizce uygun fiyatlı telefon alıp sık sık değiştirmek mi daha mantıklı, yoksa pahalı ama uzun ömürlü bir telefon almak mı? Deneyimlerinizi paylaşın.', '68aeceb0f0e3e.jpeg', NULL, NULL, NULL, 'I24idRq3RBIPegBW', 'everyone', 'discussion', '2025-08-27 09:24:01', '2025-08-27 09:24:01'),
(30, 10, NULL, NULL, NULL, 'Kulaklıkta hangi marka daha iyi?', NULL, NULL, NULL, NULL, NULL, NULL, 'pimZ8pTKzdF8Vb90', 'everyone', 'poll', '2025-08-27 17:00:41', '2025-08-27 17:00:41'),
(31, 12, NULL, NULL, NULL, NULL, NULL, 'Çok iyi', NULL, NULL, NULL, NULL, 't149xRw5lV1LWBbk', 'just_me', 'post', '2025-08-28 06:13:31', '2025-08-28 06:13:31'),
(32, 10, NULL, NULL, NULL, NULL, NULL, 'fx-991ES Plus, çok bilinmeyenli denklemler için çözümleme yapabilir. Ayrıca, denklem çözümleri, belirli bir hassasiyette yapılabilir.', '68aff8488efa6.webp', NULL, NULL, NULL, 'Y4281si1TwctMLI6', 'everyone', 'post', '2025-08-28 06:33:44', '2025-08-28 06:33:44'),
(33, 10, NULL, NULL, NULL, 'Akıllı telefon üreticileri, her yıl yeni model çıkarmak yerine yazılım güncellemeleriyle eski cihazları daha uzun süre desteklemeli mi?', 'akilli-telefon-ureticileri-her-yil-yeni-model-cikarmak-yerine-yazilim-guncellemeleriyle-eski-cihazlari-daha-uzun-sure-desteklemeli-mi-grDoTGcvlzoQLP9j', 'Üreticiler, her yıl yeni model çıkarmak yerine eski cihazlara uzun süre yazılım desteği vererek hem tüketiciyi korumalı hem de elektronik atıkları azaltmalıdır.', '68affa1d12835.png', NULL, NULL, NULL, 'grDoTGcvlzoQLP9j', 'everyone', 'discussion', '2025-08-28 06:41:33', '2025-08-28 06:41:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productviews`
--

CREATE TABLE `productviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `view_user_id` bigint(20) UNSIGNED NOT NULL,
  `view_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reposts`
--

CREATE TABLE `reposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reposts`
--

INSERT INTO `reposts` (`id`, `product_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 'test repost yorumu', '2025-08-23 00:45:32', '2025-08-23 00:45:32'),
(2, 13, 2, 'bu ürün repostlandı', '2025-08-23 00:55:58', '2025-08-23 00:55:58'),
(3, 12, 2, 'teasdsa', '2025-08-25 23:12:08', '2025-08-25 23:12:08'),
(4, 10, 2, 'asdasdsad', '2025-08-25 23:12:11', '2025-08-25 23:12:11'),
(5, 12, 2, 'asdasdasd', '2025-08-25 23:12:14', '2025-08-25 23:12:14'),
(6, 24, 10, '..', '2025-08-28 06:19:00', '2025-08-28 06:19:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
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
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('01uv0L32f8e6HlKbXk0qIvlunpeccEFH35EAJzcV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGE1TDRlTnNXSzRBZ0Y2WTAzdnpkWWZMazZwaXZ3WVFRUEd6REpUdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907109),
('02rmGWlpNkbA1xuI9Z20LLPu02vIMi1yqlDDDC2D', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem9nM0g1TGVTNTFWYkVXOFlOTWhtVExzZ1g3WElxV2tzeWhLRnFaNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898983),
('0aQgBmP3W7QqEqCTrIdyK86A85exgOEJHk8xmtNi', NULL, '178.233.93.22', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlBb3RTemxMMUQ5ZFhJakhYS2ZtUG15REN1a2V0UDYyNHNUQU9WYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756380753),
('0Eq5Ed5NXb85ULwgatvfhp0DT8D7FSvjaKRvEIrw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0Rxek1TaXBZQXJlQnFUSTljMVRFZ3QzNVczaFlTNUkwTmNZdWxUZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908455),
('0ewVBQwiI4xQqx8CBe32dfTJgwtFtWNGKEZgPRVY', NULL, '74.125.210.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFROUEF3cTRIdHBXTWNDOE1WekZ1MG5JTFd1c293ekFvSzRXWVVBTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2tlc2ZldCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756314000),
('0EYbtnOzhYk5siMfcUv9BL050AvempkeTrFPVB7H', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0tYeVduOTZtaDN3NXNPU0l2akc2eWhGRU9sTUZTYXhXdW12Qm1vSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907902),
('0GDIAdcXNU2eRW0PZXPB5BAwilOOGajIfPUVTban', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjdnM3pCR2dzS2QwQURURTJFZlFicU81UVNHRXJZZlV6cllITDh4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907118),
('0i1FrhbhhDF5h2hK1knsvhYpHmcqYNu1ALB21Pie', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTFZN2VVTkV4dGNaTXRZYVUya01PV29yNTZMOEdPZFA2UVBZVVZieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168758),
('0iinMtB5TMHMnBIHm0kw4EP9yFqg60s4GpcXD1Gd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXVWRnpwMlVOU21vdEpoZWJwdUtXVXpPdlBOdmtRUlFueEtkbG9qNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165613),
('0RZvVM8tUxN3axuD9XmZCUqF80GiUuY8XRRP104i', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXZncTIxcnZkazRpMjFKajN4S2FlcE9wUlhYcFBkUmhLekVMSXVCTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899870),
('1908s3BmoGIyCg1c0S9oRWBODTU9rw0rzbjAUfwo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTklKS3VRT3pUd2RDcVZod245OXhmckF4QVFtT2djT2c5OWx5Tk1hbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901844),
('1EeCLLyPDaIA9412eKHbKvW1D1SYK12rM5GS8zK4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDM1VldpRkJwNUxsdzRXVmdCNWJaS09SQkxQVzhBSEVEY3V0QkVUaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756154922),
('1IvX89OHOwKdPilHHcXyCP14KT17VuBOCpdDE9fc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE9qYnZRNEhwRnBzdmNka1hCVzQ4MFE5RGlGNDB1cHZQOWpqWjZ6NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910038),
('1K9iD7hQhYcm94nqITwEIIJepIGFwu3kDTc86zZP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JkOWtjbk05eThSNmExY3pXbDI3M21aa2hsOWN0elI2MU0wUUlrZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168729),
('1Kc8Gwp3f8mD6hbuOB62KYpVlLlvE8C4dYx0LIyL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1pYZTNiUEVXQ2tKaGJSejN5a1h4Q1cxdVZ0VkhjUm5NVWNKYTM1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163547),
('1ku224B3lp0cnNI0KjCs2eD0S1p2DXEVOlfF5lIX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE9qYkdNTkdUZG10MHFZMElidnVMWTZsUXlXVkVVUVJ6Q25lc0YweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910030),
('1Sfz5eLhHRWDAz7lwCyMbr6fviYBwANPlT1NYTQF', NULL, '34.186.54.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1dLdlN5dW5XUFNBeXp6WUJXWEZhdjk4NmU0MDhCZ2M5alN5NmNQTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757083371),
('1x9z2Gii9wY6dCpxG6waee8IfNLJTayXUxoylAo9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkVsRDFZbldTY3ZCZXVwVnVVazQ0TGliWTF6TU5TcXVLU2FOanQ2QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900501),
('1XsYJIXR7yppDFNR97SzVuykX11QrfUkvkKJgdJn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmRXWkhYRU1YRHlEU1lMbzNyMlVZMDhKVE83TTRPZUhTUkI0TERjRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168963),
('1YjHhcGTxVOcsloqDJadTQNbVcEYr022WbQLSaJ2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEtIRTNnblBTQUZvOFBHSGF5Q3B4a0hZSFVIVGU4QnIycDFHYVhtNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239647),
('20iTDjxDZAzabZ14oqyzJdWjtOoChLbEEfZxXZjT', NULL, '167.94.138.184', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXRKVWZVNWRiWUpzM3NDeHh1VDNONVEyY0xrZ1FQT0VBMjJHWUx6YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756522261),
('3qqrIGO7JgEdhBNAgSdjgG73HhCgGihV5q1cXHZ8', NULL, '205.210.31.56', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGVxT1J5aHJ4MXlOMHRma1A1dzRwUXZSSXV0bnNpejlVaTYwcmVyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756878037),
('3vzhqvddlJrSbxAocSf4LZm272O7XoYkD1NCmAYb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3NmZW9VeVZENnM4ek42aDJ0ZjNyVzRBZ2xRdkRuSWxPZlFvalozTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240638),
('3zoOx0c9SozTyrYZaFKvSTmXRJREDQE54NqGQlIK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTAyek9VcXFyZURTODJsMmFnVVlLS05zZHJzMzJWN295RzEzSnk1aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909894),
('40kVbbZRcETSsvLq3CKJTRW2LtTaxolxRAbdKJVE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkxCVlhaTHhKSTJuUmFFd3ZDMlY1aTZ2bzhYZWtPUDRGSjNtMEtzMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899224),
('43RQhN4GTeJiu1PMgzocutifCt8qlUcIEccNk3FS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianM0bWwxTHNsMnZHU0F4SGpxZ2VWdUN3VHJlMEk3Q2Juamwyb2RBcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907103),
('43TW9v6woRM9hHr7rF9DW11mYWL9mtfHlkPv8mId', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzdxc09VZGZaVkZhM28xbEw2N1JpZ00zc2lUMUtGRGtldUVSNkk0SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163940),
('44dkXbscw5F0kXwwjWa7tY77kkBPkhNtP2jyJyvl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODVVZzlNV3Zra0FpdkZOc2JqelpqMEVVcnBhYlJ1b2puWG1xRkJ5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239621),
('4aA3ECpjgQMPY9GK4C9wqzuj1zfzvGUPnqRbGmto', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnpHYWFxYWhlMk4zZTBQa1FQWjFGRjZpb24zTUtKYzJkbHd4anJhbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165089),
('4DRAvNxuCwIQGj7YE0DCJItUunJ6pLfA9Ba9HP0C', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTV3cDU3VG8wT0prWENMTGVESFVoS1N3U0xEMWZXeEJGN094cWJFbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242665),
('4FTIOghWefZhd2WjZtQRPF3yLC6hSZ16vW9PxLVo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGxsYzZPQnJhS1RyNW1LNHVaZlhsQ2ZtM3lOY2h6YWJyOFJhT3BIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164468),
('4KmwVw3ERCfYqS6Nvnp5Hr1iydSByZAklgh2N3F4', NULL, '192.64.113.146', 'Mozilla/5.0 (Windows NT 11.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU1RGOUJzN0pXYVNtS0JDYVFsVEFJakZQQzZJcUpxdGxFM292SGlDdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756310166),
('54h7htEZMOcmWA1YjlQpcYCAL9Z5xZD6S0AOUprJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEFVVWt2ZXFiMUZ2NEpvY3FIRVVUZjJmMlJmbjNRbm81QVdIeVA3ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240409),
('5k3p3mSYboTEqpybPF3KGdI5x5388CDMx5q0Zbdl', 12, '5.177.239.35', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVlJJb2xNRGhhQWRXSnZVT09BSW8wVWt6N0RaeFVxS1ZBcmRFVTFsZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9rZXNmZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjt9', 1756361951),
('5L3kqvq2sEad5CFp47BTQjTI74176UGozh0PI6TQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVlBeHE0SDk1MFo0ZFJ1Ynl4MXlsYlhRN2pVRkZSejJVblVRV2xFbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901846),
('5M6Habm57dS4CMi9rTD3RJejPR7mCweEfAl5tjAp', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzBrVTVWWFY0d054UTlXc2RHd2JpMk1sTDBSamM3OEdvalNmTzNtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242672),
('5OCTWvsJpVYsrozRcWotMwb9tqJxpTzQiSKiyIhi', NULL, '35.222.10.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hHUWJQQkZvb0NQRTBLRDhwakN6azc5eWE5bnA3WmU5REJ1T2JPNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756903863),
('5w6Xx4uTngQZDdt4JXnYJfVeJfo8StuSi3AmFKdZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVVDZUN6MHhNSGRlUW5ONmZUUjJ6a1B5dXpKNjZRcWxjUjdVbDJmbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168266),
('5YD1Mw0NOf14yH3zhdKIqofAew9T7JsozB89fbn1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFd2R0dTanFjdmt2YllGTXA2ZVpZS054YWh4SmpEMTNIb0ZTNVR6diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240678),
('64UdbrCS44b9x9S570SZ6inatrX9qIybgCGLhvt7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWl5VUlOR2JSNGFBRW54c1ZaZVE5R3BQM0pwOWZqQ3hhY0d0OEpZdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906862),
('6E5KhbITE3Dm10EP840ghmqXWwerQDnVjjPPy5Bn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmdxVHZvbFZJZDI2QVFibXNWRjhyTnBaeVptbjJyRDhPY3NpeThYWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910051),
('6g6NXAmsUgyDXlD8b3UCORIUdnw0mn0RzbcK5aCA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjQyT3dpeFg3UGY3Q21Mb0RDYjQxNFZuMUZWMHJiUDE0d095NXpkYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909420),
('6HGauRbJulRufzMaRR4g84PZaFxj1RB6DdIXjtCs', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 OPR/120.0.0.0 (Edition Yx GX TR 2)', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiempVcmxZYzNmbWdEcXNZUFBvRnJkNk42SGhvRGFIVmhCNE0zMUdCRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1756242900),
('6iNxeCaah0rootkh7MnpJ7lttEiweNxI7iZRfJ0P', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHc3VHRjRWlwZDZiQk1OVlhYYmlLTnhsS2NvbGRPMWZCRXRORU0yaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168331),
('6JhXyLuR5WiazmimP9gTGztep4Fk2bM17eqrnLij', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjREUU5Wc2xKUm8zM0oycEVwZFM3bmVjWU5VN0NqSmNXWWQ3UU4wUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240304),
('6kgb01pOJY6P07VMtSU6Z9jsCTYV1zEbUEszy9px', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDZHSUptWmVDMkpqaVIyQ3h2dUtKcDNlUlpFVXc1TW9IcHI3VHFlYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240748),
('6U2RvUpEP5cMJq2vwteE6XNInWtP6FQ3dVDkQbst', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianhxMlgyT1hNOVRGcTAzckVXZjZVVDQ5WE5BeHpTSGxra1o2eDlCRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909306),
('6VvCBSgaUl7uClE6aqGo2HbDY6Z4289g99GkjsPl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVY2UlpXVzhyV21oNHZXalhxdVg4SnR3OXhjaUV4RVR5ME11NkJWWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898750),
('6vxPIX1vOQKu2uwT2HiJkW7JDhLJqOEs5YuzLki3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2R2VE5GckNZQkxzeVVMcUlKalZiRmRCUUMwWmYxc0I2QjMxMWZndyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166127),
('6zK0pxCnMdQvAYSyBqXYP013RCwG2BWAKMhbf86l', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUtBUXhxbGRyNGtIMEtGb3JEZ2RPVElGbW9KZWhCZXZaR0E1clhNbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899049),
('72NGJLG5BX0zIF2KNjpimavfeCWWWUQPwdKEc6Lg', NULL, '66.249.81.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVVONWRISmlkRzlycXBsVWVMdExucUZzZHdVZWM5c29wRlg4aDJEbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756577790),
('779UV3ASSjXD7rBa9zyBDpfwOPEjhTQurITBbzkR', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXNybGVLZDhBNGtFdWN4Sk5NWVdGc1Q5OUZlNzJhT0s5c3F1MjBFdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756302997),
('7mwlXQz9jIdDqXVXi14gd10lmmev55M1Ybso93hM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME41dDVtTFdWVWJla2RZSXJ2ZTY5MlFEdXZXNlh5V2NwTXNFMzZVVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906739),
('7qqOtxtt2m7xVGGTvynMzO9ZTq4mAPbOxh4IZmqC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY29rblpIdG1QTWxvckRSOFhGSGRxMXBZM09BNzFCc2t6RUZrZ0l4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240576),
('7xiwWwSlMf7nARiYXA8z0OSSqwgZqf0gLdJv1TA0', NULL, '206.168.34.52', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTRNSm1sT2ZUektjREp0bUgwUElDZDg4NkdhbUxtR2JxcGFycmJVSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756992064),
('80qW6Oyty5qvjg9T13c7t2mIx0vQA2IyXbTrvxkC', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHZ6aWpxQzhOaWJjeTBiaTlQdjRQWGZNeGNjM2luNlZIMThrMWNCeCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2theWRlZGlsZW5sZXIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2theWRlZGlsZW5sZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756303014),
('87oTIuih2q8j6JErkUGmDYgceT7Dto1uS5pNrb0a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGpmR3dmNFU0aFIyM0MwUUhhdXNsTDZud1FCRzNla0hLZjYzbW5tNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242757),
('898LICgMz7gnVro72HQKNhg4DmcOKk2WxVj8PJXH', NULL, '34.11.182.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2dwY2ZYYldTN25pMzlBeDRFTmp0TFYzeDZneU1hQ283SG40NEVRVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756987214),
('8GL6oAPNHptI0VzeMEexCBm0FwNszGG26tTS1H3b', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienRQWUJuSmNrT3VNcVp3T1Rra0U5U0RhSlZIa2FwT2sxejhWMTFaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907799),
('8GnJFkeKDIBb4dOAmaRcCMYLC2grRmTa8d2ZwVpO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW93VjlFSkxCZVBLTENPY0tzYmxpNEg3RkN3UFRPU3pmdHJVT25oMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167307),
('8hbFQDSrmqMbbALJbrYVTJXTq36v7kMM0XUDlENS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01GY2k2cDhZOE5EU3VENjF0RFh3WEZyZGZpdmlIdmxpRW9tODhVcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239849),
('8i1esoW08EHPcsZELfTd3IK4K8wrCNaUoil4Li4v', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUQwWlVlRTdWWldlZldENjlsMjJSOUtqVlo2T0hrc1A3MHFpdmw0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165516),
('8kR0nsvdwpjl5QWCVf8GiBBO9wMjjG7li82BJEAP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFVHZ0hLdFhMQVA1MFU0eXA5VWhha1V2ZVNuYlFxSzAzTW1qdlJCeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168754),
('8kVW971frJrEKUT2QANarJXcuJwQ3GFGrleBBIqW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU54aGw3eVFWZjYzcGR0RmNNdHZWaHhDcFRhd2l2RDBmeHJQcFhxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907852),
('8LXZQE7mfdbHDi7rLuiTp4qCqyEu9MAzfFputAHI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmRKQ01DSzc2U055UDlZRjhuMjB2RklPRHlGQkwyUUYyblhiQ3lpSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239974),
('91MrQDdJ3H7NX1n3Mg1qKLdUZeOrYlfPkkDAWrO1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclFyeWRwYk8zM0hyNWhjT09TQTZqb1NudGFnZlFzdW45YVJFWVpqYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166501),
('95NvXGXPw2JI8qoZGLpUROsrNyL3tpZ7HrpWFa7A', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWhlNWNJMG9ORmZSdkN3YU42WUdFejlhdXBYM0xCM1dSejkzNFd2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168379),
('9fJJh0yqfSCjh5Iuu7UcmgOX6WeAD6efVsWGoSg0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNExLQlYyRGhYUW1GSnNEWVU2MUxJdk9FTUJXbTNmd0MxQzE3c25wbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163408),
('9GvM3GEFqFAMZjhzc1aKqrOqMYrfLV76crvZvWIG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkdWeW5YNjhSQm90bFMxbWJrUndXd1I5RHo1d2NmZTFTZVprTTZweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901378),
('9lcNUhdG61ac2XFiamEpxuIbNZ3b1ghCBfUSDHrJ', NULL, '205.169.39.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTdzdDRxZzhVVDlCZDFWY3BBeGhmRk9ldVN5OGhFVVFwSEtNSkx3aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757034564),
('9pyTlM9TC9yduKoduRq4894AMvh9kAlc1pe3OPkW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRG90RXRBZDR4QzJrOG5EYno4M3NHMHlRZERoZzlkQ1ZhZFhxUlAxVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908528),
('A0EF6cv0N9a8iJxV8rHUWNdMSZCdsyBlc0KjNgB3', NULL, '159.203.60.186', 'Mozilla/5.0 (X11; Linux x86_64; rv:139.0) Gecko/20100101 Firefox/139.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW9oUXg1RFhUUnNjUGZ2aVZsVmt6dFNOVGVRUG1MQ2llcjUwNXQ2ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757227588),
('a12mGFcGME4t3tFVLY58jRbj8pfQAaySL0UBHM6j', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDFHVm5xSkVxVFNDQUV5S1dEYm5NbEQwMWhDOWxwRUd4YkdBR0puQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901363),
('A6MTA9GWgw1GOpJS54AvHkQuwZ0JNvSwJYzaarbG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN25hSmJ6Y3pmbmVyZndweXh4SUtqVnUzVklGVlUwRzlwQVlzdDZKQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239857),
('a6s3ZkPkFUlvbTcJcBNMoRBnfhLtB9exc3GShIoU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXlPYkg0YjF5bURsNmI0TzVZVXB4TWpUeGVwVHNaS0pHSU5kY0xNViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241454),
('A8FQDAnM09jmgmtYTVmZcF7tvLikRP5HeP5TDifq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1l4d3VYdHR2YTQ5Z3MzelFRM3ZiWkM1RjZTeW9yeGJXSjNic0dtNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166132),
('ALc9jNR5m2F23n6xx0SeDA9zn3Rr9KpOp7XcAepg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWp5ajNqMk83eGRUc1VOcXQyV0hJVzJQVjZ0cGlyMTlyaXppOW5EeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164202),
('anHjFl1N21wdju9eLiKeD5LQsMe51pucKlYtnXxn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDhvY3pTS2NPYk01eWVQYnptYW5oMFAwc2NRSFlUbEQyOVk2ckFtVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167480),
('ANHp6UN0vmhLgx7WWiHTex1mMCMgPv6QORXyTXLx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0lKdG1TazJyTGJ4VnZHeTR0U1pLcFczekJHUnZxUGZmNHp6U014WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910020),
('ARH1BXmv9QTTnV5kG8MNf52OD3pH2fBiw7Uk1cfQ', NULL, '205.210.31.128', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmNFYmxHOEF2eFVTdzQ4RDhjOUtaWnp4UHprcGZ6bzhVd1JVaWU0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756704310),
('asQAufFPpVgf3bbZ3UA1bvdVPzyqSzUGImyuGtWA', NULL, '206.168.34.213', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZndBbFkyYUE3MklpbzNNenZBVllpTGROdDU3V21lN3NJbVFMSkVXOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757168209),
('ATcTpune6HHM1i2HGCaGF6hE3AI81HifgkpAJWHf', NULL, '176.235.75.4', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTB1ZmVFelN1emJ2VzFTQ21IbkxXQ0RoclBKVkFNZDdNZ09SclBIUiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756302990),
('atIl0aOkWWFUXUtg9EKoqoVPIqLa0uyviXtAp9JP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2wySndFeEJ3Q09zQVBBWTJjSTNRVGtwV2NiRGk3eG9LNXIzZVNwTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907881),
('auudxIOvJoHttGt3VenZUVoxZuVOhj11zZyoH9xL', NULL, '177.21.203.213', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUNPTk9xUXNFMUE2Zk9pTFVtdldRS3BPR1VLY1BqNjluR0lPTXJqMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756407281),
('AZL4wVMWTL8FDtyLUoZ4cR2etdWsmVmDA0ShpZht', NULL, '66.249.81.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjRWUE15WE1mRGdFWjZQMUJyaWJ3c3VuN1lhZFJrcjhjUjgxUzFPMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2dvbmRlcmkiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2dvbmRlcmkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756303031),
('b1Bd5ClFuw1p8mVDPf1GRwHCEFev6j4rx9Zj0qEW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1FRa1hoMmtkS0kxTVRnQmNjOHliRTMwRWZwcnlLVWhtMm80TGwzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165241),
('B82jDdZDcWUZqvaPaM7ZrYmYMniCOAXhRnzvpwwW', NULL, '176.235.75.4', 'Mozilla/5.0 (Linux; Android 13; M2101K6G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQVliVDdSZm9pTmhRaFdNbEt4NW5sb0p3cllnWjdxc3hidUdCeWJ5MCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2theWRlZGlsZW5sZXIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756303014),
('b97drBsLvxtbJylyLHzGQlu2NYFc9HkATHnyXJr2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDNvaXJ0eThBWmtrcmZEdTFZcEpRT0ZGNFhzMGhZOGdaTzVrZGFGRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241033),
('B9p4XrHQGoCTPAPfd1aQUesjShkKApdzsstiWdsg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFGTnpCYmZOY2hKeWRnekNveTVIcG1QR1BLWXhQWU9TZWlLSjZMUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241784),
('baxbC2sCPajzO0Gzuujh3QdVcjKsvgZkHmHtW3Wq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek5NNVo3djRQZ1FMaFNmd3ZsckJlTURQbE5aZ3pRb2s4QlBMQ05CeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167423),
('bclTuaIEBUVp14l0rCdtMlxLOeyJF2n6Hb741BRl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2d1QmpaUE1kS0xCNFFid09TQ3A5eUZSVzdUVG5tQ3BoaEt6SktSWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166492),
('bDkaUQf8aHWJTSMFe7O6FWiSa32rXTZuzlYz03OR', NULL, '98.82.14.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWtkZko2bkhCaXhiMXpENXlLOUFHcU5lNDdCTHZ4cWFYWU9rZmljRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756445034),
('BEkooZ2WOOjMQX2tUx9EDoPBoPx2RqsyZuBimaJ1', NULL, '212.154.30.36', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTWVhREI2VUV3ak0yb1J3U2lROUV0V0Y1a1R4dG41UU8wQ0p5Mzh4aCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756386036),
('belTSgsXWHB1HtWo1CUMn5qOc1zpydA7t2xXa0ON', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjMxdzFSbUd0U1NEbjJlaVhyY0d6ZUI5RHp2WXdSOGdTZExGRDdSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898837),
('BfAYULnRG2pe0RRngDgB1jEYwipOuBcUJ2tgj9f2', NULL, '5.183.91.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGZHNWZkbFVaelQyMHVjaUQxUjJWOEJqdFl3VUlIakhRNTFyOWhvTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756406136),
('BIGrxqclzN3hmCJ2T8rcMh8lG5eoqCzCysbOTCel', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2lIZjI3TW02VTNiSVBzSjVTWVdXMG5WV1RLejhDOEUzaHFTWkpRRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166137),
('BjkScLKysWnuRWtIImYlDfeXECwpllz1Vx8iWbgL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0NkZWVhQ0FZQUVEcTdxUUJrQ0VxT0w4V0FoSG9ERFd2V2FmRndIdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241608),
('BLDBUCe2wInkjiYgAQMyVuuOOmBDv2Wa2DiWStqm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHFPNnhkY3BRSGEzV1lqWHhremp6YUNXTzhteDhkaTRTZlJuMGVKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168172),
('bLmhhuHYrgc3mLuKIW6bgai8o6SKJ3XWkTEcaSWQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzRHVmJ6QWp4cXc4SUF5enBHOTk0aUVEbTJ2OG9pY08xcjdhSmozNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899033),
('BQoMn796UUAci1lwK4f5MESi5GbLgyHVUDzW89my', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXhwRXVXSWJLYmR5MlZXTkg4b3ZHaWt2eHFrbGhLRmdHOEVLaDJzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241186),
('BROKfiN5dNzM7NjJQ0G2xApBhlA9rJAJ5LNa9F3E', NULL, '205.210.31.202', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnZleFNUeWlmYWpZOURxSk1URnZpcWJoRThQV0N3Z2pESjd1RjJKSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756861902),
('BRxXzet4T8WQs5tQ4Z98lwUVRipDuEGphR0Bhbs3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekhieDdsRlMxbU9yQk9XOEMzSmIxMnNDdUx3VnJablZPVDZrUTNISyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169406),
('bW5lI2FzQXZ5ax6Slkc7saCMGDLXX4P6MicmEYaX', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWhlS215OGphM2c1aElvcTBKVHBVOFBpWlhicjRjWjQyUFUyYk8waSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756303014),
('BXUZ9Rbc9TMZ0Cbd8PslVBPF6RpYLfe7XPfRRhCb', NULL, '205.210.31.48', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielBFV01BUEsyb29pc0ZleTdkdVNGWXpvS0JCaUd4cVJqUFhmTHBmaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756412139),
('BzTwVSZsBpH8VvCYWeB7TovmwbahESZQmRza8ga8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT01XV2k2MlVQRDRJSEtrNEgxVGxCWUFpOFJkT2hOQ1ViTHozekhKVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909431),
('BZWD1E4Jvf45g6ffXZ6lNZz64dHmvWn8loIthcw9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHVRZk5nakJndk8yaExXMGxtZWc0NFFrWmFFdTd3aUtWcHRvVHltNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906868),
('C1rQLhldI4eXEFm1q3xOkWyHzYhRE4dG4Lp45Exh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUJrbzRjZE5TZU11ZnZtVzlNNzJ1ODh3Y2lVUGFPVFpMVWRQdnA2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241218),
('c2GVq2JoQ4Kv1xANQWA8Qnp3WW3fltniQkcCTaX8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmJzanZqbDA2MGRSQUhLRDIxTXhrTTIwUUdFckF3OHRtZ0tXY045TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899865),
('c3TWyCBaRvAICZvlV7o7hWvmCoXTmG1ea2wIwlhA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3M4cEU2d0VKZG5IMDdpNWJlcmVhWnA5MFJpd2VnM3BDUWgxdDd0QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901939),
('c7Pv3phzoZyP7uMv4viDagmK8vq02Cu5hxAjtW2S', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWtldVVTaFRMakFzRHVtWTF6bXM3eFhVdWxjYkw1MmhwTFc4VGxSRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906726),
('CaL5Y382jiVatpbq0HRwXX3vvTH28j9NWuvUS6oI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTlzcEtGTVVORXdwOFdQMjlJU3doMkhDWXBJbGowd2JBQ3pzbUVQOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239914),
('ccdA4DFe2JgkDzaGukfnxucsa0BwBWOcHF8N5QZn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkE1cFhBVTdlQktYdUg1SjZQSWFHM2RtZ2pBSDNVTTJMUmZuY2xDbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910008),
('cDu9Ar6bNRI9XeXFkrrrNyyytkvZKCCtcXOTu4Nx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVN4VjZPTEExSjh2ZGRGWVByVmFwTFpBSGdIS3k0dnFyRGtuTW9jSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899128),
('cDVJHj4GElflhX1wanc4aMy9cFXZAZRwVKTeqyaN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjQwRVY3SmpCeTJqeHA5cEIzVmhFaElyekJDZVEzU2ZaQUVPNFBaaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242603),
('CFVsohN58eFeLYm7hLuAcVEZg4eGKbJRxzBvSYlZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiendZYkJoclRuTzdqYlZ3V3pISFZkMnNBMm5FZWpodHY1Y1J4U1JIbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242632),
('CjFsB1Yj0qbK5ItlJa3sf67yAd6M2DU5VB44Kwyt', NULL, '103.239.252.82', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Brave Chrome/80.0.3987.87 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDZrckh1dHgwNnEzWUdsR0pyd3U3OU5vQ1d0N2VEZDVYTHV0UlhrSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756403257),
('CjKZTkjOTbpR5a5BFwCe53uR7mqC5t9gLCy2om3P', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDZHTmJPelc3OE1PTVI1WnNGczd5T0dPYVRwblFwd3J4VUtkeUZndSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240462),
('CKQfbBL07uMbjPCk9ADkULkg5CROGJcwRn7QYVB5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVYyUHMwVlhmTVFQcmFRQVpsUjdmWXNEZTBuQjZmYmd4NVpyOEg4TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907938),
('CL0IYzwbSGToyLygbBuxzFgxFmBESZTZN1Q07vkh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFYwbEIya01WazlUUFVEMkd3djZHSTdDSHBnakprTXdhbjd4QkZwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898755),
('cmXV3rwSIxZw01wWqHBFf9IgJSEz33c6Ui14G8fk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1pCaEpsdml6Ulh3NXh5Zzdwb3pXR3lOSDRrM3hvbmxvMk1PYms2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240568),
('cQjI8vwdhHjafIdAoorrQjXxjhdFB2d1cwxl5wKo', NULL, '52.167.144.211', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmczM21ZRWd5V2hWNm1LRjRBdk00bGl4OVRWNE5tSEJqUFhpaVoxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757199358),
('ctoOeotDkm3iCJ9ludrIxpJl2iWQBgpiTqkd6GoO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2lWclE0QmVuSVFPQnZLWmVZbGtsOG5oZHpTQnVlNGVXRTVzc1plYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898773),
('cwLMtNa8X2sg2fZKoeieRfquSRIY3D9BbHQ0T290', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkdyRmhiWnp0Wmx0cDhuQWtFbllRR05wWlpNSDI4WVZiS0lraXNPaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166026),
('d66AlhLAEcDyM1J9bvLzTFLz8TeY7Q7GAttACo8h', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiang0UGQyOVNrMzhDeFlyQ045ODJkZHM3dmVDMW1TOVRFcGF3YjR2SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908825),
('degQ3NHeKYixFPVaZi6pvhiYLVJ8dwzzonm4M3bW', NULL, '147.185.132.213', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE9YRFB1cFNtRUFQZEo1U2xjU1Z4STE5WUhHUklDNGcwSDZ1VlJpYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756444551),
('dIRqYI4ez6xi0yXX6llr3kegDt1cGqWZfu9X7eFP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVQyU1RGbjZBeUpXNTN0RWFyNVBzakg1NWF4cmhrVG9HWXB1cHFYVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168989),
('DLWAjnU19h3rIXYYn7GLc1r00u5MEhdMHZcXwFFw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3ZkUzRBZkplS1I0T3gyS3RmR09TRjhjS2dmdGx5NEdKSDFSZnl2MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907998),
('dRcuOMQVz8qzYoSjuTv9bXcx6kEdix7Bu3K46sME', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGNQeEFXeWxuSWx3Mmc0bVptbGEyV0laWHJSWUdhYmpiRFlUNTRlUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165971),
('dtoI5EkcHNpNoTOjK6MQWGNULZU8kTqdukdidq1o', NULL, '212.253.186.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoienBqOERjNGhxQTB1RHVlZXZCR3liSWtJQlhYSnlEUXpaeGZkWHhnRyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756919715),
('E46oqL8YxwFtnqKV82zLsXXG59LNajfOn3Ud08d2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEN1cmRtSFVTc0lDTjN0eGhjMkhGeGN2Q1RZamhuS3ZLemlvYkpMUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169438),
('eAgdsaDE1AGeydwqYKlj8hPOYEwAKqNiYENBxVBx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJKRzg1eHFYTjRmemZqRjJjTElsU0Z3NmJaMk8wMk5haHg0OGxORCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169546),
('ealXjDqVhtgwoNUjToS625LsmZZIDFAAVeOZFwxg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkpsbWZEUUdCQkcybEtrb1lOZXJpYjdnU2M1NnNxMlpnSXlXMVZreiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168726),
('edi8ELx1Tp3OzCni6Fcjvj3M5Y6boxW0pjd6SPxu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2lqMXlxdHZteGxpY25leDh1NmNKYkFTWGRtcTY3NGUzVVBad2IxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899141),
('EgA8C8plL83OHmsI7HQEVCrjRtswuF4iOs2KUWP6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3pWeGRUU09QYXcwS2NkWDg1T0pXemlCVTRFRGF0OWJVOXlZSWpQbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898979),
('egMFvqFIlfz3jpUvvKl8cMXaaCJ9YiF7ejzfNodG', NULL, '212.154.30.36', 'Mozilla/5.0 (Linux; Android 14; 2312DRA50G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVVrcDRHUmNJQm9MSzNrNWNENUUzYW9VRG5YZ3ZnZnFETW4zQWM0aSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L29sdXN0dXIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756303044),
('EJDG794Q7FwRlesY5VX4Dp4Bk2W9R1BYRexw72yH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVZDeE5CWVZXZHd6TWgxTXJhbnhzM0VDSTBKNnhqU1JGeXJLcFJXMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165488),
('Ek4m0KMfvBOPhGCuqP7JbObuqTqNrPSK7mWwVJ9M', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGZCNlVEQ2h1cDMxNjhTZmhOaVpIRFFWS2xNNU9nYXRyZjc3ZlR5ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165268),
('ELUSX2V8xtccsI3gyl4Nk4yj4WuN6BfMDhNcbtvE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUlycXJmbHk0Q2x0S3RQbGhvbjZoQlB2aDY0MjdBQjl1NzVtaG5VZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166563),
('enC72yZTeS3gvQ5e0ZdtHrLxU7WfJByr9UB2gSZk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3hCc0R0SEJyNU1PNFFEeEZQdUZEZE5aYmJYWE8ybUFpNGtNS3o0SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241617),
('EPe8Xe3gtJ3yeplfSUt3Kh9zzoWP8hMxkYBQyB8W', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWNIWEhVOEdVNHVXVjhhVmZKZVhkWExHUXljVThHN1RaaUxtOTA0OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240433),
('EqShvpOnCcCDXxD4R9Zbhc42C4ieihgsjerC89Ex', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1k2UVd5MUNsejZabTR3WVZrNEt4RTdJRGRrS01rZlhCVkNGSWt1diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168609),
('EsDH1QDlEdWpmV6b34trDYeVIuId9ZQRsxYovs3u', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHdaWHpIcGtjU28zTUloNnBPTHhpU1FNMWRYUEZvMVZSd3VEZ090SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910460),
('Et8jdrUWcylIGHyI1wKbHNc4PJPye69J4HgLgjZD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUNrMkJCZ0NyTkh0UG1wTG1PQXZpWFR1M0hjUENaV3RraThSVXBGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907036),
('EXb9iIDb5VAZuZY5Yu1q2G3W8k8rJBXBqC65OnT7', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmFwa0JETmc2N2xOZHlLZDJYREpaNWlDVTJYNjIxbDlVZjhKeTVBViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756314009);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('F3Q7E0chno30QlobVwVPCWb6Z5HG9yTOJyIbvAPG', NULL, '3.216.90.9', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicXZxRG41RklIWWNORzBrNXlTbXoybzhMdTd5MnJxRnMzMkdkd2dVNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjUwOiJodHRwczovL3d3dy5uZXh0YWx5YS5zb2Z0YnkubmV0L3RvcGx1bHVrLWt1cmFsbGFyaSI7fX0=', 1756663338),
('f5Z9E4jt5deBktTnWnrvwlhCLOyglZbBQnn1f4EU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm5hQ2k4YWk0RkE5dW1rVjF0Y2VEcTdrTmY5Z3VDZU5ZcWo1TjVYUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909915),
('FByCVMoAI3Il0uXWAHNxvQgPzHwaLLqwMvbsFNon', NULL, '212.154.30.36', 'Mozilla/5.0 (Linux; Android 14; 2312DRA50G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQm5lZk93eTJqNlJvRG5NM1J1aHpoeUp0Wk9wNEFkWWp0eFNBWmFRRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L3Byb2ZpbGltIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756303025),
('FcPs5QTHAsoU4SORAxAnw9nEdezOfkny50osEipK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickdlZjNSMjJ0dkpHZ09IT0c0bGJNNXhPSzZXdHYxeDlhckZkb2drdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909396),
('FehhxTHYyC5IFItfF33BS9E77viVTpWpQmNRIt7o', NULL, '178.243.81.249', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUpjZ3ZwSjVvVnZmZXF2UHFtMGFoMVNMM3VXUmw2VHpjcU83RzRkSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756243190),
('FFq50f6Ko83ICSKQK0XGjApbDIoCvQZZQknoV9aQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkxrVVNWblJCSFpNck5NMnBlcExBa3FocmNMWWJHN3k5ZHNMUG5PaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166081),
('FGWzC9JueS3xEO4OcDe9qT8HRxY2pRqhaDilshl6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieG5RNFNORlhMSEljcGlhRlpFckhsMEJxS0RjdFp4MmIya2lNanY3YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163430),
('FiUXJkzzgXkINsmv7g51CB0b4DVkJyR3XSI7zjtV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE44WkY4YlNyZU9aejV0YU0wUjg4em9VWHk2ZndzemZNWFFlTDNvbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910451),
('fji3BqYF9V2rVXR5jeSKMTFzpsL7f8idVsTv2man', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWpQekNnRU01d09yaFlvcW5xMWJEM3I4cHpObHZDaGtaY0tzRGduYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165254),
('Fk1QBMQGTyxzrDSMYdkKhccPoSp79cy6nE3woBxI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2VjSHQ1RDhCYkVRMkFYbXl6WEZGbUhZWkhhSGZDd2tvaVhJdGFGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899520),
('fnP9FqClXSLxp0XGCIyG8MZLzxDqw4yzlrZLNcEY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjY2ZzY1Vmk0UzJCUUNOQWt6aGtidVlSdVA1VlAzZkp4TUpJVVZzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240075),
('FOkC7gj02xo1DUFqty0PiNA69PIPwmrw2jPNkDnZ', NULL, '212.154.30.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTZVVDVVcGRrT3dqcks2SHhPalVZcGc1QUxZbkxrcDFtSjUwTTlxMiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2tlc2ZldCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756302999),
('FQjZyOoT6cNv0e0VO6nzh0PbyBx3hJJagdVzTfR4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkV3cjVCRDFkYlplTzE1WUNOaFJ3TmdjdDJWSnU4b2hoZEVvcE02MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165148),
('fT3GO5Kh6keRplX5xG0TczEMabM7O0oTW5b2aguz', NULL, '212.253.186.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0VXMkljNkVva1BBUW9aR2RFSld1eFV1SndYa2pNQWVmOWNaN2xUWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756919685),
('G1fqxrshYcfVvUMECPt761QsAWNAEMsgnYRzBUkn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXpURllNaDJYUFd4SVhueU1YQVJMWndrcmFkWnk2dWVvZTA3VUs2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164051),
('g4slk0wCQMlP4kNKJEZJrAemij50ENgZm3e758YO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTVSTEUwRWM0QUp5V1pCQ0I0VzlxT0lndnJCVVV2bFI5U3JzQ1FIViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166096),
('g5anbI0ZsoaIoKV4Mbo8mn4BnB1pgeLGYkR7J5mu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk9sWHVzS1k5Rk1IRm9MbmZFWFN4SlJnVmowREZpem1ZaUd4Y1FTNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242685),
('g63BvsbWpJdRkKY7dDjUZTWSYHl8agKXg4y6gz21', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHJCN2w4akVKTXJJSkw0MWN0TDhRUk90WFAzMXhWZTlTTEdKa0RiSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901858),
('g7YkNqvgAtoFhw0L2AxsONTH3ldx8IuhMq2Ba8ZX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGxZSzA5Ynk3V0ZzVWNIa3p3dUtacUdrbDd1dlZhbDlDMVBEZ2pWRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165647),
('G8Bb4WHCKV16CMxRDtYjVHZkn0BgMsdL2XNSlZNT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1dYNTE2VXVYQnh2YVAyWW9NRmcxdU5QdjRDbEprdUh2bnpnSWQwViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906941),
('galSiBFZBpjjde1oYVkpBZk7W4iCbmxuvGKOZ6CJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDJhQXNzaTZINkdWY0ZlZU5GbjZ4ZnpWYVdNU3c1ZUFWd3dBeFpHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240953),
('GbaOC5PYDKUobow0hkFvT7JXSPWqC5uxfFExRI2N', NULL, '40.77.167.8', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidncxYkZpRXJab2s4YTEwME52SVAxVFdGem80Z2V5cFBSaHppN2pLeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756507980),
('GbOs2yWqdqQXlyoGBsivIsHPkvO36KUndGShwIXC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmhvMzlibExTZ1Zma1JhazZuMUZEblB0WDhtTXhvVlVLc1RWM1IwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166774),
('gEO8JWQLRpb43uZw47hNpwjxZb2dkr5B4VnDn5x0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVMaTA5RXFMMGEzU25GeTNCTnZEdUdlTXIyS2hSekJRSGtzNUFYbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909663),
('ghatg3dGfq5TjqQg2GXYnkhPZ80qQDrFcglp4YJd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaklkN2d4NjZHMVc2WHpnNkJDb3JpWWVvRGFGWkdoQVExOE5qYkdrdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901309),
('GIWtDcqFkpKJS1L1rY6LToSnjoSVgZOb51OCZnwD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1p0bXF2NjR2TGtzN0dXSUFzQjRpdDlSckpRVFYzdG53aVh6VXcybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168850),
('gIxynVpFgCDLeS0pERAm7Y2rpQyiDmeigtsGT0lA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG9FV1lMNkJpYnl5SGNMMWdhV0dqbXBWVGZkT3Z1YVdzZURvTVlGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898781),
('gM8YFY25AaNMhh2rBXsOGzrirymbkYUQCfo11Du0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE1UUVVoUkVtc3JHb2JzakFLc3lJNVpCMUFyd1I2RUJ0T09GZjdZSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909827),
('gO26NZ0gRhqf4WF0I1IiDrFCRdU49AL7oPLIP7I0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDhjdXh5OWhBcDRvMnNES3hMQ2xHWDBRQVBSN1FOV1kzVTJuY3JkSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166196),
('gpmIVRma0sp14YNu942HHK4w1GGdZhtsk7vUF7cd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmxxeXl3M2Jrb3l1TmJUQzYwaElZT2xUbTF3UWN1bXRLN3lscmZ0ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167265),
('gPtE5Lpc8ckCOtAuyTyKayS4UUtFr5Qen3T3rQ9W', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXhsSXByUDRuUXJFOXdJWXBVcWZJYmlJQ1JuV01iRXJHNHlNWmh3YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907392),
('GQxI8h7B1fsi0529uEf2mz7oTXGBsFWkpBu8yyBW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDZjYzRlY2RDTlpvOFg1N0dsQWk2S1lxWlFYbDVXWGd4RGFaUVJPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906920),
('GsQuHBDGwj6Zpy3pgAPzJZALoAdvBrOQrhEZmil4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWhNYkd0Zlg5RnN4WmcxZnNvVjRsRVk3UUdsamRFOUtua0M3VFNXMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239946),
('gvxG8qRyeRJVvXubeV67498QO6H738dluUzR5r9r', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnZLMXp1MUFiWEo5WHU3NHN2TjJoZlFmd0dqampUbHFNSXNsUzYzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909976),
('GWctOPJTsnaMq8gQEmYxkznG63TaIFlg2GoTV21B', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjJxNzVVTmVuVGppSE5Gc1NPOWFCSFY2VXhrZ1NNV21GZENjek5FRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899089),
('GXqAw1bTTOnV3T3QKcmyR3zHzTtrwpOw9oZs1PIi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM21SUDBYTFFLdFlZcDJrU3JqV0paUnN1SVBZS0JUdHJoSmdvRnZhbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166475),
('GXT7lsSGG67V08NtYfUyYBOef6EVsLGCCQ8774WA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjUwZHU4MVg5YlNBY0JqeHhQbHVYZ2c3ZE16TWRjR3o4V3Rmb0YxcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164506),
('Gzvf3jUTNAQ2EPtGgPDX19FV5weAjB82nqgsOtai', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFNuOVVzZENDcVUxY2FsOFEyZ0hPQzV1NlNZaTVlSnFHeng4NGFDSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165475),
('H0zJzoY08RYD9TVh04qvkhYkmqRckliKCE5huTUY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTh3UmpiVWtMV3drVWhUV0RhWUl5V2lHc1pIQjE1UVk3UU5Na3NvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899179),
('H6GHBvUF9hPvMq1mla0MZreeiauwhg6vRnFuchHG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm5NRXJ1R1N2MTk2QkVXTHMzaGtENHhQa2U4cUpXMVc3cnN5aGh2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898770),
('Hat1AAipdHsFEfGDDtYTcyHPdNVo1PHj8o9qtcax', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDhMUm1WSkJ6YkhNeUhwRWdxNU10RkxpNnZKZFZtUVFlZUtkWlJHZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168877),
('hATIsN5l6Fr6yuOiiYwS6jm7umoz4qZfV23eSJHe', NULL, '205.210.31.163', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlZrdG1pMXVoczZqVWVMWUVLbWtMakVPakg3WWQ2V3kzc2JpWVFIYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756708549),
('hb4zvLbS9jT2cLAI4nxBnXg99MOsOwRkcVzX9YlV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWNVcGJWOW5Sdm4ydFBPQ3h4cXdLRXpQeGdYaGoweU0ybkhKMmcwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907125),
('hD6fr1228o8zOXSX5tFggTMTBNJ275EKG4MtqCq3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzJ5dGNwYkhXOGlaRDk4TlFrUVgwWUtYSkl4NjRBdFI1M0JnYnZxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165100),
('hDBh9opxas1JfCDDxovc1yD2LnrBjP2q4TeU4Kvq', NULL, '198.235.24.146', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlBnM29CbFNVRExsRnpiZ0E3MDJ3SFFHVW1TRDAyYWpDY1pPVzNKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757198120),
('HDyddJzdfCmgQPFvTjFdhtEij608edXdrZ8fRmDI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2tXM0lFNDJFak9UNmQ0bWxpS01vb3paTWQ2NEZPNThxVHVORURVbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241736),
('hIfu1z8vz0yPUqHvawYHgzb55Uabbq0P5su8CvSA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQllobks2eDE5d2dLR0lQVnhuOUdHQUZUOFIzNlNtNlYzMFVNOHhPRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908509),
('HJb2oBul35vyHm6Mm47yKoF0VbuEPOgyzU8wA2Ge', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzl5T2thQWQwS1pxUm1SS1VWY3FoYVh4djQ5UEtQTkVlTGtDU2d5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165809),
('hmHur5RszpDX6ZRrYzitZ3EsWJGswuTpfkwOBkA3', NULL, '66.102.9.197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmhINzVWOEpvVFRrQzJGZHNmelhmbHFhYjBOWTR6cjY1ZmpqdWhmWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756577790),
('hQS7MPryYVlI3HmKFMIc0l6FgGj2gmLfbDOBrZzl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkNKa0dUSVBhTlZENGVubzBaaTVPS2pnUnNEMzRXVUNuWGkwMmo4TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909361),
('huO5EvcjerKm2hzqlI7UNVnstT0Eg5GWVRPSZJcO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1gwVWRqTjE4b0Y0ajJueEdaZGZPOEhuS1dLWkR5UEpuMVBLdmVHZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909933),
('HvNpqM8i3KenxlHbJBW5ENN2lnU8s37EfoI4lzFy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU15Q2lmN3p5VGJiTTdjQnA1dkNjNmZKd3NNR3pFbXZhMWNmOUFoSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909444),
('hx9YnADAeSqrJL53bQHwLgbceUPw9xKmZPB1aD7L', NULL, '74.125.210.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMm1ySm82dDNnN21mdXF4dElpWWlRckFZWFJmdUVQS3BpMU9FZm94ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756313976),
('hyF0D2012qf3xOjCMzD7O3NEtSDdwd4CplxvLGKn', NULL, '65.55.210.205', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVA0UGVPTDIwVEdUbTBld29VZlU5ek1aR0dwSkxuVTNUa3ZEdXVZdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757200452),
('i0vYf6ZokXUnnesk9EL1r0NE0f0MMrUL3tbBK4RI', NULL, '205.210.31.137', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWwxa1g5N1NUUUhpbllIdnIyeVRtcFdVV28zZ3lFRnhWNFozTGxpTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756694517),
('I8Mp3j0c4Syrxuz1vPc0DCzec20vZlRco5f868nD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmY1MHZ5VEl5Z1FwNU1Bd3hpVkpEd2JVVE04Nkprd01zNWxqTW9sdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168449),
('i8TEheAl2pbPBirFyMrmj0xcZP3qN8BbT1jyD0JZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWdCazFWT0xVYmFQN0hzM0JBT1NiMUNwZUlWVXo0Vjl5U0tIeXdlTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164959),
('IAswCoNjsrGkolfnmsOZcLlX6OMOMaOxidbBVzav', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1lsMXg1UVc5T3RMT2RvM1RMUzNBZ3hnbWVDTERONHpDTGR5dkdaeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901943),
('IdugehTp22KjQpNN6Gct1HEdpcvLJP2AA8xrc4ry', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHRXcUY2QzdKSTI3SHkwdlpKUUFnaVk3UVZ2NUNQYmw0aFNlQTlwSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239564),
('Ijeeh59UBf5PskgEYW4frMWJf0yeGNG4m3oX5IqV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3JOTjN0QUUwanFLTFdid0R0dTZadjdaOG5wV2ptRFVjdnNjVEtpRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909898),
('iLhe8WRuKKC2a1kw3y6d5iTLk6RuYdGYJDIUFUq2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickpGUTdFY1lkTTk4RjR5d2JIR2poRDhGWEFFM2pPcUh0WndKcTl4QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907234),
('Im8cqqubmqh5JDFmDJI8Xzj6TzvvcHqD9kp5u9p6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2daMklKWXZMc3hEWDhYMVdyWVJPaDZJQUphcWZoN2xlT2xIN0M0SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165504),
('iMXzmdR56ISEDFGERfoAdXkivS38cLVi5OyomucY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlpGeGpOVk9yNkRvUmxWVUF5SDhzd0w3QTQzYUplSWQyYkhveURkNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165642),
('in3bQDNSFBaBug7itumeuIM9RZK90Hragh8YMqEx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3hzNmFrdmROcE9BRkUyMERUMnowVjE3b0JDQkJVcFl6OU5KemNCQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908901),
('ioiVWuk63gehm9jDeDMWNHpEQm1ky5cf1fX2MUHB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpQeDJURU5QMm9CV3pHekcweERVVFJhYmhRbTJlenJDUElQRXpuRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908377),
('IQiKVHXwuZ3QzXKPnsRy7p9WRdgWV9kZF8yyZSmL', NULL, '5.177.236.87', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmppUWRFMXJaYXdtYm5yOUszMkJoTWFBaWxWd2o4ZE11Zm0wamlGdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756577768),
('iQpE8cbG3oe4LemtrEErstqNjUPrKfDXyzAA0tqj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0VqeGp1aXBWVE1vYUd1WmI1ZmNtSGpNa0x5V3h6WENpTG5YTlo3NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901741),
('IrMeJhmvpzmxg312bliV10wLsfg513VkiM5LdS4G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDVjTFpoZktJckZtRmMyMEVyeVEyZVl2bDNCcGkzRUFhSGd0dHltMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165108),
('iSfCe0hsxMU1lES5Tp0A6yKwvocyCx6DaeUogWfh', NULL, '178.241.162.14', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkh3a015bXc5R1BPVlJEUWtkWm5lekRrdkdURGY2T0NEdUF1WGpDcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756752396),
('it3ZnwRRXCzXMYSDYiPzftf0TiZtGM7P8zlUm9ek', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2gxR0FvdEdDenNYbldxWHZoS1NBUzkyVHJRMHUyZFpZUjRtVTNOaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165173),
('iTgQpr6PKKy7cPtPqmlxGZsnPq7YMyWBfuh2yyA6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia21uWjdyRE12QjE4WW9xNVJPZUk3cFp3QjBOZHB3R1lVMUsxZ1dFcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167399),
('IVrjy2JQZ76nE3AsGY5bjAeAWqHcNEItDofbOalm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlliYklmTVFjQkZRYzRRR3EyOFczUDJaellRdEFEc0hESjVXNWpZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169267),
('iXIerFuH7Yk4yWmAfh56SSmaqNN8o8iKVW4wzEjy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0xLSmxHOWdFZEI0dWF3eXNGNjM4Ym9wekFCZDd6eDJ3NDlyMk1sdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899923),
('iyooPIyWvblsw5pGaws3sGCZBNMxewLE7jO0HegX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYURIV2E2TVBta2dITEVQY2U3Z0lFcHREWjZOWGNleHpjS0V5ck94NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242656),
('j8q6Sqk6VEmmYAr7eh93OZmNin1RrB0PMwBhcMFB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEk3UGNaYk10N2V4eWlPNjBRTm9zWlRab3prank3b3VYRU1PM211dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168479),
('J9JcJe97scY7solrLi6JP7vfrTNqXa44cIyluHjR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRzYlNRUzdGTEJvOHhvNjFYVk9HSGJBcFB5UEtMWlVPTjBTVFdDZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900080),
('JAt93ifsWiTbe6eofPrWuSrkNLqNVvAdvminAljk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk5Dc20walc3bTdCdnRjaUJqZHhwZTdsbXZFUW1XazlSNGhTUzBwVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241988),
('JbBC4q9isn8tfbGK2XF4YvfM5ZZcwsD6aIroEE3T', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUR2eFhzc3RqMWR2UDFpbExhMjFmQjVqMXREY1NOSEc0NGRlTDV3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901793),
('jkvQKylELpYCt3FGGOojXHAmr6riNUp9AZxUGYg7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk1pUVlYOUNtUmc2S2Z0RENqWTJ6SW1haW9wd1FKZDZSZUdsM3I5WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168218),
('jKxgC1KNP9aDNubKcsrqD4O2ugnFaMviZGfwSREY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzE3R1kwOTV6Yk9lZWpOdGF4SXpNNnhwT1VCWHJZWXBRdm53RmRidCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242527),
('JlMbPQ6MhtOmoHTnwWA4u40eiALz1vKJmAv9y5ET', NULL, '31.143.137.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXZzV05EVENJN0ZzU0pSdVR1RWxKcXZYTnQ5a1FZVXNOanlBR2ZydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756287814),
('JMBtE34gpHTADNPTC9sMRPsKRbtWv6reR3grDSqc', NULL, '199.45.155.104', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialczSDdXeU50ek9NTWNoQm5NU2ZtWjRqa2h2ZXIxYWJuYkt5d1dsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1757236509),
('JptJkXXAxcxpA6QFXqvuXGdZZxgwsm8gTiu78hyt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1VZVkRxZVh1YVBUNThCZlJIY1Zhb0ZETVJCelByb2cxTmNaZWg0aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169469),
('JRggvLadAXqzDoiQchv60i7oEwPOSlSGWMzAVTUk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmZZQ3EzeWh4N1o1V0l1QzAzaWtSUmRmVk5WQ1k0MklEMkdFUUh3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169025),
('jsgXtB8rpPBeF3W3BKsmkfgghlV9vBfBsYYw25Wt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGZSaWJhbGp1R0VXQXhUWmhLRmxLMmtLaU5Kc28zaGZvbVZISXJCUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242536),
('JshcV7SuTNC5uvT7op02KqgIBSq9Av5dbQkO5XUf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVVLbWVkVm5UNGZwM2RVYUN1VkpsUklIQ0JINXg1bTBvRFh1bGRnQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901969),
('jX8PQ6gEzw4IhU5THFU8lxhr0PzwOHSEZXfXUKXr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGNtc2pNbkNvQ3FIaDZIUlZqY0k1MVZmWkJiMHhvU0xPUkNIVFU3WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899037),
('JY5DU7ejZDYCYiOUiHIK6HD50FdGq5NfglCnrk1h', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlNDM0tZZDlZeDczcGZRYnJra1NCb0NRbXhhckdQeGFtc2cwZGpXMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907116),
('KaVKdbM3PuMHmCswIBpx33GuuW0H5z8HgqC99Xia', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHdGQlpITlA0d1BjcERHWjdFQkFFV3FvSzNySXhWZUJlNGwyOU5zeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239999),
('KCA7qDOQcn3duevGIXAmalFH5kDVmzwnrxKDo1Dw', NULL, '78.173.87.27', 'WhatsApp/2.2532.3 W', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSWZJbXExc2VvSXpuTmpLd0RLdFNiMGphNzVuMVRWeTU3WHpJalhkaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo4MDoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2RldGF5L21hc2F1c3R1LW5lbWxlbmRpcmljaS1kaWZ1em9yLUg2TFFranNtQVFyMk9aWWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756361410),
('kgn8hwPJOT3zz6PB3rNtSzHqoiH5gL2kJtr5DScx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzM0YTc0NUhoNjNMbmlLSXVCUThFUkZSRmpvUDU4aTU5THBPS1BVUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898883),
('kL0pvj2CXXaMsd9VCveCLO9vIHVtex0FVEfevSoZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjVub0NZZXFYUXJFZ2NBOE84VHZLaVR0RlBPU3A3cFNDejc1dm8wayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907925),
('koc6XQTGBGPAUyVUb6Gg293cy0perF4cEfhuGfay', NULL, '88.230.134.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXJPdTVpVHNOeFhoY0dRZFZhWW9ZRzBQNmZxdlo5YWFhRjVFdFVVUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757049320),
('kqecAWhXzyUEcQRlRzksW42ISDvEFkT2YLlWCrGr', NULL, '66.249.81.192', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTVmdDlsaWlaOXZQdzVaMGhwWkI2NG9FWnVRNlIyMVRyTlpzT3QwOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756303031),
('KU2tdQ7mYSywx35bYIAn9llkLFI6rmgrLn3qPIhi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWczZTFuakVyaHNad3ZvZ0h3eFNEYVJwTzRZZkVlRDY2aTVDTkt4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239939),
('L0iXaoImnKMUrhb56SN97Afm46SnNNCDdn2wEpYM', NULL, '74.125.210.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNG05MVAxWXFvdzdHZE1zbVBRWTZNeDYwNXVuWjVjbHhtNTZqc1RCTyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2tlc2ZldCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756314001),
('L0oVDsZQSH7FvUFlvcb6Sb5H9n2N5XTnWlX4INtX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUthREpXNHBLOTZHcUZJZ1ZmNng2Y1VpNjB3dWhUOFRHdDF5T2N5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240796),
('l82muaQ8qvQFAq6RLpxktCgw2tf0XjdzhRgNGXxQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1pEOGxvU2dabGI5SG56ckNnb0dQcXdERXJJcGp3S3ZKUHd0dFJzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169543),
('lavt21YfxeBaWVMk3hfPu9N0n8UXPKDgkqFvu9H6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEhSaVp0VlVsTzNJWEVLZERSSFhDTlRtRmlFYWFhRWlQbFYyVU5DViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907142),
('lBiayDf4MIXB5aZOt5DFZ4VOGHuiUdi8L8kU6EYG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTBleDY5cmlzTlpqenp0aFdNTkNuOXl5cU1TWFNGd1JzZ01ZUXdvQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166617),
('Ld5ijwTFeHshz5CBYHk1WvtUX4zg4eO5oivt2idA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk1Ja0pYdWxrQWFkZjVsOHZ6RDRNMFNRS2NIMEEwcWdDVDdSelRBVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165651),
('LezrlzeT1juDRlrnDs71LIxHrgWUvMZnwcffTQAh', NULL, '205.210.31.56', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam9TSWtwazRkeGdJYk5SaVpkVU11YW9nMmFZcGtqNGNIQnVSRlhXZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756652917),
('lFqb0WH3q8F698VFdI8qcgUGU2aVFE38ztMmSvY8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVM0amJUM2w2YWJHb0xrdG9pUkJNak1NdmZZZVVwN0s4cmFpakhaUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166150),
('LIa2WnVhx4CA0Uepk8WmUYYxdNLaQ0ww0kEUnbgC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUc5cjltYmlBaVZidm5FWDlQdllid3R0S2FBaHpoRXBMc2VQMFRGcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898846),
('lIQDtUNij4k3QH347wzADh6aIjGt5vB4g7eXEJ3q', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzA0Y2pKWlZUbkJrR3FSeEdKbE43YkVSdU5ha1M4UGc1bmE2U2tXQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899938),
('LJZq6nM5YIXjYUzWI4eB14Tu7QVf3E6nCm8F6iID', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlNEMHlXWXBhV0VkajNaempob1pQNXJ2eE1uZk9RVjg4ZlZWTENVUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240444),
('Lkht5I94b8T4CLReH7yBqJaJ2eoR6WdIexdKpvm0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMm1VMzM2NnUzUlBYRzVLM1k5dWpGWVVieDR5QVhNT3NVUHloSnJKMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901927),
('lNaeBA6UwHN5dy12h27Qmv0uIDh3YJms5hPezcoL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGZTQ2N1TmhOS2kxMWNnQkNJUTJZZ2FrWHVjSzVlZWRGNTNUYldyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907089),
('LpRkvqWuTaHaVRSRQNlgufZV5FzsPWWK2F4NCHD2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1B4NnY3REM1dUkwYkc3Z3VYWEpVbjVOSUtyQVRvUFVpT2pxUHBCUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240404),
('lQ9HRCnO4S91hmOSzbABu9kcmc7sYQ80tqllUrFU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEdaSEdkekwyemVpUGk0U2NLVmJXNzBkZ3F6R1AwU0JBcW94NHRvTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241718),
('LqNQy0SpJmVWWwRCd8yujK9p54GmeIdvhGiXTZ9c', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXEyVkc3ZFMxbTJEU3hzSmdhQWFKajNCTW1zT1BPMTVvU2VROENYTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908693),
('LUGJp4lVutbJGYTfKwqSQBAHDdLvJA0Hzc9K9kt5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjl5NGhKVWhyYUg1ZHF2WFJIajhUUFJBNVZJMkNvREZtVGl1VmtaUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165959),
('LuHODMLcPj7VZUPHi2Z68fzDGlooy7PBxVMSclKT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk8xUnVUampnUEs1Wkt1SjE1ZVNKU21Ra2dSUjFxUUd3VjV2Z3BjNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240333),
('LvCYK3TG95iC2jhj5wRqpht5n5YoMZTDK7YykNPK', NULL, '199.45.154.119', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekJUcWVjWFZQcTFqTWVYTEc2NjVGV1E3bzNHMGxCMGwxZWREYng1OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756577294),
('m27W71q5Zvk3AifSr6dq2wP2pExmt8m5sQZk70Ma', 11, '178.246.69.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXc1dE9PTDFEZ3hnN2g3ZVhQS3BoOUU5ZEZPRkFlVDdpUmF4ZHE0SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTt9', 1757152273),
('MaYsGjI2tBpXZ6rPmcksZcfYbseTAdehWGRHFqHE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3pXWjQ5bVdwREM0WUhPVk1YUzRaQ1FzTUtkQXBCV1M5dXAyaVo4QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898764),
('ME0CPU5KyyXoqSFDnmHuWgii35W2RKUoHXyIw1ER', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlp1dGxHTUVxQ3NQRG0xTXdyVThPeE5rT2JSMGthZEd2T2xJZEczeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898897),
('Mes6D02YGAciCicnLEEb7MdKHq73XlW6uPE9GWOz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1QxR1ROenhvcTIzbThiOWVFcGk4VWZRTDF3QTJJUG9sUGx1SHZORCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165983),
('mHI4TPr7wNTEZ89eFxYpdcoJdMkt1x8eNiBOfpmk', NULL, '199.45.154.124', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnlCM0JtZ2E4cTZsVWtRSHhFeHJzVGxwTmplaFVXaWtxNTE3eEpKbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757232137),
('mIbUt6mlShmliFapfsVGkNkys3huLmlbPO3rd3fo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUt3a3prV2V1aE5VQzMwb3JxZ2FLd0lMRGZWbWVpdlRZZUNORzlZWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240385),
('mICWM5MYd8LPcXMQaSJa3r4jHJ0kzJrDTKRdXSNW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmM1WU1aWUhyaTcyaVRqYnZNUkFpbzI5eXlOU0pKTjNDdlVlWEEzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169245),
('MJ9dgMTA0HYxq1N5GRWjm3GExTQ9MSUOwDNXC0M9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW44MHRudmdHZEo0eTZEYUhTTFJHeVNUaTViOUdXTmQ5NnE4bTk4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168587),
('mPDnhxuFtE3azM4aeQN9g6aPUBYELf87sX2mos9u', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibExSNENxM1FLcnQ3YXdiODVkaXNxNnZrOGNEQWtsVEh5d2FMUmRqOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166226),
('MQpQkgJvbWVELPkVAzahCDw2d4Ootca383LTDxMh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkZvanJQaFVDWW9LYzRSZFZXeWNwV283dWZLMnhBem1FVEh3WThKdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906887),
('mrUEyRreqwF6p07HAfKfrLdRM0Q1wEsrWeDrWJSY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVhkUVk1NzB4d1Z4cTBGcVVKeHVsa0h3TFo5Nnp2amNoblNvRlh1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907711),
('MSPEx1ATsjtTp1iSiBSkx1SzLO1l3RFkRP7ksI7Y', NULL, '20.171.207.155', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUQwdGFCSm9JNzNTZlFVaUdhUUhPenljQXV0Sk9zSDBLNmFjMEg3eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1757007511),
('MsYkj12Y3EKSQlUMdQLiwz5C9LamAXi2dL3lg2Sa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSndTQURzTjlsdlRRd0hMeElFa1NZeVJSTzJpbWFJbHMya2hGamhzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240338),
('MT37OjlEcGIto8Y28kEv6k1lfS8npWedcvDggyqR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRMQnd1RXdFOWhEc1M2YThEWmhQOG40bzIzc0YxYWhPamdOYzNtWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899187),
('MTRCrwSbs95qYRwIKghFAfXRtbBb7LeGKYQlGGpV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkw1cHI0R3BmZjRXQTVERmVDUDJldXZhYUJvN2VlSnY2WWViaGdiWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242040),
('MuA2Z6Z45nIoPxFuSJZ2SI27i3hh3ZT3PMS9hOG4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTNxVUNkb3VqckRCczdnN2FXeHFNTDdDeUI0eThWY2lnakt2cENZSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169573),
('mVfl845FW3GgcmgVQ8nPt8IR8f9peaBdOWmLWIvR', NULL, '66.249.81.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE9ZT3hCdmlkVDZJcFdGSElncUlHNHpkbUM0ZkZybVJVdFdRWVdFYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756313975),
('N49knKBLToPoAoCsCa1T8eqJfO8qSgc67OtnjQDc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEc1dUc4OW5MOWh1Z2lWeHp1TUp1cEFQM0tUSnRIVU1wUHhoUlRFYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899019),
('n5hGwQwVSdr8rcYf5EvXHjIMFTIkwR9iHuVxGD84', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUFZM1VDdTZnanltMlZ6d2xrZjJZaXRCcFB0RHlUcWxMcXd3RUVqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240036),
('N7TsSCw3KZPqg6aUyoBqxue76oe3QB6XEfTAOpxD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWhvQXVrcWs3bWxJSFNjN0doU2dvUmxGMFFrZEZwM1JNZk10ckNHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240763),
('NfaBVtoOHPQnyFeBATirUgB7wTd0biplKGwnSCJ6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzB3b0RCdEFZRWFPSzJhT0lLU2JWQTZITVRqOG5VTjBkN2ZEVFBhQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241015),
('NiHIsQiB38AGuXCejmOZGTUuaWhJxCrajjwrSOfJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzBMT1ZZRW5meE10bzcySjBtbDhKaTM5SFlsa2FCSktWc2h2M054WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901896),
('NOfURLSMw0wHAombfsksoXG7E10jut5evrJC2W6I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU5TaVNTSTRZSjZaem5hWm1TTGlXeml0bTJwU1JCWXhxaTRTdlZBUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901737),
('NPBIcI1lJZBPOghe9iRTaH0Xn1EHdQKE4YhbuawU', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVUwM0hXTm51MXJwcW9GdmY1TGhrTldaVXF0czJNWWVxQTRyWEoyQiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L3Byb2ZpbGltIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9wcm9maWxpbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756303026),
('Npby7Gem8FOQqyuBs1aMufQ7Zgaw5GuiYviqlRIB', NULL, '34.182.97.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzh6ZzlUaGgwVEx4Q3B1OHN5QVBXQ0U5OTNoUFoyN3hHWTI3c0JPTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756822272),
('nrG72uo3RRDTV8FTpnJRx3YgqdNSGPWwIe9WQPQR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFMSk5YS3BNN2JyTDQ3enhsVlFxR215WXZsWlo1RUg1ZUh4OEM5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909997),
('nS5QzKgeKOQX1OSKh5lic3XKBhnYsUhNDk53w4es', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibURUdnA3V1VTOHlDb0dRR3dPOHlUNE1vMnhuYnRZMGl1WTNpMjBMUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165180),
('nTVxGpmolEgHhM0rexehGS9JXKaUMw6yVdM1f5s5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjF1ZHBrNnRUdmJpVDZXZ1o5bkdFUG9KclF1bWplNkFUemlKcm1rbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169428),
('nuCMrbGHF7GwZbcvrexVUucGt6ikFLaN9xxe1cfZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGZGaFdtVnpkbVZsbGJSWnZjWVBCNXR5bG9qVFVxbG9RNWJ4RXB3NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169164),
('nUPNg01I0M7MZdQZYMu1p9cUeRmPQeVPUajanRa7', NULL, '205.210.31.13', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW92THVtMWcyUTJKUlZ1UmUydlJ3RUhsNHJvcU4wRWpCUGVhRE92dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757133496),
('nvlVCbPIjekp8lcdS9VOKSy3WG8AuN5C5bk8u0V0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm9oNEZ3VGpPYks2cmJTQnF1Q3dZdm5ZbEhzeUhmR0JpMU5XUTEybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166084),
('NwEPUXNaNMC9I80QsYMuVFs2YTn1zw8a5lRouvi6', NULL, '178.246.68.105', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGloREpjZXNXdVpHNkdremRsYTEwME9saVVVMWpsUUpGUHRKcjBqdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756361212),
('O3dsCrTFXp7CpwgzLRJPE80nyKhmRpvSxJglq9VG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDdjbENkclVId25GQ0V4anpzMVJHcDdsZUpxV2tVcUJEM3pSdnN1VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163415),
('o6P1GnXIFgxzNucfhDKRijgSfHGTncIYQYjXy7g0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnN5Mk5hTU9yekVPd285bUxVV0ZZQjRzRElEVWpZSlJIdEtqZlJxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241878),
('o7oNNjmyhYUHTgYWB1nfKr711f1eGjjFvGZxUA3C', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1FmbUpaMDNZbTlzSmlTWFJLUVM1M1hRMXNyWnhtTFRuOGJsTGZCSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755948117),
('OBInrKe9kKpqCmV6hswXlT62ovBY3HKXzeAoZDVu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk9QWGZRZ0JOMFV4bWxRTndtTzhWdzZFZjJXNlRRNXJXVkRBMG1jYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168250);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oCVVif3foAKRmFAtFKqZN65XF1umV9F03TybXzBW', 9, '78.173.33.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 OPR/120.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2RRSGNIdzJkZzhKMnRTMXdQcHlOWkJ5cGZINDBwQWVrTXFiN3Z5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9rZXNmZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O30=', 1756491148),
('oDPAsz2ZpfL52d3jTXYgeBWM0vFVsm6R6IKp7XvU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTNiWHFqRldWSkd1aHczaml4anllaWVxMGxpNmdIOGZrWVdFbkxJTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168693),
('oe57DTdAZitwO6Yo1ngPPxAHp7u7PuBvCpFYQf5r', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFVOaHJUUjhySERENFpHbFpNbFpGWGUydlVGNzBwUzJ6ajBvQnJabyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907692),
('OEchJEYcuMZNc2TNYkki1ZeGHUo6H7agpvwnQEs1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2hBVm44VWpQbE1kelFjemVqSkRrSHVlZHFMdmhxc0Y5WFI3SHExMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910475),
('ofd013be2NTGF7VeLIeU1G2TAy9DuoeVLGrph8QN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMExjeWxXakRHaGttN0RWY2xCNUN5aWpjMFQ0ZVNVQW5yZmM2bzBaNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164895),
('OgAHYVIFb8UKg4CcN9LS5UPhiY9Y59V4xs771vOE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnJJQXVselRrRWZ5Y0dNUTJCcU9LMGd1Z3hhRndROEp6OFdPY3FHdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168901),
('OHuQjCVGHw97SRjqFByWJY0a80on9Vs1SKuLX6Z6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWthdHVGTjdaMHp6STRsN0pYMHJON3YzdjhzY2haNzlleldHa3FxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166124),
('OiDDkeA5bT4A3VtAot8o6CL5P9WDrAIZzcNrp7yO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkFKTzdIZVVlejZmNW1tbk51THVvRXRFRW9ybkMzc2k3TDJXTzl4ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239929),
('OjRurywqq44kAzzlo2iOLe33DAxRuzU1SNImV15n', NULL, '44.203.224.245', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVmNpSW9CVE42aFNIanlqdUVkZTNGQWcxN01BWllqcVlwRVJLYVFjUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NDk6Imh0dHA6Ly93d3cubmV4dGFseWEuc29mdGJ5Lm5ldC90b3BsdWx1ay1rdXJhbGxhcmkiO319', 1756800291),
('Om8Z4KRv6a3UakdM4ygsA0Ynwlo8SdsSRsaokrmB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVZtVUFUOVdFRnJPMjhwVTBHYVZJWHh0ZEFRa0dLTWdodTltQVV5dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908892),
('opaH9KCLydvsy5yuNco0x6h8h5n9bEvOfEJoPAWZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1Z2ZTRUUWJVZUFuZVpJNGpUNDJXWmhEcTlBTzVQQ3FGN212MVoyVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910440),
('OQFSb0YHiY0HtnmUJylX3imWB23ebFGj9egjtL7O', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3BYdmY2MTB2MHJSVkhyaVZmdWlpaWRyM2xoVHJnRktPc1lRNVRLdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241881),
('os5xt3Mm4T5BDflj5H6TtyK5N2jkvws6nLtUOYDj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFY1Ym9JUFgyNjFIWjVYRnVuWm5YRGNDSHZzZVJxQ3pOM2xmUEo5ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241682),
('OtnmalQ0F1DQmpaYZMb3asFoFAIzdhJaaJDzSpLQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDA0MllLdGtHZWluaHpJcjFURWJwdGc1cDlPTExVSXVyb2lZYk1OVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898886),
('ov29XrA6yWEJKOz2JMC5mLlDVFsEBIlYtL4F4KRN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE9YSTBxamxPY2xSaVlJWm1zaUZZVER5WjFOMzJLdW5Hak9IenBHQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169255),
('oWQnNne2YHTNVLYjgxGq8JAqTnG1GPF88BBiAyoV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkl2d0EwTHRBcU1VcHR5SW9IRUs0M3hEYjZKUGxwa0xhREZnaE9neiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239558),
('oYAVuqSN9nENgPJQ2nn3PcYHEGcynb2JyvuoMmco', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieW1tR0xEVDZ2cldqcE9reGprSU5rM0lHdnZTQkxiTWcwYzdOQzdjZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898911),
('oyOBoX2kRNxCuptnbpoRT6hOFoxrsqd50UzSngKt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1dhY3RZa3RSeXlnMmpEM1RvSENkcFZYNmpJbU1Bb3N6alFJWXVudiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240882),
('oz2MTXSUVrCVgSPkzdXzIWPcXF7AUzR06KQRHjqc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWpzTkVTYXpmaG41elB1VVNHVElPQjlWUGZPdWhSQ053QThwNnJOTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165041),
('p3qhejDf5lRVAjE7JpkWwIq2TKM4wsiEFqiRVdCb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2l0MzdpVzlEYmU5TWNmclcwdHI2VWpwcXlaMVRGb0lSRnJVVjlDcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165035),
('p7gxeJAFo4cFu2Mdr6dfA64mMgP1KJYOkS8xozrI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW5TckFnQTQ2OGdtSEphcWNsM25IeDU5anZqV3hDOXFUN2dvV3VLMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168435),
('PA59OofsBt0pHsPNv8ACGG4mXZBPpuNzY2fF6y6j', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDJMODZIRFJvWDI0Uk9QckdVZnJkWVd2Z1lXbk5tOHA0OTh2Q1lYViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240917),
('PAqNirmY0n6C6wOTVr0ZJWeNEliG7krfvn8oJPIk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2FTRkZtVEk2NkdYWjNYMTN3WmhHRDY0cEhFMTlqWHVGVXFBVFNsRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163406),
('pB4VQojpHOhpPpgcevSJJFakgKEIb4bz6hqBhoOF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXJhZU1Ya3BRSU1HZWpxT1EwRTFSQ0ZQMXlDOTI4cm5qOEFOOXByMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166007),
('PEXo6JVMkTKN7u1rsdCFMkwLap9lzFTZTNKzkAyC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTFEek5uVjNKakNzbVI5Y0JvbHBGRTdoMFJvUXd5dDU3SEVqcXY2ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240879),
('PfloTTUwCpTKwUTIszvfn0irDEXbejIJkaksvqVX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWNPUHdxNnU0QmdnUmxBRjNST1plMU5MbXJJWmlLMUJmajZQbjNrWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240627),
('pidBRFYcZzUuC6YbNTMeYUEDyMz9OyDOpMFbnziL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzRONmc3SUVlYUxvSGpLdWhhUUhzejRKZlU5Z25QdndDRjRVMnp5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901733),
('pOvXt8K9yw4cEtEaIwNQ7MF1HPRpDC0tTebG54Y3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieElYRzNRY2p1RnhaUlBRVEt5SWN2dU8xVjlDekt0WnlpTk1PbjBSWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168685),
('PPeZtNpKe8AD0mmL8GfKYk1ZoIpvQFsMLuATDis4', NULL, '212.253.186.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHRYTnA0N1dGMXNxUVlkSWFWQk5RWlNJMjhIYVBjcGUwUnJRYjlPdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756919560),
('ptA18nHawE2Ma3hKLQkbI5DYG7IrV5zLSZB1oJG5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkdWMHZ5cHowMDVJWmtSeGlYZEw3aWMxdTNmZWhxelVvbmdMd2xKWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165976),
('PUFXw7pHVpy6j62AlIFePPA83Vki9fmPQcVMTAcd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHVZWjVEcmQ0b0VsbmRubHNYQkI5Yjh1VTV1bHNDS01BYlFCYVVNYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900526),
('pViQVnbGrb1ssUqyCIKVsk5hQTSSp5yDI5yz0EOo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTFtczgxMGVoaHpnTFduT1hwSFY4eG1yazBYSGZONTdidUM4TDhyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899026),
('PXE6126AZDAQmaArVQkLWMeASAdXMn1EvbeJ85bu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMElrcnltd0tkMGJCZXVoUDVFZTkxclFQVU1PWXltc3JCeDc2SzU3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166676),
('q53pvPYh3BQOeFQxI3Urv2DaNP4ZpJKdLOTx2NaL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW1zcUFEOHN4dzdQdjVTUjRhRnoxc1ZzSlVwN3RyUkgwaTdXZlgwRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910422),
('Q5EibMPv2REnfjyUA0f3RNOnUghiM4zKDdFoBYV5', 6, '178.246.69.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/139.0.7258.76 Mobile/15E148 Safari/604.1', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidm1KeThsYmRCTWtVSXVCSUJ1RnF2bkltRGQ2a0dqR01FblFXQVFCcyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1NToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2tpc2lzZWwtdmVyaWxlcmluLWtvcnVubWFzaSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQva2F5ZGVkaWxlbmxlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1757177096),
('Q7dDdbFR60THpl9WcKuafbLVMXSOtPNbU0zAot0R', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHFocFFZbFRTQm1PU1hJcVhGZGppbHJjd0xsS2pwNjdHY0h0MlFBOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242580),
('qbARdAjJjoxflYfbVaGaOe9tqq0jn6w1GmHq2VPd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFVZRHhYa1NuTlcxb3I1bVJNZXlZOHlXcnF6Wlcyczg5TGNkOXlaWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168195),
('qBxI5AlfqMIUEemHcAvjkREOJvOl1hbc97JBdUkw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXRTWnlUY0NnQnRCQXc4ZkMyZXROUGtmVmNrTjQ5YnI0TjY4MDZ0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165248),
('QCDYSfOaqxHgrA20g823TtZD125dDgkVQj4BZ4DL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczFsWUhvNVAxNFpCWUFuQkVZQlBueTdxaHoyanBKZEZDTG9oekt2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907913),
('qcNlSNFZA91k2GurDFSeJ3ffmVLKPF6OWzUUh1r2', NULL, '88.230.134.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDhZdGtZUW1acm5Wa0E4RUJxYUY1OEFFR1cwYmc5R3VBMzN4M0pTVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756946717),
('QcwJVTgogQm3ivsvP2nyTqAnexitQosiJHLu5dWb', NULL, '198.235.24.209', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG9XUHdyVEVPdk5Wa3Rvb0Z4Mng2U2JiSkJ2bkZDbGVCUUlsdTR2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756776295),
('QDeyXM3rsDJwybBRVFGntL8RBqXPhFcQAxBkoITr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiempuUk1iaDVCWU5kTGk2bDRlR3JiVnFKaUJscFF2c2hJb0pQNWZTTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899911),
('QgptcuAukAnTPunzwlagYm43Do0BPrGdZbg4i4Ho', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWZKWnVrRHZsbXU0ZVFrbkYwbFNPYmx2cWZGMzFrbVl3RmdKTTMwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240838),
('qHYfi663DsxRmvOvihwl35BNAWtDKHKfac36MnS4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU1HczhNUzN0Nk5YU1FjQzRyTnJHYldxMGZrWDE3WUI3SUQ0ekEyWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169597),
('QHYlbfXxHd11bWEtO0TiMBt7eAnpuT2S0Dr5vB3b', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWpFMG1Tb2JTR1Y0bXJBNXh4THVXYnFSTHZ5Y0hoTVJNM2dJVTRlZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168285),
('qjLzwQnvKdmQKSohJoNVUV2KtBnNLGDWFIs2yrw4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnUyUGp2aEFJNnRZZVJrMlRIR2ZtTmREVlFmZ0ZkRGFGUTFEaVdLMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898844),
('qJnrgRBq68zJ4qoXYN4wsGQWds2kr6l5Z7eNCM2d', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5jWTF2cEV6Q09wZWVRU0RMSjJMQmVwWmtrMHVDdEw0R3ZvdGVmUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756303026),
('qkSj0REmPwRZU136YEtWtI3Qavw56kjhoKIW0pXQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1VTSUhPdGFnczQxVHE5Y0pnYUQ0c2hvcG5NdGxaRmZaNmdLbU04MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166099),
('qKVsaRRx6RJZToMjuF3Ecl7FitZPTeEuCbQBfJcQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTlBZFBudG1uRE5QOEk1c3NQZ1pQaE9DTkpSUjdOUUowSWNyUWRoQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899730),
('QlWptJINi3iixF2BntpPaLfykgq8coRx9PowlpMD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamdIWmtMbVNCQ1lJNmg4NEFya1ZkRllzTmpGVXBFS1FwbXZkUkxYVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910334),
('QO8ScTC8kgxT2E0QEMlPeJnZKjWjTZ1cR2Yltn9n', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU5pVXdDREZIb0UyYmhkdE9WcXBLOWhPcExuVEpoRDBiRlpIQXlqbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240992),
('QPhl2xaPEojbPY3SMF5WqleD8KsF6x2lhWj8fDZC', 8, '185.20.6.73', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSk4yQ054THQ3QUdPQk81enZ2TlRqZDdHM1RoM1dRcngyeklQanJVZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1756247717),
('QrYUmzPfpAS3NZ07iMH3ku7zwWisILT1I19ZFQYr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2R2cVN5T29QZHI3OHNjZkhlSnJtTU1ZZzdiRzZ6SDhUUEZBbW1DRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241654),
('Qs6fbyW5rnqCkaP6AkDvKWkNf7rrJj4D6cBdJnnR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamVFTUdSdXNLSEhGQnJEelppRzRMS2d5Q3VBSXVxcXRRZFViSHQzbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907591),
('qxAA0BMzaHjGDV0r0usvWMxTJbHQhh7v0xjzkMZD', NULL, '199.45.154.119', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01iSWJQMjhHcnJvVmZRajVncFZUVVBSYkJNeHVPd0xHajhjZ1RLRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756577305),
('qz0r1OOM9ZzcrAO9oI78SuDXloO9QCxVEpD0iD0s', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzFOR0hMSExZajZlaHNNZU1XQTNSWEtzQmlEWUN2RW85QkFiV2FvMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907217),
('QzwlEUFfYVVVJEO51bWBg1OAJrkgEEmkRVyzw32f', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1dVc1lHVkFkV2VJTzRBQ2ZpQ2NhVTdUaTZWelZCSTFNbzdkRTRtZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165045),
('R9lu99eFIaw4eaWYhccokLtEjYNLBqGgv623UzhH', 10, '46.196.252.218', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVk5VSmdXRlZyenJRc2gySEtRQkhSekJNOWVZOUppeEtTdFhhS01tbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9wcm9maWxpbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1756314190),
('rCsKwfIG8gs2dNA2pSv9KhQdb6QFiHMJC9PjNRKf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHNuQndpZVR1a0h4ZXk2Vll4bUVPUWdSQURUUmVxRmhFRlJKcU83dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909493),
('rFOUC5xahD3PPYwcHoe8QOIlC3BjJoXRwxHFFHQe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkFTU3VLWFBHV3cySHcwcVVqM3ZJbHNOVlptRlBzSU1rWkkwU0ZjRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240801),
('RfSwjOflfzVZuyLuJ2rncKrz4JM534UyqmOW1vEa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWluU0pRRlVSYUkzeDRHakZhQTk5SGR0YVdGbDd6dEFaaXhHNHdtNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168459),
('Rg11S8D4BD9hk8Ff7k8X2AX9UVLTQwKGUs5voBcB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGNqd01iMmRYbFRQYjhqcjBMU3c1Q05vTmdtaEpESGYwcVIwdTc1RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169559),
('rHi9JYH4qKgHorplUIkbk2MnVn2Pv7GvOBuTpLOE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVNHT1JQUjM2MTJUd0NRTVVaWGRKOTkzdGJoSTAyWFJxbERWTERycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168391),
('Ri4A10bLGZNEnaSPVjSbuYGU5v12Sx7NKfoXPd2Q', 8, '185.20.6.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 OPR/120.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMXFMc3RCT0VHZ2ZKdkFsdUNVZ0pGOEhPSTIyTmphZVljTjhtNEUzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1756247967),
('RiHO0kjZ5Kj4gJ416H487OXdTq4vip0zctwIo1Ru', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjg4ZnlQcjRsdVZLR1FqNlM3NU4zaVVtblVzcTd3OTFLNHpDeHlhZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164182),
('rL0TL5K1YJ7f8rj3cyK7ppujVkPLYuNEtXP14HUu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDZscmpHOGRmWVdGU0E3c25ZQ1dDSGpjMUJvY1ZlNWlXTW9qYk9zSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899147),
('RleysRlVyFLWoSS5dHDMqiwBzeTCYp4Zyonb9gxd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME5QbW1YMjNOM1g5QjFpc3BTVTBVU1FCZGlrTmdqeHNxanJSMUV6cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240826),
('rll9N1I4u9TT8wcl68TohiQhrT13c8vO9SoNJSje', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnBXbFNSM1V2Zm93b3lYYWxmeVhyTWNCN2dMV0VGbjJocG4xdXA0MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166051),
('RMho9X73B2MsFRx0nxt2K4191cSjpwnaw27hAuN0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHNjWnFTRzFmRkpXOE5RSDVPeTVhUHV1MUFyT0JtZ0xnVFFWUFpwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900517),
('RnfzpyDmt4QXk7jHKOOvCwuQmASbM4BlgmHGLFiW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTZuekN1Z094ZmVFT0c2TVFqVW5zVUYycXJzZ0hJcjB3Z0tMVHhEQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907681),
('rnpbAfrajvUykIjcUhLjy2bHSoLDiFU5e5WNyMmj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDI3VGhDS0xseXgzTjFSMVQySXh6dDVvUEtFMTJJbldzc0VMQVJBdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241796),
('rPAOp7zO8FiRqStnN07znMKxYasun1t3HFqdLtd5', NULL, '65.55.210.206', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk04UnVnYUF2ZFM2Rm5ZZXhhOGNweDdMV2ttYTNHTTRMblM0bG9YaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757199377),
('RTiV3ZEMfJDVoj1XGhOnuYk41L8t8UoXK1hZeqsU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkZ5a1FqU2ZyTUdRTXlvOEhDTFFFRUdMN2J2dmZEZHN0cktJQkN0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241601),
('RU5dwGL8czGv8TghoytbCYnsPrKfEOs4hLBIRnRq', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDBBZkJVclBGRFl0NHdkVWJWczBLTVIyTDRGTEllcDcyd0xqb3FrVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756577789),
('ryHXSz3nK4rVdasixq2UdduaOFPpbCLK6gKCIxTK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0lheXZFYUdQQm0zUExRRUxJVlJKMFYzbmQ2ZnFjekdndWxtTmxTTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164250),
('s4fdL8eLaiEgPQviNz7XZAzFjQOA9GE41EezEH0I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMktOelh0MWhlZTNKN3duanh6UGE2dFdlSHJiS1g4WGdoWTVFbXoxViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907623),
('s8XCYtgbtSZPuYcGbNTYcgHx9B7pjUfrrudgdfl0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVUUEJFNE5raTZ5MVR2UHkxVVNLRnhWanZ4VlJnMkx2dGJzSWZ6cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241767),
('sA1wuGvsenqPi2hl2DbxmNAwxASq4378NZcn0jR3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek1HRG5GZXFnaTFFUkhLNVEwWW94a2xjNVJDbmQxN3lvTXBDN25YVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163497),
('sALhrVW0ZOWGrhK3QVcL3rBxLOhy89gF902mBPOP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3E1U05BWDU4dUl3MmFZdWp0WXdZVkdhTkVBS2RKS3N1Z0h6Q1ZCSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755906938),
('sAOcMRBNbkLKcVs0qKOeglCiIVNLHgXIAyeKTNsM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0JBeHdEQlM0ckJpclVHZ3lPYko5MTlaU2hvdm5SaERid0tCZnhVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898869),
('sExbsihglHSxxPAHLVjuW5H8ZKuhPnpWkFXqaKJD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVY0dHF1RVc1TGVPVTUyZFdhVVVqMmVpZzhqV1lQUzRUS0JQVHFJRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900787),
('sJj0URIqJiAsoc7XPrmzVyLD40Syi1k9ITi2BL5A', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGlGZlhkUEZpRE9ma2tRT0cyNzJWRm5ROTRJcFZXSHBRaWIzUG1PWSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Fua2V0LW9sdXN0dXIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Fua2V0LW9sdXN0dXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756314009),
('sMjOObqew19EwmDQPg2UyyxzdJ0Vu6EsI2PvU9ti', NULL, '178.246.71.196', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRldrNk5XYnBOQXRZc0dMTFJ4a3R2REpQR2o2eW1ra1A0RHExdklOYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756387834),
('sn5omHvJ9sBGlr2AhR8FzXS3tFm3gus1bodaJ55w', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlNCaEpOZWhXSExJN0JkTFdrZ1p5blVHV3dWelBjcEI1UGUySFFhcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169593),
('SooCigeAFYVkyispLSzfIHOaiL0A6vpCplb7ivqO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT09Ka1h0Sm9taFowRXRhR0hUNW9TRHh3WEdGRWtocW5pVjNmREhXRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164209),
('sRHPTDKJ1Y6ksVBntFjXKWl0kNY4oZjZlYbqMhns', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUtDRGVGRmk3M3lraUNrcENnZjBwRnRoeVJJVlFjc3h1SG5RMVBGeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240691),
('SShlCUY1i1bxuWIALKl5eE28LbCXVGrxyzOankgS', NULL, '147.185.132.27', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFJOejVuWVphYW5ZT05BaEFXYnBZdmR6OWpWVFNYQzM4dUJCSWxvdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1757138635),
('sUgkeNE1QFBiLoNTwhNKMysvcr0sZhuyGIi60qAn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE9GZjA3ZEdRcXdFYUtUZnh6dTJha2k1ZjBVUVRiMHBGVTFEcWVGUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165104),
('szetubSrQYNqDx2yXMONwqlZ9t8gSGg4LGcLOH4w', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDZUNDFDN0VHUVZ2bmk4RUwyM1JDT1IwS01obG9CbVpqdEVFR293RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907048),
('T5KIBjhECS6CBVFvOAPP7Z0LI0a1zMy2OKwGvLLk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnFvZEk2eUtsUm5Edm9EYXc0ZWtPb2NYcDBHeTU5YVNnTlA0MmlEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169442),
('t7SRZBzgqKXXHUEkGwNYcLq9r8W6dW7N7z7jPOY9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjdpcmVaYkNVWjBhVUZRNWxCUG42VnFldmNkaXZBR2hxUm9tVkI1QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909747),
('T8iJvgkybvA2ob31HRX8HAYLcjQtlUEH4oMaq8PQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0RKVlBzT2lYQ0JVN1hDbDlMMEo4dW5TM3B1bDN1SkJDNUNRaFBMbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165469),
('TbgLKhuKSahQkVrEhKNkeJiGEkofAWppfgyEO0ZW', 2, '178.249.211.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/139.0.7258.76 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0pFNW5DV0JNQVpRZW8zc0ZKRGtLR0kwUHNSMmo5MU13U0Y5NVFCNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1756245801),
('TCqvRz75zuc7qMUPVPdvxVTIM23FFPS0H3qbMNNo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGhLUmsydmpVQnY4T2pReXRBbG9tRW83Nnk0NDMxS2ZiNEJEQzZKMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166110),
('Tdl9PrA1Kpd0ctgurx6Kbb9lM3IgCgP4wkeVbAPT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hRRTRLMDNqWkdOYmN5a0Z1elNlRk9JdnZ4OWxtSzVwamlVU1NNcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899213),
('tdlfffhL7IAdW7zbMAcBYNlFguiHgFnGIec3hawM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTlXMEkyRjBnR2JiS1RsMUxNOUpVUUF2U2J4b2pXQUxoQ2NWRHpkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755901312),
('tf9r9ZsE7eSDehyq8XBcAJ3q7RMwO7z9v5lC47wI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUFkQVZNSG00UnNpaFlOQ0JjQlJ1OHA5eUhDQkd1eVRzekRZeDhMeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899905),
('tGt43jArbyOtkJk0SXbQs7rK3BZoyIGxQ8IvFwIj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVlmWUhqSnVaUlpHV0psTUs5WXY4RUxMTnhKZm9KZ1VnNXM5MGdzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909510),
('th7u0vCM3DZRyBJmwvS1F8Zuxe0ogivy5qwE66bU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHJQUDZTUUNnaXg4SDl0SFQ2bFN6S1J1bzkyOWxVdkxFU0ZKOGI1cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166777),
('TiZVL5hhYpaV5VmuSgkycLnkelYrn1jo6fdyzpVW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVduQkZ0UXBlSUgzYzlvcHNQTEFjNVQ0T293ck1LUkh1dTVscHJsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169431),
('TLmYYJt1vRONGzJDpPqm6PLSCiwQKJKGe0vCtuTd', NULL, '159.203.60.186', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhmMlVDOXM0elpWUFZzcEhIWHdqZGZsampCWTNzT09LRVE2UzhIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1757227588),
('TnjdGixZZmzVHkCGouPuZGCN8zrOF7PomEbyTQRB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXJLN2JGb1E2UFFZR2pXMktqOUw3dlFCRUhDT1VoMTVvVGpmN1p2eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909735),
('TrxF0FAc7gfeyvvH9YL2JUy80al3aJ1hodc5i1Z2', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZmZYeHZPNXpSeVhpYjRGbjc4RVdwQ1VJQ3R1YkJQeVdlajFaVFBnOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1755908842),
('tWVBYSXrFscCBEGEMMDTNpGBeg07AzzY2mkt0wEM', NULL, '31.143.137.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVpBVTNhU3VRNFRMbGZLV3RNNUQySWZma0Znem05WDVhR2tiQ0U2SiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756287814),
('TzskxB4dVcKfjwoZf4UwDv9zMnWjt4dpNIYcROgB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWtXV3FrYjdJOGVjaFJod0s2ZDk1eGttcUxoQ2U1NnljMlJaQXlyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909519),
('u4a9lOYONu6MTR5mfqFWD3zBO8O29I13Y3WbP1Sz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVQ4ejhWV3BMSmM5Mkg2M2tkSW92MzBQRFVHelpBSzFwTlZoampXQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168689),
('u9FWpGoFktqUdyPFb1KjqXJSudLUU9HyWpfx5MPt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWg3QTdoN0xDdk9GcWJycWswOUkxNGVZNG01ejU5SzZzM2NMYlBaRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241635),
('uBStZ3VEnsNuZj2imf6TUT1BJKxLKjYQkSMLjT65', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHdiSEFYS1BaUmhMNWtlNEdZZ1BPN3lVdHJ1MlNqWVplMkZnNVBWSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241668),
('uBu1AOKnzGBVeNiDMfoD04h2PtQJZiYjbAcgHgxN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0h3TVdGUHBLbEdNcmgyM2dCYUx2QlNsN1pvU05FcVE4MVRVNzdtMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899022),
('UcvzrC7TYJCI9VWG5hrc3UlenCi8zXp1WvU5SYwC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3N1cVNUYUkwZzd6MFU3NTcwcGt2ejRoOThoY1ZZaGo1YjRMWVM3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168557),
('uDMz6HshLbrU3mqyLVu1ygVG6miI6zchmI2RG0d4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0Z2eHZyQTcwTEFmaFlCY1lFRUVmaVc1RDA3a2t1U0UyamNwWnJHbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908817),
('UiELqqXvpuKvYpcFPygSJG0E3njaTkElLY76izne', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGZXV3F5WXhEZ21PeWFwRURzclRldVpQYnNyVEdtWThjOE9sdzhldiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167488),
('uikly1zGisJpjc7YqPWSF7OmKxbfDOLZYtMQaZy0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamRHc2RvaE1KOUVZOGFpYU5lYTlvb25KcEJUeHJDOTA1NlBqZ3NTbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755900486),
('UimWrSfdjFidJME90hWhMziysbM6XPKNp8uoDKBh', NULL, '176.55.91.214', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibExXN1RKSlpBVHd1SFpWdXJoQnFYT2lYWWs2QzBLQXBRaWhqN2llUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fX0=', 1756378751),
('uVp5zWqjcjCJqNkCPjYhOlI7Glf2LMG4gIQhKROT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUc5V09LNTNTS2RTVkNEdlRGb0FvQWgxeldxbW5UZ3hFMnk5OHRXSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169411),
('Uvvmdw5eNRGQcLVIXZ7hyKcybfvr4nvzGdm23oGP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianRzU29CaXlHSXo1ZHJaYW5aMUZsUWppTUlUQkZHWnl3MjhUNUhteSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907791),
('uw7DdmhqjKLnmZlxGuIAoDjebOJ63HHhkwA5dZWJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWx0cEExN0o4S2psTmNxcEdVQWJIWXRSRzhOYWFSUWxWeGJYUldYViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908338),
('UWa1OkFUxBFwBKEC4up18EDnSr40ZrldF1GbW4ic', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWZ2NkdCcVl4S01Yem5Ma1pEdmQ0SjlGNmtyQnBMczd0WnVKZEhMVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166532),
('V6g3IEzjFqAcz5tFOBch1kf8GZTLHEQaYnc5wKX4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXF2aW9aUDB4YUtiN1l4RUptUjRldE9CcDlTNURXcXpwZWpBVmRrdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169603),
('v6ujnDn5WUXznH3kJNMo64p3c34Jvzhw1ZDhTPNR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHNJcEpoMExuMEkxNlVvN2kxVFA4UW5QRGxJcUZ6YjFHaHhHTEd1WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164216),
('Va9orCxZFIsjxUetYmV8XfbScS1BrHKblWYjKgyI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVRVdmZnVklMYkpVZ0VZUFBKUElwQ1NENjd5elZDNFF1a0ZObDdOOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909682),
('VFuOuDvMNsmmb6OwGsKGRXT7q1MnSe0o5pgqvPud', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGRxM1RmZ2h5clFiUnZuejEwa0hWOWtYblNGaFhZV3Z4SGJvamhnNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169276),
('vGn5sg7FVGnu5RuDbMQRemYPRT9vCnzzt1jsnyKM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWdCd2pBbmg5SWxtQ0VnT3R4Rlo0M25Cd2ViTHVrcnU5Z3ZtRVBGWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166113),
('VHBx2JPWNQsF9zGRE6aHiplsrz8BwvEiO5QGiKzO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWpveXlRRjNtcWN4MzBpZWl4ck5raVN3WDAyb285ZlBGRDZOMTRDZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907728),
('vhQKR6zKTV9LuGLKZBUoK9XfaeEqVaao6y2aCCz2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU14U3lCZDl5bjQxeXNaYWJOMWxLRGlIalNCZUNLQlFBNEMwNHR2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165145),
('ViVs40DglUwqQwsgQxyMkAP2H6BT6DY3Vw1TA41g', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTZ3V2FEVDBQRzdZSFo0SkppWHV3bk9wZHJuQzdEcGl6Z3FtSWZQaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899000),
('vLqS3XeKNf41IzqWsPTtU3ORhpckuMhAKj6XFPRP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVBPd2c0WWRTdVlISW9yZjIwTnF1R2x4N0tvS05pSUVrcHhwVWdNRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755910015),
('vOOsI9lsckYFTBOkrWUubeRkcorr6Yf08dxt96yf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3k2NHNpT3VER0hYWnJZdEkxOGNCbHdOYWVLVGhoRG9ObTBtQWZxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165480),
('VQiu6vD2TMK0knAO7KAOKA2TkmtegdNE6XKv2TNI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTh5NnJoRnVGMFdGTXE5aDV1VHNyQUZjMk9taU5kekduY3lYSTlRdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240865),
('VtGpAMNecXjRWxgEOmD1LR7vM0YzEwe6ZQR5nBdv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXNqR0gwWlo0ZlZkN0ZFU2Q5V0lxUTVxajhraENXMFdOeDlJdHpGNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240593),
('vuC66D9XwuBl0cY8pKDA99bgSJb3Ul631SKfnhbC', NULL, '192.64.113.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnRtZ1g1bGo5dm9FMXBYNEhFQ2hRWVo0T2VpZHhCRzVFRmJLTEdISCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756310167),
('VvvgCr5NELstHtq3D6Pqz3SoPewAeJKGHZtTfJyy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUNMNjNRZEJJZ0NWUUV3aGVyY0Q1TjhyYmxtTk50OHE2R1RYNGFBYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908452),
('vyD1EZdO3V06VjJmvlAJLVmx3ezItihfPtoZJ99k', NULL, '199.45.155.77', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUxONEk2NGQ0eUxMV05FVUprcGN2dk5SUDF5Q01GS3F0UGVxbnI3RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756854954),
('w18kZWMEwtAnmomK1ohIu2TSa4UuYj52swkP1rd0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSThwOGVlMTJXN3NrNEpHMm5rWEdEajY2c2g2eTVWTWIxelNEeWxpQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240914),
('W7MkyKMAxrEV9mzHM1TaN5WskEqKShwfVVm68wMu', NULL, '52.167.144.146', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWFYb28wMkNseUxmTE4wVG1PcTZsdHVpaXV4a09WMkExUGpSNXpMeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756853695),
('Wii8PE0lH6ZIsrFhfPdRFzOVCOkle1xUeXxHh0r9', NULL, '3.239.220.212', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3E5NG1mNnFXOWw4WVhneXBWTmdrVnA3VTQwcFZHY2Y5V1hBSzQ2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NToiaHR0cDovL25leHRhbHlhLnNvZnRieS5uZXQvdG9wbHVsdWsta3VyYWxsYXJpIjt9fQ==', 1756836165),
('wJ2Nz6agGVQdIq5VAEAaMDYpO9fIIUnoANtLMTkH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0M0MXlySkx3a2NpS3FHM1V0M0VmVkl1UnFxZG9iemxHUG1TcVgzQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164019),
('WJKncq2nNfkLVcGCRoGkR580kEQdeCA3VOKoajUQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVhzWmNvR1YxaENXcndiYnhQczlTSjZUMUh2R1cwYkZHSHlybmxtWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756165457),
('wjtHnM8a25ULmBEIeF7ER3sPjbnSRH5xtgOca4N9', 2, '78.174.79.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 OPR/120.0.0.0 (Edition Yx GX TR 2)', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRUUweUZ0b3B6ejhOSURRQ1RsWGphVEpWR3NOajZ2Yk5OQ1M5bG5QTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1756675820),
('WlHCEX0m6bQXkJZ1yDJ9zDig1Yqw53qvzP3lGq5O', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTURTTXN4MnA4TklUY3pjUVBvb08yRzNMQ2VHQ2R0SWdvNWJydVZpViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898991),
('WM5o5bzs3BMHzas9qZbo9cJvWRRL6AdaVloF5tKP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlo2M3dvQnFmVHdHaEgxckxRUUxXcUNiVVYxYzFtNzJrY1FyeWJNMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755908521),
('wOp8YklnzKhOD0Q9prR65XIMWb5zKD2rfCyLuHQK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGFLcUpUYkNTWEZ5MjFoRGJaYUJ0MlRwM2dWNEcwUlAzTWY3aVdFMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167575),
('WpYkrH8veSCZz0LVNKDXofV6JGhzAvbGxeOFToUc', 7, '212.253.186.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT01ERjF1ZmZVdzc5M1lFdk5heWZ1a1lyVWRRN2drS25kZGdMR0F4ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O30=', 1756919110),
('Wq0n2ui7OASxQOsyA9dhEJ2O0t9lhLjy9jDj13vt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTd0OHAwZEZybmlJcVdWeFZmUDlDTjJoUmpTM2NWZjFKUEZXWEQzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898995),
('wq92fQhR7zlQPG8p3ZdORMoXvZNdaGeWsUY4xXe0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE5YMlVHWDkxS3ZtN2pHSXVZa0RNRzlpSk91Vm1LdENqdUxZSlE4TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166685),
('WqmvmzC45bqNBf8TAvbsIWAqOyUmPdigFz4nCWA4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2pmM01aVzh6NExGaFlpSTRKY0R6NU1rVUJYU1BwbGpSVjhReXhvaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756164238),
('wQoWko4vzx9uBtv2d78R0s1hTTXchmWmiyBIFi9G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGxNdFhUQ3o2ajBoRmRqMlZLTFJsWU1lcklQU0pqVmppSEJlaGJtWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241750);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WVyKP7zGI5pPWWEtpNYKnSw9U4wMwiD6xZC7enCi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienB4WXVEVlVFQlpTT2czSkZsQzJSQXpyVHUxOHFMVW41UTRXWXhVbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240654),
('WwqppMSPFonXHEPZ4ko1RkJFuSk3c19TULlEChQK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVBwNDVuOFUwWDl1VEExZGwwdDNXblc1U255ek55STZmZkZYUTAycSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756240449),
('wy4oKVbFy8FgZZm0PwThejVJMUwSLGwHYscYg7WO', NULL, '212.156.184.74', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/28.0 Chrome/130.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUJieGZ6VWliYTlaS1UzWmR4YWlrWHczRUZJUzd5ZTUzTEpNM0xFdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756387853),
('WYxClwGHT70zvqn6VZARhWCxa9K7oe6E7GYjhc0h', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhZRXVjUTkwTXV6a0pBRldHVFl4STdaeTJzMWw5VFBXRHhiQmJvQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909911),
('wzTxjpU1JVgByg4G1fjYXlMl3aurqksAn7CmNzan', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1RnbFl6VEdmUXRtVUVtZjNiSGZKeE5QVks5MHdlM1UzN2IwS1dDTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756198271),
('Xa5EG9ECnJ28uWL1L7jE205l8AiFJKCZI8XnczET', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjI4Q09aOTRiSDBpejROTDZCdjQyUFBJZGx3bHpERE9mZENndFlESyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756242561),
('xb9MgNDotQIPiGyQEuTnsTMyrNuamRlOPhZVKFrb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1Q3TUd6REtqdE10MjFJZVdQbjNwZFhVRjFKdkhycUVCU1o2WTdDSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909463),
('xbMWAMPV4rq7n4oCEfbBHyMBuUqsRaZteebcx9bj', 10, '78.173.87.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1VURDV3UFdjMnNmMFJxOXFaVXl2b0drdGhSZXExeEZjRnp6QklHTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldC90b3BsdWx1ay1rdXJhbGxhcmkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDt9', 1756384437),
('xcxkLwHdoTWzdsoiQ5XEOM1VuCSVH5TTsFH2yiau', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianp5d3hYWkhDSlBBNWRwaTVmSXNSS1YzeGdVZmRFcXVDR201OXdqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166064),
('xDZHoz9LKH6TGeu7sRcYCJlderMionHNhS0pvuXA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXh2SDZBdDU2MUxFQ3RVNVN0TFJ1QWFHTlNrOFFaZnhKRkZWTlZFdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909350),
('XelBFsht8HUsYrjjFyYZeA9OS8NYhtGTvwhuPUsD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVROd1RRZTBlcWRKdm5CRUFiMldKd3hkVGIyR3ZrVUJNNWE2Q3VrZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168238),
('XfHtFLXm4BZNhcSHQYxLKDqcnaiwgwa1fKb4Jo9R', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWlKQ2NkVVNMOGhjVnU4U0RYVG1hV1hkZWdHUXQwSjZIbXZucVVjNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756167184),
('XpfglfJefT63jEwLzFkqRLIHLoQD3zE5Uu1NpABF', NULL, '87.236.176.165', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkY0SUExSE1wRDlIVXBxWmZtR2twMmNRd2dGdURIVFI1VVZJNW43TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3Lm5leHRhbHlhLnNvZnRieS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756288824),
('XwM9j9EPFB4oE7cgP30hbbWrNdYHrL8piBgiVR0Y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlZwWktFQm1oWW9OcmY4SG1adlpZcXBDOWJkNTRrN0NZTm0ybm1aRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898933),
('xZVWRhuAgVETkm68KnryqaE8UvvKu1CEA2iF0J3z', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1ZXZmZBamY1TEJlRmFKNTRUZmFXT0RNQURLRTYwUmV5VTlJc1RvViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239630),
('Y2DRzXMVLPlpNOzIIzwqcr1ly2FV93NXImGSTq8J', NULL, '178.233.93.22', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2t4dGY3cWN1RnRFZ29mWFJIdDRnOUFxcFoyWVh6QVczeThaZGNPOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756249064),
('y5IkR8j7pdDhhCSYXfTXUR6UmOwF6JfiBWP0NEen', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmUxRTNCdlFPWWgzUlNXWWdhdjAxb0NMVDVITWhzWnZnN2NtRm1EdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239831),
('Y5kn74oZpcpuhsW9rXSMuWFetTHmquCIumC1wcbn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGpCd1V3WXprV0xRYlUxb29uYzRVVHcyZDRnQm1FNWpKM1hGOFFQWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163422),
('YFABlRANfXyzrGTxC2ripDpab1T3UEqf9lFCaA9m', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHNTUHJVMDBLS2JsaGR0UFZ1bWd6b1FUWUtuNWN3b3lORngwcnB5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166068),
('ygTwPUSdvlV4ha61XmCa7MwsI2HCkfhPkQKR5j9D', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1phbnRxaUZGeEJDVXlPMnRPU2pwUUxrZ2Yxam4yNDMwYVJFVGZ2ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907368),
('yh6inIwuGpistkUfGkFeEIgtvulIayvxYBzFGgKD', NULL, '192.64.113.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUlNaXY5VEpoSGRIMGxkUWt0cEFyR0xhcFM2U08wajA2RUl5bk51RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756369804),
('yIWB6vBOyqIdJFzHCJYxBntwRkdqtgw2X1p3P4IJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN01wYjN4TFZXd1NXajBwcVhiUE9Ub2dja3l0cXhwdEpmTHNaZmtCTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168745),
('YLNfAX99jv8XR9O2brVjV6AbdUCVnhkrG2KaiO5d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0NrMFp4aHV6UE5MRjNrMHdJMFNGTjdSeldNaGVtM2lmV1BVN21iOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755898985),
('YmBAIfO1KbrBNR9ebsQDbkGo22cwpZrnSoOYaoqP', NULL, '192.64.113.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOHhFM01CdlV2RjltY1dzb1lBVVhxSHNSdlpGYmxvc0FPZ2RLdExaMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756369803),
('yNBfUc1Wa4478MgQ0Y2qdKGkqA5gIM08yo2TWtUs', NULL, '66.249.81.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHRidndLQXVjTERoblNDRngyZVllR3ZuRHBlMlhGWmRKNkF3d3NySiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756313975),
('Yo0vxipMLMbTFqnDEYxNGN3x9doqchsbxK0UNzEP', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHFEeVR2VnBLa1pGbmFsT1FJU2VVTHJFWEYzM2JHT2U1MmF1cFp0ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166624),
('yRwYnEI9Z8o6FVLzVfctL92A4gVqWN41psCGsGLG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxWTTdxYkZ4eGp4b0p0YU9NN3lFTTFwRGN3TDJZNndCa2J5N3huaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756241087),
('ysZlU7gmIgEprTy4YallVM891cyNf8XU1UnRvKQZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlhIejVPcWpqTHNSWmQwMjk2U2NQcHhDZFBPWnQ4bDVFY3AxV3NGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755899098),
('Ywonhc2S6yiK7jUvYUppgeCQYLP0qbqc1zmnas25', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1FlR0I0Q1N2WmZYS3NQNEdvS0xhRGtuYUlXM2lpVkxBS2VNUnh6cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166090),
('YWxNoyvVO4fRQZ1vHpyr9yVoQBpBEkox2KB2hZKh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2lSYjhpMXFzd25GMTNqYWZQT29nTkpVMGp3VE1IVWc3NGJGYzNFVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169304),
('YYoVGQt0MHdBcthqcA7fvLM9Y08h1zC3kUP7rKFE', NULL, '66.249.81.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUZFY0E3OHNxWmdvWmZKbTgxQmhmcEI5RGc1THY2MllhcWlUUWJRdiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9uZXh0YWx5YS5zb2Z0YnkubmV0L2tlc2ZldCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwczovL25leHRhbHlhLnNvZnRieS5uZXQva2VzZmV0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756302997),
('Z5gAzAlzcZiQkJHliwC4o32RRY0VyP2ezskHjjbp', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjJuZ0hjVnI4WHE1S3NqRTY3cWVTbG1UMjg4aG5PRmo4eXZobE9PMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756239460),
('z6QWgUJ4vFLno3tN8I5ZzESdgwfZFxq2gePJ2jxA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib240UW1LbWtwY2RvT1FzQkx2c2d5MHBVMFV2bjllTHVyRkJyT3UzUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755909990),
('ZB7eNs54eL5zp3Pyt1PaBAtL434lV9JQfBxnqY1d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVRLbnVLMEp0R2lBaDZDVEZBYnhQV0UwMmZqVlA3VDdpb2RLRkJkciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907134),
('zCZW9Gomd4LRm84yyjJSFKQzY8pkdvXWHeCcQa75', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDY1c3RjcEwzYWlsYkR1SGY2cFJESzNXd25aQU5HVVVROWtnbmM0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756169028),
('zH9sqbiMZn1oPOsDu9YXxBU2xacQBKH1XNzg39UJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWFTRTFBOTdaR0R0TlI2Wk5xSTA1M1JhcGxYeE0xMk5NSHA0dWFmeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756163513),
('Zj34oNtPYUV0qkyosfvl7XPnGPxHitOrNubZg4Jl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFBhWWJYcnc4WWZuQ3FLR1F1OWpEMUwxVmpXdllZTUY0U2J5R1R0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907838),
('ZNm6bSSZle65SkDwLPhw2zVOvHtYlomlOrgWpwrv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3pSUmRWOXhPc2NnTHBiUzhJQzJoYVBad0JSYzJxWDZqR05FWlBPSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166653),
('zrq5voEGFSjYK2kICvScxDzhtJXTMUiBwf8KPxDE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkYxYjVCa0ZSOFBiT25HYThKMXRucGN5Q1E4VmM3UEk3cmZGNTF5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1755907975),
('Zumfb8phyc04xF2JolQac2vNzLnEHFSouWixVVtE', NULL, '31.143.152.158', 'WhatsApp/2.2528.4 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGZYSnJOeGVuc2taSGwxbzM3Q2R1a21ZTThVcEJNWDRBcU5nQ0tHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756918902),
('zXLOJedPAR5hUCxhCJTW8P1M4tKkWL4TADI4oIS4', NULL, '147.185.132.48', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHEyeW95NmJiT2RGcVZ2VUhWa3d6cE5IeUtYdVNXMGd5eGQ2WFcwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbmV4dGFseWEuc29mdGJ5Lm5ldCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756773465),
('Zyhl3qqaYr4U9rSPBQ2DVUWCa38Gu5AwN1Br3xwo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOURzaW5GSmpSQ0podWlSU3ZwUm1iWnBwUW9IRWtiakc2M0tDckhDViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756166204),
('ZZLRzw54xim9UAQbfx8UNn5wdpszCl6iTIWq7am9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUpMWTk4NHkzc3FoOGFYQnRkZEFSYVdMaDliU3ZTZFVhU2Fwb0lpdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756168260);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subcats`
--

CREATE TABLE `subcats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `topcats`
--

CREATE TABLE `topcats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `topcats`
--

INSERT INTO `topcats` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Erkek', 'erkek', '2025-08-22 22:53:42', '2025-08-22 22:53:42'),
(2, 'Kadın', 'kadin', '2025-08-22 22:53:42', '2025-08-22 22:53:42'),
(3, 'Elektronik', 'elektronik', '2025-08-22 22:53:42', '2025-08-22 22:53:42'),
(4, 'Ev & yaşam', 'ev-yasam', '2025-08-22 22:53:42', '2025-08-22 22:53:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatars/avatar.png',
  `role` enum('admin','user','business') NOT NULL DEFAULT 'user',
  `username` varchar(50) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `role`, `username`, `gender`, `bio`) VALUES
(2, 'abdullah balıkçı', 'admin@admin.com', NULL, '$2y$12$t1YcDJ6odsMKcx65jT1EjOXZEPb.854dvVJrolNhTrH0sw37WnO2i', NULL, '2025-08-22 22:52:18', '2025-08-22 22:52:18', 'avatars/avatar.png', 'business', 'admin', NULL, NULL),
(3, 'Barton Aguilar', 'barton@aguilar.com', NULL, '$2y$12$fYBxFmYxazx21ZA45NNa9.P1ZsfwZhnD2lnnA6dskpQSZ33P7v4/W', NULL, '2025-08-22 22:52:54', '2025-08-22 22:52:54', 'avatars/avatar.png', 'user', 'bartonaguilar', NULL, NULL),
(4, 'Charles Shea', 'charles@shea.com', NULL, '$2y$12$7qHDoewwmB2pUaBNLGKZ2ecGf.vo7Ut9iIWlD99/BkTrVCZTFPUE6', NULL, '2025-08-22 22:53:12', '2025-08-22 22:53:12', 'avatars/avatar.png', 'user', 'charlesshea', NULL, NULL),
(5, 'Ezra Gregory', 'ezra@gregory', NULL, '$2y$12$ZAqLBO6GevYZqMTi4qXih.oI2nCtt4bF6WBcG5Qe9XfIkgzeESG4u', NULL, '2025-08-22 22:53:28', '2025-08-22 22:53:28', 'avatars/avatar.png', 'user', 'ezragregory', NULL, NULL),
(6, '1283213kdfj82jflkaee8242', 'krmuckun@gmail.com', NULL, '$2y$12$UnnHQCFBGdVVX2EwwrGxauKRhxA.BZbI4CcANCyLMh8WPzGhIWpFG', NULL, '2025-08-26 21:21:48', '2025-08-27 17:07:44', 'avatars/rsU3Re9MhHusT6FgknXB3s1xfngxGssc5wDrEX7m.png', 'user', 'Kerem114*9=)/(\'+OIjfar)', 'male', NULL),
(7, 'Büşra Candemir', 'xbusra.cndrr@gmail.com', NULL, '$2y$12$TC5XtukqNgyrysiR93LEyO/70ITPayy3ZdzWzw7Tcm6eIY2NbaabW', NULL, '2025-08-26 22:26:51', '2025-08-27 17:10:59', 'avatars/dJSCLvthx9Dav7Iy42QVi5KIsIA2GTwBSFeN0Us2.jpg', 'user', 'xbusra.cndrr', 'female', NULL),
(8, 'Tuba', 'kaynarcatuba7@gmail.com', NULL, '$2y$12$lMzyP4brsRP89uXh/q8Nbe26dP5bbCA1bwvxw4HV7e9.yLM5yP1TK', NULL, '2025-08-26 22:35:04', '2025-08-26 22:35:04', 'avatars/avatar.png', 'user', 'Tuba', NULL, NULL),
(9, 'huseyin', 'huseyinbanna216@gmail.com', NULL, '$2y$12$EG9tCcE67S.zR14oASbKdO/lubktbX2cl0kvwGOTXCIXG5xzLRO3e', NULL, '2025-08-27 09:21:11', '2025-08-27 09:21:11', 'avatars/avatar.png', 'user', 'huseyinbanna', NULL, NULL),
(10, 'Tuğçe Kocagün', 'tugcekocagun@gmail.com', NULL, '$2y$12$1HqnEMl4G6ZTpJcMr7QFtegURmm/xooU1hgvMmerI0a5.XZPOA7PC', NULL, '2025-08-27 13:56:25', '2025-08-28 06:14:33', 'avatars/CzK29n5J0AEIumXYLUCHYdrwia3OKAmL91mm8bW5.jpg', 'user', 'tugcekocagun', 'female', 'teknolojiye ilgili bir kişi'),
(11, 'test', 'krmuckuan@gmail.com', NULL, '$2y$12$tySEh6O6FIZBqYlohsdSH.Pu6cdsISCJYcBHpqToo3QZopX0g9rde', NULL, '2025-08-27 17:11:36', '2025-08-27 17:11:36', 'avatars/avatar.png', 'user', 'test111', NULL, NULL),
(12, 'Gülay', 'kesengulay@gmail.com', NULL, '$2y$12$ENOgGb/MjUO6VKC9MzJ15eg/RO2rWhLD55hgIozu1xTJIPzKBOlWm', NULL, '2025-08-28 06:10:57', '2025-08-28 06:10:57', 'avatars/avatar.png', 'user', 'Gulay123', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `businessrequest`
--
ALTER TABLE `businessrequest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `businessrequest_company_email_unique` (`company_email`),
  ADD KEY `businessrequest_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `communities_slug_unique` (`slug`),
  ADD UNIQUE KEY `communities_community_token_unique` (`community_token`),
  ADD KEY `communities_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `communityproducts`
--
ALTER TABLE `communityproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communityproducts_product_id_foreign` (`product_id`),
  ADD KEY `communityproducts_community_id_foreign` (`community_id`),
  ADD KEY `communityproducts_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `customlogs`
--
ALTER TABLE `customlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customlogs_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `favories`
--
ALTER TABLE `favories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favories_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `favories_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follows_follower_id_following_id_unique` (`follower_id`,`following_id`),
  ADD KEY `follows_following_id_foreign` (`following_id`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `lowcats`
--
ALTER TABLE `lowcats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lowcats_title_unique` (`title`),
  ADD UNIQUE KEY `lowcats_slug_unique` (`slug`),
  ADD KEY `lowcats_sub_id_foreign` (`sub_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `polloptions`
--
ALTER TABLE `polloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polloptions_poll_id_foreign` (`poll_id`);

--
-- Tablo için indeksler `pollvotes`
--
ALTER TABLE `pollvotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pollvotes_user_id_poll_id_unique` (`user_id`,`poll_id`),
  ADD KEY `pollvotes_poll_id_foreign` (`poll_id`),
  ADD KEY `pollvotes_poll_option_id_foreign` (`poll_option_id`);

--
-- Tablo için indeksler `productfeatures`
--
ALTER TABLE `productfeatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productfeatures_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `productlikes`
--
ALTER TABLE `productlikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productlikes_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `productlikes_product_id_foreign` (`product_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_base_token_unique` (`base_token`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_topcat_id_foreign` (`topcat_id`),
  ADD KEY `products_subcat_id_foreign` (`subcat_id`),
  ADD KEY `products_lowcat_id_foreign` (`lowcat_id`);

--
-- Tablo için indeksler `productviews`
--
ALTER TABLE `productviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productviews_product_id_foreign` (`product_id`),
  ADD KEY `productviews_view_user_id_foreign` (`view_user_id`);

--
-- Tablo için indeksler `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reposts_product_id_foreign` (`product_id`),
  ADD KEY `reposts_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `subcats`
--
ALTER TABLE `subcats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcats_title_unique` (`title`),
  ADD UNIQUE KEY `subcats_slug_unique` (`slug`),
  ADD KEY `subcats_top_id_foreign` (`top_id`);

--
-- Tablo için indeksler `topcats`
--
ALTER TABLE `topcats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topcats_title_unique` (`title`),
  ADD UNIQUE KEY `topcats_slug_unique` (`slug`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `businessrequest`
--
ALTER TABLE `businessrequest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `communities`
--
ALTER TABLE `communities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `communityproducts`
--
ALTER TABLE `communityproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `customlogs`
--
ALTER TABLE `customlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `favories`
--
ALTER TABLE `favories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `follows`
--
ALTER TABLE `follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `lowcats`
--
ALTER TABLE `lowcats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `polloptions`
--
ALTER TABLE `polloptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `pollvotes`
--
ALTER TABLE `pollvotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `productfeatures`
--
ALTER TABLE `productfeatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `productlikes`
--
ALTER TABLE `productlikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `productviews`
--
ALTER TABLE `productviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reposts`
--
ALTER TABLE `reposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `subcats`
--
ALTER TABLE `subcats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `topcats`
--
ALTER TABLE `topcats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `businessrequest`
--
ALTER TABLE `businessrequest`
  ADD CONSTRAINT `businessrequest_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `communities`
--
ALTER TABLE `communities`
  ADD CONSTRAINT `communities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `communityproducts`
--
ALTER TABLE `communityproducts`
  ADD CONSTRAINT `communityproducts_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communityproducts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communityproducts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `customlogs`
--
ALTER TABLE `customlogs`
  ADD CONSTRAINT `customlogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `favories`
--
ALTER TABLE `favories`
  ADD CONSTRAINT `favories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `lowcats`
--
ALTER TABLE `lowcats`
  ADD CONSTRAINT `lowcats_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `subcats` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `polloptions`
--
ALTER TABLE `polloptions`
  ADD CONSTRAINT `polloptions_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `pollvotes`
--
ALTER TABLE `pollvotes`
  ADD CONSTRAINT `pollvotes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pollvotes_poll_option_id_foreign` FOREIGN KEY (`poll_option_id`) REFERENCES `polloptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pollvotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `productfeatures`
--
ALTER TABLE `productfeatures`
  ADD CONSTRAINT `productfeatures_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `productlikes`
--
ALTER TABLE `productlikes`
  ADD CONSTRAINT `productlikes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productlikes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_lowcat_id_foreign` FOREIGN KEY (`lowcat_id`) REFERENCES `lowcats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcat_id_foreign` FOREIGN KEY (`subcat_id`) REFERENCES `subcats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_topcat_id_foreign` FOREIGN KEY (`topcat_id`) REFERENCES `topcats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `productviews`
--
ALTER TABLE `productviews`
  ADD CONSTRAINT `productviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productviews_view_user_id_foreign` FOREIGN KEY (`view_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `reposts`
--
ALTER TABLE `reposts`
  ADD CONSTRAINT `reposts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reposts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `subcats`
--
ALTER TABLE `subcats`
  ADD CONSTRAINT `subcats_top_id_foreign` FOREIGN KEY (`top_id`) REFERENCES `topcats` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
