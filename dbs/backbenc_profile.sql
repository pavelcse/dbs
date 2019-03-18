-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2019 at 12:25 PM
-- Server version: 10.0.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backbenc_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Framework', '2018-10-07 23:48:40', '2018-10-07 23:56:37'),
(2, 'Development', '2018-10-07 23:48:56', '2018-10-07 23:48:56'),
(3, 'API', '2018-10-07 23:49:03', '2018-10-07 23:49:03'),
(4, 'Others', '2018-10-07 23:49:20', '2018-10-07 23:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `mobile_1`, `mobile_2`, `email_1`, `email_2`, `address`, `created_at`, `updated_at`) VALUES
(1, '+8801749896582', '+8801619896582', 'pavel.cse26@gmail.com', 'itsme.csepp@gmail.com', 'Mohakhali, Dhaka', '2018-10-06 07:51:05', '2018-10-06 02:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `address`, `year`, `designation`, `description`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Whatsupitec Ltd', 'Flat# 15/C, Kha-9, Confidence Centre, Shahzadpur, Dhaka-1212, Bangladesh.', 'November 2018', 'Software Developer', '<ul><li>Software&nbsp;Designing &amp; Development</li><li>Design &amp; Modify Database<br></li><li>Modify existing software&nbsp;<br></li></ul>', 'Running', '2018-10-05 23:02:35', '2018-11-16 09:54:58'),
(2, 'N Alam Group', 'Mohakhali DOHS', 'January 2018', 'Executive & IT Officer', '<ul><li> Web Designing &amp; Development</li><li>Database Design &amp; Modify<br></li><li>Modify existing website&nbsp;<br></li></ul>', 'January 2018 to September 2018', '2018-10-05 23:08:27', '2018-11-16 09:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Pavel Parvez', 'pavel@example.com', '01749896582', 'Hello', '2018-10-07 06:02:37', '2018-10-07 06:02:37'),
(3, 'Pavel Parvez', 'pavel@example.com', '01749896582', 'Hello Pavel', '2018-10-20 12:42:00', '2018-10-20 12:42:00'),
(4, 'Pavel Parvej', 'pavelparvej@gmail.com', '01749896582', 'Email Test', '2018-10-20 13:24:04', '2018-10-20 13:24:04'),
(5, 'Rasel Munshi', 'rasel@example.com', '01729362319', 'Hi, I am Rasel.', '2018-10-20 13:28:24', '2018-10-20 13:28:24'),
(6, 'SM Moni', 'moni@example.com', '01641970120', 'Hello, I m Moni', '2018-10-20 13:33:13', '2018-10-20 13:33:13'),
(7, 'Pavel Parvez', 'p.parvej007@gmail.com', '4564864', 'sddfasdfAS', '2018-10-20 13:38:07', '2018-10-20 13:38:07'),
(8, 'Pavel Parvez', 'p.parvej007@gmail.com', '01749896582', 'dfghdfghdf', '2018-10-20 13:39:17', '2018-10-20 13:39:17'),
(9, 'Pavel Parvez', 'p.parvej007@gmail.com', '01749896582', 'dfgdfgdfxgh', '2018-10-20 13:41:21', '2018-10-20 13:41:21');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_10_04_190715_create_profiles_table', 2),
(8, '2018_10_05_102700_create_objectives_table', 3),
(9, '2018_10_05_161151_create_skills_table', 4),
(10, '2018_10_05_170457_create_experiences_table', 5),
(11, '2018_10_06_052125_create_portfolios_table', 6),
(12, '2018_10_06_073048_create_contacts_table', 7),
(13, '2018_10_07_115328_create_messages_table', 8),
(14, '2018_10_08_052237_create_categories_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

CREATE TABLE `objectives` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objectives`
--

INSERT INTO `objectives` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Carrier Objective', '<p>In line with the modern competitive world, I want to survive and prove my being through my intelligence, stance, versatile mood and absorbing personality and to prepare myself to meet the heat of life. I have guts and power to make things outstanding by meeting challenges <br></p>', '2018-10-05 08:58:45', '2018-10-05 09:33:36'),
(2, 'Professional Profile', '<ul><li>Have professional experience in web design and development</li><li>Efficient in planning and work through highly iterative design phases.</li><li>Expert in handling the challenging projects in professional way</li><li>Expert in handling error <br></li></ul>', '2018-10-05 09:30:44', '2018-10-05 09:33:04'),
(3, 'Key Skills', '<ul><li>Turning broad, conceptual ideas into highly creative visual websites.</li><li>Comprehensive knowledge of web-based programming languages like PHP, MySQL, &amp; JavaScript</li><li>Integrating new technologies into existing web properties.</li><li>Experience of Design Patterns, Frameworks and Architecture.</li><li>Experience of Object-oriented PHP Software Development Methodologies.</li><li>Experience of PHP Framework Laravel Software Development Methodologies.</li><li>Keeping up to date with current and emerging web technologies through relevant blogs, publications and events.<br></li></ul>', '2018-10-05 09:37:31', '2018-10-05 09:37:31');

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
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `category_id`, `title`, `link`, `image`, `created_at`, `updated_at`) VALUES
(8, 2, 'Simple Online Exam System with OOP PHP', 'https://backbenchers.org/demo/Exam/', 'images/1540056080Screenshot7.png', '2018-10-20 11:21:20', '2018-10-20 11:21:50'),
(9, 2, 'Simple Shout Box with OOP PHP', 'https://backbenchers.org/demo/Box/', 'images/1540056164Screenshot8.png', '2018-10-20 11:22:44', '2018-10-20 11:22:44'),
(10, 2, 'Simple Ecomerce with OOP PHP', 'https://backbenchers.org/demo/Shop/', 'images/1540056202Screenshot9.png', '2018-10-20 11:23:22', '2018-10-20 11:23:22'),
(11, 2, 'Simple Blog with OOP PHP', 'https://backbenchers.org/demo/Blog/', 'images/1540056239Screenshot.png', '2018-10-20 11:23:59', '2018-10-20 11:23:59'),
(12, 1, 'Simple Todos List Using Laravel', 'https://backbenchers.org/demo/Todos/', 'images/1540056310Screenshot6.png', '2018-10-20 11:25:10', '2018-10-20 11:25:10'),
(13, 1, 'E-Commerce Using Laravel', 'https://backbenchers.org/demo/eShop/', 'images/1540056427Screenshot4.png', '2018-10-20 11:27:07', '2018-10-20 11:27:07'),
(14, 1, 'Simple E-Commerce Using Laravel', 'https://backbenchers.org/demo/ecommerce/', 'images/1540056477Screenshot2.png', '2018-10-20 11:27:57', '2018-10-20 11:27:57'),
(15, 1, 'Simple Blog Using Laravel', 'https://backbenchers.org/demo/Blog_cms/', 'images/1540056507Screenshot5.png', '2018-10-20 11:28:27', '2018-10-20 11:28:27'),
(16, 1, 'Simple Forum Using Laravel', 'https://backbenchers.org/demo/eForum/', 'images/1540056540Screenshot3.png', '2018-10-20 11:29:00', '2018-10-20 11:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `photo`, `title`, `name`, `birth_date`, `phone`, `email`, `address`, `website`, `created_at`, `updated_at`) VALUES
(1, 'images/1538905741profile.png', 'Web Developer - PHP', 'Pavel Parvej', '1993-08-16', '+8801749 896582', 'pavel.cse26@gmail.com', 'B-183/21, New DOHS, Mohakhali, Dhaka 1206', 'https://github.com/pavelcse', '2018-10-04 19:18:58', '2018-10-17 02:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'Have intermediate knowledge about laravel. Good expertise in E-commerce, Blog and other systems by using laravel.', '2018-10-05 10:40:40', '2018-10-17 00:22:08'),
(2, 'OOP PHP', '<p>Good Experience in Object-Oriented Programming PHP&nbsp; as well as online \r\napplications. Ability to solve any kind of error.<br></p>', '2018-10-05 10:53:27', '2018-10-17 00:26:35'),
(3, 'VueJS', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(88, 99, 113); font-family: &quot;Open Sans&quot;,sans-serif; font-size: 14.4px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 27.36px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">Basic concept on VueJS. Ability to use vuejs with laravel. Trying to learn more about VueJS.</span></p>', '2018-10-05 10:53:46', '2018-10-17 00:38:45'),
(4, 'Bootstrap', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(88, 99, 113); font-family: &quot;Open Sans&quot;,sans-serif; font-size: 14.4px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 27.36px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">Have intermediate knowledge about BootStrap. Ability to create any kind of static web page. Trying to learn more.</span></p>', '2018-10-05 10:53:59', '2018-10-17 00:38:59'),
(5, 'Codeigniter', '<p>Have intermediate knowledge about Codeigniter. Good expertise in E-commerce, Blog and other systems by using&nbsp;<span style=\"font-size: 14.4px;\">Codeigniter</span>.<br></p>', '2018-11-16 09:58:48', '2018-11-16 09:58:48'),
(6, 'Ajax', '<p>Have intermediate knowledge about Ajax. Ability to use any kind of web application. Trying to learn more.<br></p>', '2018-11-16 10:01:24', '2018-11-16 10:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `is_admin`, `name`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pavel Parvej', NULL, 'pavel@admin.com', NULL, '$2y$10$1pic.37g0Q5b6fmCcr02mevbMNB/jTTVZLAPb.Y21KohgCeCyt8fu', 'zy07kZKcp52egqrFUQSudToVx9Ey4wMUeY2GRl8u5Nea0wD5kgvBWz324cdl', '2018-10-04 11:34:34', '2018-10-04 11:34:34');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
