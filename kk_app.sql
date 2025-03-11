-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 11 2025 г., 02:40
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kk_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('evalyn93@example.org|127.0.0.1', 'i:1;', 1738467577),
('evalyn93@example.org|127.0.0.1:timer', 'i:1738467577;', 1738467577),
('jamir.kessler@example.net|127.0.0.1', 'i:1;', 1738467606),
('jamir.kessler@example.net|127.0.0.1:timer', 'i:1738467606;', 1738467606);

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `weight`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'Weight Category', 77, 8, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(2, 'Weight Category', 93, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(3, 'Weight Category', 60, 3, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(4, 'Weight Category', 77, 4, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(5, 'Weight Category', 70, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(6, 'Weight Category', 60, 7, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(7, 'Weight Category', 83, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(8, 'Weight Category', 93, 2, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(9, 'Weight Category', 60, 6, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(10, 'Weight Category', 77, 8, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(11, 'Weight Category', 70, 8, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(12, 'Weight Category', 70, 2, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(13, 'Weight Category', 83, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(14, 'Weight Category', 83, 6, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(15, 'Weight Category', 70, 8, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(16, 'Weight Category', 93, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(17, 'Weight Category', 60, 2, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(18, 'Weight Category', 60, 2, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(19, 'Weight Category', 70, 4, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(20, 'Weight Category', 83, 4, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(21, 'Weight Category', 83, 4, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(22, 'Weight Category', 93, 7, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(23, 'Weight Category', 83, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(24, 'Weight Category', 93, 7, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(25, 'Weight Category', 93, 4, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(26, 'Weight Category', 83, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(27, 'Weight Category', 93, 3, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(28, 'Weight Category', 93, 9, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(29, 'Weight Category', 93, 7, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(30, 'Weight Category', 70, 10, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(31, 'Weight Category', 70, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(32, 'Weight Category', 60, 7, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(33, 'Weight Category', 93, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(34, 'Weight Category', 83, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(35, 'Weight Category', 60, 10, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(36, 'Weight Category', 77, 3, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(37, 'Weight Category', 93, 9, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(38, 'Weight Category', 83, 3, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(39, 'Weight Category', 77, 5, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(40, 'Weight Category', 83, 1, '2025-02-01 23:29:30', '2025-02-01 23:29:30');

-- --------------------------------------------------------

--
-- Структура таблицы `category_tatami`
--

CREATE TABLE `category_tatami` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `tatami_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Maldives', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(2, 'Bouvet Island (Bouvetoya)', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(3, 'Finland', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(4, 'Mauritius', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(5, 'Kuwait', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(6, 'Romania', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(7, 'Iceland', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(8, 'Mayotte', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(9, 'Jersey', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(10, 'Bangladesh', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(11, 'Bulgaria', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(12, 'Latvia', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(13, 'Dominica', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(14, 'Bulgaria', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(15, 'Morocco', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(16, 'Australia', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(17, 'Guatemala', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(18, 'Saudi Arabia', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(19, 'South Georgia and the South Sandwich Islands', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(20, 'Saint Barthelemy', '2025-02-01 23:29:30', '2025-02-01 23:29:30');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('tournament','seminar','camp') NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `available` enum('international','teams-only') DEFAULT NULL,
  `registration_start` timestamp NULL DEFAULT NULL,
  `registration_end` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `websiteUrl` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `type`, `country_id`, `image`, `date`, `is_active`, `available`, `registration_start`, `registration_end`, `phone`, `email`, `websiteUrl`, `address`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Tournament', 'seminar', 9, '1737588894_pexels-eberhardgross-691668.jpg', '2011-09-25 20:00:00', 1, NULL, '2025-02-03 23:29:30', '2025-02-17 23:29:30', '(539) 706-6901', 'kiara.terry@armstrong.org', NULL, NULL, 'Voluptates iusto qui rerum excepturi facilis. Numquam qui provident et maiores necessitatibus et. Dicta molestias perspiciatis assumenda fuga sequi. Inventore est voluptatem iusto quia.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(2, 'Tournament', 'tournament', 8, '1737588894_pexels-eberhardgross-691668.jpg', '1989-07-02 20:00:00', 1, NULL, '2025-02-11 23:29:30', '2025-02-20 23:29:30', '+1-559-700-3890', 'owalter@macejkovic.net', NULL, NULL, 'Et nisi libero animi est necessitatibus dolorem neque. Sit sit quod quo provident itaque nisi. Et porro distinctio qui delectus explicabo veniam.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(3, 'Tournament', 'tournament', 15, '1737588894_pexels-eberhardgross-691668.jpg', '1971-11-07 20:00:00', 1, NULL, '2025-02-08 23:29:30', '2025-02-17 23:29:30', '+1-930-753-9586', 'kylee.dietrich@parisian.com', NULL, NULL, 'Et eos eligendi minima et maxime. Nisi quisquam ab sequi est dolore. Adipisci doloremque temporibus ab autem. Vel commodi dolor nisi eligendi recusandae corrupti.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(4, 'Tournament', 'seminar', 9, '1737588894_pexels-eberhardgross-691668.jpg', '2024-05-19 20:00:00', 1, NULL, '2025-02-06 23:29:30', '2025-02-20 23:29:30', '(717) 228-7527', 'kurtis92@hettinger.com', NULL, NULL, 'Eligendi molestias occaecati facere qui omnis. Exercitationem id id suscipit. Quasi expedita consectetur modi aliquam quia.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(5, 'Tournament', 'camp', 17, '1737588894_pexels-eberhardgross-691668.jpg', '1980-01-15 20:00:00', 1, NULL, '2025-02-10 23:29:30', '2025-02-20 23:29:30', '1-469-902-8562', 'kutch.flossie@hotmail.com', NULL, NULL, 'Fugiat maxime vitae qui illo in. Enim fuga non vero quis. Dolorum quia ratione ut consequatur quia. Rerum impedit saepe vero magnam.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(6, 'Tournament', 'camp', 18, '1737588894_pexels-eberhardgross-691668.jpg', '1975-10-08 20:00:00', 1, NULL, '2025-02-02 23:29:30', '2025-02-13 23:29:30', '+1 (703) 659-8183', 'serena.abernathy@yahoo.com', NULL, NULL, 'Itaque ad hic soluta sed. Sit est est autem consectetur ipsa pariatur. Non recusandae est quis cupiditate repudiandae recusandae. Quisquam molestiae quia atque quasi earum in eligendi non.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(7, 'Tournament', 'camp', 1, '1737588894_pexels-eberhardgross-691668.jpg', '2014-09-05 20:00:00', 1, NULL, '2025-02-04 23:29:30', '2025-02-21 23:29:30', '213-601-3103', 'jorge59@gmail.com', NULL, NULL, 'Quos sed tempora ea voluptas suscipit est velit. Dolores enim dolores nihil rerum repellat doloremque veniam. Eveniet reprehenderit sunt aut consectetur cupiditate omnis.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(8, 'Tournament', 'tournament', 9, '1737588894_pexels-eberhardgross-691668.jpg', '2025-01-30 20:00:00', 1, NULL, '2025-02-03 23:29:30', '2025-02-14 23:29:30', '1-540-291-3081', 'elva.hirthe@gmail.com', NULL, NULL, 'Ullam vel qui quia ipsam ut dolores dignissimos. Voluptas facilis quae inventore libero deleniti at. Iste est rerum animi consequatur sint.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(9, 'Tournament', 'tournament', 9, '1737588894_pexels-eberhardgross-691668.jpg', '1990-08-02 20:00:00', 1, NULL, '2025-02-04 23:29:30', '2025-02-17 23:29:30', '+1 (985) 404-1600', 'wgottlieb@sawayn.com', NULL, NULL, 'Dolor cumque at qui enim itaque. Sed minima quo deleniti et fuga voluptatem eveniet. Qui nemo enim dicta iure. Ipsum saepe voluptatem nihil porro cumque et. Sint fugiat occaecati repellat dolorum.', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(10, 'Tournament', 'seminar', 13, '1737588894_pexels-eberhardgross-691668.jpg', '1994-05-11 20:00:00', 1, NULL, '2025-02-07 23:29:30', '2025-02-14 23:29:30', '+1-680-846-3616', 'preilly@hotmail.com', NULL, NULL, 'Ut suscipit quo quidem dolorem deleniti. Suscipit quis hic ipsa. Exercitationem aliquam assumenda aut accusamus voluptates commodi. Adipisci accusamus minus suscipit ratione rerum.', '2025-02-01 23:29:30', '2025-02-01 23:29:30');

-- --------------------------------------------------------

--
-- Структура таблицы `event_team`
--

CREATE TABLE `event_team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'participates',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `event_team`
--

INSERT INTO `event_team` (`id`, `event_id`, `team_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'participates', NULL, NULL),
(2, 1, 11, 'participates', NULL, NULL),
(3, 1, 12, 'participates', NULL, NULL),
(4, 1, 19, 'participates', NULL, NULL),
(5, 1, 20, 'participates', NULL, NULL),
(6, 1, 26, 'participates', NULL, NULL),
(7, 1, 27, 'participates', NULL, NULL),
(8, 1, 28, 'participates', NULL, NULL),
(9, 1, 36, 'participates', NULL, NULL),
(10, 1, 40, 'participates', NULL, NULL),
(11, 2, 4, 'participates', NULL, NULL),
(12, 2, 6, 'participates', NULL, NULL),
(13, 2, 11, 'participates', NULL, NULL),
(14, 2, 12, 'participates', NULL, NULL),
(15, 2, 15, 'participates', NULL, NULL),
(16, 2, 18, 'participates', NULL, NULL),
(17, 2, 23, 'participates', NULL, NULL),
(18, 2, 29, 'participates', NULL, NULL),
(19, 2, 33, 'participates', NULL, NULL),
(20, 2, 36, 'participates', NULL, NULL),
(21, 3, 1, 'participates', NULL, NULL),
(22, 3, 2, 'participates', NULL, NULL),
(23, 3, 3, 'participates', NULL, NULL),
(24, 3, 10, 'participates', NULL, NULL),
(25, 3, 12, 'participates', NULL, NULL),
(26, 3, 15, 'participates', NULL, NULL),
(27, 3, 17, 'participates', NULL, NULL),
(28, 3, 30, 'participates', NULL, NULL),
(29, 3, 31, 'participates', NULL, NULL),
(30, 3, 34, 'participates', NULL, NULL),
(31, 4, 6, 'participates', NULL, NULL),
(32, 4, 8, 'participates', NULL, NULL),
(33, 4, 12, 'participates', NULL, NULL),
(34, 4, 20, 'participates', NULL, NULL),
(35, 4, 23, 'participates', NULL, NULL),
(36, 4, 26, 'participates', NULL, NULL),
(37, 4, 27, 'participates', NULL, NULL),
(38, 4, 29, 'participates', NULL, NULL),
(39, 4, 30, 'participates', NULL, NULL),
(40, 4, 31, 'participates', NULL, NULL),
(41, 5, 1, 'participates', NULL, NULL),
(42, 5, 6, 'participates', NULL, NULL),
(43, 5, 7, 'participates', NULL, NULL),
(44, 5, 15, 'participates', NULL, NULL),
(45, 5, 18, 'participates', NULL, NULL),
(46, 5, 22, 'participates', NULL, NULL),
(47, 5, 24, 'participates', NULL, NULL),
(48, 5, 30, 'participates', NULL, NULL),
(49, 5, 33, 'participates', NULL, NULL),
(50, 5, 39, 'participates', NULL, NULL),
(51, 6, 2, 'participates', NULL, NULL),
(52, 6, 3, 'participates', NULL, NULL),
(53, 6, 4, 'participates', NULL, NULL),
(54, 6, 5, 'participates', NULL, NULL),
(55, 6, 9, 'participates', NULL, NULL),
(56, 6, 12, 'participates', NULL, NULL),
(57, 6, 14, 'participates', NULL, NULL),
(58, 6, 16, 'participates', NULL, NULL),
(59, 6, 36, 'participates', NULL, NULL),
(60, 6, 40, 'participates', NULL, NULL),
(61, 7, 2, 'participates', NULL, NULL),
(62, 7, 5, 'participates', NULL, NULL),
(63, 7, 9, 'participates', NULL, NULL),
(64, 7, 16, 'participates', NULL, NULL),
(65, 7, 24, 'participates', NULL, NULL),
(66, 7, 27, 'participates', NULL, NULL),
(67, 7, 28, 'participates', NULL, NULL),
(68, 7, 38, 'participates', NULL, NULL),
(69, 7, 39, 'participates', NULL, NULL),
(70, 7, 40, 'participates', NULL, NULL),
(71, 8, 2, 'participates', NULL, NULL),
(72, 8, 8, 'participates', NULL, NULL),
(73, 8, 10, 'participates', NULL, NULL),
(74, 8, 13, 'participates', NULL, NULL),
(75, 8, 16, 'participates', NULL, NULL),
(76, 8, 18, 'participates', NULL, NULL),
(77, 8, 21, 'participates', NULL, NULL),
(78, 8, 28, 'participates', NULL, NULL),
(79, 8, 32, 'participates', NULL, NULL),
(80, 8, 33, 'participates', NULL, NULL),
(81, 9, 1, 'participates', NULL, NULL),
(82, 9, 8, 'participates', NULL, NULL),
(83, 9, 9, 'participates', NULL, NULL),
(84, 9, 17, 'participates', NULL, NULL),
(85, 9, 21, 'participates', NULL, NULL),
(86, 9, 27, 'participates', NULL, NULL),
(87, 9, 31, 'participates', NULL, NULL),
(88, 9, 34, 'participates', NULL, NULL),
(89, 9, 37, 'participates', NULL, NULL),
(90, 9, 40, 'participates', NULL, NULL),
(91, 10, 1, 'participates', NULL, NULL),
(92, 10, 4, 'participates', NULL, NULL),
(93, 10, 10, 'participates', NULL, NULL),
(94, 10, 13, 'participates', NULL, NULL),
(95, 10, 16, 'participates', NULL, NULL),
(96, 10, 17, 'participates', NULL, NULL),
(97, 10, 19, 'participates', NULL, NULL),
(98, 10, 22, 'participates', NULL, NULL),
(99, 10, 27, 'participates', NULL, NULL),
(100, 10, 33, 'participates', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `fighters`
--

CREATE TABLE `fighters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `height` tinyint(3) UNSIGNED DEFAULT NULL,
  `titles` text DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `coach` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fighters`
--

INSERT INTO `fighters` (`id`, `first_name`, `middle_name`, `last_name`, `imageUrl`, `birth_date`, `gender`, `country_id`, `address`, `region`, `city`, `category_id`, `weight`, `height`, `titles`, `grade`, `team_id`, `coach`, `school`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'John', NULL, 'Tromp', NULL, '2023-05-31', 'f', 17, NULL, NULL, NULL, 1, 43, NULL, NULL, '1DAN', 20, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(2, 'Lavern', NULL, 'Lubowitz', NULL, '2000-08-08', 'm', 1, NULL, NULL, NULL, 1, 46, NULL, NULL, '2DAN', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(3, 'Leola', NULL, 'Swaniawski', NULL, '1979-10-09', 'f', 3, NULL, NULL, NULL, 2, 89, NULL, NULL, '4DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(4, 'Kaci', NULL, 'Morissette', NULL, '1999-09-27', 'f', 2, NULL, NULL, NULL, 1, 66, NULL, NULL, '4DAN', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(5, 'Jannie', NULL, 'Denesik', NULL, '1977-03-23', 'm', 9, NULL, NULL, NULL, 1, 73, NULL, NULL, '7KYU', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(6, 'Geoffrey', NULL, 'Lynch', NULL, '1979-10-01', 'f', 16, NULL, NULL, NULL, 2, 88, NULL, NULL, '8KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(7, 'Georgiana', NULL, 'Balistreri', NULL, '1999-05-13', 'f', 17, NULL, NULL, NULL, 1, 66, NULL, NULL, '0KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(8, 'Cassandre', NULL, 'Bogan', NULL, '2020-08-21', 'm', 7, NULL, NULL, NULL, 1, 73, NULL, NULL, '2KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(9, 'Elsie', NULL, 'Upton', NULL, '1998-05-25', 'f', 1, NULL, NULL, NULL, 1, 51, NULL, NULL, '1DAN', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(10, 'Deja', NULL, 'Schultz', NULL, '2003-03-06', 'm', 11, NULL, NULL, NULL, 1, 63, NULL, NULL, '1DAN', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(11, 'Ali', NULL, 'Morissette', NULL, '2009-04-02', 'f', 2, NULL, NULL, NULL, 2, 80, NULL, NULL, '5DAN', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(12, 'Avis', NULL, 'Rodriguez', NULL, '2009-12-10', 'm', 10, NULL, NULL, NULL, 2, 78, NULL, NULL, '4KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(13, 'Isidro', NULL, 'Hahn', NULL, '2000-05-30', 'f', 5, NULL, NULL, NULL, 1, 72, NULL, NULL, '1KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(14, 'Karen', NULL, 'Homenick', NULL, '2008-11-05', 'f', 10, NULL, NULL, NULL, 1, 53, NULL, NULL, '1DAN', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(15, 'Jerry', NULL, 'Bernier', NULL, '2012-02-10', 'm', 4, NULL, NULL, NULL, 1, 69, NULL, NULL, '2KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(16, 'Summer', NULL, 'Bednar', NULL, '1979-02-03', 'm', 14, NULL, NULL, NULL, 1, 76, NULL, NULL, '10KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(17, 'Zack', NULL, 'Cormier', NULL, '1982-07-07', 'f', 16, NULL, NULL, NULL, 1, 71, NULL, NULL, '1KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(18, 'Sarai', NULL, 'Braun', NULL, '1971-04-16', 'f', 16, NULL, NULL, NULL, 1, 52, NULL, NULL, '6KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(19, 'Eleazar', NULL, 'Thiel', NULL, '1999-11-08', 'f', 14, NULL, NULL, NULL, 2, 80, NULL, NULL, '4DAN', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(20, 'Tod', NULL, 'McClure', NULL, '2007-04-02', 'f', 11, NULL, NULL, NULL, 1, 73, NULL, NULL, '2DAN', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(21, 'Pablo', NULL, 'Runolfsson', NULL, '2024-01-08', 'm', 7, NULL, NULL, NULL, 1, 42, NULL, NULL, '4KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(22, 'Caesar', NULL, 'Schmitt', NULL, '2020-11-07', 'm', 5, NULL, NULL, NULL, 2, 85, NULL, NULL, '3DAN', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(23, 'Charlie', NULL, 'Marquardt', NULL, '2024-05-17', 'm', 12, NULL, NULL, NULL, 2, 81, NULL, NULL, '0KYU', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(24, 'Augustus', NULL, 'Hoppe', NULL, '1971-02-28', 'f', 1, NULL, NULL, NULL, 2, 78, NULL, NULL, '4DAN', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(25, 'Jessie', NULL, 'Wisoky', NULL, '2012-03-22', 'm', 10, NULL, NULL, NULL, 2, 88, NULL, NULL, '2KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(26, 'Michale', NULL, 'Donnelly', NULL, '2008-03-15', 'f', 5, NULL, NULL, NULL, 2, 84, NULL, NULL, '2DAN', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(27, 'Angelina', NULL, 'Barton', NULL, '2005-12-03', 'f', 6, NULL, NULL, NULL, 1, 71, NULL, NULL, '7KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(28, 'Drake', NULL, 'O\'Kon', NULL, '1983-01-24', 'm', 5, NULL, NULL, NULL, 1, 41, NULL, NULL, '2KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(29, 'Evie', NULL, 'Grady', NULL, '2017-11-22', 'm', 11, NULL, NULL, NULL, 1, 47, NULL, NULL, '5DAN', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(30, 'Cecelia', NULL, 'Wolf', NULL, '2021-05-28', 'f', 2, NULL, NULL, NULL, 1, 71, NULL, NULL, '1DAN', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(31, 'Wilber', NULL, 'Bailey', NULL, '1988-03-22', 'm', 20, NULL, NULL, NULL, 1, 63, NULL, NULL, '8KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(32, 'Dee', NULL, 'Jacobs', NULL, '2008-03-22', 'f', 13, NULL, NULL, NULL, 2, 89, NULL, NULL, '5KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(33, 'Zoila', NULL, 'Kassulke', NULL, '2015-01-31', 'f', 14, NULL, NULL, NULL, 1, 55, NULL, NULL, '5DAN', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(34, 'Herminia', NULL, 'Muller', NULL, '1972-07-28', 'm', 13, NULL, NULL, NULL, 1, 50, NULL, NULL, '5DAN', 6, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(35, 'Candice', NULL, 'Bergnaum', NULL, '1993-02-25', 'f', 7, NULL, NULL, NULL, 2, 88, NULL, NULL, '3DAN', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(36, 'Teagan', NULL, 'Powlowski', NULL, '1996-10-28', 'f', 15, NULL, NULL, NULL, 1, 55, NULL, NULL, '1KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(37, 'Jerome', NULL, 'Goodwin', NULL, '1976-03-27', 'm', 20, NULL, NULL, NULL, 1, 60, NULL, NULL, '0KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(38, 'Keegan', NULL, 'Adams', NULL, '1998-12-11', 'm', 7, NULL, NULL, NULL, 2, 83, NULL, NULL, '1KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(39, 'Darien', NULL, 'Greenfelder', NULL, '1999-08-19', 'm', 18, NULL, NULL, NULL, 1, 43, NULL, NULL, '0KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(40, 'Cierra', NULL, 'Buckridge', NULL, '1986-01-23', 'f', 1, NULL, NULL, NULL, 1, 46, NULL, NULL, '3KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(41, 'Tavares', NULL, 'Durgan', NULL, '1986-08-13', 'f', 8, NULL, NULL, NULL, 2, 84, NULL, NULL, '6KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(42, 'Aleen', NULL, 'Lesch', NULL, '1978-06-29', 'f', 2, NULL, NULL, NULL, 2, 87, NULL, NULL, '4KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(43, 'Maurice', NULL, 'Runolfsson', NULL, '2010-05-13', 'f', 13, NULL, NULL, NULL, 1, 40, NULL, NULL, '9KYU', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(44, 'Jennings', NULL, 'Reichel', NULL, '2004-10-09', 'f', 1, NULL, NULL, NULL, 1, 46, NULL, NULL, '7KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(45, 'Cory', NULL, 'Bednar', NULL, '1988-01-11', 'f', 11, NULL, NULL, NULL, 1, 45, NULL, NULL, '6KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(46, 'Aurelia', NULL, 'Streich', NULL, '2004-01-01', 'm', 1, NULL, NULL, NULL, 1, 41, NULL, NULL, '5DAN', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(47, 'Kirstin', NULL, 'Boyer', NULL, '1999-06-08', 'm', 16, NULL, NULL, NULL, 1, 46, NULL, NULL, '4DAN', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(48, 'Brooke', NULL, 'Sporer', NULL, '2022-08-24', 'f', 2, NULL, NULL, NULL, 1, 48, NULL, NULL, '5KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(49, 'Merl', NULL, 'Hartmann', NULL, '1983-10-21', 'f', 18, NULL, NULL, NULL, 1, 66, NULL, NULL, '8KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(50, 'Esteban', NULL, 'Wyman', NULL, '2003-04-20', 'm', 2, NULL, NULL, NULL, 2, 86, NULL, NULL, '7KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(51, 'Teresa', NULL, 'Nikolaus', NULL, '1999-10-08', 'f', 3, NULL, NULL, NULL, 1, 71, NULL, NULL, '9KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(52, 'Carroll', NULL, 'Stamm', NULL, '1990-05-13', 'f', 15, NULL, NULL, NULL, 1, 45, NULL, NULL, '2KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(53, 'Ferne', NULL, 'Bergnaum', NULL, '1997-09-14', 'm', 11, NULL, NULL, NULL, 1, 54, NULL, NULL, '2DAN', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(54, 'Mikel', NULL, 'Okuneva', NULL, '1985-05-11', 'm', 3, NULL, NULL, NULL, 1, 51, NULL, NULL, '4KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(55, 'Oral', NULL, 'West', NULL, '1975-06-21', 'f', 3, NULL, NULL, NULL, 1, 69, NULL, NULL, '1KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(56, 'Antonio', NULL, 'Bednar', NULL, '2018-04-18', 'f', 7, NULL, NULL, NULL, 1, 49, NULL, NULL, '8KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(57, 'Reva', NULL, 'Walsh', NULL, '2013-01-09', 'm', 17, NULL, NULL, NULL, 2, 81, NULL, NULL, '4KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(58, 'Freida', NULL, 'Breitenberg', NULL, '1995-03-21', 'm', 11, NULL, NULL, NULL, 1, 48, NULL, NULL, '7KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(59, 'Tiara', NULL, 'Reilly', NULL, '1981-12-16', 'm', 5, NULL, NULL, NULL, 1, 69, NULL, NULL, '6KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(60, 'Dayton', NULL, 'Jast', NULL, '2013-08-29', 'f', 11, NULL, NULL, NULL, 1, 73, NULL, NULL, '4DAN', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(61, 'Rebecca', NULL, 'Kutch', NULL, '1994-11-21', 'f', 13, NULL, NULL, NULL, 1, 56, NULL, NULL, '10KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(62, 'Randi', NULL, 'Frami', NULL, '1988-03-28', 'f', 10, NULL, NULL, NULL, 1, 57, NULL, NULL, '10KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(63, 'Lenny', NULL, 'Tremblay', NULL, '1989-10-03', 'f', 11, NULL, NULL, NULL, 2, 85, NULL, NULL, '3DAN', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(64, 'Aniya', NULL, 'Ortiz', NULL, '1988-01-14', 'f', 8, NULL, NULL, NULL, 1, 60, NULL, NULL, '1KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(65, 'Edwin', NULL, 'Schmeler', NULL, '1981-01-31', 'm', 3, NULL, NULL, NULL, 2, 84, NULL, NULL, '1DAN', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(66, 'Lowell', NULL, 'Hansen', NULL, '2010-12-15', 'm', 2, NULL, NULL, NULL, 2, 86, NULL, NULL, '0KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(67, 'Wilson', NULL, 'Schultz', NULL, '1980-01-19', 'm', 13, NULL, NULL, NULL, 1, 57, NULL, NULL, '6KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(68, 'Waldo', NULL, 'Casper', NULL, '2005-06-02', 'f', 8, NULL, NULL, NULL, 1, 44, NULL, NULL, '0KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(69, 'Ronaldo', NULL, 'Jones', NULL, '1971-07-24', 'f', 16, NULL, NULL, NULL, 1, 45, NULL, NULL, '4DAN', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(70, 'Greyson', NULL, 'Jerde', NULL, '1985-07-23', 'm', 16, NULL, NULL, NULL, 1, 41, NULL, NULL, '2DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(71, 'Korey', NULL, 'Kihn', NULL, '1999-04-11', 'f', 14, NULL, NULL, NULL, 1, 53, NULL, NULL, '1KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(72, 'Jan', NULL, 'Kihn', NULL, '1995-10-22', 'm', 17, NULL, NULL, NULL, 1, 50, NULL, NULL, '2DAN', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(73, 'Darwin', NULL, 'Jacobi', NULL, '1996-11-01', 'm', 13, NULL, NULL, NULL, 1, 50, NULL, NULL, '6KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(74, 'Arjun', NULL, 'Berge', NULL, '2022-03-16', 'f', 15, NULL, NULL, NULL, 2, 84, NULL, NULL, '3DAN', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(75, 'Dewitt', NULL, 'Crona', NULL, '2010-01-08', 'f', 3, NULL, NULL, NULL, 2, 80, NULL, NULL, '8KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(76, 'Kaya', NULL, 'Pollich', NULL, '2003-06-29', 'f', 19, NULL, NULL, NULL, 1, 56, NULL, NULL, '5DAN', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(77, 'Bill', NULL, 'Kuphal', NULL, '1973-01-06', 'm', 10, NULL, NULL, NULL, 1, 40, NULL, NULL, '4DAN', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(78, 'Adele', NULL, 'Legros', NULL, '1972-11-01', 'm', 10, NULL, NULL, NULL, 1, 50, NULL, NULL, '2DAN', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(79, 'Henriette', NULL, 'Sanford', NULL, '2006-02-14', 'f', 9, NULL, NULL, NULL, 1, 75, NULL, NULL, '1KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(80, 'Kaia', NULL, 'Jacobi', NULL, '2020-03-31', 'f', 19, NULL, NULL, NULL, 1, 72, NULL, NULL, '2KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(81, 'Tomas', NULL, 'Lockman', NULL, '2010-03-26', 'm', 12, NULL, NULL, NULL, 2, 89, NULL, NULL, '2DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(82, 'Daniella', NULL, 'Von', NULL, '1987-07-27', 'f', 1, NULL, NULL, NULL, 1, 52, NULL, NULL, '4KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(83, 'Jack', NULL, 'Buckridge', NULL, '1978-04-20', 'm', 1, NULL, NULL, NULL, 2, 85, NULL, NULL, '3DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(84, 'Davin', NULL, 'Hill', NULL, '1984-09-30', 'f', 16, NULL, NULL, NULL, 2, 87, NULL, NULL, '1KYU', 20, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(85, 'Americo', NULL, 'Lakin', NULL, '2002-06-20', 'f', 19, NULL, NULL, NULL, 2, 78, NULL, NULL, '6KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(86, 'Brandt', NULL, 'Heidenreich', NULL, '1979-08-08', 'f', 10, NULL, NULL, NULL, 1, 69, NULL, NULL, '10KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(87, 'Ricky', NULL, 'Kunde', NULL, '2012-01-21', 'f', 20, NULL, NULL, NULL, 1, 41, NULL, NULL, '3KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(88, 'Eldred', NULL, 'Durgan', NULL, '1979-01-29', 'm', 1, NULL, NULL, NULL, 1, 58, NULL, NULL, '1DAN', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(89, 'Jovanny', NULL, 'Ullrich', NULL, '1979-04-09', 'f', 17, NULL, NULL, NULL, 1, 54, NULL, NULL, '3DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(90, 'Peyton', NULL, 'Haag', NULL, '1980-05-18', 'f', 9, NULL, NULL, NULL, 1, 47, NULL, NULL, '10KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(91, 'Garrick', NULL, 'Jacobi', NULL, '2001-04-25', 'm', 16, NULL, NULL, NULL, 2, 81, NULL, NULL, '7KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(92, 'Ronny', NULL, 'Satterfield', NULL, '2007-02-19', 'm', 2, NULL, NULL, NULL, 1, 56, NULL, NULL, '8KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(93, 'Emma', NULL, 'Greenfelder', NULL, '1989-03-05', 'm', 10, NULL, NULL, NULL, 1, 49, NULL, NULL, '3KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(94, 'Brendon', NULL, 'Treutel', NULL, '2024-04-17', 'f', 1, NULL, NULL, NULL, 1, 45, NULL, NULL, '9KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(95, 'Paxton', NULL, 'Cremin', NULL, '1995-01-23', 'm', 10, NULL, NULL, NULL, 1, 76, NULL, NULL, '1DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(96, 'Rigoberto', NULL, 'Legros', NULL, '2010-04-11', 'm', 12, NULL, NULL, NULL, 1, 43, NULL, NULL, '2DAN', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(97, 'Zena', NULL, 'Stark', NULL, '1996-02-28', 'm', 18, NULL, NULL, NULL, 2, 83, NULL, NULL, '5DAN', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(98, 'Oleta', NULL, 'Dickinson', NULL, '1995-03-28', 'm', 15, NULL, NULL, NULL, 2, 79, NULL, NULL, '10KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(99, 'Laura', NULL, 'Moen', NULL, '1989-02-03', 'm', 11, NULL, NULL, NULL, 2, 80, NULL, NULL, '4KYU', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(100, 'Kelton', NULL, 'Gleason', NULL, '1978-01-01', 'm', 13, NULL, NULL, NULL, 1, 40, NULL, NULL, '1DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(101, 'Julie', NULL, 'Volkman', NULL, '2018-03-25', 'f', 18, NULL, NULL, NULL, 1, 75, NULL, NULL, '7KYU', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(102, 'Jaylen', NULL, 'Crooks', NULL, '2019-07-11', 'm', 1, NULL, NULL, NULL, 1, 53, NULL, NULL, '6KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(103, 'Lucas', NULL, 'Franecki', NULL, '1970-03-18', 'f', 20, NULL, NULL, NULL, 2, 89, NULL, NULL, '1DAN', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(104, 'Savannah', NULL, 'Botsford', NULL, '2003-07-24', 'm', 12, NULL, NULL, NULL, 1, 49, NULL, NULL, '5DAN', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(105, 'Naomi', NULL, 'Cummings', NULL, '1972-10-12', 'm', 4, NULL, NULL, NULL, 1, 62, NULL, NULL, '8KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(106, 'Gust', NULL, 'Weber', NULL, '1975-11-18', 'm', 3, NULL, NULL, NULL, 1, 63, NULL, NULL, '5KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(107, 'Darien', NULL, 'O\'Reilly', NULL, '1997-08-17', 'f', 17, NULL, NULL, NULL, 1, 60, NULL, NULL, '8KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(108, 'Kyleigh', NULL, 'Casper', NULL, '2012-04-12', 'm', 1, NULL, NULL, NULL, 1, 77, NULL, NULL, '0KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(109, 'Celine', NULL, 'Barton', NULL, '1972-11-20', 'm', 19, NULL, NULL, NULL, 2, 82, NULL, NULL, '9KYU', 34, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(110, 'Beth', NULL, 'Hamill', NULL, '2018-05-23', 'm', 3, NULL, NULL, NULL, 1, 56, NULL, NULL, '0KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(111, 'Lavon', NULL, 'Cole', NULL, '2006-10-28', 'm', 3, NULL, NULL, NULL, 1, 72, NULL, NULL, '3KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(112, 'Kaitlin', NULL, 'Monahan', NULL, '1979-04-05', 'm', 6, NULL, NULL, NULL, 2, 78, NULL, NULL, '1DAN', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(113, 'Joy', NULL, 'Deckow', NULL, '1998-04-07', 'm', 2, NULL, NULL, NULL, 1, 71, NULL, NULL, '3KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(114, 'Corine', NULL, 'Schuster', NULL, '2020-01-19', 'm', 3, NULL, NULL, NULL, 1, 47, NULL, NULL, '9KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(115, 'Aliya', NULL, 'Schaden', NULL, '2016-10-21', 'f', 19, NULL, NULL, NULL, 1, 63, NULL, NULL, '1KYU', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(116, 'Melissa', NULL, 'Cassin', NULL, '2021-07-23', 'f', 2, NULL, NULL, NULL, 1, 41, NULL, NULL, '10KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(117, 'Stan', NULL, 'Rowe', NULL, '1975-06-18', 'f', 13, NULL, NULL, NULL, 1, 75, NULL, NULL, '6KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(118, 'Gardner', NULL, 'Wiza', NULL, '1984-04-30', 'm', 19, NULL, NULL, NULL, 1, 50, NULL, NULL, '2KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(119, 'Emiliano', NULL, 'Schoen', NULL, '2020-12-06', 'm', 12, NULL, NULL, NULL, 2, 84, NULL, NULL, '1KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(120, 'Karine', NULL, 'Emard', NULL, '1993-09-12', 'm', 16, NULL, NULL, NULL, 2, 82, NULL, NULL, '2DAN', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(121, 'Reba', NULL, 'Gottlieb', NULL, '1977-02-20', 'f', 20, NULL, NULL, NULL, 2, 85, NULL, NULL, '8KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(122, 'Keeley', NULL, 'Wolff', NULL, '1988-12-26', 'f', 9, NULL, NULL, NULL, 1, 50, NULL, NULL, '2DAN', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(123, 'Russell', NULL, 'Abernathy', NULL, '1980-05-02', 'f', 4, NULL, NULL, NULL, 1, 74, NULL, NULL, '3DAN', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(124, 'Viviane', NULL, 'Streich', NULL, '1984-08-14', 'f', 15, NULL, NULL, NULL, 1, 51, NULL, NULL, '10KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(125, 'Celia', NULL, 'Shields', NULL, '2003-10-07', 'f', 12, NULL, NULL, NULL, 1, 45, NULL, NULL, '1DAN', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(126, 'Kenya', NULL, 'Goodwin', NULL, '1998-05-28', 'f', 9, NULL, NULL, NULL, 1, 41, NULL, NULL, '4DAN', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(127, 'Delphia', NULL, 'Schroeder', NULL, '1987-12-02', 'm', 3, NULL, NULL, NULL, 1, 44, NULL, NULL, '3KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(128, 'Rolando', NULL, 'Marvin', NULL, '1993-01-20', 'f', 4, NULL, NULL, NULL, 2, 90, NULL, NULL, '9KYU', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(129, 'Wilber', NULL, 'Dickens', NULL, '1980-01-16', 'f', 7, NULL, NULL, NULL, 1, 65, NULL, NULL, '1KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(130, 'Josefina', NULL, 'Hyatt', NULL, '2009-12-15', 'm', 8, NULL, NULL, NULL, 2, 89, NULL, NULL, '8KYU', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(131, 'Angus', NULL, 'Sipes', NULL, '2020-07-16', 'm', 12, NULL, NULL, NULL, 1, 56, NULL, NULL, '1DAN', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(132, 'Carole', NULL, 'Funk', NULL, '2011-03-01', 'm', 7, NULL, NULL, NULL, 1, 62, NULL, NULL, '4KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(133, 'Libby', NULL, 'Reichel', NULL, '1980-12-18', 'm', 18, NULL, NULL, NULL, 1, 44, NULL, NULL, '9KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(134, 'Mathias', NULL, 'Wehner', NULL, '2016-08-17', 'm', 14, NULL, NULL, NULL, 1, 53, NULL, NULL, '9KYU', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(135, 'Felix', NULL, 'Weissnat', NULL, '1983-12-25', 'm', 15, NULL, NULL, NULL, 1, 68, NULL, NULL, '5KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(136, 'June', NULL, 'Lind', NULL, '1980-11-28', 'f', 5, NULL, NULL, NULL, 1, 65, NULL, NULL, '3DAN', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(137, 'Dulce', NULL, 'Grimes', NULL, '2008-04-11', 'f', 2, NULL, NULL, NULL, 2, 85, NULL, NULL, '4KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(138, 'Daphnee', NULL, 'Hane', NULL, '1975-03-21', 'f', 10, NULL, NULL, NULL, 1, 68, NULL, NULL, '6KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(139, 'Ara', NULL, 'Larson', NULL, '2002-12-13', 'm', 15, NULL, NULL, NULL, 2, 86, NULL, NULL, '7KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(140, 'Alyson', NULL, 'Wisozk', NULL, '1997-02-20', 'f', 12, NULL, NULL, NULL, 1, 66, NULL, NULL, '6KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(141, 'Orval', NULL, 'Rosenbaum', NULL, '1972-09-18', 'f', 16, NULL, NULL, NULL, 2, 87, NULL, NULL, '5KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(142, 'Trent', NULL, 'Daniel', NULL, '2013-11-16', 'f', 11, NULL, NULL, NULL, 1, 54, NULL, NULL, '2DAN', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(143, 'Emiliano', NULL, 'Bailey', NULL, '2013-05-28', 'f', 13, NULL, NULL, NULL, 2, 84, NULL, NULL, '6KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(144, 'Merle', NULL, 'Langosh', NULL, '1999-03-04', 'm', 13, NULL, NULL, NULL, 2, 88, NULL, NULL, '0KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(145, 'Lorine', NULL, 'Prohaska', NULL, '1999-06-14', 'f', 18, NULL, NULL, NULL, 1, 42, NULL, NULL, '5KYU', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(146, 'Bette', NULL, 'Muller', NULL, '1986-08-04', 'm', 1, NULL, NULL, NULL, 1, 65, NULL, NULL, '3DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(147, 'Brandy', NULL, 'Graham', NULL, '1973-05-23', 'f', 13, NULL, NULL, NULL, 1, 41, NULL, NULL, '4KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(148, 'Blair', NULL, 'O\'Conner', NULL, '1977-09-18', 'f', 3, NULL, NULL, NULL, 1, 67, NULL, NULL, '2KYU', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(149, 'Megane', NULL, 'Boehm', NULL, '1993-12-21', 'f', 16, NULL, NULL, NULL, 2, 83, NULL, NULL, '1KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(150, 'Marcel', NULL, 'Stark', NULL, '1999-02-08', 'f', 10, NULL, NULL, NULL, 1, 63, NULL, NULL, '3KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(151, 'Carter', NULL, 'Bartoletti', NULL, '1979-09-11', 'f', 9, NULL, NULL, NULL, 1, 69, NULL, NULL, '4KYU', 34, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(152, 'Dewayne', NULL, 'Sipes', NULL, '1987-10-23', 'm', 2, NULL, NULL, NULL, 2, 88, NULL, NULL, '6KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(153, 'Erin', NULL, 'O\'Hara', NULL, '2014-07-19', 'm', 10, NULL, NULL, NULL, 2, 86, NULL, NULL, '4DAN', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(154, 'Jedidiah', NULL, 'Feest', NULL, '2016-01-18', 'm', 12, NULL, NULL, NULL, 1, 71, NULL, NULL, '3DAN', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(155, 'Cynthia', NULL, 'Sauer', NULL, '1998-09-11', 'f', 9, NULL, NULL, NULL, 1, 76, NULL, NULL, '2DAN', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(156, 'Micheal', NULL, 'Hickle', NULL, '1973-11-28', 'm', 1, NULL, NULL, NULL, 1, 58, NULL, NULL, '6KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(157, 'Lonny', NULL, 'Harris', NULL, '1998-01-04', 'f', 17, NULL, NULL, NULL, 2, 82, NULL, NULL, '2KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(158, 'Conner', NULL, 'O\'Connell', NULL, '1974-09-16', 'f', 17, NULL, NULL, NULL, 2, 86, NULL, NULL, '2KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(159, 'Shyann', NULL, 'Friesen', NULL, '2004-11-15', 'f', 5, NULL, NULL, NULL, 1, 42, NULL, NULL, '9KYU', 6, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(160, 'Abelardo', NULL, 'Wintheiser', NULL, '1987-08-05', 'm', 9, NULL, NULL, NULL, 1, 77, NULL, NULL, '0KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(161, 'Estell', NULL, 'Ruecker', NULL, '1972-01-19', 'm', 10, NULL, NULL, NULL, 1, 61, NULL, NULL, '3KYU', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(162, 'Landen', NULL, 'Cassin', NULL, '1996-02-14', 'm', 15, NULL, NULL, NULL, 1, 45, NULL, NULL, '2DAN', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(163, 'Judy', NULL, 'Kub', NULL, '1978-09-01', 'm', 1, NULL, NULL, NULL, 1, 67, NULL, NULL, '7KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(164, 'Mikayla', NULL, 'Schmitt', NULL, '2014-04-02', 'f', 20, NULL, NULL, NULL, 2, 86, NULL, NULL, '9KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(165, 'Tess', NULL, 'Schneider', NULL, '2000-03-16', 'm', 8, NULL, NULL, NULL, 1, 60, NULL, NULL, '8KYU', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(166, 'Dexter', NULL, 'Hane', NULL, '1992-07-03', 'f', 18, NULL, NULL, NULL, 2, 90, NULL, NULL, '3KYU', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(167, 'Samanta', NULL, 'Hermann', NULL, '2011-05-09', 'f', 11, NULL, NULL, NULL, 1, 59, NULL, NULL, '1KYU', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(168, 'Cade', NULL, 'Daugherty', NULL, '2018-07-11', 'f', 14, NULL, NULL, NULL, 1, 53, NULL, NULL, '1DAN', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(169, 'Roel', NULL, 'Windler', NULL, '1988-03-15', 'f', 7, NULL, NULL, NULL, 2, 86, NULL, NULL, '10KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(170, 'Myah', NULL, 'Lueilwitz', NULL, '1993-07-11', 'f', 13, NULL, NULL, NULL, 1, 46, NULL, NULL, '1KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(171, 'Horace', NULL, 'Reilly', NULL, '1989-04-25', 'm', 8, NULL, NULL, NULL, 2, 85, NULL, NULL, '8KYU', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(172, 'Julian', NULL, 'Ernser', NULL, '2006-09-11', 'f', 12, NULL, NULL, NULL, 1, 67, NULL, NULL, '0KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(173, 'Lesly', NULL, 'Baumbach', NULL, '1973-10-12', 'm', 5, NULL, NULL, NULL, 1, 64, NULL, NULL, '4DAN', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(174, 'Seth', NULL, 'D\'Amore', NULL, '2020-02-12', 'f', 8, NULL, NULL, NULL, 1, 66, NULL, NULL, '3KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(175, 'Haley', NULL, 'Nikolaus', NULL, '1999-06-13', 'f', 16, NULL, NULL, NULL, 1, 67, NULL, NULL, '8KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(176, 'Mya', NULL, 'Kunde', NULL, '1994-11-06', 'm', 9, NULL, NULL, NULL, 2, 85, NULL, NULL, '0KYU', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(177, 'Zane', NULL, 'O\'Keefe', NULL, '1995-08-21', 'f', 4, NULL, NULL, NULL, 1, 65, NULL, NULL, '2KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(178, 'Jace', NULL, 'Orn', NULL, '1990-10-15', 'm', 12, NULL, NULL, NULL, 2, 78, NULL, NULL, '6KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(179, 'Syble', NULL, 'Conroy', NULL, '2010-06-10', 'f', 11, NULL, NULL, NULL, 2, 89, NULL, NULL, '0KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(180, 'Magdalen', NULL, 'Bogisich', NULL, '2004-05-07', 'f', 6, NULL, NULL, NULL, 2, 89, NULL, NULL, '7KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(181, 'Maximilian', NULL, 'Little', NULL, '2011-11-02', 'm', 8, NULL, NULL, NULL, 1, 64, NULL, NULL, '3KYU', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(182, 'Novella', NULL, 'Abshire', NULL, '1975-06-09', 'm', 17, NULL, NULL, NULL, 2, 83, NULL, NULL, '0KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(183, 'Lonie', NULL, 'Rolfson', NULL, '2020-10-08', 'f', 17, NULL, NULL, NULL, 1, 40, NULL, NULL, '2DAN', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(184, 'Mckenna', NULL, 'Schuster', NULL, '1996-06-23', 'f', 3, NULL, NULL, NULL, 1, 67, NULL, NULL, '2KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(185, 'Letitia', NULL, 'Braun', NULL, '1981-07-14', 'f', 6, NULL, NULL, NULL, 1, 69, NULL, NULL, '10KYU', 6, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(186, 'Adeline', NULL, 'Von', NULL, '1973-10-29', 'm', 18, NULL, NULL, NULL, 1, 75, NULL, NULL, '4DAN', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(187, 'Clyde', NULL, 'Powlowski', NULL, '1989-05-26', 'm', 10, NULL, NULL, NULL, 2, 89, NULL, NULL, '3DAN', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(188, 'Kayli', NULL, 'Smitham', NULL, '2002-08-13', 'f', 8, NULL, NULL, NULL, 1, 68, NULL, NULL, '0KYU', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(189, 'Myrtie', NULL, 'Smitham', NULL, '1980-12-12', 'f', 6, NULL, NULL, NULL, 1, 63, NULL, NULL, '0KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(190, 'Freeman', NULL, 'Hayes', NULL, '1970-02-11', 'm', 16, NULL, NULL, NULL, 1, 52, NULL, NULL, '5DAN', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(191, 'Mortimer', NULL, 'Jacobi', NULL, '1982-07-24', 'm', 15, NULL, NULL, NULL, 1, 57, NULL, NULL, '9KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(192, 'Camylle', NULL, 'Kris', NULL, '1995-08-06', 'm', 13, NULL, NULL, NULL, 2, 81, NULL, NULL, '6KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(193, 'Lea', NULL, 'Ziemann', NULL, '1984-01-10', 'm', 4, NULL, NULL, NULL, 2, 82, NULL, NULL, '8KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(194, 'Janis', NULL, 'Hodkiewicz', NULL, '1987-08-26', 'f', 7, NULL, NULL, NULL, 1, 46, NULL, NULL, '3KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(195, 'Cristobal', NULL, 'Pollich', NULL, '1975-09-06', 'm', 11, NULL, NULL, NULL, 1, 68, NULL, NULL, '4KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(196, 'Elinor', NULL, 'Murray', NULL, '2003-10-16', 'm', 17, NULL, NULL, NULL, 1, 61, NULL, NULL, '0KYU', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(197, 'Alicia', NULL, 'Farrell', NULL, '1971-03-11', 'm', 11, NULL, NULL, NULL, 1, 69, NULL, NULL, '6KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(198, 'Baby', NULL, 'Hirthe', NULL, '1982-03-14', 'm', 15, NULL, NULL, NULL, 1, 54, NULL, NULL, '9KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(199, 'Maximillia', NULL, 'Padberg', NULL, '1989-04-23', 'f', 13, NULL, NULL, NULL, 1, 48, NULL, NULL, '2KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(200, 'Tyrell', NULL, 'Gutkowski', NULL, '2003-04-28', 'f', 20, NULL, NULL, NULL, 1, 54, NULL, NULL, '10KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(201, 'Andre', NULL, 'Smith', NULL, '2018-04-05', 'f', 15, NULL, NULL, NULL, 1, 45, NULL, NULL, '2KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(202, 'Adelle', NULL, 'Russel', NULL, '2007-01-27', 'f', 3, NULL, NULL, NULL, 2, 82, NULL, NULL, '4DAN', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(203, 'Connie', NULL, 'Wuckert', NULL, '2004-04-27', 'm', 5, NULL, NULL, NULL, 2, 78, NULL, NULL, '5DAN', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(204, 'Demetris', NULL, 'Goldner', NULL, '1983-06-18', 'f', 20, NULL, NULL, NULL, 2, 89, NULL, NULL, '1DAN', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(205, 'Russell', NULL, 'Price', NULL, '2016-12-11', 'm', 15, NULL, NULL, NULL, 1, 41, NULL, NULL, '4KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(206, 'Troy', NULL, 'Nitzsche', NULL, '2006-07-08', 'm', 11, NULL, NULL, NULL, 1, 43, NULL, NULL, '0KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(207, 'Jermey', NULL, 'McClure', NULL, '1984-06-10', 'm', 10, NULL, NULL, NULL, 1, 44, NULL, NULL, '6KYU', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(208, 'Monica', NULL, 'Marks', NULL, '2017-06-12', 'f', 19, NULL, NULL, NULL, 1, 49, NULL, NULL, '1KYU', 6, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(209, 'Ricky', NULL, 'Johnson', NULL, '2017-05-19', 'm', 15, NULL, NULL, NULL, 2, 83, NULL, NULL, '5DAN', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(210, 'Bertram', NULL, 'Hansen', NULL, '2002-05-09', 'm', 3, NULL, NULL, NULL, 1, 63, NULL, NULL, '1KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(211, 'Dejon', NULL, 'Price', NULL, '2021-08-08', 'm', 3, NULL, NULL, NULL, 1, 73, NULL, NULL, '1DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(212, 'Sandy', NULL, 'McCullough', NULL, '2018-04-17', 'f', 8, NULL, NULL, NULL, 1, 41, NULL, NULL, '2DAN', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(213, 'Walker', NULL, 'Buckridge', NULL, '2019-06-06', 'f', 6, NULL, NULL, NULL, 1, 74, NULL, NULL, '2DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(214, 'Heather', NULL, 'Hill', NULL, '2013-09-02', 'm', 6, NULL, NULL, NULL, 2, 81, NULL, NULL, '1KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(215, 'Jaime', NULL, 'Johnston', NULL, '1972-02-18', 'm', 12, NULL, NULL, NULL, 1, 67, NULL, NULL, '5KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(216, 'Rosella', NULL, 'Von', NULL, '1995-09-04', 'm', 8, NULL, NULL, NULL, 1, 50, NULL, NULL, '8KYU', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(217, 'Breanne', NULL, 'Zboncak', NULL, '1990-01-23', 'm', 17, NULL, NULL, NULL, 2, 84, NULL, NULL, '4KYU', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(218, 'Eloisa', NULL, 'Pollich', NULL, '2016-06-27', 'f', 7, NULL, NULL, NULL, 1, 42, NULL, NULL, '10KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(219, 'Brisa', NULL, 'Hickle', NULL, '1990-10-04', 'm', 4, NULL, NULL, NULL, 1, 67, NULL, NULL, '5KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(220, 'Chaya', NULL, 'Stark', NULL, '2016-01-20', 'm', 17, NULL, NULL, NULL, 1, 61, NULL, NULL, '0KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(221, 'June', NULL, 'Reilly', NULL, '1985-04-03', 'm', 4, NULL, NULL, NULL, 2, 88, NULL, NULL, '9KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(222, 'Bernice', NULL, 'Mitchell', NULL, '1996-06-22', 'f', 15, NULL, NULL, NULL, 1, 75, NULL, NULL, '4KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(223, 'Merritt', NULL, 'Hill', NULL, '2002-12-06', 'f', 13, NULL, NULL, NULL, 2, 89, NULL, NULL, '6KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(224, 'Kira', NULL, 'Prosacco', NULL, '2008-02-11', 'm', 13, NULL, NULL, NULL, 1, 58, NULL, NULL, '4KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(225, 'Zoey', NULL, 'Durgan', NULL, '2023-12-05', 'f', 4, NULL, NULL, NULL, 1, 45, NULL, NULL, '8KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(226, 'Evangeline', NULL, 'Monahan', NULL, '2021-02-12', 'f', 6, NULL, NULL, NULL, 1, 55, NULL, NULL, '5KYU', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(227, 'Markus', NULL, 'Pfeffer', NULL, '2014-12-20', 'f', 20, NULL, NULL, NULL, 1, 73, NULL, NULL, '4DAN', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(228, 'Drake', NULL, 'Watsica', NULL, '1992-03-11', 'f', 3, NULL, NULL, NULL, 1, 55, NULL, NULL, '3DAN', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(229, 'Annabelle', NULL, 'Zboncak', NULL, '2003-06-30', 'm', 16, NULL, NULL, NULL, 2, 85, NULL, NULL, '6KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(230, 'Wyatt', NULL, 'Tillman', NULL, '2007-08-24', 'm', 15, NULL, NULL, NULL, 1, 64, NULL, NULL, '4DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(231, 'Calista', NULL, 'Kessler', NULL, '2005-04-27', 'm', 1, NULL, NULL, NULL, 1, 69, NULL, NULL, '8KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(232, 'Reanna', NULL, 'Block', NULL, '1991-09-24', 'm', 6, NULL, NULL, NULL, 1, 50, NULL, NULL, '7KYU', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(233, 'Amelie', NULL, 'Reynolds', NULL, '1985-11-22', 'm', 4, NULL, NULL, NULL, 1, 75, NULL, NULL, '4DAN', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(234, 'Fredrick', NULL, 'Wintheiser', NULL, '1978-02-16', 'm', 18, NULL, NULL, NULL, 1, 60, NULL, NULL, '3DAN', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(235, 'Kim', NULL, 'Wisoky', NULL, '1984-07-16', 'f', 17, NULL, NULL, NULL, 1, 65, NULL, NULL, '6KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(236, 'River', NULL, 'Pagac', NULL, '1997-04-23', 'f', 20, NULL, NULL, NULL, 1, 55, NULL, NULL, '2DAN', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(237, 'Yasmine', NULL, 'Kassulke', NULL, '1984-02-17', 'm', 9, NULL, NULL, NULL, 1, 61, NULL, NULL, '4DAN', 20, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(238, 'Beau', NULL, 'Turcotte', NULL, '1989-02-19', 'f', 18, NULL, NULL, NULL, 1, 53, NULL, NULL, '3DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(239, 'Aliya', NULL, 'Witting', NULL, '1982-03-16', 'm', 5, NULL, NULL, NULL, 1, 47, NULL, NULL, '8KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(240, 'Wade', NULL, 'Paucek', NULL, '2023-06-11', 'f', 17, NULL, NULL, NULL, 1, 66, NULL, NULL, '0KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(241, 'Kristy', NULL, 'Bahringer', NULL, '1975-01-13', 'm', 12, NULL, NULL, NULL, 2, 82, NULL, NULL, '2DAN', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(242, 'Gaylord', NULL, 'Tremblay', NULL, '2005-02-27', 'm', 7, NULL, NULL, NULL, 1, 42, NULL, NULL, '3KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(243, 'Cleta', NULL, 'Becker', NULL, '2017-02-21', 'f', 17, NULL, NULL, NULL, 1, 51, NULL, NULL, '1DAN', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(244, 'Terrence', NULL, 'O\'Hara', NULL, '1971-02-15', 'f', 12, NULL, NULL, NULL, 1, 45, NULL, NULL, '9KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(245, 'Winifred', NULL, 'Lind', NULL, '2024-08-20', 'f', 18, NULL, NULL, NULL, 1, 41, NULL, NULL, '1DAN', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(246, 'Richie', NULL, 'Keebler', NULL, '2023-09-07', 'm', 7, NULL, NULL, NULL, 1, 59, NULL, NULL, '1KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(247, 'Filiberto', NULL, 'Weber', NULL, '2002-07-10', 'f', 3, NULL, NULL, NULL, 1, 67, NULL, NULL, '4DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(248, 'Fatima', NULL, 'Abernathy', NULL, '1989-10-21', 'f', 8, NULL, NULL, NULL, 1, 59, NULL, NULL, '6KYU', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(249, 'Marty', NULL, 'Jenkins', NULL, '1970-09-09', 'm', 7, NULL, NULL, NULL, 1, 60, NULL, NULL, '9KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(250, 'German', NULL, 'Kilback', NULL, '2020-01-03', 'f', 14, NULL, NULL, NULL, 1, 65, NULL, NULL, '4DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(251, 'Agnes', NULL, 'Bradtke', NULL, '1985-05-15', 'm', 6, NULL, NULL, NULL, 2, 90, NULL, NULL, '1KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(252, 'Marcelino', NULL, 'Terry', NULL, '2009-06-25', 'm', 8, NULL, NULL, NULL, 2, 88, NULL, NULL, '5DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(253, 'Jerod', NULL, 'Rodriguez', NULL, '1991-01-10', 'f', 7, NULL, NULL, NULL, 1, 40, NULL, NULL, '5KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(254, 'Esther', NULL, 'Yundt', NULL, '2016-12-10', 'f', 14, NULL, NULL, NULL, 2, 85, NULL, NULL, '10KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(255, 'Darion', NULL, 'Bogisich', NULL, '1987-09-02', 'f', 8, NULL, NULL, NULL, 1, 51, NULL, NULL, '2KYU', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(256, 'Everette', NULL, 'Collins', NULL, '2019-06-27', 'm', 8, NULL, NULL, NULL, 1, 51, NULL, NULL, '9KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(257, 'Deondre', NULL, 'Zulauf', NULL, '1975-12-29', 'f', 5, NULL, NULL, NULL, 1, 42, NULL, NULL, '1DAN', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(258, 'Ubaldo', NULL, 'King', NULL, '1978-04-10', 'f', 20, NULL, NULL, NULL, 1, 70, NULL, NULL, '1KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(259, 'Leonard', NULL, 'Davis', NULL, '2000-08-28', 'f', 4, NULL, NULL, NULL, 1, 67, NULL, NULL, '3DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(260, 'Lesley', NULL, 'Stokes', NULL, '2007-08-26', 'm', 15, NULL, NULL, NULL, 1, 69, NULL, NULL, '9KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(261, 'Burdette', NULL, 'Cronin', NULL, '1972-03-08', 'f', 3, NULL, NULL, NULL, 1, 48, NULL, NULL, '2KYU', 34, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(262, 'Maribel', NULL, 'Roob', NULL, '1982-02-05', 'm', 19, NULL, NULL, NULL, 1, 43, NULL, NULL, '2DAN', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(263, 'Eli', NULL, 'Morar', NULL, '1974-07-07', 'f', 17, NULL, NULL, NULL, 1, 70, NULL, NULL, '10KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(264, 'Fay', NULL, 'Farrell', NULL, '2023-05-10', 'f', 4, NULL, NULL, NULL, 1, 49, NULL, NULL, '4DAN', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(265, 'Sigurd', NULL, 'Monahan', NULL, '1972-05-04', 'm', 9, NULL, NULL, NULL, 1, 49, NULL, NULL, '2KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(266, 'Jamaal', NULL, 'Hudson', NULL, '1995-10-29', 'm', 1, NULL, NULL, NULL, 2, 86, NULL, NULL, '4DAN', 39, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(267, 'Hyman', NULL, 'Lakin', NULL, '1970-11-29', 'm', 6, NULL, NULL, NULL, 1, 72, NULL, NULL, '1KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(268, 'Daisha', NULL, 'Kozey', NULL, '1992-06-17', 'f', 2, NULL, NULL, NULL, 1, 45, NULL, NULL, '3KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(269, 'Jennyfer', NULL, 'Jacobson', NULL, '1971-03-09', 'm', 15, NULL, NULL, NULL, 1, 70, NULL, NULL, '1KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(270, 'Polly', NULL, 'Christiansen', NULL, '2018-08-15', 'm', 7, NULL, NULL, NULL, 1, 75, NULL, NULL, '2KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(271, 'Josephine', NULL, 'Rice', NULL, '1991-03-01', 'f', 17, NULL, NULL, NULL, 1, 58, NULL, NULL, '3DAN', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(272, 'Jamaal', NULL, 'Herzog', NULL, '2010-05-09', 'm', 9, NULL, NULL, NULL, 2, 86, NULL, NULL, '5KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(273, 'Lambert', NULL, 'Casper', NULL, '2010-09-25', 'm', 20, NULL, NULL, NULL, 2, 85, NULL, NULL, '8KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(274, 'Emmitt', NULL, 'Schaefer', NULL, '2016-10-14', 'm', 12, NULL, NULL, NULL, 2, 84, NULL, NULL, '2KYU', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(275, 'Jeramie', NULL, 'Robel', NULL, '1995-08-09', 'm', 15, NULL, NULL, NULL, 1, 65, NULL, NULL, '6KYU', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(276, 'Jaden', NULL, 'Moen', NULL, '1980-12-20', 'f', 12, NULL, NULL, NULL, 1, 53, NULL, NULL, '7KYU', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(277, 'Troy', NULL, 'Mayer', NULL, '1986-09-26', 'm', 14, NULL, NULL, NULL, 1, 73, NULL, NULL, '1DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(278, 'Bradford', NULL, 'Brown', NULL, '1992-07-24', 'f', 7, NULL, NULL, NULL, 1, 51, NULL, NULL, '1DAN', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31');
INSERT INTO `fighters` (`id`, `first_name`, `middle_name`, `last_name`, `imageUrl`, `birth_date`, `gender`, `country_id`, `address`, `region`, `city`, `category_id`, `weight`, `height`, `titles`, `grade`, `team_id`, `coach`, `school`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(279, 'Bridget', NULL, 'Jacobi', NULL, '2022-01-19', 'f', 12, NULL, NULL, NULL, 1, 44, NULL, NULL, '8KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(280, 'Leola', NULL, 'Weber', NULL, '1978-07-19', 'm', 18, NULL, NULL, NULL, 1, 65, NULL, NULL, '7KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(281, 'Maymie', NULL, 'Franecki', NULL, '1984-03-06', 'm', 18, NULL, NULL, NULL, 1, 56, NULL, NULL, '1DAN', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(282, 'Verdie', NULL, 'O\'Hara', NULL, '2015-10-15', 'f', 2, NULL, NULL, NULL, 2, 90, NULL, NULL, '6KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(283, 'Carmelo', NULL, 'Little', NULL, '2022-07-17', 'f', 2, NULL, NULL, NULL, 1, 75, NULL, NULL, '4DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(284, 'Gretchen', NULL, 'Casper', NULL, '2023-10-19', 'f', 20, NULL, NULL, NULL, 1, 77, NULL, NULL, '10KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(285, 'Judy', NULL, 'Spencer', NULL, '1996-07-27', 'm', 7, NULL, NULL, NULL, 2, 78, NULL, NULL, '5DAN', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(286, 'Bernard', NULL, 'Feil', NULL, '2010-03-01', 'f', 11, NULL, NULL, NULL, 1, 67, NULL, NULL, '2KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(287, 'Colby', NULL, 'Rath', NULL, '2007-01-26', 'f', 10, NULL, NULL, NULL, 1, 46, NULL, NULL, '3KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(288, 'Lulu', NULL, 'Mueller', NULL, '2016-10-22', 'f', 14, NULL, NULL, NULL, 1, 44, NULL, NULL, '2DAN', 20, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(289, 'Mayra', NULL, 'Swift', NULL, '1979-06-28', 'f', 1, NULL, NULL, NULL, 1, 56, NULL, NULL, '4DAN', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(290, 'Ellie', NULL, 'Dibbert', NULL, '2011-06-22', 'f', 6, NULL, NULL, NULL, 1, 60, NULL, NULL, '1DAN', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(291, 'Holly', NULL, 'Ondricka', NULL, '2016-01-25', 'm', 10, NULL, NULL, NULL, 1, 75, NULL, NULL, '7KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(292, 'Bulah', NULL, 'Strosin', NULL, '2006-03-26', 'm', 18, NULL, NULL, NULL, 2, 89, NULL, NULL, '3DAN', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(293, 'Willy', NULL, 'Veum', NULL, '1990-01-30', 'f', 1, NULL, NULL, NULL, 1, 66, NULL, NULL, '10KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(294, 'Melyssa', NULL, 'Jenkins', NULL, '2008-11-21', 'f', 18, NULL, NULL, NULL, 1, 73, NULL, NULL, '4KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(295, 'Violette', NULL, 'Ledner', NULL, '2015-10-13', 'm', 9, NULL, NULL, NULL, 1, 67, NULL, NULL, '9KYU', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(296, 'Orval', NULL, 'Stanton', NULL, '1972-05-27', 'f', 1, NULL, NULL, NULL, 1, 48, NULL, NULL, '1KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(297, 'Bridgette', NULL, 'Herman', NULL, '1987-01-22', 'm', 3, NULL, NULL, NULL, 2, 83, NULL, NULL, '8KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(298, 'Ressie', NULL, 'Bednar', NULL, '2008-03-30', 'f', 17, NULL, NULL, NULL, 1, 69, NULL, NULL, '0KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(299, 'Thalia', NULL, 'Luettgen', NULL, '2024-07-12', 'f', 15, NULL, NULL, NULL, 1, 70, NULL, NULL, '5DAN', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(300, 'Grace', NULL, 'Bruen', NULL, '2016-03-30', 'm', 8, NULL, NULL, NULL, 2, 78, NULL, NULL, '4KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(301, 'Kayla', NULL, 'Swaniawski', NULL, '1991-06-22', 'm', 2, NULL, NULL, NULL, 1, 60, NULL, NULL, '1KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(302, 'Lambert', NULL, 'Johnson', NULL, '2002-10-09', 'f', 9, NULL, NULL, NULL, 1, 74, NULL, NULL, '10KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(303, 'Lydia', NULL, 'Olson', NULL, '1977-05-17', 'f', 19, NULL, NULL, NULL, 1, 41, NULL, NULL, '7KYU', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(304, 'Katrine', NULL, 'Brekke', NULL, '2013-03-08', 'm', 9, NULL, NULL, NULL, 1, 49, NULL, NULL, '0KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(305, 'Alvah', NULL, 'Hodkiewicz', NULL, '1988-08-25', 'm', 16, NULL, NULL, NULL, 1, 69, NULL, NULL, '3KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(306, 'Vincent', NULL, 'Rutherford', NULL, '2023-12-12', 'm', 7, NULL, NULL, NULL, 1, 65, NULL, NULL, '3DAN', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(307, 'Seamus', NULL, 'Cruickshank', NULL, '1998-01-01', 'm', 11, NULL, NULL, NULL, 1, 43, NULL, NULL, '3DAN', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(308, 'Sedrick', NULL, 'Wiegand', NULL, '1991-03-09', 'f', 4, NULL, NULL, NULL, 1, 57, NULL, NULL, '1DAN', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(309, 'Lyla', NULL, 'Dietrich', NULL, '1978-01-25', 'm', 13, NULL, NULL, NULL, 1, 52, NULL, NULL, '3KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(310, 'Gay', NULL, 'Emard', NULL, '2005-02-08', 'f', 5, NULL, NULL, NULL, 2, 83, NULL, NULL, '5KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(311, 'Juliana', NULL, 'Beer', NULL, '2008-09-08', 'f', 14, NULL, NULL, NULL, 2, 87, NULL, NULL, '4KYU', 11, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(312, 'Wendy', NULL, 'Willms', NULL, '1980-01-02', 'm', 5, NULL, NULL, NULL, 2, 80, NULL, NULL, '5DAN', 7, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(313, 'Jeramy', NULL, 'Douglas', NULL, '1972-11-04', 'm', 3, NULL, NULL, NULL, 1, 66, NULL, NULL, '7KYU', 24, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(314, 'Veronica', NULL, 'Sawayn', NULL, '1986-11-18', 'f', 16, NULL, NULL, NULL, 1, 63, NULL, NULL, '10KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(315, 'Alanna', NULL, 'Little', NULL, '2011-10-24', 'm', 19, NULL, NULL, NULL, 1, 59, NULL, NULL, '6KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(316, 'Vanessa', NULL, 'Russel', NULL, '2002-04-17', 'f', 19, NULL, NULL, NULL, 2, 82, NULL, NULL, '3KYU', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(317, 'Kendall', NULL, 'Kub', NULL, '2003-06-14', 'f', 18, NULL, NULL, NULL, 2, 86, NULL, NULL, '1KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(318, 'Myriam', NULL, 'Wisoky', NULL, '1991-02-13', 'f', 8, NULL, NULL, NULL, 1, 44, NULL, NULL, '8KYU', 12, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(319, 'Dwight', NULL, 'Feeney', NULL, '1975-10-18', 'f', 3, NULL, NULL, NULL, 1, 47, NULL, NULL, '2KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(320, 'Shanon', NULL, 'Howell', NULL, '2008-11-10', 'f', 10, NULL, NULL, NULL, 1, 72, NULL, NULL, '4DAN', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(321, 'Stefanie', NULL, 'Howell', NULL, '1994-12-01', 'f', 16, NULL, NULL, NULL, 1, 50, NULL, NULL, '6KYU', 34, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(322, 'Winnifred', NULL, 'Bernier', NULL, '1989-11-23', 'm', 9, NULL, NULL, NULL, 1, 64, NULL, NULL, '5KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(323, 'Eldora', NULL, 'Collier', NULL, '2012-03-17', 'f', 4, NULL, NULL, NULL, 1, 54, NULL, NULL, '1KYU', 6, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(324, 'Kraig', NULL, 'Emard', NULL, '2014-03-10', 'f', 6, NULL, NULL, NULL, 1, 75, NULL, NULL, '2KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(325, 'Bryce', NULL, 'Hammes', NULL, '1970-08-11', 'f', 11, NULL, NULL, NULL, 2, 84, NULL, NULL, '10KYU', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(326, 'Linnea', NULL, 'Nienow', NULL, '2000-05-31', 'f', 6, NULL, NULL, NULL, 1, 68, NULL, NULL, '3KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(327, 'Stella', NULL, 'Dicki', NULL, '1972-11-27', 'f', 16, NULL, NULL, NULL, 1, 45, NULL, NULL, '4DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(328, 'Lamont', NULL, 'Jacobs', NULL, '1981-09-11', 'f', 18, NULL, NULL, NULL, 1, 72, NULL, NULL, '9KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(329, 'Regan', NULL, 'Johnston', NULL, '2018-11-09', 'f', 7, NULL, NULL, NULL, 1, 50, NULL, NULL, '4DAN', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(330, 'Tressie', NULL, 'Haley', NULL, '1971-10-19', 'm', 5, NULL, NULL, NULL, 1, 51, NULL, NULL, '0KYU', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(331, 'George', NULL, 'Rolfson', NULL, '1971-01-16', 'f', 11, NULL, NULL, NULL, 2, 86, NULL, NULL, '4DAN', 22, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(332, 'Josh', NULL, 'Huels', NULL, '1977-05-30', 'f', 9, NULL, NULL, NULL, 1, 65, NULL, NULL, '1DAN', 15, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(333, 'Helmer', NULL, 'Klocko', NULL, '2002-10-01', 'f', 18, NULL, NULL, NULL, 1, 48, NULL, NULL, '3KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(334, 'Magnolia', NULL, 'Hills', NULL, '2005-02-06', 'f', 12, NULL, NULL, NULL, 2, 80, NULL, NULL, '4KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(335, 'Griffin', NULL, 'Stoltenberg', NULL, '1973-11-29', 'm', 15, NULL, NULL, NULL, 2, 86, NULL, NULL, '6KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(336, 'Geraldine', NULL, 'O\'Kon', NULL, '2005-04-19', 'm', 6, NULL, NULL, NULL, 1, 62, NULL, NULL, '6KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(337, 'Brenda', NULL, 'Connelly', NULL, '2010-11-21', 'm', 16, NULL, NULL, NULL, 2, 86, NULL, NULL, '5KYU', 14, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(338, 'Johann', NULL, 'Oberbrunner', NULL, '2013-09-05', 'f', 17, NULL, NULL, NULL, 2, 81, NULL, NULL, '0KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(339, 'Retha', NULL, 'Bayer', NULL, '1992-03-24', 'f', 12, NULL, NULL, NULL, 1, 73, NULL, NULL, '10KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(340, 'Kayli', NULL, 'Kertzmann', NULL, '1975-10-19', 'm', 5, NULL, NULL, NULL, 1, 66, NULL, NULL, '3DAN', 31, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(341, 'Isidro', NULL, 'Hodkiewicz', NULL, '1976-07-02', 'f', 9, NULL, NULL, NULL, 2, 82, NULL, NULL, '10KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(342, 'Queen', NULL, 'McClure', NULL, '2004-12-03', 'f', 9, NULL, NULL, NULL, 2, 87, NULL, NULL, '2DAN', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(343, 'Lenna', NULL, 'Okuneva', NULL, '1981-06-19', 'm', 1, NULL, NULL, NULL, 2, 84, NULL, NULL, '1DAN', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(344, 'Charlie', NULL, 'Kub', NULL, '1997-01-02', 'm', 13, NULL, NULL, NULL, 1, 47, NULL, NULL, '2KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(345, 'Kariane', NULL, 'Gutmann', NULL, '2005-11-30', 'm', 15, NULL, NULL, NULL, 1, 42, NULL, NULL, '8KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(346, 'Leonora', NULL, 'Walker', NULL, '1992-05-21', 'f', 4, NULL, NULL, NULL, 1, 63, NULL, NULL, '5DAN', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(347, 'Conor', NULL, 'Fahey', NULL, '2019-12-28', 'm', 8, NULL, NULL, NULL, 2, 89, NULL, NULL, '7KYU', 3, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(348, 'Oceane', NULL, 'Schultz', NULL, '2004-02-02', 'f', 14, NULL, NULL, NULL, 2, 87, NULL, NULL, '0KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(349, 'Jamison', NULL, 'Fay', NULL, '2007-09-10', 'f', 8, NULL, NULL, NULL, 1, 60, NULL, NULL, '6KYU', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(350, 'Rosella', NULL, 'Moore', NULL, '1971-08-14', 'f', 16, NULL, NULL, NULL, 1, 70, NULL, NULL, '10KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(351, 'Jarrod', NULL, 'Rowe', NULL, '2015-12-03', 'f', 10, NULL, NULL, NULL, 2, 78, NULL, NULL, '9KYU', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(352, 'Vince', NULL, 'Torphy', NULL, '2015-11-17', 'm', 13, NULL, NULL, NULL, 1, 59, NULL, NULL, '9KYU', 10, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(353, 'Joaquin', NULL, 'Pacocha', NULL, '2007-06-05', 'f', 18, NULL, NULL, NULL, 1, 65, NULL, NULL, '5KYU', 20, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(354, 'Clint', NULL, 'Dickinson', NULL, '1978-11-24', 'm', 15, NULL, NULL, NULL, 1, 70, NULL, NULL, '3KYU', 19, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(355, 'Seth', NULL, 'Douglas', NULL, '1978-06-02', 'f', 18, NULL, NULL, NULL, 1, 56, NULL, NULL, '4DAN', 34, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(356, 'Cleta', NULL, 'Ernser', NULL, '2007-03-28', 'm', 6, NULL, NULL, NULL, 1, 47, NULL, NULL, '2DAN', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(357, 'Mohammed', NULL, 'Kub', NULL, '1974-03-19', 'f', 15, NULL, NULL, NULL, 1, 62, NULL, NULL, '9KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(358, 'Tatyana', NULL, 'Willms', NULL, '2000-07-17', 'f', 11, NULL, NULL, NULL, 2, 88, NULL, NULL, '3KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(359, 'Katlynn', NULL, 'Hudson', NULL, '1993-07-08', 'f', 9, NULL, NULL, NULL, 1, 65, NULL, NULL, '6KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(360, 'Lorena', NULL, 'Nicolas', NULL, '1981-10-31', 'm', 19, NULL, NULL, NULL, 2, 82, NULL, NULL, '9KYU', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(361, 'Genoveva', NULL, 'Schaden', NULL, '1987-03-12', 'm', 18, NULL, NULL, NULL, 1, 68, NULL, NULL, '10KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(362, 'Darian', NULL, 'Yundt', NULL, '2008-12-06', 'm', 19, NULL, NULL, NULL, 2, 79, NULL, NULL, '3DAN', 25, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(363, 'Abelardo', NULL, 'Feeney', NULL, '1994-11-24', 'm', 2, NULL, NULL, NULL, 2, 88, NULL, NULL, '1DAN', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(364, 'Abbey', NULL, 'Reynolds', NULL, '1972-03-20', 'm', 7, NULL, NULL, NULL, 1, 59, NULL, NULL, '3DAN', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(365, 'Sammie', NULL, 'Bernier', NULL, '2018-08-22', 'f', 16, NULL, NULL, NULL, 1, 63, NULL, NULL, '10KYU', 1, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(366, 'Lyric', NULL, 'Macejkovic', NULL, '2012-06-01', 'f', 15, NULL, NULL, NULL, 1, 59, NULL, NULL, '9KYU', 18, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(367, 'Harmony', NULL, 'O\'Conner', NULL, '1987-02-19', 'm', 20, NULL, NULL, NULL, 1, 62, NULL, NULL, '4DAN', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(368, 'Arvel', NULL, 'Larson', NULL, '2010-04-02', 'f', 4, NULL, NULL, NULL, 2, 89, NULL, NULL, '8KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(369, 'Natalia', NULL, 'Blick', NULL, '1977-02-19', 'f', 15, NULL, NULL, NULL, 2, 90, NULL, NULL, '2KYU', 21, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(370, 'Sarai', NULL, 'Schinner', NULL, '2003-07-08', 'f', 9, NULL, NULL, NULL, 2, 88, NULL, NULL, '10KYU', 5, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(371, 'Ellie', NULL, 'Gislason', NULL, '2015-10-19', 'f', 10, NULL, NULL, NULL, 1, 60, NULL, NULL, '8KYU', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(372, 'Jake', NULL, 'Boehm', NULL, '1995-01-28', 'f', 4, NULL, NULL, NULL, 1, 44, NULL, NULL, '0KYU', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(373, 'Lesly', NULL, 'Howe', NULL, '1972-07-30', 'f', 19, NULL, NULL, NULL, 1, 61, NULL, NULL, '5KYU', 29, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(374, 'Bernardo', NULL, 'Larkin', NULL, '1989-07-02', 'm', 5, NULL, NULL, NULL, 1, 58, NULL, NULL, '4KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(375, 'Myrl', NULL, 'Lindgren', NULL, '1981-05-05', 'f', 17, NULL, NULL, NULL, 1, 49, NULL, NULL, '2DAN', 35, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(376, 'Robert', NULL, 'Jacobson', NULL, '2023-08-24', 'f', 15, NULL, NULL, NULL, 1, 45, NULL, NULL, '3KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(377, 'Opal', NULL, 'Koch', NULL, '2019-11-03', 'm', 8, NULL, NULL, NULL, 1, 48, NULL, NULL, '8KYU', 37, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(378, 'Margarett', NULL, 'Beier', NULL, '1977-09-18', 'm', 5, NULL, NULL, NULL, 1, 42, NULL, NULL, '4KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(379, 'Darwin', NULL, 'Feeney', NULL, '2011-02-24', 'f', 11, NULL, NULL, NULL, 2, 86, NULL, NULL, '2DAN', 28, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(380, 'Maximillian', NULL, 'Purdy', NULL, '2001-04-11', 'm', 20, NULL, NULL, NULL, 1, 56, NULL, NULL, '3DAN', 4, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(381, 'Rashad', NULL, 'Zulauf', NULL, '2013-04-21', 'm', 8, NULL, NULL, NULL, 1, 72, NULL, NULL, '3KYU', 27, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(382, 'Sydni', NULL, 'Rutherford', NULL, '1991-08-16', 'f', 2, NULL, NULL, NULL, 1, 54, NULL, NULL, '10KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(383, 'Jennifer', NULL, 'Kihn', NULL, '1978-12-16', 'm', 3, NULL, NULL, NULL, 1, 74, NULL, NULL, '1DAN', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(384, 'Dameon', NULL, 'Huel', NULL, '2024-10-22', 'm', 17, NULL, NULL, NULL, 1, 67, NULL, NULL, '1DAN', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(385, 'Rowan', NULL, 'Rolfson', NULL, '2000-01-14', 'm', 11, NULL, NULL, NULL, 2, 85, NULL, NULL, '2KYU', 8, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(386, 'Aidan', NULL, 'Hyatt', NULL, '1978-06-06', 'm', 4, NULL, NULL, NULL, 1, 75, NULL, NULL, '5KYU', 13, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(387, 'Melody', NULL, 'Haag', NULL, '1996-12-03', 'm', 15, NULL, NULL, NULL, 1, 73, NULL, NULL, '9KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(388, 'Karl', NULL, 'Corwin', NULL, '2015-10-12', 'm', 6, NULL, NULL, NULL, 1, 59, NULL, NULL, '8KYU', 26, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(389, 'Tomasa', NULL, 'Hills', NULL, '1971-12-24', 'm', 3, NULL, NULL, NULL, 1, 64, NULL, NULL, '2DAN', 32, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(390, 'Jeffry', NULL, 'Daniel', NULL, '1984-03-27', 'f', 20, NULL, NULL, NULL, 1, 59, NULL, NULL, '8KYU', 9, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(391, 'Aisha', NULL, 'Hessel', NULL, '2002-04-30', 'f', 10, NULL, NULL, NULL, 1, 43, NULL, NULL, '6KYU', 33, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(392, 'Alfred', NULL, 'Gusikowski', NULL, '2013-05-18', 'f', 18, NULL, NULL, NULL, 1, 70, NULL, NULL, '2KYU', 40, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(393, 'Sebastian', NULL, 'Hudson', NULL, '1989-07-26', 'm', 11, NULL, NULL, NULL, 1, 54, NULL, NULL, '7KYU', 36, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(394, 'Stephanie', NULL, 'Watsica', NULL, '2001-09-30', 'm', 20, NULL, NULL, NULL, 1, 70, NULL, NULL, '9KYU', 2, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(395, 'Porter', NULL, 'Prohaska', NULL, '2001-02-04', 'f', 3, NULL, NULL, NULL, 1, 75, NULL, NULL, '9KYU', 23, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(396, 'Adell', NULL, 'Lehner', NULL, '2010-12-31', 'f', 9, NULL, NULL, NULL, 1, 49, NULL, NULL, '5KYU', 38, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(397, 'Christina', NULL, 'Lubowitz', NULL, '2014-07-30', 'm', 9, NULL, NULL, NULL, 1, 76, NULL, NULL, '1DAN', 30, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(398, 'Telly', NULL, 'Shanahan', NULL, '2011-07-22', 'f', 12, NULL, NULL, NULL, 1, 77, NULL, NULL, '8KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(399, 'Amelie', NULL, 'Lehner', NULL, '1986-11-29', 'm', 18, NULL, NULL, NULL, 2, 84, NULL, NULL, '3KYU', 16, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31'),
(400, 'Kane', NULL, 'Bashirian', NULL, '1979-09-17', 'f', 8, NULL, NULL, NULL, 1, 53, NULL, NULL, '10KYU', 17, NULL, NULL, NULL, NULL, '2025-02-01 23:29:31', '2025-02-01 23:29:31');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
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
-- Структура таблицы `job_batches`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_13_023058_create_countries_table', 1),
(5, '2025_01_14_003142_create_events_table', 1),
(6, '2025_01_15_015952_create_tatamis_table', 1),
(7, '2025_01_16_014656_create_categories_table', 1),
(8, '2025_01_16_023333_create_teams_table', 1),
(9, '2025_01_17_021334_create_fighters_table', 1),
(10, '2025_01_18_020119_create_category_tatami_table', 1),
(11, '2025_01_28_023217_create_event_team_table', 1),
(12, '2025_01_31_033005_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `text` text DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `likes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('draft','pending','published') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
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
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kta5YZ8TETCe3BgGGy9ZI6UastCgVqTFNWjCKoZU', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFJCTWo4MkdlSzIwVE1SeU1JRmRhY2Y2MXdNODh2MXdIQ25zaWxGTCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjE7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739555883),
('N5K7h0eu3uJVRq5UxMyBmuQqpco4eo5yvIf95Qdf', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTZsNmU4R0dKUFBWRkQzalAxQVpiazY5RFd0bnVkOHFlaXVDQ0pmdiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjE7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739543293),
('oC1icrEhS4yYaHvKeTroP5lvVAqMovR7iVbnF3yp', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnF5V0g4SEZqcEMxcW5kMFFJMk9DZkZXb0xla0RyYlZQTDJTSE52ZiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjE7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739555868);

-- --------------------------------------------------------

--
-- Структура таблицы `tatamis`
--

CREATE TABLE `tatamis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `websiteUrl` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `title`, `short_title`, `imageUrl`, `info`, `phone`, `websiteUrl`, `email`, `country_id`, `addres`, `region`, `city`, `created_at`, `updated_at`) VALUES
(1, 14, 'utDojo', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(2, 14, 'harumDojo', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(3, 14, 'voluptatemDojo', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(4, 14, 'nisiDojo', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(5, 14, 'necessitatibusDojo', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(6, 14, 'perferendisDojo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(7, 14, 'temporibusDojo', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(8, 14, 'adipisciDojo', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(9, 14, 'fugiatDojo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(10, 14, 'impeditDojo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(11, 14, 'sintDojo', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(12, 14, 'magniDojo', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(13, 14, 'autDojo', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(14, 14, 'hicDojo', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(15, 14, 'harumDojo', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(16, 14, 'earumDojo', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(17, 14, 'sedDojo', NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(18, 14, 'voluptasDojo', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(19, 14, 'dignissimosDojo', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(20, 14, 'abDojo', NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(21, 14, 'etDojo', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(22, 14, 'maioresDojo', NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(23, 14, 'explicaboDojo', NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(24, 14, 'inDojo', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(25, 14, 'eumDojo', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(26, 14, 'nesciuntDojo', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(27, 14, 'etDojo', NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(28, 14, 'voluptasDojo', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(29, 14, 'utDojo', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(30, 14, 'aliquidDojo', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(31, 14, 'etDojo', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(32, 14, 'estDojo', NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(33, 14, 'quisquamDojo', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(34, 14, 'natusDojo', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(35, 14, 'sitDojo', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(36, 14, 'quibusdamDojo', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(37, 14, 'assumendaDojo', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(38, 14, 'velitDojo', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(39, 14, 'delenitiDojo', NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(40, 14, 'estDojo', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2025-02-01 23:29:30', '2025-02-01 23:29:30');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Karelle Morar', 'jamir.kessler@example.net', 'judger', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'YDcqpGAsoh', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(2, 'Jaquan Abbott', 'marielle.keebler@example.net', 'fighter', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'LiVRPm1uAJ', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(3, 'Mr. Buck Gerlach', 'brielle.braun@example.org', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'lsmz6PFa6H', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(4, 'Prof. Oren Weissnat', 'dean97@example.com', 'judger', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', '9v56efMaZ1', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(5, 'Mr. Gregorio Heaney', 'emitchell@example.com', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'J3yEy9IRZv', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(6, 'Samantha Hudson', 'josiane09@example.org', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'XJWEKYP1QF', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(7, 'Jasper Kassulke', 'minerva.block@example.org', 'judger', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'B4KYZT0Qqa', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(8, 'Eliezer Rohan DDS', 'collier.maiya@example.org', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'vjUsp9Pik5', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(9, 'Justus Trantow Jr.', 'balistreri.virginia@example.org', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'PugwfEeYVu', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(10, 'Rita Schamberger Jr.', 'justine49@example.net', 'user', '2025-02-01 23:25:58', '$2y$12$xs7Z/vBouDvJQ3rpcEGJWOER75/6AL7n03gplWe1ONPhRyo9ob77a', 'Xgpgk8CagE', '2025-02-01 23:25:58', '2025-02-01 23:25:58'),
(11, 'Jo Hudson', 'mossie.boyle@example.net', 'fighter', '2025-02-01 23:29:29', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'rCD5ggIEDe', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(12, 'Jeffry Towne', 'lauer@example.com', 'judger', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'hmKqS7GfoY', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(13, 'Kaylin Kautzer', 'yzulauf@example.org', 'fighter', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'Gqyux9f0mA', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(14, 'Ms. Jaqueline Macejkovic', 'rdach@example.org', 'team_president', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', '4CLkgXPtZe', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(15, 'Jermey Thiel DDS', 'leora.waelchi@example.org', 'judger', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'SCakBaqI1U', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(16, 'Helena Predovic', 'mackenzie.grant@example.org', 'fighter', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'O4soWySU0F', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(17, 'Esmeralda Klein', 'kyra07@example.net', 'user', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'lN73UX5fP5', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(18, 'Jarvis Kshlerin', 'grolfson@example.org', 'team_president', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'AOaOyRLTTx', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(19, 'King Halvorson', 'evalyn93@example.org', 'judger', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', '7FF3AT52AK', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(20, 'Dr. Roselyn Cole', 'crystal99@example.net', 'user', '2025-02-01 23:29:30', '$2y$12$ZQj.ACaE80cjVdS4DvcjxunEaZEB.A7I2odQay/Q92k/89ldwyZp6', 'Yt1Gu2luq4', '2025-02-01 23:29:30', '2025-02-01 23:29:30'),
(21, 'David', 'avanesyandotnet@gmail.com', 'admin', NULL, '$2y$12$JvzlutRsVSnJsumU5lVHluGYlCzK4uHnaXoZ2ZK7X2I4hapdT2NNu', '76M6DOLoUH9hmAIRt0JhA54nsXmgDh7YeUv1JOZzYqFEf8j0PXuADcubnb3s', '2025-02-01 23:39:21', '2025-02-01 23:39:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_event_id_foreign` (`event_id`);

--
-- Индексы таблицы `category_tatami`
--
ALTER TABLE `category_tatami`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_tatami_category_id_foreign` (`category_id`),
  ADD KEY `category_tatami_tatami_id_foreign` (`tatami_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_country_id_foreign` (`country_id`);

--
-- Индексы таблицы `event_team`
--
ALTER TABLE `event_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_team_event_id_foreign` (`event_id`),
  ADD KEY `event_team_team_id_foreign` (`team_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `fighters`
--
ALTER TABLE `fighters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fighters_country_id_foreign` (`country_id`),
  ADD KEY `fighters_category_id_foreign` (`category_id`),
  ADD KEY `fighters_team_id_foreign` (`team_id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_event_id_foreign` (`event_id`),
  ADD KEY `posts_team_id_foreign` (`team_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `tatamis`
--
ALTER TABLE `tatamis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tatamis_event_id_foreign` (`event_id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_foreign` (`user_id`),
  ADD KEY `teams_country_id_foreign` (`country_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `category_tatami`
--
ALTER TABLE `category_tatami`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `event_team`
--
ALTER TABLE `event_team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fighters`
--
ALTER TABLE `fighters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tatamis`
--
ALTER TABLE `tatamis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category_tatami`
--
ALTER TABLE `category_tatami`
  ADD CONSTRAINT `category_tatami_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_tatami_tatami_id_foreign` FOREIGN KEY (`tatami_id`) REFERENCES `tatamis` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `event_team`
--
ALTER TABLE `event_team`
  ADD CONSTRAINT `event_team_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fighters`
--
ALTER TABLE `fighters`
  ADD CONSTRAINT `fighters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fighters_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fighters_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tatamis`
--
ALTER TABLE `tatamis`
  ADD CONSTRAINT `tatamis_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
