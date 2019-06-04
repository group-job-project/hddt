-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 03:22 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thueso`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_id` int(11) NOT NULL,
  `acc_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_word` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `acc_active` bit(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_member`
--

CREATE TABLE `account_member` (
  `acc_mem_id` int(11) NOT NULL,
  `acc_mem_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_mem_password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `status` char(1) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `comp_id` int(11) NOT NULL,
  `comp_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_tax_code` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_city` varchar(15) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `comp_tel_phone` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `comp_fax` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `comp_mobile_phone` varchar(11) CHARACTER SET utf8 NOT NULL,
  `comp_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `comp_website` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `comp_bank_account` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `comp_bank_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `acc_id` int(11) NOT NULL,
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `history_account`
--

CREATE TABLE `history_account` (
  `his_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `method` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `excuted_date` datetime NOT NULL,
  `old_password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mac_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `form_number` int(11) NOT NULL,
  `invoice_serial` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `public_date` datetime NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` float NOT NULL,
  `is_paid` char(1) NOT NULL,
  `search_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `status` char(1) NOT NULL,
  `invoice_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `invoice_cancel_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_cancel_image` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `export_pdf` char(1) DEFAULT NULL,
  `export_excel` char(1) DEFAULT NULL,
  `export_xml` char(1) DEFAULT NULL,
  `acc_mem_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `invoice_detail_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_item_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_quantity` int(11) NOT NULL,
  `invoice_unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_price` decimal(18,6) NOT NULL,
  `invoice_amount` decimal(18,6) NOT NULL,
  `invoice_total_amount` decimal(18,6) NOT NULL,
  `invoice_total_tax` decimal(18,6) NOT NULL,
  `invoice_total` decimal(18,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu_navication`
--

CREATE TABLE `menu_navication` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_link` varchar(50) NOT NULL,
  `menu_parameter` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_tooltip` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_status` char(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `acc_id` int(11) NOT NULL,
  `menu_sort` int(11) NOT NULL,
  `icon` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_content` varchar(500) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `acc_mem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_count` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `payment_total` decimal(18,6) NOT NULL,
  `payment_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `payment_his_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_total` decimal(18,6) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_fee` decimal(18,6) NOT NULL,
  `payment_content` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `invoice_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pro_quantity` int(11) NOT NULL,
  `pro_unit` varchar(10) NOT NULL,
  `pro_price` decimal(18,6) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `acc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_status` bit(1) NOT NULL,
  `role_type` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu_navigation`
--

CREATE TABLE `sub_menu_navigation` (
  `sub_menu_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_menu_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_menu_level` int(11) NOT NULL,
  `sub_menu_sort` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `icon` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_menu_tooltip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_parameter` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_invoice`
--

CREATE TABLE `template_invoice` (
  `temp_id` int(11) NOT NULL,
  `temp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_buyer` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_seller` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_background` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `isdefault` char(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `sign_digital` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `accounts_fk` (`role_id`);

--
-- Indexes for table `account_member`
--
ALTER TABLE `account_member`
  ADD PRIMARY KEY (`acc_mem_id`),
  ADD KEY `account_member_fk` (`acc_id`);

--
-- Indexes for table `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `company_information_fk` (`acc_id`);

--
-- Indexes for table `history_account`
--
ALTER TABLE `history_account`
  ADD PRIMARY KEY (`his_id`),
  ADD KEY `history_account_fk` (`acc_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoices_fk` (`acc_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`invoice_detail_id`),
  ADD KEY `invoice_details_fk` (`invoice_id`);

--
-- Indexes for table `menu_navication`
--
ALTER TABLE `menu_navication`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_navication_fk` (`acc_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `messages_fk` (`acc_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_fk` (`acc_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`payment_his_id`),
  ADD KEY `payment_history_fk` (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `products_fk` (`acc_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sub_menu_navigation`
--
ALTER TABLE `sub_menu_navigation`
  ADD PRIMARY KEY (`sub_menu_id`),
  ADD KEY `sub_menu_navigation_fk` (`menu_id`);

--
-- Indexes for table `template_invoice`
--
ALTER TABLE `template_invoice`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `template_invoice_fk` (`acc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_information`
--
ALTER TABLE `company_information`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_account`
--
ALTER TABLE `history_account`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `invoice_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_navication`
--
ALTER TABLE `menu_navication`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `payment_his_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_menu_navigation`
--
ALTER TABLE `sub_menu_navigation`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_invoice`
--
ALTER TABLE `template_invoice`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `account_member`
--
ALTER TABLE `account_member`
  ADD CONSTRAINT `account_member_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `company_information`
--
ALTER TABLE `company_information`
  ADD CONSTRAINT `company_information_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `history_account`
--
ALTER TABLE `history_account`
  ADD CONSTRAINT `history_account_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`);

--
-- Constraints for table `menu_navication`
--
ALTER TABLE `menu_navication`
  ADD CONSTRAINT `menu_navication_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD CONSTRAINT `payment_history_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);

--
-- Constraints for table `sub_menu_navigation`
--
ALTER TABLE `sub_menu_navigation`
  ADD CONSTRAINT `sub_menu_navigation_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu_navication` (`menu_id`);

--
-- Constraints for table `template_invoice`
--
ALTER TABLE `template_invoice`
  ADD CONSTRAINT `template_invoice_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
