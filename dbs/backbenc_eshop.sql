-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2019 at 12:22 PM
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
-- Database: `backbenc_eshop`
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
(3, '2018_05_06_163135_create_tbl_admin_table', 1),
(4, '2018_05_07_081315_create_tbl_category_tbl', 1),
(5, '2018_05_08_174300_create_tbl_brand_table', 2),
(6, '2018_05_08_201737_create_tbl_product_table', 3),
(7, '2018_05_09_173114_create_tbl_slider_table', 4),
(8, '2018_05_10_054317_create_tbl_social_table', 5),
(9, '2018_05_12_063256_create_tbl_user_table', 6),
(10, '2018_05_12_090930_create_tbl_shipping_table', 7),
(11, '2018_05_12_193404_create_tbl_payment_table', 8),
(12, '2018_05_12_193450_create_tbl_order_table', 8),
(13, '2018_05_12_193535_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'pavel@example.com', 'cccf23f8ddffe1e319c26bb64be77826', 'Pavel Parvej', '01749896582', '2018-05-09 15:45:57', '2018-05-09 15:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Hugo Boss', 'This is Hugo Boss Brand', 1, NULL, NULL),
(2, 'Nike', 'This is Nike Brand', 1, NULL, NULL),
(3, 'Yellow', 'This is Yellow Brand', 1, NULL, NULL),
(4, 'Samsung', 'This is Samsung Brand', 1, NULL, NULL),
(5, 'Nokia', 'This is Nokia Brand', 1, NULL, NULL),
(6, 'Dell', 'This is Dell Brand', 1, NULL, NULL),
(7, 'Toshiba', 'This is Toshiba Brand', 1, NULL, NULL),
(8, 'HP', 'This is HP Brand', 1, NULL, NULL),
(9, 'Huawei', 'This is Huawei Brand', 1, NULL, NULL),
(10, 'Apple', 'This is iPhone Brand', 1, NULL, NULL),
(11, 'Arclinea', 'This is Arclinea Brand', 0, NULL, NULL),
(12, 'Others', 'All normal Brands', 0, NULL, NULL),
(13, 'Others', 'Others Brand', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(8, 'Men', 'This is Men Category', 1, NULL, NULL),
(9, 'Women', 'This is Women Category', 1, NULL, NULL),
(10, 'Child', 'This is child Category', 1, NULL, NULL),
(11, 'Accessories', 'This is Accessories Category', 1, NULL, NULL),
(12, 'Electronics', 'This is Electronics Category', 1, NULL, NULL),
(13, 'Computer Accessories', 'This is Computer Accessories Category', 1, NULL, NULL),
(14, 'Smart Phone', 'This is Smart Phone Category', 1, NULL, NULL),
(15, 'Laptop', 'This is Laptop Category', 1, NULL, NULL),
(16, 'Smart Phone Accessories', 'This is Smart Phone Accessories Category', 1, NULL, NULL),
(17, 'Kitchen', 'This is Kitchen Category', 1, NULL, NULL),
(18, 'House Accessories', 'This is House Accessories Category', 1, NULL, NULL),
(19, 'Antic Pieces', 'This is Antic Pieces Category', 1, NULL, NULL),
(20, 'Others', 'Others Category', 1, NULL, NULL),
(21, 'Uncategorized', 'Uncategorized', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(9, 1, 12, 10, '10,700.00', 0, '2018-05-14 05:27:32', '2018-05-14 05:27:32'),
(10, 1, 13, 11, '61,900.00', 0, '2018-05-14 06:42:35', '2018-05-14 06:42:35'),
(11, 2, 14, 12, '3,000.00', 0, '2018-05-20 09:24:43', '2018-05-20 09:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(13, 9, 8, 'Men Fashion', '3550', '2', '2018-05-14 05:27:32', '2018-05-14 05:27:32'),
(14, 9, 3, 'Women Accessories', '1200', '3', '2018-05-14 05:27:32', '2018-05-14 05:27:32'),
(15, 10, 1, 'Huawei Nova 2i', '26900', '1', '2018-05-14 06:42:36', '2018-05-14 06:42:36'),
(16, 10, 2, 'Samsung Galaxy', '35000', '1', '2018-05-14 06:42:36', '2018-05-14 06:42:36'),
(17, 11, 5, 'Summar Fashion For Child', '3000', '1', '2018-05-20 09:24:43', '2018-05-20 09:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(10, 'on_delivery', 0, '2018-05-14 05:27:32', '2018-05-14 05:27:32'),
(11, 'on_delivery', 0, '2018-05-14 06:42:35', '2018-05-14 06:42:35'),
(12, 'on_delivery', 0, '2018-05-20 09:24:43', '2018-05-20 09:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 14, 9, 'Huawei Nova 2i', 'This is Huawei Nova 2i Smart Phone', 'Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.', 26900.00, 'upload/C7ZrAXt8jrI78FUWb3EC.jpeg', '5.9\" Display', 'Black, Blue', 1, '2018-05-09 08:51:06', '2018-05-09 08:51:06'),
(2, 14, 4, 'Samsung Galaxy', 'This Is Samsung Galaxy', 'It is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).', 35000.00, 'upload/1AEpwpBNbujKn5qsvHQu.jfif', '6\" Display', 'Blue, Red, Gray', 1, '2018-05-09 09:59:42', '2018-05-09 09:59:42'),
(3, 20, 13, 'Women Accessories', 'Different type of women accessories', 'There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don\'t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn\'t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.', 1200.00, 'upload/DPtOJjQLXd5g3z2VfoUr.jpg', 'Not Define', 'Different', 1, '2018-05-09 10:05:22', '2018-05-09 10:05:22'),
(4, 15, 8, 'HP Laptop', 'This is HP Laptop', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It \r\nhas roots in a piece of classical Latin literature from 45 BC, making it\r\n over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.', 52000.00, 'upload/RtDXTDyk2F8elPDWA9Ke.jpg', '14\" Display', 'Black', 1, '2018-05-09 10:10:00', '2018-05-09 10:10:00'),
(5, 10, 3, 'Summar Fashion For Child', 'This Product for Child', 'is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the industry\'s standard dummy text ever since the 1500s, \r\nwhen an unknown printer took a galley of type and scrambled it to make a\r\n type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. \r\nIt was popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.', 3000.00, 'upload/1YQJVT0YAho8L28LS8bC.jpg', 'Small, Midium', 'Blue', 1, '2018-05-09 10:15:34', '2018-05-09 10:15:34'),
(8, 8, 1, 'Men Fashion', 'This is men fashion product', 'There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don\'t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn\'t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc', 3550.00, 'upload/Mx8by3Kc9dr75kyfFSZL.jpg', 'S,M,L', 'Black, Blue', 1, '2018-05-09 12:49:41', '2018-05-09 12:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `first_name`, `last_name`, `email_address`, `mobile_number`, `address`, `city`, `created_at`, `updated_at`) VALUES
(12, 'Pavel', 'Parvej', 'pavel@example.cpm', '01749896582', 'Mohakhali, Dhaka', 'Dhaka', NULL, NULL),
(13, 'Rasel', 'Munshi', 'rasel@example.com', '01729362319', 'Mohakhali, Dhaka', 'Dhaka', NULL, NULL),
(14, 'Pavel', 'Parvej', 'pavel@example.cpm', '01729362319', 'Mohakhali DOHS', 'Dhaka', NULL, NULL),
(15, 'rasel', 'rasel', 'e@gmai.com', '01725421453', 'dhaka', 'dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_title`, `slider_name`, `slider_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/cGpChWnKoN5Jt4vQ8Ui6.png', 'This is Slider First Title', 'This is First Slider Name', 'Here the description of first slider.', 1, NULL, NULL),
(2, 'upload/slider/NCMI69yRlF5FmXmq3oZa.png', 'This is Slider Second Title', 'This is Second Slider Name', 'Here the description of second slider.', 1, NULL, NULL),
(3, 'upload/slider/nmGXc2ErroGxDFSOPTpL.jpg', 'This is Slider Thrd Title', 'This is Second Third Name', 'Here the description of third slider.', 1, NULL, NULL),
(4, 'upload/slider/HlWTXPyEnvYsi69YRueq.jpg', 'This is Slider Fourth Title', 'This is Slider Fourth Name', 'Here the description of fourth slider.', 1, NULL, NULL),
(5, 'upload/slider/LuPgZ5dWzRTZrQCLCOvd.jpg', 'This is Slider Fifth Title', 'This is Fifth Slider Name', 'Here the description of fifth slider.', 1, NULL, NULL),
(6, 'upload/slider/fcLRagLG24Rz1Gtqqg1p.jpg', 'This is Slider Sixth Title', 'This is Sixth Slider Name', 'Here the description of sixth slider.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `facebook`, `twitter`, `linkedin`, `google_plus`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/pavel.cse', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://youtube.com/', '2018-05-10 06:23:57', '2018-05-10 06:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_phome`, `user_password`, `created_at`, `updated_at`) VALUES
(1, 'Pavel Parbej', 'pavel@example.com', '01749896582', 'cccf23f8ddffe1e319c26bb64be77826', NULL, NULL),
(2, 'Rasel Munshi', 'rasel@example.com', '01729362319', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL),
(3, 'rasel', 'ras@gmail.com', '01489653259', '459de3ebc7274b10b5eb52683cdb53a2', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
