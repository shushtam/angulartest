-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2017 at 07:16 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angulartest`
--

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
(3, '2017_05_25_064523_create_tasks_table', 2),
(4, '2017_05_25_064727_add_tasks_table', 3),
(5, '2017_05_25_075935_add_column_priority_tasks_table', 4),
(6, '2017_05_25_080336_add_priorities_tasks_table', 5),
(7, '2017_05_25_105419_reset_priorities_tasks_table', 6);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(1, '26610', 'desc0', 'st0', 3, NULL, '2017-05-29 08:38:13'),
(2, 'task1', 'desc1', 'st1', 24, NULL, '2017-05-25 11:39:56'),
(3, 'task2', 'desc2', 'st2', 20, NULL, '2017-05-25 11:49:35'),
(4, 'task3', 'desc3', 'st3', 22, NULL, '2017-05-25 12:03:08'),
(5, 'task4', 'desc4', 'st4', 21, NULL, '2017-05-25 11:51:15'),
(6, 'task5', 'desc5', 'st5', 19, NULL, '2017-05-25 12:02:57'),
(7, 'task6', 'desc6', 'st6', 18, NULL, '2017-05-25 11:42:25'),
(8, 'task7', 'desc7', 'st7', 23, NULL, '2017-05-25 12:02:49'),
(9, 'task8', 'desc8', 'st8', 17, NULL, '2017-05-25 12:16:33'),
(10, 'task9', 'desc9', 'st9', 25, NULL, '2017-05-25 11:39:59'),
(11, 'task1034', 'desc10', 'st10', 26, NULL, '2017-05-29 04:15:35'),
(12, 'task11', 'desc11', 'st11', 27, NULL, '2017-05-25 11:50:26'),
(13, 'task12', 'desc12', 'st12', 28, NULL, '2017-05-25 12:03:03'),
(14, 'task13', 'desc13', 'st13', 29, NULL, '2017-05-25 11:50:07'),
(15, 'task14', 'desc14', 'st14', 30, NULL, '2017-05-25 12:03:14'),
(16, 'task15', 'desc15', 'st15', 31, NULL, '2017-05-25 11:50:27'),
(17, 'task16', 'desc16', 'st16', 32, NULL, '2017-05-25 11:06:02'),
(18, 'task17', 'desc17', 'st17', 35, NULL, '2017-05-25 11:50:28'),
(19, 'task18', 'desc18', 'st18', 36, NULL, '2017-05-25 11:51:28'),
(20, 'task19', 'desc19', 'st19', 33, NULL, '2017-05-25 11:50:29'),
(21, 'task20', 'desc20', 'st20', 37, NULL, '2017-05-25 12:03:07'),
(22, 'task21', 'desc21', 'st21', 34, NULL, '2017-05-25 12:03:12'),
(23, 'task22', 'desc22', 'st22', 39, NULL, '2017-05-25 10:13:52'),
(24, 'task23', 'desc23', 'st23', 40, NULL, '2017-05-25 11:05:11'),
(25, 'task24', 'desc24', 'st24', 38, NULL, '2017-05-25 11:51:35'),
(26, 'cfhgjklo', 'cfhg', 'cfhg', 2, '2017-05-26 10:39:50', '2017-05-29 08:20:50'),
(27, 'tthuyiuo', 'tt', 'tt', 6, '2017-05-26 10:41:48', '2017-05-29 08:20:54'),
(28, 'kl;o', '2', '2', 9, '2017-05-26 10:42:06', '2017-05-29 05:40:15'),
(29, 'luu;l\';\'', 'l', 'l', 11, '2017-05-26 10:42:40', '2017-05-29 05:13:30'),
(30, '11', 'uki', 'uki', 1, '2017-05-26 10:43:31', '2017-05-29 08:20:28'),
(31, '6', '6', '6', 13, '2017-05-26 10:43:51', '2017-05-26 10:43:51'),
(32, '2', '2', '2', 16, '2017-05-26 10:44:12', '2017-05-26 10:44:12'),
(33, 'ghjgiu7i', 'ghjg', 'ghjg', 15, '2017-05-26 10:44:33', '2017-05-29 04:15:28'),
(34, 'dfedf', 'dfedf', 'dfedf', 41, '2017-05-26 10:44:50', '2017-05-26 10:44:50'),
(35, '123', '123', '123', 42, '2017-05-26 10:44:58', '2017-05-26 10:44:58'),
(36, '88', '88', '88', 43, '2017-05-26 10:45:32', '2017-05-26 10:45:32'),
(37, 'iuok', 'iuok', 'iuok', 44, '2017-05-26 10:46:18', '2017-05-26 10:46:18'),
(38, '12456', '12456', '12456', 45, '2017-05-26 10:46:29', '2017-05-26 10:46:29'),
(39, 'dg', 'dg', 'dg', 46, '2017-05-26 11:03:10', '2017-05-26 11:03:10'),
(40, '45ghuiuvbiklkl', '45', '45', 10, '2017-05-26 11:04:09', '2017-05-29 05:04:49'),
(41, 'sdsduiuuxjkl', 'sdsd', 'sdsd', 8, '2017-05-29 02:17:13', '2017-05-29 05:04:33'),
(42, 'wwuiuiui', 'ww', 'ww', 14, '2017-05-29 04:16:28', '2017-05-29 04:35:58'),
(43, '3k,', 'j', 'j', 12, '2017-05-29 05:46:21', '2017-05-29 05:57:29'),
(44, '12', '1', '1', 5, '2017-05-29 05:46:35', '2017-05-29 08:20:46'),
(45, '36', 'jk,', 'jk,', 4, '2017-05-29 05:49:36', '2017-05-29 08:21:49'),
(46, 'u', 'u', 'u', 7, '2017-05-29 05:55:24', '2017-05-29 05:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', '123das@gmail.comg', 'qwerty', NULL, '2017-05-23 03:26:55', '2017-05-23 03:26:55'),
(2, '2', '123das@gmail.comg2', 'qwerty', NULL, '2017-05-23 03:29:01', '2017-05-23 03:29:01'),
(4, '1', '123das@gmail.comg22', 'qwerty', NULL, '2017-05-23 03:30:48', '2017-05-23 03:30:48'),
(6, '1', '123das@gmail.comg222', 'qwerty', NULL, '2017-05-23 03:32:05', '2017-05-23 03:32:05'),
(7, 'rry', 't@gmail.com', '$2y$10$Fk.gcudoUiAE5kfBKst2wuljLIYvZN1s8qPpKc2HubGQueAYxuTd6', NULL, '2017-05-23 04:14:32', '2017-05-24 11:41:36'),
(13, 'z', 'z@gmail.com', '$2y$10$TkYzLn0GPvOJMOXzD5IVg.w19pdH.v8nTPmBNsggXV2y.tKrODciy', NULL, '2017-05-23 05:21:03', '2017-05-23 05:21:03'),
(14, 'x', 'x@gmail.com', '$2y$10$I94lkrxIzXZFPi8gE5ILyOleReoES0ZT33ft4rJlmw84LrG6QfUQm', NULL, '2017-05-23 05:22:37', '2017-05-23 05:22:37'),
(16, 'x', 'xx@gmail.com', '$2y$10$5WPrt372tBWYLdrSN/9FiOBogdzo5IfA.RNA5r/wL7pI2SoYVhkQG', NULL, '2017-05-23 05:23:28', '2017-05-23 05:23:28'),
(17, 'g', 'g@gmail.com', '$2y$10$5ZaocJMZPzbUvmdIviX10.irSwF7lk3xwoLFY1rvxSkQhUOM0g1QK', NULL, '2017-05-23 05:24:55', '2017-05-23 05:24:55'),
(18, 'h', 'h@gmail.com', '$2y$10$199GKVYty5NxrnbaBoBpluF290g66FYgg7tU6.Y6zUgdYtJOv7/9.', NULL, '2017-05-23 05:32:00', '2017-05-23 05:32:00'),
(19, 'k', 'k@gmail.com', '$2y$10$P8Z36tFgdh9ule9XC9QZMeD0LfarZ5urtfT5C2dBApdaPMMmV0D5u', NULL, '2017-05-23 05:32:43', '2017-05-23 05:32:43'),
(20, 'j', 'jcxj@gmail.com', '$2y$10$Zxli1Db3yDZ/del9C.yoqe5qK5IEXrLLm92BR4kgeYzb.FoLw1rzu', NULL, '2017-05-23 06:19:08', '2017-05-23 06:19:08'),
(21, 'b', 'b@gmail.com', '$2y$10$uZWLIqwEC6bXx7Q8IreCeu1Pg/SovY12s7Gct0qWyTZAqAki5Kfga', NULL, '2017-05-23 06:44:06', '2017-05-23 06:44:06'),
(22, 'tbb', 'tbb@gmail.com', '$2y$10$yirslXWQEtSqUvk.Zu6m9eYU0rLzXAr0OWkGwLoYPqGluPWFleBVC', NULL, '2017-05-24 06:21:13', '2017-05-24 06:21:13'),
(23, '44444', '123das@gmai4', '$2y$10$IIHOIBbiHpK76HM5JDRfoe6A5VTvSEU0Q1DTxg3uqxd6SDVltyiYO', NULL, '2017-05-24 07:07:47', '2017-05-24 07:07:47'),
(24, '2222', 't2@gmail.com', '$2y$10$PEwJ1ULdSQWKg.4VBitI1.v1sXONOgvp7BdJIJL1qOZDbLr62sV6u', NULL, '2017-05-24 07:10:39', '2017-05-24 07:10:39'),
(26, 'pppp', 'tp@gmail.com', '$2y$10$CzxAluYjrFwKZdRTcDho4Oh4IN/Qv.ZiTiGxy8llo25ALGfz1vdt.', NULL, '2017-05-24 07:13:19', '2017-05-24 07:13:19'),
(28, 'llll', 't@gmail.coml', '$2y$10$nNl48MhJTi6uPjKsqoSXPODcXOuHBhtzSZ5VqQY4NViJ/Ep5c.94u', NULL, '2017-05-24 07:13:45', '2017-05-24 07:13:45'),
(29, '1111', 't2222@gmail.com', '$2y$10$KJvw80mBblSa3apoSs4J6OXXZGxGe8orYnUWE8POynQmwmBCuzoTi', NULL, '2017-05-24 07:57:41', '2017-05-24 07:57:41'),
(30, '1111', 't@gmail.com1', '$2y$10$p8XelsnBr2uN4Qr7U7G/.uiSFFDuTXkG4HfK0.nehCVEHUq/SARCC', NULL, '2017-05-24 08:49:58', '2017-05-24 08:49:58'),
(31, '22222', 't@gmail.com2222', '$2y$10$9uk8GLCAWNVkjj/e41FH/OflMYuQpv/CXr7CkNLronm41RT2WL3iO', NULL, '2017-05-24 08:51:12', '2017-05-24 08:51:12'),
(32, '55555', 't@gmail.com55555', '$2y$10$JiUSxCK2XB4VMWOgnbDfs.DSfgHB2zPR3Ov4fWyPugIVd0K5j.xvW', NULL, '2017-05-24 08:56:38', '2017-05-24 08:56:38'),
(33, '66666666666', 't@gmail.com66666666666666666', '$2y$10$0Vx2mg0BrcySRw2omq3PgeOEf9uD.cAtXPhL1hBxluYkORbFWBxqm', NULL, '2017-05-24 08:57:11', '2017-05-24 08:57:11'),
(34, '11111', '111111t@gmail.com', '$2y$10$rTDOZC33dY013eyytMHP3.3lzsNjqW.4i3TsgiI3YBXTem/P1zlU6', NULL, '2017-05-24 09:01:43', '2017-05-24 09:01:43'),
(35, '5555555555', 't@gmail.com55555555555', '$2y$10$w.MqKPVg4ndbrH7tSOIurOyGXqSF67ciNozthhgo42rAJAFGX.3F6', NULL, '2017-05-24 09:03:17', '2017-05-24 09:03:17'),
(36, '6666', 't@gmail.com66', '$2y$10$1u5ra0wnRA7bY/AFe92GOORFxG8eKBUSyhsPIqOaXmj848970jP82', NULL, '2017-05-24 09:06:00', '2017-05-24 09:06:00'),
(37, '2222', 't@gmail.comggg', '$2y$10$6h1dxikfimgpqm3cwT4PkujBADOomw0rqjmFOFHPNjkZkIxJrlgXO', NULL, '2017-05-24 09:33:01', '2017-05-24 09:33:01'),
(38, '23253.', 't@gmail.com453543', '$2y$10$EagpuurL1rigTv8RtmBoAOXoVLaQmwbvW8f1171R3ID7pHWpf6yEm', NULL, '2017-05-24 09:33:32', '2017-05-24 09:33:32'),
(39, '2222', 't@gmail.com5999', '$2y$10$uqydUfVX21LkUsin0YuJC.ZiRWF/WWEeyIwn50QmBDBDveueQzhUq', NULL, '2017-05-24 09:41:44', '2017-05-24 09:41:44'),
(40, '563', 't@gmail.com5636', '$2y$10$xi.BDfdrdkmldH8R1ndt5eALPh3Y0TFdqrEd9Ot53efgzAJqEHCym', NULL, '2017-05-24 09:43:16', '2017-05-24 09:43:16'),
(41, '565656', '7777t@gmail.com', '$2y$10$V5dD9t3TomiesGvembvYZuJ2GZjmnbcG1h2zBUxLtG63e/E9nXLdy', NULL, '2017-05-24 09:45:03', '2017-05-24 09:45:03'),
(42, 'p[p', 't@gm', '$2y$10$m4eJzbEzRznR64wtzRKx2eK997bXcluM4xcytBZ7dJ37Ra9ign1Oa', NULL, '2017-05-24 10:23:31', '2017-05-24 10:23:31'),
(43, 'yuuytu', 'uiuyi@stgrg', '$2y$10$SbYTY7Q7THDqHO/FnHs9s.NdI3Db8SUf6AyTsqNyCQ/TAYWK/gujm', NULL, '2017-05-24 10:46:12', '2017-05-24 10:46:12'),
(44, '1111', '123das@gmail.comg222222', '$2y$10$PyQDe3usA3Oag.awKfGKAenqragytA1YNW6WowlP1dXbAbXOhiz5a', NULL, '2017-05-24 11:11:23', '2017-05-24 11:11:23'),
(45, 'tttttt', 't@gmail.comttttt', '$2y$10$oocSBfbE7VXofEFjcNTMfuCn9072OFGGYEzmHyXaBY.Ha..1RLqtm', NULL, '2017-05-24 11:12:37', '2017-05-24 11:12:37'),
(46, 'rtretret', 'kk@drggt', '$2y$10$EGAJ2fnW0HiDLGvtwpYx6uod02qiKbR6/hiTxhbCyGpwmjzll6q2K', NULL, '2017-05-24 11:34:22', '2017-05-24 11:34:22'),
(47, '11111', '2111@setrf', '$2y$10$t4ifev8j.EIQW4Y6Q9qo7eEs7muEQAfRE9oVIngqfvT1BiAjrPw4K', NULL, '2017-05-29 07:00:43', '2017-05-29 07:00:43'),
(48, '111', 't@oo', '$2y$10$wjY5qPkG6teUmnv0nHEGVu2sQ3GsWQZHAnuMVba64UcT8ufJ9pAnC', NULL, '2017-05-29 07:05:30', '2017-05-29 07:05:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
