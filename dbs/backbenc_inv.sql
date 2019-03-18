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
-- Database: `backbenc_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

CREATE TABLE `sma_addresses` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

CREATE TABLE `sma_adjustment_items` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

CREATE TABLE `sma_brands` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`, `description`) VALUES
(2, 'BD', 'Bangladesh', NULL, 'bangladesh', 'bangladesh'),
(3, 'CN', 'China', NULL, 'china', 'china'),
(4, 'IND', 'India', NULL, 'india', 'india'),
(5, 'TAI', 'Taiwan', NULL, 'taiwan', 'taiwan'),
(6, 'JP', 'Japan', NULL, 'japan', 'japan'),
(7, 'USA', 'America', NULL, 'america', 'america');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

CREATE TABLE `sma_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

CREATE TABLE `sma_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`, `description`) VALUES
(5, 'E1', 'Electronics', NULL, 0, 'electronics', 'electronics'),
(6, 'M1', 'Medicine', NULL, 0, 'medicine', 'medicine'),
(7, 'R1', 'Rice', NULL, 0, 'rice', 'rice'),
(8, 'C1', 'Chicken', NULL, 0, 'chicken', 'chicken'),
(9, 'D1', 'Drinks', NULL, 0, 'drinks', 'drinks');

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

CREATE TABLE `sma_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

CREATE TABLE `sma_companies` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text,
  `payment_term` int(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT '0',
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(1, 3, 'customer', 1, 'General', 'Walk-in Customer', 'Walk-in Customer', '', '9 Notun Bazar,', 'Dhaka.', '', '1212', 'Bangladesh', '01616709273', 'info@7clouds.net', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(2, 4, 'supplier', NULL, NULL, 'Test Supplier', 'Supplier Company Name', '', '9 Notun Bazar,', 'Dhaka.', '', '1212', 'Bangladesh', '01616709273', 'info@7clouds.net', '-', '-', '-', '-', '-', '-', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(3, NULL, 'biller', NULL, NULL, '-', '.', '20182019', '9 Notun Bazar,', 'Dhaka.', '', '1212', 'Bangladesh', '01616709273', 'info@7clouds.net', '', '', '', '', '', '', 'Thank you for shopping with us. Please come again', 0, 'logo7clouds1.png', 0, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

CREATE TABLE `sma_costing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT '0',
  `overselling` tinyint(1) DEFAULT '0',
  `option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(117, '2019-01-23', 133, 117, 58, 124, '1.0000', '80000.0000', '88000.0000', '110000.0000', '121000.0000', '99.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0',
  `symbol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(1, 'USD', 'US Dollar', '1.0000', 0, NULL),
(2, 'EUR', 'EURO', '0.7340', 0, NULL),
(3, 'BDT', 'Taka', '0.0120', 0, '৳');

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(6, 'sales', 'Sales Staff');

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_login_attempts`
--

INSERT INTO `sma_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, 0x3130332e3133302e31312e3632, 'admin', 1549253627),
(3, 0x3130332e3133302e31312e3632, 'admin', 1549253672);

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_notifications`
--

INSERT INTO `sma_notifications` (`id`, `comment`, `date`, `from_date`, `till_date`, `scope`) VALUES
(1, '<p>-</p>', '2014-08-15 10:00:57', '2015-01-01 00:00:00', '2017-01-01 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT '1',
  `qu` int(11) NOT NULL DEFAULT '1',
  `po` int(11) NOT NULL DEFAULT '1',
  `to` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '1',
  `do` int(11) NOT NULL DEFAULT '1',
  `pay` int(11) NOT NULL DEFAULT '1',
  `re` int(11) NOT NULL DEFAULT '1',
  `rep` int(11) NOT NULL DEFAULT '1',
  `ex` int(11) NOT NULL DEFAULT '1',
  `ppay` int(11) NOT NULL DEFAULT '1',
  `qa` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2015-03-01', 1, 1, 2, 1, 57, 1, 57, 1, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(57, '2019-01-23 10:53:44', 58, NULL, NULL, 'IPAY2019/01/0056', NULL, 'cash', '', '', '', '', '', '', '120995.0000', NULL, 5, NULL, 'received', '', '120995.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '2.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '3.9000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '4.4000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT '0',
  `products-add` tinyint(1) DEFAULT '0',
  `products-edit` tinyint(1) DEFAULT '0',
  `products-delete` tinyint(1) DEFAULT '0',
  `products-cost` tinyint(1) DEFAULT '0',
  `products-price` tinyint(1) DEFAULT '0',
  `quotes-index` tinyint(1) DEFAULT '0',
  `quotes-add` tinyint(1) DEFAULT '0',
  `quotes-edit` tinyint(1) DEFAULT '0',
  `quotes-pdf` tinyint(1) DEFAULT '0',
  `quotes-email` tinyint(1) DEFAULT '0',
  `quotes-delete` tinyint(1) DEFAULT '0',
  `sales-index` tinyint(1) DEFAULT '0',
  `sales-add` tinyint(1) DEFAULT '0',
  `sales-edit` tinyint(1) DEFAULT '0',
  `sales-pdf` tinyint(1) DEFAULT '0',
  `sales-email` tinyint(1) DEFAULT '0',
  `sales-delete` tinyint(1) DEFAULT '0',
  `purchases-index` tinyint(1) DEFAULT '0',
  `purchases-add` tinyint(1) DEFAULT '0',
  `purchases-edit` tinyint(1) DEFAULT '0',
  `purchases-pdf` tinyint(1) DEFAULT '0',
  `purchases-email` tinyint(1) DEFAULT '0',
  `purchases-delete` tinyint(1) DEFAULT '0',
  `transfers-index` tinyint(1) DEFAULT '0',
  `transfers-add` tinyint(1) DEFAULT '0',
  `transfers-edit` tinyint(1) DEFAULT '0',
  `transfers-pdf` tinyint(1) DEFAULT '0',
  `transfers-email` tinyint(1) DEFAULT '0',
  `transfers-delete` tinyint(1) DEFAULT '0',
  `customers-index` tinyint(1) DEFAULT '0',
  `customers-add` tinyint(1) DEFAULT '0',
  `customers-edit` tinyint(1) DEFAULT '0',
  `customers-delete` tinyint(1) DEFAULT '0',
  `suppliers-index` tinyint(1) DEFAULT '0',
  `suppliers-add` tinyint(1) DEFAULT '0',
  `suppliers-edit` tinyint(1) DEFAULT '0',
  `suppliers-delete` tinyint(1) DEFAULT '0',
  `sales-deliveries` tinyint(1) DEFAULT '0',
  `sales-add_delivery` tinyint(1) DEFAULT '0',
  `sales-edit_delivery` tinyint(1) DEFAULT '0',
  `sales-delete_delivery` tinyint(1) DEFAULT '0',
  `sales-email_delivery` tinyint(1) DEFAULT '0',
  `sales-pdf_delivery` tinyint(1) DEFAULT '0',
  `sales-gift_cards` tinyint(1) DEFAULT '0',
  `sales-add_gift_card` tinyint(1) DEFAULT '0',
  `sales-edit_gift_card` tinyint(1) DEFAULT '0',
  `sales-delete_gift_card` tinyint(1) DEFAULT '0',
  `pos-index` tinyint(1) DEFAULT '0',
  `sales-return_sales` tinyint(1) DEFAULT '0',
  `reports-index` tinyint(1) DEFAULT '0',
  `reports-warehouse_stock` tinyint(1) DEFAULT '0',
  `reports-quantity_alerts` tinyint(1) DEFAULT '0',
  `reports-expiry_alerts` tinyint(1) DEFAULT '0',
  `reports-products` tinyint(1) DEFAULT '0',
  `reports-daily_sales` tinyint(1) DEFAULT '0',
  `reports-monthly_sales` tinyint(1) DEFAULT '0',
  `reports-sales` tinyint(1) DEFAULT '0',
  `reports-payments` tinyint(1) DEFAULT '0',
  `reports-purchases` tinyint(1) DEFAULT '0',
  `reports-profit_loss` tinyint(1) DEFAULT '0',
  `reports-customers` tinyint(1) DEFAULT '0',
  `reports-suppliers` tinyint(1) DEFAULT '0',
  `reports-staff` tinyint(1) DEFAULT '0',
  `reports-register` tinyint(1) DEFAULT '0',
  `sales-payments` tinyint(1) DEFAULT '0',
  `purchases-payments` tinyint(1) DEFAULT '0',
  `purchases-expenses` tinyint(1) DEFAULT '0',
  `products-adjustments` tinyint(1) NOT NULL DEFAULT '0',
  `bulk_actions` tinyint(1) NOT NULL DEFAULT '0',
  `customers-deposits` tinyint(1) NOT NULL DEFAULT '0',
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT '0',
  `products-barcode` tinyint(1) NOT NULL DEFAULT '0',
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `reports-expenses` tinyint(1) NOT NULL DEFAULT '0',
  `reports-daily_purchases` tinyint(1) DEFAULT '0',
  `reports-monthly_purchases` tinyint(1) DEFAULT '0',
  `products-stock_count` tinyint(1) DEFAULT '0',
  `edit_price` tinyint(1) DEFAULT '0',
  `returns-index` tinyint(1) DEFAULT '0',
  `returns-add` tinyint(1) DEFAULT '0',
  `returns-edit` tinyint(1) DEFAULT '0',
  `returns-delete` tinyint(1) DEFAULT '0',
  `returns-email` tinyint(1) DEFAULT '0',
  `returns-pdf` tinyint(1) DEFAULT '0',
  `reports-tax` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `returns-index`, `returns-add`, `returns-edit`, `returns-delete`, `returns-email`, `returns-pdf`, `reports-tax`) VALUES
(1, 5, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2018-12-07 18:38:43', 2, '1.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-12-07 19:11:51', 3, '1.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-12-07 22:37:59', 4, '10003.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-12-07 22:40:59', 6, '1000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-12-08 19:03:39', 5, '1.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-01-23 17:18:58', 7, '1.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

CREATE TABLE `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT '1',
  `paypal_pro` tinyint(1) DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `rounding` tinyint(1) DEFAULT '0',
  `char_per_line` tinyint(4) DEFAULT '42',
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.9',
  `after_sale_page` tinyint(1) DEFAULT '0',
  `item_order` tinyint(1) DEFAULT '0',
  `authorize` tinyint(1) DEFAULT '0',
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT '1',
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT '0',
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 20, 2, 1, 3, '1', 'GST Reg', 'VAT Reg', '', '20182019', NULL, 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, NULL, 0, 'default', 1, 0, 0, 4, 42, NULL, 'purchase_code', 'envato_username', '3.4.9', 0, 0, 0, '', 1, NULL, 'null', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

CREATE TABLE `sma_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT '20.0000',
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text,
  `tax_method` tinyint(1) DEFAULT '0',
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT '0',
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `weight` decimal(10,4) DEFAULT NULL,
  `hsn_code` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `second_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`) VALUES
(133, 'Apple1', 'Apple Mac Book', 6, '80000.0000', '110000.0000', '20.0000', 'aea527fef22527eba88c3e19d893a95d.JPG', 5, NULL, '', '', '', '', '', '', '99.0000', 6, 1, '<p>Processor - core i3</p><p>HDD- 500GB</p><p>RAM- 8GB</p><p>5TH Gen.</p>', NULL, 'code128', '', '<p>Processor - core i3</p><p>HDD- 500GB</p><p>RAM- 8GB</p><p>5TH Gen.</p>', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 7, 'apple-mac-book', NULL, '0.0000', NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

CREATE TABLE `sma_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT '0.0000',
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(2, NULL, NULL, 3, '002', 'water large Bottle', NULL, '20.0000', '1.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20.0000', '0.0000', '2018-12-07', 'received', '20.0000', '20.0000', '1.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(3, NULL, NULL, 4, '0001', 'Da Hongpao', NULL, '300.0000', '1000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '300000.0000', '999.0000', '2018-12-07', 'received', '300.0000', '300.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(4, NULL, NULL, 6, '0003', 'Rougui', NULL, '300.0000', '1000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '300000.0000', '1000.0000', '2018-12-07', 'received', '300.0000', '300.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(5, NULL, NULL, 7, '60', '52_Chinese business meal pack', NULL, '500.0000', '10000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '5000000.0000', '9998.0000', '2018-12-07', 'received', '500.0000', '500.0000', '10000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(6, NULL, NULL, 8, '01', 'Tea', NULL, '50.0000', '1000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '50000.0000', '999.0000', '2018-12-08', 'received', '50.0000', '50.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(7, NULL, NULL, 9, '0001', 'I phone 6', NULL, '10000.0000', '10.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '100000.0000', '10.0000', '2018-12-08', 'received', '10000.0000', '10000.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(8, NULL, NULL, 10, '00001', '0_water_small bottle', NULL, '11.0400', '100000.0000', 1, '165600.0000', 2, '15.0000%', NULL, NULL, NULL, '1269600.0000', '99988.0000', '2018-12-09', 'received', '12.6960', '12.6960', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(9, NULL, NULL, 11, '00000_0', '0_water_big bottle', NULL, '15.0000', '10000.0000', 1, '22500.0000', 2, '15.0000%', NULL, NULL, NULL, '172500.0000', '10000.0000', '2018-12-09', 'received', '17.2500', '17.2500', '10000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(10, NULL, NULL, 12, '00001', 'Da Hongpao Tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(11, NULL, NULL, 13, '00002', 'Rougui tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(12, NULL, NULL, 14, '00003', 'Tie guanyin', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(13, NULL, NULL, 16, '00005', 'Rose tea', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '99998.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(14, NULL, NULL, 17, '00006', 'Rose& Lemon tea', NULL, '250.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000.0000', '100000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(15, NULL, NULL, 18, '00007', 'Chrysanthemum& Date tea', NULL, '250.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000.0000', '100000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(16, NULL, NULL, 19, '00008', 'Rose& Osmanthus Tea', NULL, '250.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000.0000', '100000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(17, NULL, NULL, 20, '00009', 'Natural milk tea', NULL, '100.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '10000000.0000', '100000.0000', '2018-12-09', 'received', '100.0000', '100.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(18, NULL, NULL, 21, '000010', 'Black Pearl milk tea', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '99999.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(19, NULL, NULL, 22, '000011', 'White Pearl milk tea', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '100000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(20, NULL, NULL, 23, '000012', 'Red Bean Pearl milk tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(21, NULL, NULL, 24, '000013', 'Coffee Milk tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(22, NULL, NULL, 25, '000014', 'Black sugar pearl milk tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(23, NULL, NULL, 26, '000015', 'Mocha pearl milk tea', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(24, NULL, NULL, 27, '000016', 'Seasonal Fruit tea with ice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 28, '000017', 'Seasonal Hot Fruit tea ', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(26, NULL, NULL, 29, '000018', 'Fresh juice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(27, NULL, NULL, 30, '400', 'The best mixing juice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 31, '000019', 'The best mixing juice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(29, NULL, NULL, 32, '000020', 'Fresh milk juice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(30, NULL, NULL, 33, '000021', 'Corn juice', NULL, '300.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000.0000', '100000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(31, NULL, NULL, 34, '000022', 'Pumpkin Juice', NULL, '250.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000.0000', '100000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(32, NULL, NULL, 35, '000023', 'Red bean juice', NULL, '250.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000.0000', '100000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(33, NULL, NULL, 36, '000024', 'Latte Coffee', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '100000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(34, NULL, NULL, 37, '000025', 'Cappuccino', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '99998.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(35, NULL, NULL, 38, '000026', 'Mocha Coffee', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '100000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(36, NULL, NULL, 39, '000027', 'Espresso', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '100000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(37, NULL, NULL, 40, '000028', 'American Coffee ', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '99999.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(38, NULL, NULL, 45, '000032', 'Hot mocha latte', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '99999.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(39, NULL, NULL, 46, '000031', 'Ice chocolate ', NULL, '200.0000', '100000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000.0000', '100000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(40, NULL, NULL, 47, '000030', 'Hot Chocolate', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(41, NULL, NULL, 48, '000029', 'Ice Coffee', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(42, NULL, NULL, 49, '000033', 'Ice mocha Latte', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(43, NULL, NULL, 50, '000034', 'Chocolate ice mountain', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-09', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(44, NULL, NULL, 51, '000035', 'Mango Ice Mountain', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-09', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(45, NULL, NULL, 52, '000036', 'Mango Milk Mountain', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '99999999.0000', '2018-12-09', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(46, NULL, NULL, 53, '000039', 'Soga Cream with mango', NULL, '450.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '45000000000.0000', '99999998.0000', '2018-12-09', 'received', '450.0000', '450.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(47, NULL, NULL, 54, '000043', 'Roast chicken Wins', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '99999999.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(48, NULL, NULL, 55, '000044', 'Fried chicken leg (4 pcs)', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-09', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(49, NULL, NULL, 56, '000045', 'Fried chips', NULL, '100.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '10000000000.0000', '99999999.0000', '2018-12-09', 'received', '100.0000', '100.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(50, NULL, NULL, 57, '000046', 'Fried vegetable chips', NULL, '150.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '15000000000.0000', '100000000.0000', '2018-12-09', 'received', '150.0000', '150.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(51, NULL, NULL, 58, '000047', 'Chinese egg Fried rice', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '99999998.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(52, NULL, NULL, 59, '000048', 'Fried beef Noodles', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '99999993.0000', '2018-12-09', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(53, NULL, NULL, 60, '0000103', 'Chinese fried dumplin', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '99999997.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(54, NULL, NULL, 61, '000049', 'Chicken Soup Noodles', NULL, '49.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '4900000000.0000', '99999999.0000', '2018-12-09', 'received', '49.0000', '49.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(55, NULL, NULL, 62, '000050', 'Beef soup noodles', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '99999993.0000', '2018-12-09', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(56, NULL, NULL, 63, '000051', 'Tomato Egg soup Noodles', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '100000000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(57, NULL, NULL, 64, '000055', 'Chinese business Meal Pack,egg,Chinese tea', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-09', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(58, NULL, NULL, 65, '000056', 'Fried seasonal fruit', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '100000000.0000', '2018-12-09', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(59, NULL, NULL, 66, '000058', 'Chinese Chili chicken', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-09', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(60, NULL, NULL, 67, '000059', 'Chinese vegetable', NULL, '50.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '5000000000.0000', '100000000.0000', '2018-12-09', 'received', '50.0000', '50.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(61, NULL, NULL, 68, '000060', 'Steam rice', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '100000000.0000', '2018-12-09', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(62, NULL, NULL, 69, '000061', 'Chinese egg vegetable roll', NULL, '150.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '15000000000.0000', '100000000.0000', '2018-12-10', 'received', '150.0000', '150.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(63, NULL, NULL, 70, '000062', 'POTATO CARROT STEWED BEEF', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(64, NULL, NULL, 71, '000063', 'POTATO CARROT STEWED MUTTON', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(65, NULL, NULL, 72, '000068', 'Rose Tea Pack', NULL, '800.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '80000000000.0000', '100000000.0000', '2018-12-10', 'received', '800.0000', '800.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(66, NULL, NULL, 73, '000070', 'Chinese chicken Masala', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(67, NULL, NULL, 74, '000071', 'Chinese Famous Green Tea Pack', NULL, '800.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '80000000000.0000', '100000000.0000', '2018-12-10', 'received', '800.0000', '800.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(68, NULL, NULL, 75, '000077', 'Chicken casunut salad', NULL, '450.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '45000000000.0000', '100000000.0000', '2018-12-10', 'received', '450.0000', '450.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(69, NULL, NULL, 76, '000078', 'Chicken Egg corn soup', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(70, NULL, NULL, 77, '000080', 'Thai soup', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999996.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(71, NULL, NULL, 78, '000081', 'HAND MAKE FRESH ICE CREAM', NULL, '80.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '8000000000.0000', '100000000.0000', '2018-12-10', 'received', '80.0000', '80.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(72, NULL, NULL, 80, '000084', 'Chinese set Menu', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '99999995.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(73, NULL, NULL, 81, '000085', 'Chinese set menu-2', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '100000000.0000', '2018-12-10', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(74, NULL, NULL, 82, '000086', 'Chinese set Menu-3', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '100000000.0000', '2018-12-10', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(75, NULL, NULL, 83, '000087', 'PLANE RICE WITH CHICKEN FRIED WHOLE WITH BEEF MASALA-3', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '100000000.0000', '2018-12-10', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(76, NULL, NULL, 84, '000088', 'Chinese set Menu-4', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999997.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(77, NULL, NULL, 85, '000089', 'FRIED RICE WITH BANKOK CHICKEN WITH MASALA PRAWN WITH VEGETABLE', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(78, NULL, NULL, 86, '000090', 'FRIED RICE WITH BANKOK CHICKEN WITH CHICKEN MASALA WITH VEGETABLE', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(79, NULL, NULL, 87, '000091', 'FRIEND RICE WITH PRAWN MASALA WITH FRIED CHICKEN WHOLE PCS WITH VEGETABLE', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(80, NULL, NULL, 88, '000092', 'Beef masala', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(81, NULL, NULL, 89, '000093', 'Beef chili', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(82, NULL, NULL, 90, '000094', 'Chinese Shrimp chili', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(83, NULL, NULL, 91, '000095', 'Chinese Masala Shrimp', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(84, NULL, NULL, 92, '000096', 'Sweet house Special vegetable', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '100000000.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(85, NULL, NULL, 93, '000097', 'Sweet house special Fried Rice', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '100000000.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(86, NULL, NULL, 94, '000098', 'Thai special Bangkok Chicken (8 pcs)', NULL, '300.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '30000000000.0000', '99999999.0000', '2018-12-10', 'received', '300.0000', '300.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(87, NULL, NULL, 95, '000099', 'Thai special Fried chicken  (8 pcs)', NULL, '450.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '45000000000.0000', '100000000.0000', '2018-12-10', 'received', '450.0000', '450.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(88, NULL, NULL, 96, '0000100', 'Special fried spring chicken (Whole chicken)', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(89, NULL, NULL, 97, '0000101', 'Chinese Half Fried Dumplings', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '99999994.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(90, NULL, NULL, 98, '0000102', 'Chinese boils dumpling', NULL, '150.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '15000000000.0000', '99999997.0000', '2018-12-10', 'received', '150.0000', '150.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(91, NULL, NULL, 99, '0000104', 'Soft drinks per glass', NULL, '20.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '2000000000.0000', '99999981.0000', '2018-12-10', 'received', '20.0000', '20.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(92, NULL, NULL, 100, '0000105', 'Onion Fried mutton', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(93, NULL, NULL, 101, '0000106', 'Onion Fried beef', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '99999999.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(94, NULL, NULL, 102, '0000107', 'Onion Fried chicken', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(95, NULL, NULL, 103, '0000108', 'Carrot slice fried mutton', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(96, NULL, NULL, 104, '0000109', 'Carrot slice fried Beef', NULL, '450.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '45000000000.0000', '100000000.0000', '2018-12-10', 'received', '450.0000', '450.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(97, NULL, NULL, 105, '0000110', 'Carrot slice fried Chicken', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(98, NULL, NULL, 106, '0000111', 'Spicy Green chili  Fried Mutton ', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(99, NULL, NULL, 107, '0000112', 'Spicy Green chili  Fried Beef', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-10', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(100, NULL, NULL, 108, '0000113', 'Spicy Green chili  Fried Chicken', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(101, NULL, NULL, 109, '0000114', 'Onion Fried egg', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(102, NULL, NULL, 110, '0000115', 'Tomato Fried eggs', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(103, NULL, NULL, 111, '0000116', 'Chinese cucumber fried eggs', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(104, NULL, NULL, 112, '0000117', 'Loofah Fried eggs', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(105, NULL, NULL, 113, '0000118', 'Vegetable chili fried egg', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(106, NULL, NULL, 114, '0000119', 'Spicy green chili fried egg', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(107, NULL, NULL, 115, '0000120', 'Shrimp fried egg', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(108, NULL, NULL, 116, '0000121', 'Clear fried shrimp', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(109, NULL, NULL, 117, '0000122', 'Spicy Source fried shrimp', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(110, NULL, NULL, 118, '0000128', 'Thai clear soup', NULL, '350.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '35000000000.0000', '100000000.0000', '2018-12-10', 'received', '350.0000', '350.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(111, NULL, NULL, 119, '0000129', 'Tomato egg soup', NULL, '250.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '25000000000.0000', '100000000.0000', '2018-12-10', 'received', '250.0000', '250.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(112, NULL, NULL, 120, '0000130', 'Chinese cucumber egg soup', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(113, NULL, NULL, 121, '0000131', 'Loofah egg soup', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(114, NULL, NULL, 122, '0000132', 'HOT&SOUR SWEET POTATO NOODLE', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(115, NULL, NULL, 123, '0000133', 'EGG FRIED RICE CAKE', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(116, NULL, NULL, 124, '0000134', 'BEEF FRIED RICE CAKE', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(117, NULL, NULL, 125, '0000135', 'CHINESE OSMAN FLOWER STICKY CAKE', NULL, '200.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20000000000.0000', '100000000.0000', '2018-12-10', 'received', '200.0000', '200.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(118, NULL, NULL, 126, '150', 'pasta', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '99999999.0000', '2018-12-14', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(119, NULL, NULL, 127, '82', 'Chicken mushroom_ pasta', NULL, '400.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '40000000000.0000', '100000000.0000', '2018-12-14', 'received', '400.0000', '400.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(120, NULL, NULL, 129, '200', 'Rose tea pot', NULL, '700.0000', '10000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '7000000000.0000', '9999999.0000', '2018-12-15', 'received', '700.0000', '700.0000', '10000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(121, NULL, NULL, 130, '5', 'Rose Tea_pot', NULL, '500.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '50000000000.0000', '100000000.0000', '2018-12-16', 'received', '500.0000', '500.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(122, NULL, NULL, 131, '5', 'rose tea pot', NULL, '700.0000', '100000000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '70000000000.0000', '100000000.0000', '2018-12-16', 'received', '700.0000', '700.0000', '100000000.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(123, NULL, NULL, 132, 't1', 'Tea', NULL, '20.0000', '100.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '2000.0000', '99.0000', '2019-01-23', 'received', '20.0000', '20.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(124, NULL, NULL, 133, 'Apple1', 'Apple Mac Book', NULL, '80000.0000', '100.0000', 1, '800000.0000', 6, '10.0000%', NULL, NULL, NULL, '8800000.0000', '99.0000', '2019-01-23', 'received', '88000.0000', '88000.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

CREATE TABLE `sma_quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_returns`
--

CREATE TABLE `sma_returns` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT '0.0000',
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_return_items`
--

CREATE TABLE `sma_return_items` (
  `id` int(11) NOT NULL,
  `return_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `paid` decimal(25,4) DEFAULT '0.0000',
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT '0',
  `shop` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `manual_payment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(58, '2019-01-23 10:53:44', 'SALE/POS2019/01/0056', 1, 'Walk-in Customer', 3, '.', 1, '', '', '110000.0000', '0.0000', '5', '5.0000', '5.0000', '11000.0000', 1, '0.0000', '11000.0000', '0.0000', '120995.0000', 'completed', 'paid', 0, NULL, 5, NULL, NULL, 1, 1, '120995.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b5992532130bf1b8db489c472b905019d89b0a838b19e36e7014d32508c3bdaa', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

CREATE TABLE `sma_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(117, 58, 133, 'Apple1', 'Apple Mac Book', 'standard', NULL, '110000.0000', '121000.0000', '1.0000', 1, '11000.0000', 6, '10%', '0', '0.0000', '121000.0000', '', '110000.0000', NULL, 6, 'pcs', '1.0000', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1p2qfcif2ptopr7esdh5gjbdbn30nuva', '::1', 1548234645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233343634353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323237303837223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383232373637313b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b6572726f727c733a3135393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f37636c6f7564732f6173736574732f75706c6f6164732f7468756d62732f36353538623834303761666137303864643137366231323639386335636639622e6a7067223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('2d2eo2qrs83s7bkjpgvuso4r09kj077v', '::1', 1548240986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383234303938313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383234303937373b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b637372666b65797c733a383a22574b347a44386154223b5f5f63695f766172737c613a323a7b733a373a22637372666b6579223b733a333a226e6577223b733a393a226373726676616c7565223b733a333a226e6577223b7d6373726676616c75657c733a32303a22785239616f33444c7431417642354e7730673270223b),
('420cfec2a27542a26359493e314cdd69fe4d2e73', '103.130.11.62', 1549253673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393235333635313b7265717565737465645f706167657c733a353a2261646d696e223b6572726f727c733a33373a223c703e4c6f67696e204661696c65642c20506c656173652074727920616761696e3c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('48r92604kjjh2uput4jrirliogovmp7u', '::1', 1548240981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383234303938313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383234303937373b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b),
('6ee5540fb288958b0447ddc41ab4a9b383ca94ea', '103.130.11.62', 1549253651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393235333635313b7265717565737465645f706167657c733a353a2261646d696e223b),
('8de68467f0e3c504d438a218258c8728c3bf46e2', '103.130.11.62', 1549253627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393235333530363b7265717565737465645f706167657c733a353a2261646d696e223b6572726f727c733a33373a223c703e4c6f67696e204661696c65642c20506c656173652074727920616761696e3c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('96dr1icdacfci3m7ltv2o3h3e0crqoo9', '::1', 1548240199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383234303139393b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383234303139363b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b6572726f727c733a3133353a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f37636c6f7564732f6173736574732f75706c6f6164732f7468756d62732f6e6f5f696d6167652e706e67223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('cjm1akotg5jej58ceimd2gn95ot4flvm', '::1', 1548235540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233353534303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323237333231223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383233353134303b6d6573736167657c733a32393a22557365722067726f7570207375636365737366756c6c79206164646564223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('d578vcds77svebolu9sta7v67beucdmc', '::1', 1548237226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233373232363b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336333739223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383233373035353b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b6d6573736167657c733a32363a225573657273207375636365737366756c6c792064656c65746564223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('gps4lr5o9kg8oir06h3ptefubjbghvmm', '::1', 1548236306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233363330363b6964656e746974797c733a31333a2273616c65735f37636c6f756473223b757365726e616d657c733a31333a2273616c65735f37636c6f756473223b656d61696c7c733a31363a22696e666f4037636c6f7564732e6e6574223b757365725f69647c733a313a2239223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323335383535223b6c6173745f69707c4e3b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('gqv2o1srhmldvt103oqaekp1bgbfgqu9', '::1', 1548236736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233363733363b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323335373534223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('kgjp3500iih90mv129pgf8an4pjccgbp', '::1', 1548263812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383236333831323b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323632373534223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('krd1iatc00ledgfbmckfn96rcia0adi5', '::1', 1548239897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233393839373b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('nc3vk67ihgj7ol30jpqb4sq66prmet6l', '::1', 1548240669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383234303636393b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383234303230363b72656769737465725f69647c733a313a2235223b636173685f696e5f68616e647c733a363a22312e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031382d31322d30392030313a30333a3339223b),
('st35vjicl6cv5n0tm8jae8p7rvfprgka', '::1', 1548239564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233393536343b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323336393333223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('u4r3t0bq07k078noq7laalcgt329c3ji', '::1', 1548264333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383236343238353b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31373a2261646d696e4037636c6f7564732e6e6574223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323634313636223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736761657c733a33303a224461746162617365207375636365737366756c6c792064656c657465642e223b5f5f63695f766172737c613a313a7b733a373a226d657373676165223b733a333a226f6c64223b7d),
('vrfkpmf06nqh8rn9qob9u44mrlhua5cl', '::1', 1548235191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383233353139313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32363a2261646d696e407377656574686f75736562616e616e692e636f6d223b757365725f69647c733a313a2235223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353438323237333231223b6c6173745f69707c733a333a223a3a31223b6176617461727c733a33363a2237353430356163393361343936376164353439626238633130396331343866662e706e67223b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313534383233353134303b6572726f727c733a3135393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f37636c6f7564732f6173736574732f75706c6f6164732f7468756d62732f36353538623834303761666137303864643137366231323639386335636639622e6a7067223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0',
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT '90',
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT '0',
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1, 'logo7clouds4.png', 'logo7clouds5.png', 'Accounting Inventory Software- 7clouds', 'english', 1, 0, 'BDT', 1, 10, '3.4.9', 1, 5, 'SALE', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 1, 1, 1, 1, 0, 1, 0, 'Asia/Dhaka', 800, 800, 150, 150, 0, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', 'jEFTM4T63AiQ9dsidxhPKt9CIg4HQjCN58n/RW9vmdC/UDXCzRLR469ziZ0jjpFlbOg43LyoSmpJLBkcAHh0Yw==', '25', NULL, NULL, 1, 'info@7clouds.net', 0, 4, 1, 0, 2, 0, 1, 0, 2, 2, '.', ',', 0, 3, 'jijohny', '4090c92e-feba-477d-af3f-d8979b883968', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 'Tk', 0, '-', 0, 1, 1, 'POP', 90, '', 0, 0, 'AN', 'dompdf');

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

CREATE TABLE `sma_stock_count_items` (
  `id` int(11) NOT NULL,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT '0.0000',
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @15%', 'VT15', '15.0000', '1'),
(3, 'VAT @5%', 'GST', '5.0000', '1'),
(6, 'VAT @10%', 'VT10', '10.0000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

CREATE TABLE `sma_transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

CREATE TABLE `sma_units` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(6, 'pcs', 'pcs', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

CREATE TABLE `sma_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT '0',
  `show_price` tinyint(1) DEFAULT '0',
  `award_points` int(11) DEFAULT '0',
  `view_right` tinyint(1) NOT NULL DEFAULT '0',
  `edit_right` tinyint(1) NOT NULL DEFAULT '0',
  `allow_discount` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(5, 0x3a3a31, 0x3130332e33302e3139302e3736, 'admin', '5048226cba9da8468c70e1a22788725c0ec6ac5c', NULL, 'admin@7clouds.net', NULL, NULL, NULL, 'c38535b917ace8660d55638134b7f3c358b749be', 1544180153, 1548264292, 1, '7clouds', '.', '7clouds', '01616709273', '75405ac93a4967ad549bb8c109c148ff.png', 'male', 1, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(1, 1, NULL, 0x3130332e3139362e3233342e313130, 'owner@tecdiary.com', '2018-12-07 07:16:55'),
(2, 2, NULL, 0x3130332e3139362e3233342e313130, 'yolanda', '2018-12-07 07:34:01'),
(3, 3, NULL, 0x3130332e3139362e3233342e313130, 'admin', '2018-12-07 08:08:04'),
(4, 3, NULL, 0x3130332e3131332e3230392e313436, 'admin', '2018-12-07 08:08:55'),
(5, 3, NULL, 0x3130332e33302e3139302e3736, 'admin', '2018-12-07 09:51:44'),
(6, 3, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-07 10:03:59'),
(7, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 10:07:41'),
(8, 3, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-07 10:08:11'),
(9, 3, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-07 10:39:17'),
(10, 3, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-07 10:45:00'),
(11, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 10:47:57'),
(12, 3, NULL, 0x3130332e33302e3139302e3736, 'admin', '2018-12-07 10:49:22'),
(13, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 10:49:50'),
(14, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 10:54:09'),
(15, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 11:02:55'),
(16, 3, NULL, 0x3130332e33302e3139302e3736, 'Yolanda', '2018-12-07 11:03:26'),
(17, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-07 11:35:34'),
(18, 6, NULL, 0x3130332e33302e3139302e3736, 'kibria', '2018-12-07 11:40:52'),
(19, 6, NULL, 0x3130332e33302e3139302e3736, 'kibria', '2018-12-07 12:02:18'),
(20, 5, NULL, 0x3130332e3139362e3233342e313130, 'admin', '2018-12-08 06:57:43'),
(21, 3, NULL, 0x3130332e3139362e3233342e313130, 'yolanda', '2018-12-08 06:59:38'),
(22, 5, NULL, 0x3130332e3131332e3230392e313436, 'admin', '2018-12-08 08:01:48'),
(23, 4, NULL, 0x3130332e3131352e3135372e32, 'shahin', '2018-12-08 17:28:36'),
(24, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-09 05:45:03'),
(25, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-10 10:31:26'),
(26, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-10 12:57:03'),
(27, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-10 15:10:37'),
(28, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-11 07:31:05'),
(29, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-11 11:20:39'),
(30, 5, NULL, 0x3130332e3131332e3230392e313436, 'admin', '2018-12-11 11:39:35'),
(31, 5, NULL, 0x3130332e3131332e3230392e313436, 'admin', '2018-12-11 12:05:09'),
(32, 4, NULL, 0x3130332e3131352e3135372e32, 'shahin', '2018-12-11 18:10:29'),
(33, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-12 06:30:05'),
(34, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-12 09:56:19'),
(35, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-12 13:13:13'),
(36, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-13 05:17:40'),
(37, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-13 09:41:46'),
(38, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-13 14:58:12'),
(39, 4, NULL, 0x3130332e3131352e3135372e32, 'shahin', '2018-12-13 17:30:19'),
(40, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-14 12:54:19'),
(41, 4, NULL, 0x3130332e3131352e3135372e32, 'shahin', '2018-12-15 06:18:58'),
(42, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-15 06:20:33'),
(43, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-15 09:56:58'),
(44, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-15 13:49:16'),
(45, 4, NULL, 0x3131372e3130332e38332e32, 'shahin', '2018-12-15 14:53:49'),
(46, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-16 08:02:29'),
(47, 5, NULL, 0x3130332e33302e3139302e3736, 'Admin', '2018-12-16 10:20:25'),
(48, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-16 15:53:38'),
(49, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-17 09:52:21'),
(50, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-17 12:49:24'),
(51, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-17 15:22:59'),
(52, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-18 15:03:20'),
(53, 3, NULL, 0x39312e37332e3133312e313435, 'yolanda', '2018-12-18 15:13:34'),
(54, 5, NULL, 0x34322e302e352e323531, 'admin', '2018-12-19 12:43:00'),
(55, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-19 14:33:06'),
(56, 5, NULL, 0x34332e3234352e3132312e313135, 'admin', '2018-12-20 08:03:44'),
(57, 4, NULL, 0x3130332e33302e3139302e3736, 'shahin', '2018-12-20 09:52:56'),
(58, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 06:57:14'),
(59, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 07:04:47'),
(60, 7, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 07:08:03'),
(61, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 07:08:41'),
(62, 7, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 09:14:13'),
(63, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:15:39'),
(64, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:26:46'),
(65, 8, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 09:28:17'),
(66, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:29:14'),
(67, 9, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 09:31:10'),
(68, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:39:39'),
(69, 10, NULL, 0x3a3a31, 'abc123', '2019-01-23 09:47:22'),
(70, 10, NULL, 0x3a3a31, 'abc123', '2019-01-23 09:48:38'),
(71, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:48:53'),
(72, 11, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 09:56:37'),
(73, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 09:58:20'),
(74, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 16:59:15'),
(75, 6, NULL, 0x3a3a31, 'sales_7clouds', '2019-01-23 17:03:14'),
(76, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 17:03:32'),
(77, 7, NULL, 0x3a3a31, 'yamin', '2019-01-23 17:18:44'),
(78, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 17:20:19'),
(79, 7, NULL, 0x3a3a31, 'yamin', '2019-01-23 17:21:19'),
(80, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 17:22:46'),
(81, 8, NULL, 0x3a3a31, 'yamin', '2019-01-23 17:24:14'),
(82, 5, NULL, 0x3a3a31, 'admin', '2019-01-23 17:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

CREATE TABLE `sma_warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'WHI', 'Warehouse 1', '<p>9 Nurer Chala, Notun Bazar, Dhaka- 1212</p>', NULL, '01616709273', 'info@7clouds.net', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

CREATE TABLE `sma_warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(126, 1, 1, '0.0000', NULL, '100.0000'),
(134, 133, 1, '99.0000', NULL, '80000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_returns`
--
ALTER TABLE `sma_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`return_id`),
  ADD KEY `return_id_2` (`return_id`,`product_id`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_returns`
--
ALTER TABLE `sma_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
