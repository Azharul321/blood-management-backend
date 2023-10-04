-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 06:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE `blood_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `present_Address` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_donors`
--

INSERT INTO `blood_donors` (`id`, `image`, `name`, `blood_group`, `Phone`, `present_Address`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Shahadat Hossin', 'B+', '01756556565', 'Jatrabari, Dhaka', '2023-10-04 10:13:11', '2023-10-04 10:13:11'),
(2, NULL, 'Anwar Hossen', 'A+', '01756556565', 'Nilkhet, Dhaka', '2023-10-04 10:15:54', '2023-10-04 10:15:54'),
(3, NULL, 'Azharul Islam', 'AB+', '01756556565', 'Banani, Dhaka', '2023-10-04 10:16:36', '2023-10-04 10:16:36'),
(4, NULL, 'Kazi Jahid Hasan', 'A-', '01756556565', 'Phartali, Chattogram', '2023-10-04 10:17:57', '2023-10-04 10:17:57'),
(5, NULL, 'Shamima Yasmin', 'A+', '01756446556', 'Laksam,Cumilla', '2023-10-04 10:18:41', '2023-10-04 10:18:41'),
(6, NULL, 'Kazi Samsul Alam', 'O+', '017565457899', 'Laksam,Cumilla', '2023-10-04 10:19:22', '2023-10-04 10:19:22'),
(7, NULL, 'Marzan Begum', 'O-', '0175644645565', 'Jatrabari, Dhaka', '2023-10-04 10:20:17', '2023-10-04 10:20:17'),
(8, NULL, 'kazi Majharul Islam', 'B-', '01756556565', 'Phartali, Chattogram', '2023-10-04 10:20:48', '2023-10-04 10:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`id`, `blood_group`, `name`, `location`, `Phone`, `details`, `created_at`, `updated_at`) VALUES
(1, 'B+', 'Maher Abdulllah', 'Dhanmondi, Dhaka', '01945646565', '💁‍♂️রোগীর সমস্যাঃসিজার 🩸রক্তের গ্রুপঃবি- 🌡️হিমোগ্লোবিনঃ৯ 💉রক্তের পরিমাণঃ১ ব্যাগ 📆রক্তদানের তারিখঃআজকে হলে ভালো হয় আর নয়তো কালকে 🏥রক্তদানের স্থানঃ নিউ ঢাকা ইসলামিয়া জেনারেল হাসপাতাল,বড়বাড়ি,গাজীপুর  📱যোগাযোগঃ01984420106', '2023-10-04 10:31:03', '2023-10-04 10:31:03'),
(2, 'B-', 'Mahtab', 'Mirpur, Dhaka', '01756556565', '🤰রোগীর সমস্যাঃ- লিভারের সমস্যা।  🔴রক্তের গ্রুপঃ- বি নেগেটিভ।  💉রক্তের পরিমাণঃ- ২ ব্যাগ 📆রক্তদানের তারিখঃ- ৪-১০-২০২ (ইমারজেন্সি)।  ⌚রক্তদানের সময়ঃ-  যে কোনো সময়। 🏥রক্তদানের স্থানঃ- মিটফোর্ড হাসপাতাল।', '2023-10-04 10:32:48', '2023-10-04 10:32:48'),
(3, 'O+', 'Nabila', 'Laksam, Cumilla', '01756446556', 'জরুরী \"ও পরযেটিভ \" রক্তের প্রয়োজন  💁 রোগীর সমস্যাঃ  ডেংগু 🔴রক্তের গ্রুপ:  ও পরযেটিভ  💉রক্তের পরিমাণ : ২ ব্যাগ 📆রক্তদানের তারিখঃ যতো দূরত্ সম্ভব  ✨ রক্তদানের সময় :  যতো দূরত্ সম্ভব  🏥রক্তদানের স্থান: ঢাকা,,, কমলাপুর মুগদা হসপিটাল  যোগাযোগ : +8801892766594', '2023-10-04 10:34:02', '2023-10-04 10:34:02'),
(4, 'A+', 'Safia', 'Laksam, Cumilla', '01756446556', 'আসসালামু আলাইকুম। জরুরী ডায়লাসিস ও সেপসিস রোগীর জন্য প্লাটিলেট প্রয়োজন!! রক্তের গ্রুপঃ O- (ও নেগেটিভ) রক্ত দানের তারিখঃ যেকোনো সময়। ইমার্জেন্সি প্রয়োজন। স্থানঃ সিএমএইচ হসপিটাল, ঢাকা ক্যান্টনমেন্ট। যোগাযোগঃ 0179806666', '2023-10-04 10:37:33', '2023-10-04 10:37:33');

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
-- Table structure for table `interested_donors`
--

CREATE TABLE `interested_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
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
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_10_01_052157_create_resources_table', 1),
(20, '2023_10_03_090129_create_blood_donors_table', 1),
(21, '2023_10_03_090314_create_blood_requests_table', 1),
(22, '2023_10_03_094956_create_interested_donors_table', 1),
(23, '2023_10_03_095127_create_request_to_donors_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_to_donors`
--

CREATE TABLE `request_to_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donor_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field1` varchar(255) NOT NULL,
  `field2` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donors`
--
ALTER TABLE `blood_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `interested_donors`
--
ALTER TABLE `interested_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `request_to_donors`
--
ALTER TABLE `request_to_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
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
-- AUTO_INCREMENT for table `blood_donors`
--
ALTER TABLE `blood_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interested_donors`
--
ALTER TABLE `interested_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_to_donors`
--
ALTER TABLE `request_to_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
