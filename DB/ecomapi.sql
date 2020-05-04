-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 12:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomapi`
--

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_02_130005_create_products_table', 2),
(5, '2020_04_02_130250_create_reviews_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2020_04_26_201727_create_product_types_table', 4),
(12, '2020_04_27_075430_add_name_to_product_types_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1ad2f62dc3fd7da1271c032231202d93a5c9b9b717d3659a218e6afc2e6ae821231d2bdd0c447c24', 2, 2, NULL, '[]', 0, '2020-04-15 05:23:26', '2020-04-15 05:23:26', '2021-04-15 11:23:26'),
('709d1ba87e3d21d98a9919a713cd896fc094081bbdf82805b3843174a98ea1e61e290bd41f0ca7aa', 2, 2, NULL, '[]', 0, '2020-04-15 05:09:35', '2020-04-15 05:09:35', '2021-04-15 11:09:35'),
('e2406ed4254b2b52657fe1e24bf7d752baef050ce7546ec94424d2c12553d3cbd253bf664c28de2e', 1, 1, NULL, '[]', 0, '2020-04-15 06:16:43', '2020-04-15 06:16:43', '2021-04-15 12:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vXdF6x5o4ZqKkSiAuJwTvNMYihjUaoUSCEozifIp', 'http://localhost', 0, 1, 0, '2020-04-15 01:31:09', '2020-04-15 01:31:09'),
(2, NULL, 'Laravel Password Grant Client', 'NQYH2WPpRm6ofdmHwMieOcnqaRR4cdqVIAwX3iTr', 'http://localhost', 0, 1, 0, '2020-04-15 01:31:10', '2020-04-15 01:31:10');

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
(1, 1, '2020-04-15 01:31:10', '2020-04-15 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('9b0359c6ad104dbcd80e118a7919a81fc8cb276bf7f92dbb85a76cf5f63d58d4e6afd4e3e9a68077', '1ad2f62dc3fd7da1271c032231202d93a5c9b9b717d3659a218e6afc2e6ae821231d2bdd0c447c24', 0, '2021-04-15 11:23:26'),
('c34d104de13c12c1e345dd1f39872057b88ac3479b577ca179a0a76134527a2f04df4de3c77ce22c', 'e2406ed4254b2b52657fe1e24bf7d752baef050ce7546ec94424d2c12553d3cbd253bf664c28de2e', 0, '2021-04-15 12:16:43'),
('e1e0a5c38c4944697be4a2be2755891c0f7eaba7b99374ea357fab42b5d625466aed632874113838', '709d1ba87e3d21d98a9919a713cd896fc094081bbdf82805b3843174a98ea1e61e290bd41f0ca7aa', 0, '2021-04-15 11:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `custom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `gender_id`, `product_type_id`, `custom`, `number`, `size`, `description`, `image`, `color`, `trend`, `status`, `created_at`, `updated_at`) VALUES
(1, 'repellendus', 754, 5, 1, 1, 'Yes', 9, 'M', 'Placeat aut autem voluptatibus. Doloribus omnis suscipit molestiae quod ut non. Dolor occaecati quos dolorum a. A non aut blanditiis deserunt.', 'https://lorempixel.com/640/480/?40609', 'LightCoral', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(2, 'vel', 380, 17, 1, 1, 'No', 8, 'M', 'Et vel vel est ea et. Suscipit optio quam qui beatae. Architecto voluptatibus quia officia.', 'https://lorempixel.com/640/480/?41489', 'LightSeaGreen', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(3, 'est', 901, 25, 1, 1, 'Yes', 8, 'M', 'Ut ipsa minima eius ut eum occaecati. Est harum eos ipsam voluptas alias accusamus et. Doloribus dicta minus eum debitis provident id cumque asperiores. Nobis repudiandae et fugit non.', 'https://lorempixel.com/640/480/?20287', 'ForestGreen', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(4, 'harum', 712, 24, 1, 1, 'No', 0, 'M', 'Nulla officiis blanditiis dolor optio vel quod praesentium rerum. Modi voluptas esse et dolor. Consectetur nesciunt perferendis quisquam deleniti.', 'https://lorempixel.com/640/480/?47424', 'LightPink', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(5, 'perferendis', 427, 29, 1, 2, 'Yes', 1, 'M', 'Commodi quidem nihil ea voluptatibus a. Voluptate eveniet odit autem porro. Nostrum blanditiis aliquam iure hic et recusandae. Voluptas harum et id voluptatum magnam repellendus.', 'https://lorempixel.com/640/480/?14368', 'Azure', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(6, 'laborum', 355, 14, 1, 2, 'No', 3, 'M', 'Pariatur a alias nesciunt sit quo ad. Eveniet quaerat dignissimos nulla id. Deleniti perferendis sapiente aut rem laboriosam quo.', 'https://lorempixel.com/640/480/?19111', 'MistyRose', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(7, 'ducimus', 140, 12, 1, 2, 'Yes', 9, 'M', 'Molestiae dolor recusandae laudantium totam nostrum. Sapiente quibusdam dicta provident animi voluptas veniam neque. Doloremque natus voluptatem dolores sequi dolores labore.', 'https://lorempixel.com/640/480/?61382', 'DarkSeaGreen', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(8, 'quidem', 817, 19, 1, 2, 'No', 9, 'M', 'Sed et consequuntur quaerat sequi magni tempore exercitationem. Quia consequatur perspiciatis ut consequatur ad. Consequatur qui dignissimos corporis quod eveniet quia.', 'https://lorempixel.com/640/480/?95746', 'Khaki', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(9, 'eum', 485, 21, 1, 3, 'Yes', 9, 'M', 'Consequatur soluta quis quia commodi ut ut sit quaerat. Eius praesentium vel est voluptatem aspernatur. Voluptatem minus et perspiciatis qui magni porro dicta. Et cumque sint eos aut. Sed officiis fugiat qui error.', 'https://lorempixel.com/640/480/?73244', 'MediumBlue', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(10, 'fuga', 503, 24, 1, 3, 'No', 3, 'M', 'Itaque culpa odio occaecati placeat doloremque sapiente. Cumque perspiciatis et rerum voluptas eum saepe non. Et aut et est labore quas minus totam. Deserunt rerum ullam maiores.', 'https://lorempixel.com/640/480/?43288', 'CornflowerBlue', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(11, 'aliquam', 902, 25, 1, 3, 'Yes', 5, 'M', 'Perspiciatis id repellat pariatur provident nesciunt aliquam mollitia. Corporis numquam quo animi corrupti voluptate. In vero consequatur a ducimus quisquam aut.', 'https://lorempixel.com/640/480/?49871', 'LightBlue', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(12, 'quod', 625, 15, 1, 3, 'No', 2, 'M', 'A iusto atque natus laborum. Consequatur rerum sed illum unde sed reiciendis. Qui perferendis et quibusdam possimus repudiandae praesentium.', 'https://lorempixel.com/640/480/?55914', 'LightSlateGray', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(13, 'expedita', 221, 10, 1, 4, 'Yes', 5, 'S', 'Sed dolore iusto aspernatur animi. Est modi cum perferendis atque sint porro tenetur aut. Ea molestiae enim laudantium vel minima dolor tempora.', 'https://lorempixel.com/640/480/?17771', 'MediumSpringGreen', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(14, 'et', 659, 27, 1, 4, 'No', 8, 'S', 'Perferendis reiciendis similique voluptas. Recusandae incidunt sint quasi dolore. Mollitia aperiam sed suscipit necessitatibus laudantium dolores perferendis. Qui possimus delectus modi minima ea impedit.', 'https://lorempixel.com/640/480/?62992', 'Aqua', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(15, 'eveniet', 696, 19, 2, 4, 'Yes', 9, 'S', 'Quia aut autem non deleniti esse suscipit excepturi. Beatae laboriosam quod sit illo. Repudiandae hic pariatur qui a ad nisi.', 'https://lorempixel.com/640/480/?10308', 'FireBrick', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(16, 'deserunt', 463, 13, 1, 4, 'No', 3, 'S', 'Magnam non mollitia et hic aut dolorem. Voluptas est molestiae quasi suscipit excepturi. Natus minus dicta est et. Alias perferendis ducimus ipsum ut. Debitis necessitatibus magnam perspiciatis recusandae ut atque dolore.', 'https://lorempixel.com/640/480/?54085', 'Crimson', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(17, 'rerum', 167, 27, 1, 5, 'No', 7, 'S', 'Voluptatem dolores et eligendi dolor id eos. Maxime amet ex sint animi quia nobis qui. Occaecati fuga autem natus tenetur.', 'https://lorempixel.com/640/480/?68520', 'CornflowerBlue', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(18, 'voluptatem', 770, 17, 1, 5, 'No', 4, 'S', 'Non dolor eligendi enim. Voluptas ducimus sed dolores veritatis nihil quos. Incidunt quasi eligendi magni magni. Quis numquam quos ut est.', 'https://lorempixel.com/640/480/?70449', 'Yellow', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(19, 'est', 533, 25, 1, 5, 'Yes', 3, 'S', 'Possimus ut ullam ex facere esse. Quod recusandae exercitationem sed ut tenetur tempore. Consequatur incidunt asperiores sed quos molestiae rem quidem.', 'https://lorempixel.com/640/480/?44992', 'Lime', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(20, 'beatae', 282, 26, 1, 5, 'No', 0, 'S', 'Sint ut fuga voluptatem quis qui tenetur pariatur. Repellendus accusamus odio omnis voluptas. Voluptatem consequuntur accusamus minus fugit.', 'https://lorempixel.com/640/480/?90822', 'OliveDrab', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(21, 'facere', 646, 15, 1, 6, 'No', 7, 'S', 'Non voluptatum ea illum animi consequatur qui nulla non. Enim sit qui ipsum qui ut perferendis. Et ipsam quos qui fugit quisquam.', 'https://lorempixel.com/640/480/?56138', 'LimeGreen', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(22, 'debitis', 231, 29, 1, 6, 'No', 8, 'S', 'Reprehenderit minima voluptatem qui dolor et autem laudantium. Quis odio voluptatum ut itaque qui commodi voluptas. Veritatis quas dolor quia assumenda. Sed quam est eaque provident deleniti molestiae laborum.', 'https://lorempixel.com/640/480/?72050', 'LightCyan', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(23, 'cupiditate', 768, 12, 1, 6, 'No', 9, 'S', 'Et cumque enim veritatis aut facere sapiente. Sit quia ipsam corporis animi voluptate asperiores. Perspiciatis doloribus sint laboriosam quos. Excepturi animi qui suscipit cum aperiam est. Voluptatem eaque error iusto pariatur et.', 'https://lorempixel.com/640/480/?66982', 'SlateGray', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(24, 'sed', 765, 19, 1, 6, 'No', 3, 'S', 'Est officiis quae molestiae quis cupiditate. Vero sapiente et voluptatem aut aut quas. Qui qui tempora molestiae vero.', 'https://lorempixel.com/640/480/?56559', 'Orange', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(25, 'in', 179, 23, 1, 5, 'Yes', 6, 'S', 'At suscipit inventore maxime incidunt totam dolorum perferendis sit. Sunt voluptatem fugit ea sunt autem possimus voluptatem. Suscipit numquam consequuntur illo et. Cupiditate veniam nihil vitae exercitationem ullam voluptatem.', 'https://lorempixel.com/640/480/?70941', 'Yellow', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(26, 'voluptatum', 101, 19, 1, 4, 'No', 9, 'X', 'Aut error quo est qui quos doloribus possimus. Eius eligendi molestias at ad voluptatem iure aut expedita. Eos iusto nihil delectus id distinctio consequuntur et.', 'https://lorempixel.com/640/480/?76865', 'SandyBrown', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(27, 'suscipit', 307, 24, 2, 8, 'No', 4, 'X', 'Aut et cumque voluptas recusandae. Id vero et quibusdam odit ea ut. Sit quis quidem facilis perferendis.', 'https://lorempixel.com/640/480/?82733', 'LemonChiffon', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(28, 'cumque', 716, 30, 2, 7, 'No', 1, 'X', 'Quis et voluptatem in sequi consequuntur maxime debitis et. Perspiciatis esse quia deleniti voluptatem.', 'https://lorempixel.com/640/480/?56250', 'Crimson', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(29, 'dolores', 141, 14, 1, 2, 'Yes', 5, 'X', 'Ut iste ea ratione quo minima nihil placeat qui. Illum sit corporis nostrum perferendis rerum asperiores. Tempore explicabo tenetur porro quasi. Nemo illo mollitia saepe nostrum saepe blanditiis. Doloremque consequatur vitae sunt quidem dolorem.', 'https://lorempixel.com/640/480/?26316', 'DarkKhaki', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(30, 'hic', 996, 27, 1, 6, 'No', 1, 'X', 'Et odit dolore est sequi sequi doloremque suscipit. Fugiat ut fugit non est. Quaerat aliquam excepturi omnis animi ut corrupti.', 'https://lorempixel.com/640/480/?78308', 'OliveDrab', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(31, 'hic', 954, 19, 1, 1, 'No', 3, 'X', 'Necessitatibus rerum qui asperiores. Quasi consequatur commodi modi est voluptas excepturi. Tempore velit hic sed vel.', 'https://lorempixel.com/640/480/?95025', 'Fuchsia', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(32, 'quae', 859, 12, 1, 1, 'No', 8, 'X', 'In ea iure non vel. Et praesentium facilis quis quia aut nostrum itaque. Tempora natus est et tempore. Maiores et quae earum repellat consequatur voluptatum aut.', 'https://lorempixel.com/640/480/?58571', 'Lime', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(33, 'dolorum', 521, 25, 1, 2, 'Yes', 0, 'X', 'Nihil sint nisi consequatur consequuntur quia sit eum. Corporis ea dolorem aperiam debitis accusamus porro. Impedit eum sint incidunt. Voluptatibus quia tempore ex aperiam corrupti officiis qui. Qui omnis alias dolores voluptates itaque et ut.', 'https://lorempixel.com/640/480/?69233', 'Thistle', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(34, 'et', 124, 19, 2, 6, 'No', 5, 'X', 'Repellat et quae aut aspernatur sequi beatae quo delectus. Quos itaque ut ratione quas. Ratione provident omnis cum quaerat quod. Dolor odio eius error.', 'https://lorempixel.com/640/480/?48262', 'GoldenRod', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(35, 'incidunt', 636, 14, 1, 2, 'Yes', 2, 'X', 'Culpa quasi fugit rerum ex eveniet non. Voluptates ullam fuga magnam quisquam ipsum inventore. Aut qui deserunt itaque nesciunt quis enim. Magnam ea quo optio sequi similique. Et aut placeat et nihil maiores odit.', 'https://lorempixel.com/640/480/?36844', 'DarkBlue', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(36, 'et', 392, 13, 2, 2, 'No', 0, 'X', 'Assumenda perferendis quidem voluptatibus totam non qui. Sed culpa officiis saepe quis suscipit mollitia iusto repellat. Aut eos pariatur voluptatem doloremque. Rerum nisi fuga repellat sequi veritatis voluptas.', 'https://lorempixel.com/640/480/?76742', 'DeepPink', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(37, 'non', 243, 28, 2, 4, 'Yes', 4, 'X', 'Perferendis optio deleniti non iste inventore. Et suscipit itaque aut ut aspernatur est. Sapiente qui hic doloremque eos.', 'https://lorempixel.com/640/480/?38765', 'MediumOrchid', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(38, 'quis', 355, 23, 2, 9, 'No', 6, 'X', 'Ut quia quo dolores molestiae laudantium explicabo. Exercitationem laudantium omnis assumenda ut asperiores. Qui nisi non aspernatur magni culpa. Tempore nemo nesciunt cupiditate libero. Eveniet est laudantium non totam doloribus est.', 'https://lorempixel.com/640/480/?92624', 'LightPink', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(39, 'eligendi', 336, 23, 1, 7, 'Yes', 8, 'X', 'In est aut provident tempore quasi eos. Ratione eligendi error magni quo.', 'https://lorempixel.com/640/480/?92549', 'Thistle', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(40, 'quibusdam', 364, 10, 1, 1, 'No', 1, 'XL', 'Inventore soluta cum est veniam est. Omnis nulla recusandae voluptas dolores dolor vero perferendis. Quia amet perferendis at amet.', 'https://lorempixel.com/640/480/?76478', 'Khaki', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(41, 'sed', 576, 24, 1, 5, 'Yes', 7, 'XL', 'Tempore eos blanditiis veniam cumque ipsa ducimus amet. Veritatis suscipit est voluptas praesentium aspernatur quos nostrum.', 'https://lorempixel.com/640/480/?27804', 'Teal', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(42, 'natus', 591, 15, 1, 4, 'No', 5, 'XL', 'Velit totam iure dolore numquam. Soluta in nam excepturi beatae et laudantium nobis. Molestiae officiis quod ab non doloremque quibusdam est. Ut incidunt fugiat dolorem eius. Laborum mollitia quae est voluptas.', 'https://lorempixel.com/640/480/?30751', 'BlanchedAlmond', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(43, 'cum', 420, 27, 2, 4, 'No', 4, 'XL', 'Labore explicabo ab rerum facilis. Nihil perspiciatis error qui quidem. Iusto autem in eos quasi enim voluptatem sit. Nobis aliquid exercitationem tenetur ipsa fuga et.', 'https://lorempixel.com/640/480/?59024', 'LavenderBlush', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(44, 'nemo', 482, 26, 2, 7, 'No', 3, 'XL', 'Sapiente molestiae laudantium tenetur sint debitis. Doloribus non saepe fuga deserunt. Vitae odit consequatur aut consequuntur quasi aut. Qui corporis voluptatum autem eum consectetur. Quia necessitatibus voluptatum et.', 'https://lorempixel.com/640/480/?10038', 'BlueViolet', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(45, 'omnis', 439, 23, 1, 2, 'Yes', 5, 'XL', 'Nobis et consectetur voluptate doloribus ipsam qui. Quasi ut qui rem commodi architecto non. Laboriosam perferendis deserunt consectetur dolore natus minus debitis ut.', 'https://lorempixel.com/640/480/?18570', 'NavajoWhite', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(46, 'accusantium', 819, 29, 1, 6, 'No', 6, 'XL', 'Ut asperiores debitis minima sit nobis est molestiae velit. Ut rerum autem delectus. Inventore fugit et dolorem est suscipit iure sed aut. Facere labore amet vitae officia dolor.', 'https://lorempixel.com/640/480/?72395', 'Indigo', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(47, 'beatae', 342, 17, 2, 3, 'Yes', 0, 'XL', 'Placeat et eius ab dolores. Perspiciatis eius tempora voluptatum repellat. Est et porro qui voluptatem magni aliquid voluptatem et.', 'https://lorempixel.com/640/480/?38772', 'Lavender', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(48, 'ratione', 877, 20, 2, 1, 'No', 0, 'XL', 'Autem id consequuntur iste reiciendis illo voluptatem omnis. Ea eum repudiandae ex molestiae explicabo porro fugiat. Sint dolorum consectetur illum earum ullam ex dolores similique.', 'https://lorempixel.com/640/480/?60830', 'DarkGreen', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(49, 'laborum', 235, 17, 2, 4, 'Yes', 9, 'XL', 'Repudiandae velit quidem nostrum animi possimus. Enim dolorum non nesciunt blanditiis illum et. Aut cum velit fuga expedita.', 'https://lorempixel.com/640/480/?50492', 'MediumSeaGreen', 'no', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(50, 'non', 771, 29, 2, 4, 'No', 5, 'XL', 'Animi earum quasi vero sequi non cumque nisi nulla. Nemo dolores iste error. Est voluptate cupiditate quis cumque quia cumque quo.', 'https://lorempixel.com/640/480/?95348', 'Sienna', 'yes', 'active', '2020-04-02 09:45:21', '2020-04-02 09:45:21'),
(51, 'Shart A', 500, 20, 1, 1, 'No', 10, 'M', 'The description field is required The description field is required', 'https://lorempixel.com/640/480/?62992', 'ABC Black', 'yes', 'active', '2020-04-15 06:40:37', '2020-04-15 06:40:37'),
(52, 'Shart B', 1000, 15, 1, 1, 'No', 10, 'M', 'The description field is required The description field is required', 'https://lorempixel.com/640/480/?62992', 'ABC Black', 'no', 'active', '2020-04-15 06:49:55', '2020-04-15 06:49:55'),
(53, 'Shart C', 100, 5, 1, 1, 'No', 10, 'S', 'The description field is required The description field is required', 'https://lorempixel.com/640/480/?62992', 'ABCD Black', 'yes', 'active', '2020-04-19 05:59:23', '2020-04-19 05:59:23'),
(54, 'Shart C', 100, 5, 1, 1, 'Yes', 10, 'S', 'The description field is required The description field is required', 'https://lorempixel.com/640/480/?62992', 'ABCD Black', 'no', 'active', '2020-04-22 07:52:41', '2020-04-22 07:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `created_at`, `name`, `updated_at`) VALUES
(1, '2020-04-26 20:46:02', '', NULL),
(2, NULL, 'shart', NULL),
(3, NULL, 'pant', NULL),
(4, '2020-04-26 18:00:00', 't-shirt', NULL),
(5, '2020-04-27 07:49:25', 'Shart C', '2020-04-27 07:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 37, 'Ora Thiel', 'Miss Janice Koelpin', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(2, 32, 'Eryn Stoltenberg', 'Shannon Dickinson', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(3, 25, 'Mrs. Tania Feeney', 'Mrs. Wilma Hackett PhD', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(4, 37, 'Briana Kuphal', 'Ms. Shakira Nader Sr.', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(5, 1, 'Dr. Claudia Bahringer DVM', 'Dr. Jarret Lemke', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(6, 21, 'King Shields', 'Prof. Kattie Okuneva', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(7, 50, 'Dr. Cornelius Daniel', 'Prof. Wyman Dare II', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(8, 23, 'Prof. Jimmie Hill', 'Ms. Princess Stracke III', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(9, 7, 'Ms. Patience Ortiz IV', 'Dr. Georgette Rodriguez', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(10, 38, 'Agnes Bednar', 'Paolo Dickinson', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(11, 22, 'Virgie Upton', 'Prof. Dell Labadie II', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(12, 7, 'Trever Goyette', 'Mrs. Prudence Cormier', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(13, 7, 'Scottie Schuster', 'Patrick Ledner', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(14, 26, 'Sincere Kirlin I', 'Dr. Anita Wolf', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(15, 34, 'Golda Weimann', 'Jaron Collins', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(16, 39, 'Cassie Mraz PhD', 'Dr. Damion Ward', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(17, 30, 'Dr. Paxton Koss', 'Johnnie Ratke', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(18, 27, 'Meagan Casper', 'Miss Ellen Mosciski', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(19, 44, 'Margarete Leannon', 'Prof. Rosa Spencer', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(20, 22, 'Jimmy Schaefer DDS', 'Leora Grady', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(21, 47, 'Dr. Keenan Kerluke IV', 'Novella Windler', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(22, 49, 'Lauriane Toy', 'Prof. Neva Hodkiewicz V', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(23, 32, 'Mrs. Bessie Hessel DDS', 'Mrs. Jermaine Dooley Sr.', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(24, 24, 'Colleen Harris', 'Aubrey Upton', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(25, 37, 'Mrs. Nedra Schowalter', 'Reid Rosenbaum', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(26, 48, 'Lourdes Durgan', 'Willie Hintz', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(27, 1, 'Reva Cremin MD', 'London Gorczany', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(28, 28, 'Hudson Flatley', 'Jasper Mayer Sr.', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(29, 29, 'Joey Funk', 'Ismael Conroy', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(30, 2, 'Julianne Braun', 'Edwin Yundt', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(31, 22, 'Judah Prosacco', 'Esmeralda Dickinson', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(32, 11, 'Larue Collins', 'Seth Little', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(33, 9, 'Dax Heathcote', 'Lurline Welch', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(34, 36, 'Bud Beer IV', 'Orie Ondricka', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(35, 8, 'Clark Oberbrunner', 'Dr. Nettie Morissette DVM', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(36, 6, 'Prof. Cody D\'Amore I', 'Caesar Bergnaum DVM', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(37, 28, 'Kavon McLaughlin', 'Ernest Donnelly', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(38, 10, 'Camryn Predovic', 'Agustina Williamson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(39, 20, 'Della Schuppe V', 'Ethel Jaskolski', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(40, 5, 'Tom Effertz MD', 'Leila Hoeger Jr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(41, 20, 'Mrs. Halie Morar', 'Nicholaus Kovacek', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(42, 38, 'Carmen Ziemann', 'Lexi Dicki II', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(43, 39, 'Adrien Brown', 'Mrs. Kelsie Towne', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(44, 32, 'Clint Langworth', 'Joannie Hudson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(45, 29, 'Dr. Tito Cummings Jr.', 'Alan Wisoky V', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(46, 16, 'Salvador Blick', 'Dr. Demarco Flatley', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(47, 30, 'Dr. Christelle Barrows DDS', 'Travis Pfeffer', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(48, 34, 'Cleta Hilpert', 'Idell Quitzon V', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(49, 25, 'Chasity Murray II', 'Mikel Grimes', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(50, 15, 'Johnny Moen Sr.', 'Kitty Hilpert', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(51, 45, 'Virgil Terry', 'Kristopher Schiller', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(52, 3, 'Nikki Denesik Jr.', 'Daphney Pacocha', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(53, 18, 'Rashad Lueilwitz', 'Ms. Georgette Lueilwitz', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(54, 23, 'Hassan Kihn', 'Kody Powlowski', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(55, 45, 'Dr. Austin Terry DVM', 'Prof. Oswald Kub DDS', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(56, 17, 'Prof. Valerie Turner', 'Jensen Heathcote', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(57, 24, 'Caleigh Bruen', 'Mrs. June Lowe', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(58, 25, 'Prof. Wallace Lowe', 'Mrs. Tyra Nader DVM', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(59, 41, 'Keyon Ryan', 'Precious Emard', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(60, 38, 'Alverta DuBuque', 'Noble Lowe', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(61, 50, 'Mrs. Rosalia Erdman', 'Prof. Gunnar Cassin Jr.', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(62, 13, 'Mrs. Bridgette Reynolds II', 'Dr. Casey Hudson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(63, 46, 'Miss Jackeline Durgan', 'Prof. Verlie Gleason Sr.', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(64, 5, 'Patrick Von', 'Marianne Wiegand', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(65, 38, 'Dr. Payton Haley PhD', 'Merl Friesen', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(66, 45, 'Lavon Walker', 'Makenna Zulauf', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(67, 36, 'Jonathan Hartmann', 'Raquel Emmerich', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(68, 2, 'Jennifer Hamill', 'Ole Fay', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(69, 12, 'Florence Mertz', 'Dr. Della Bernier Sr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(70, 4, 'Mr. Levi White', 'Mrs. Janis Mueller DVM', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(71, 38, 'Ms. Elsie Leannon', 'Meaghan Terry', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(72, 32, 'Armando Metz', 'Mr. Grant Corwin', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(73, 34, 'Leta Kozey', 'Ramona King', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(74, 28, 'Patricia Shanahan', 'Joan Hauck', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(75, 1, 'Mario Bergnaum', 'Joseph Greenfelder', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(76, 16, 'Rylee Swift', 'Colten Kris', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(77, 46, 'Dr. Trent Konopelski Jr.', 'Berniece Okuneva', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(78, 2, 'Mercedes Schmeler', 'Prof. Van Okuneva II', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(79, 50, 'Hal Sanford', 'Abe Satterfield', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(80, 24, 'Prof. Jamarcus Lueilwitz', 'Sandra Schmeler', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(81, 29, 'Dr. Schuyler McClure DVM', 'Bennie Medhurst', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(82, 37, 'Mr. Kayden Marks', 'Nikki Mante', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(83, 12, 'Pietro Roob III', 'Marquise Lynch', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(84, 22, 'Dr. Kelvin Schulist V', 'Dr. Cesar Dach DVM', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(85, 50, 'Prof. Robin Jenkins MD', 'Kattie Mraz', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(86, 37, 'Eduardo Cummings', 'Imogene McCullough', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(87, 32, 'Toney Schiller', 'Braeden Schamberger', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(88, 37, 'Margaret Feest', 'Mr. Trenton Ziemann V', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(89, 46, 'Keshawn Christiansen', 'Prof. Vicente Kshlerin', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(90, 35, 'Reta Walter', 'Dr. Arch Cartwright I', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(91, 23, 'Kiarra Effertz II', 'Alta Sawayn', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(92, 18, 'Mario Douglas', 'Jacques Shields', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(93, 24, 'Rozella Langworth', 'Boyd Gislason', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(94, 45, 'Emanuel Hermiston', 'Betty Lang', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(95, 23, 'Oswaldo Champlin', 'Mrs. Maureen Miller', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(96, 19, 'Stuart Marvin', 'Mr. Braulio Johnson V', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(97, 30, 'Melisa Kutch', 'Miss Brianne Schuster MD', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(98, 4, 'Jacinthe Cole', 'Charley Schuppe', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(99, 13, 'Danyka Windler', 'Miss Tamia Kemmer', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(100, 2, 'Mrs. Myriam Goyette', 'Dr. Jodie Rogahn IV', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(101, 48, 'Ms. Kitty Monahan DVM', 'Mr. Milton Heller III', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(102, 4, 'Carmella Sporer', 'Tate O\'Keefe IV', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(103, 37, 'Nellie Boehm', 'Marlon Blanda Sr.', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(104, 50, 'Prof. Isaiah Cruickshank', 'Prof. Jake Bosco', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(105, 25, 'Prof. Torey Dicki II', 'Magnolia Mante', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(106, 44, 'Mrs. Margaretta Kirlin', 'Miss Amely Gibson I', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(107, 39, 'Darby Kessler', 'Prof. Concepcion Hintz', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(108, 33, 'Rashad Crist', 'Kale Weissnat', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(109, 6, 'Aniya Okuneva I', 'Hulda Wilkinson', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(110, 38, 'Miss Bethel Erdman', 'Brianne Connelly', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(111, 10, 'Dr. Ambrose Raynor III', 'Coby Gerlach', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(112, 49, 'Bryon Welch', 'Hassie Thompson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(113, 47, 'Vance Weimann III', 'Lupe Mante V', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(114, 19, 'Prof. Lamar Harber MD', 'Dejah Sawayn', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(115, 39, 'Marco White', 'Amya Hermann', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(116, 42, 'Dora Terry IV', 'Dr. Morris Donnelly', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(117, 17, 'Johnnie Satterfield', 'Drake Runte', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(118, 10, 'Ms. Liana Ziemann', 'Ms. Margarett Hane Jr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(119, 24, 'Niko Brown', 'Miss Charlotte Heller', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(120, 20, 'Providenci Koepp', 'Royal Gaylord', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(121, 47, 'Ernesto Aufderhar', 'Sydni O\'Hara', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(122, 6, 'Fidel Waelchi Sr.', 'Neoma Becker', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(123, 36, 'Monserrate Hayes', 'Vicky Kuhlman', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(124, 19, 'Waylon Nienow', 'Angelina Denesik', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(125, 22, 'Dr. Conor Lowe V', 'Dr. Dustin Kirlin', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(126, 48, 'Ms. Aniyah Haag', 'Dr. Clementina Kautzer MD', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(127, 45, 'Jakayla Hilpert II', 'Grady Heathcote IV', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(128, 8, 'Pearl Wisozk', 'Orie Keebler', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(129, 18, 'Zachary Hahn', 'Abagail Kling', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(130, 49, 'Dr. Victoria Jones III', 'Ms. Mariane Christiansen DDS', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(131, 32, 'Destiny Deckow', 'Christine Kris', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(132, 27, 'Luciano Buckridge', 'Demetrius Barrows', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(133, 40, 'Jayda Jacobs', 'Yasmine Auer', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(134, 41, 'Dr. Fredrick Langworth DVM', 'Adaline Mayer', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(135, 10, 'Aletha Thompson', 'Prof. Savion Greenfelder', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(136, 44, 'Ms. Nellie Gislason DVM', 'Maya Haag', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(137, 22, 'Georgette Bogisich MD', 'Friedrich Hermann', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(138, 22, 'Karianne Larson', 'Prof. Rolando Satterfield DVM', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(139, 2, 'Yasmin Schroeder', 'Shane Ferry', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(140, 20, 'Dr. Berry Nicolas', 'Justine Barton DDS', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(141, 25, 'Prof. Joyce West MD', 'Leopoldo Shanahan IV', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(142, 1, 'Dr. Imani Tromp II', 'Retha Johnston', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(143, 26, 'Edmond Dietrich', 'Lia Vandervort', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(144, 40, 'Ian Maggio MD', 'Mr. Travis Pollich', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(145, 48, 'Dr. Jamel Mueller', 'Marlon Schuppe', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(146, 33, 'Samara Boyle III', 'Garnet Blick', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(147, 43, 'Madilyn Gusikowski', 'Christy Wilderman', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(148, 14, 'Charles Balistreri', 'Lillie Harris', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(149, 28, 'Miss Christa Jones MD', 'Miss Amya Kessler III', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(150, 33, 'Lucile Gutkowski', 'Janie Zemlak', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(151, 14, 'Soledad Emard', 'Domenick Zboncak', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(152, 9, 'Dr. Nathen Thompson PhD', 'Emmie Lubowitz', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(153, 37, 'Mr. Alan Erdman III', 'Noemy Turner', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(154, 20, 'Prof. Athena Zboncak Jr.', 'Shirley Langworth', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(155, 48, 'Prof. Verdie Weimann', 'Prof. Tom Sipes Sr.', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(156, 5, 'Krista Rau', 'Hailie Hintz', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(157, 8, 'Weldon Doyle', 'Mrs. Missouri Kshlerin III', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(158, 42, 'Alexandrea Nitzsche', 'Dr. Alfonso Reinger', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(159, 45, 'Clair Barrows', 'Minnie Dicki DVM', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(160, 40, 'Aylin Boehm', 'Marjorie Mosciski Jr.', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(161, 42, 'Camille Feil', 'Johnathon Crooks', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(162, 33, 'Verona Quitzon', 'Keenan Hahn IV', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(163, 28, 'Miss Joyce Nolan', 'Darron Torp', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(164, 6, 'Dr. Timmy Huel I', 'Jovani Zieme III', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(165, 22, 'Rubie Swaniawski', 'Candace Marvin', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(166, 34, 'Lonnie Hirthe', 'Murray Ondricka', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(167, 46, 'Hal Raynor', 'Keagan Ziemann', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(168, 50, 'Reta Walter', 'Bertrand Boyer', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(169, 36, 'Rodrigo Schamberger', 'Eleonore Hane', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(170, 16, 'Vernice Hansen PhD', 'Prof. Jerome Blick DDS', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(171, 17, 'Prof. Lucy Wunsch Sr.', 'Claud Blanda', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(172, 13, 'Dr. Cleve Gleichner I', 'Daryl Koss', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(173, 7, 'Justina Krajcik', 'Tito DuBuque', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(174, 19, 'Lazaro Quigley', 'Elise Runte', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(175, 36, 'Prof. Tevin Braun', 'Javon Hyatt', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(176, 18, 'Mr. Brian Hoeger DDS', 'Lenore Quitzon', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(177, 5, 'Cecilia Huel', 'Colton Lemke', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(178, 49, 'Ronaldo Spencer MD', 'Lurline Waelchi', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(179, 2, 'Odell Kuphal', 'Maci Maggio', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(180, 48, 'Winston Wuckert', 'Ashton Windler', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(181, 32, 'Magnolia Wilderman', 'Maurine Thiel', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(182, 15, 'Sid Wilderman', 'Mrs. Aletha Keeling IV', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(183, 8, 'Claudine Homenick IV', 'Prof. Maximillia Klocko IV', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(184, 1, 'Dr. Dave Anderson', 'Mr. Lambert Herzog', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(185, 27, 'Brook Goldner', 'Rebeca Heller', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(186, 44, 'Theodora Schinner', 'Aric Volkman', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(187, 39, 'Tara Abshire', 'Maci Marvin', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(188, 21, 'Winifred Kuhic Sr.', 'Devan Hahn', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(189, 29, 'Ibrahim Lubowitz', 'Mrs. Madisyn Rippin II', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(190, 19, 'Sharon Bednar', 'Citlalli Wintheiser', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(191, 29, 'Prof. Moriah Sporer II', 'Gracie Kulas DVM', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(192, 17, 'Ms. Georgette Walker', 'Rolando Hand', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(193, 29, 'Eusebio Moen', 'Demarco Buckridge', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(194, 17, 'Clement Schowalter', 'Jerad Raynor', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(195, 23, 'Lottie Langosh', 'Geovanni Connelly', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(196, 33, 'Antonia Ziemann Jr.', 'Ursula Zboncak', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(197, 5, 'Lucinda Miller', 'Hassie Halvorson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(198, 33, 'Lavonne Carroll Sr.', 'Dr. Archibald Moen', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(199, 10, 'Hyman Sporer', 'Enoch Olson', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(200, 40, 'Magali Heller', 'Dino Tremblay V', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(201, 20, 'Ignacio Ankunding', 'Emilia Farrell', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(202, 21, 'Dr. June Connelly', 'Kade Wolff', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(203, 18, 'Dr. Thalia Mitchell DVM', 'Micah Bashirian', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(204, 6, 'Bertrand Feil MD', 'Dolly Lebsack Sr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(205, 5, 'Kaylin Keeling', 'Francisco Fisher', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(206, 39, 'Van Wunsch', 'Darrick Paucek PhD', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(207, 43, 'Prof. Micah Schulist', 'Mr. Jasper Schamberger PhD', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(208, 33, 'Ola Reichert', 'Mrs. Adrianna Cremin I', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(209, 28, 'Kristoffer Renner', 'Mertie Labadie DDS', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(210, 40, 'Dr. Waylon Bernhard', 'Billy Yost', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(211, 11, 'Cassie Cassin PhD', 'Larissa Sporer', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(212, 20, 'Dr. Andreanne Funk III', 'Bailee Baumbach', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(213, 25, 'Kenyon Nikolaus', 'Dashawn Bode', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(214, 45, 'Buford Vandervort', 'Lauren Becker', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(215, 41, 'Jameson Littel', 'Deborah Feest', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(216, 32, 'Adella Littel', 'Halie Bechtelar', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(217, 49, 'Carissa Marvin', 'Ava Veum', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(218, 1, 'Julia Haag DDS', 'Dayana Stamm', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(219, 47, 'Miss Ashly Bode Sr.', 'Mrs. Asa Hayes', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(220, 7, 'Elyssa Spencer', 'Lauryn Torphy', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(221, 23, 'Dr. Nels Romaguera MD', 'Sibyl Prohaska', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(222, 33, 'Chanel Bauch', 'Grover Boyer', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(223, 10, 'Kavon Mraz', 'Ronaldo Zulauf', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(224, 10, 'Buford Nienow', 'Trycia Roob', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(225, 14, 'Alexandra Zemlak', 'Dr. Joyce Ankunding', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(226, 34, 'Milford Cole IV', 'Mr. Lafayette Cummerata', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(227, 20, 'Katlynn Steuber', 'Dr. Wilhelmine Marvin', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(228, 23, 'Mara Steuber', 'Stacey Nikolaus', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(229, 43, 'Lauretta Bogan V', 'Richard Lakin', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(230, 15, 'Ana Kozey', 'Ms. Oceane Mertz', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(231, 20, 'Alexandra Bechtelar', 'Prof. Amara Hessel', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(232, 22, 'Adelle Tromp', 'Madisyn Kuhic', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(233, 16, 'Johnnie Pacocha', 'Dr. Javier Koepp', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(234, 43, 'Prof. Robb Conn III', 'Josh Watsica', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(235, 44, 'Jalon Hansen', 'Mrs. Linnie Leuschke', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(236, 49, 'Natalia Hyatt', 'Prof. Georgiana DuBuque DVM', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(237, 35, 'Carmela Wiegand', 'Prof. Aiden Leannon', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(238, 42, 'Nickolas Schumm Sr.', 'Mr. Antwan O\'Hara', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(239, 8, 'Ms. Antonietta Kunze II', 'Raegan Bergstrom', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(240, 33, 'Estella Brekke', 'Wilber Balistreri', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(241, 22, 'Oral Jacobson Jr.', 'Mozelle Ankunding', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(242, 34, 'Sabryna Ledner', 'Carmelo Williamson V', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(243, 15, 'Prof. Connor Kutch', 'Dr. Sonya Rowe', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(244, 8, 'Payton Wuckert DVM', 'Rogers Bernier DVM', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(245, 45, 'Carissa Dooley', 'Mr. Jamel Langosh MD', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(246, 35, 'Gayle Thompson I', 'Isabella Marquardt', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(247, 25, 'Dena Crooks IV', 'Rachelle O\'Connell', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(248, 44, 'Molly Steuber', 'Dr. Malvina McGlynn', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(249, 32, 'Melvina Aufderhar', 'Claudine Strosin V', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(250, 30, 'Amara Ziemann', 'Cruz Cummerata', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(251, 45, 'Mr. Zachery Kemmer', 'Mattie Kihn', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(252, 1, 'Leonardo Howell', 'Bertrand Hammes', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(253, 7, 'Prof. Tavares Hudson Sr.', 'Regan Ondricka', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(254, 15, 'Travis Reichert', 'Reed Schultz DDS', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(255, 20, 'Darian Windler Jr.', 'Jaunita Daugherty', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(256, 48, 'Leonora Goodwin', 'Dee Moore', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(257, 10, 'Justen Deckow', 'Piper Rice', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(258, 19, 'Dr. Vincent Walter III', 'Rick Bailey', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(259, 22, 'Evangeline Becker', 'Mr. Chad Strosin', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(260, 6, 'Lauriane Wilkinson', 'Tillman Harris PhD', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(261, 14, 'Prof. River Zemlak', 'Sandra Raynor', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(262, 5, 'Prof. Elissa Bechtelar DVM', 'Diamond Koepp', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(263, 15, 'Richie Leuschke', 'Ron Torphy', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(264, 3, 'Mrs. Rahsaan Kessler', 'Tommie Stamm', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(265, 25, 'Sabryna Moore', 'Maiya Lang', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(266, 39, 'Nathan Fadel', 'Mr. Dave Boehm V', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(267, 30, 'Junius Cremin', 'Dr. Meta Hackett', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(268, 34, 'Carmel Legros', 'Dr. Stone Simonis', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(269, 7, 'Dr. Ressie Little', 'Janice Lemke', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(270, 49, 'Vladimir Leuschke', 'Prof. Wiley Gerhold III', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(271, 6, 'Gardner Daugherty PhD', 'Deborah Wiza', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(272, 11, 'Angie Rohan', 'Shad Robel', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(273, 4, 'Dominique Auer', 'Carli Waelchi', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(274, 41, 'Ms. Sophia Kerluke', 'Dahlia Sawayn DVM', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(275, 2, 'Telly Crooks', 'Mrs. Isabella Gutkowski', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(276, 15, 'Ines Gaylord', 'Ms. Dasia Hintz PhD', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(277, 23, 'Krystina Wisoky PhD', 'Hayley Nader', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(278, 43, 'Lisa Labadie PhD', 'Emily Stamm', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(279, 14, 'Emily Kris', 'Mrs. Marcelina Bailey', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(280, 24, 'Marcella Spinka', 'Terrell McDermott', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(281, 35, 'Jerome Miller', 'Wilford Adams I', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(282, 47, 'Dr. Enrique Marks', 'Desmond Kulas', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(283, 44, 'Sylvia Ebert', 'Jovan Pfannerstill', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(284, 34, 'Ms. Lori Terry MD', 'Dorris Doyle', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(285, 50, 'Shyanne Gorczany', 'Katlynn Schuppe', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(286, 26, 'Adonis Cummings', 'Jordi Effertz', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(287, 45, 'Lenna Yundt', 'Marcelle Schultz', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(288, 22, 'Mary White', 'Paul Mayert', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(289, 7, 'Houston Von', 'Isabell Cassin', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(290, 11, 'Broderick Purdy', 'Johnnie Hickle', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(291, 22, 'Dr. Kendall Blanda', 'Prof. Vida Gulgowski IV', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(292, 19, 'Freida Wunsch', 'Miss Cayla Runolfsson MD', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(293, 21, 'Tyrique Howell', 'Mr. Albert Spencer V', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(294, 37, 'Prof. Patsy Schmidt', 'Dr. Nyasia Pagac II', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(295, 32, 'Ezequiel Howe PhD', 'Grace Haag', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(296, 9, 'Mrs. Cassandre Roberts DDS', 'Sydnie Kiehn', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(297, 26, 'Dallin Krajcik', 'Isidro Swift', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(298, 34, 'Cornell Nolan V', 'Kenya Ferry', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(299, 1, 'Dr. Marie Rath II', 'Mariane Mohr', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(300, 29, 'Alfreda Olson', 'Laurence Metz MD', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '01875001213', 'admin', 'admin@gmail.com', NULL, '$2y$10$TmhjAEn/1AD9BQf8CyxrYO0Oqb01qQU4FthwCM7lmcd4dtkz1mi9K', NULL, '2020-04-02 06:37:07', '2020-04-02 06:37:07'),
(2, 'user', '01840838735', NULL, 'user@gmail.com', NULL, '$2y$10$xwXxghm4l51YAD5Zoq0tm.pa/oCP7AbP3wuyzCdF34Q5cYMwspnTm', NULL, '2020-04-02 06:39:25', '2020-04-02 06:39:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
