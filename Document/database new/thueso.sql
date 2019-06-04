-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 04:43 AM
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

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acc_id`, `acc_name`, `pass_word`, `role_id`, `acc_active`, `created_date`, `updated_date`, `deleted_date`) VALUES
(100, 'PHẠM THANH QUANG', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(101, 'NGUYỂN BÌNH AN', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(102, 'DƯƠNG VĨNH TÂM', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(103, 'ĐINH NHO THÀNH', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(104, 'NGUYỄN VĂN A', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(105, 'NGUYỄN VĂN B', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(106, 'NGUYỄN VĂN C', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(107, 'NGUYỄN VĂN D', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL),
(108, 'NGUYỄN VĂN E', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL);

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

--
-- Dumping data for table `account_member`
--

INSERT INTO `account_member` (`acc_mem_id`, `acc_mem_name`, `acc_mem_password`, `acc_id`, `created_date`, `updated_date`, `deleted_date`, `status`, `email`, `mobile_phone`) VALUES
(100, 'NGUYỄN HỒNG BÁ', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514'),
(101, 'NGUYỄN HỒNG B', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514'),
(102, 'NGUYỄN HỒNG C', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514'),
(103, 'NGUYỄN HỒNG D', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514'),
(104, 'NGUYỄN HỒNG E', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514'),
(105, 'NGUYỄN HỒNG F', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514');

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
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`comp_id`, `comp_name`, `comp_address`, `comp_tax_code`, `comp_city`, `comp_tel_phone`, `comp_fax`, `comp_mobile_phone`, `comp_email`, `comp_website`, `comp_bank_account`, `comp_bank_name`, `created_date`, `updated_date`, `deleted_date`, `acc_id`, `logo`, `description`) VALUES
(100, 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH XUÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 100, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3'),
(101, 'CÔNG TY CỔ PHẦN ATT&T', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 101, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3'),
(102, 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NHÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 102, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3'),
(103, 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 103, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3'),
(104, 'CÔNG TY CỔ PHẦN ĐỊA ỐC DƯƠNG VẬT', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 104, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3'),
(105, 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 105, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');

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

--
-- Dumping data for table `history_account`
--

INSERT INTO `history_account` (`his_id`, `acc_id`, `method`, `excuted_date`, `old_password`, `content`, `mac_address`) VALUES
(100, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(101, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(102, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(103, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(104, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(105, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(106, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(107, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(108, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(109, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(110, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(111, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(112, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(113, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(114, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(115, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(116, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(117, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1'),
(118, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(119, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(120, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(121, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(122, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(123, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(124, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(125, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(126, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(127, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(128, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(129, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(130, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(131, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(132, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1'),
(133, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');

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

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `form_number`, `invoice_serial`, `public_date`, `payment_method`, `tax_rate`, `is_paid`, `search_code`, `acc_id`, `created_date`, `updated_date`, `deleted_date`, `status`, `invoice_link`, `payment_id`, `invoice_cancel_content`, `invoice_cancel_image`, `printer`, `export_pdf`, `export_excel`, `export_xml`, `acc_mem_id`) VALUES
(100, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(101, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(102, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(103, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(104, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(105, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(106, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(107, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(108, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(109, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(110, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(111, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(112, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(113, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(114, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(115, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(116, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(117, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(118, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(119, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(120, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(121, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(122, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(123, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(124, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(125, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(126, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(127, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(128, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(129, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(130, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(131, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(132, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(133, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(134, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100),
(135, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);

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

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`invoice_detail_id`, `invoice_id`, `invoice_item_name`, `invoice_quantity`, `invoice_unit`, `invoice_price`, `invoice_amount`, `invoice_total_amount`, `invoice_total_tax`, `invoice_total`) VALUES
(100, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(101, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(102, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(103, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(104, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(105, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(106, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(107, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(108, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(109, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(110, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(111, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(112, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(113, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(114, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(115, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(116, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(117, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(118, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(119, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(120, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(121, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(122, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(123, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(124, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(125, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(126, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(127, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(128, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(129, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(130, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(131, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(132, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(133, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(134, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(135, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(136, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(137, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(138, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(139, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(140, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(141, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(142, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(143, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(144, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(145, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(146, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(147, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(148, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(149, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(150, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(151, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(152, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(153, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(154, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(155, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(156, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(157, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(158, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(159, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(160, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(161, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(162, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(163, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(164, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000'),
(165, 100, 'MUỐI', 1000, '5000', '250000.000000', '160000000.000000', '15200000.000000', '200000.000000', '150000000.000000');

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
  `icon` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_navication`
--

INSERT INTO `menu_navication` (`menu_id`, `menu_name`, `menu_link`, `menu_parameter`, `menu_tooltip`, `menu_status`, `created_date`, `updated_date`, `deleted_date`, `acc_id`, `menu_sort`, `icon`, `alias`) VALUES
(100, 'LẬP & PHÁT HÀNH', 'THUESO.COM/ABC', '/TEST/900', 'LẬP & PHÁT HÀNH HÓA ĐƠN ĐIỆN TỬ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'LẬP & PHÁT HÀNH'),
(101, 'HÓA ĐƠN ĐÃ PHÁT HÀNH', 'THUESO.COM/ABC', '/TEST/900', 'HÓA ĐƠN ĐÃ PHÁT HÀNH', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'HÓA ĐƠN ĐÃ PHÁT HÀNH'),
(102, 'HÓA ĐƠN MUA VÀO', 'THUESO.COM/ABC', '/TEST/900', 'HÓA ĐƠN MUA VÀO', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'HÓA ĐƠN MUA VÀO'),
(103, 'HÓA ĐƠN HỦY', 'THUESO.COM/ABC', '/TEST/900', 'HÓA ĐƠN HỦY', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'HÓA ĐƠN HỦY'),
(104, 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ', 'THUESO.COM/ABC', '/TEST/900', 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ'),
(105, 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ', 'THUESO.COM/ABC', '/TEST/900', 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ'),
(106, 'TẠO TÀI KHOẢN PHÂN CẤP', 'THUESO.COM/ABC', '/TEST/900', 'TẠO TÀI KHOẢN PHÂN CẤP', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'TẠO TÀI KHOẢN PHÂN CẤP'),
(107, 'THÔNG TIN DOANH NGHIỆP', 'THUESO.COM/ABC', '/TEST/900', 'THÔNG TIN DOANH NGHIỆP', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'THÔNG TIN DOANH NGHIỆP'),
(108, 'CÀI ĐẶT HÓA ĐƠN', 'THUESO.COM/ABC', '/TEST/900', 'CÀI ĐẶT HÓA ĐƠN', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'CÀI ĐẶT HÓA ĐƠN'),
(109, 'TÌNH HÌNH SỬ DỤNG HÓA ĐƠN', 'THUESO.COM/ABC', '/TEST/900', 'TÌNH HÌNH SỬ DỤNG HÓA ĐƠN', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'TÌNH HÌNH SỬ DỤNG HÓA ĐƠN'),
(110, 'SẢN PHẨM DỊCH VỤ', 'THUESO.COM/ABC', '/TEST/900', 'SẢN PHẨM DỊCH VỤ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'SẢN PHẨM DỊCH VỤ'),
(111, 'TIỆN ÍCH', 'THUESO.COM/ABC', '/TEST/900', 'TIỆN ÍCH', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'TIỆN ÍCH'),
(112, 'THOÁT', 'THUESO.COM/ABC', '/TEST/900', 'THOÁT', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'ICON.ICO', 'THOÁT');

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_name`, `payment_method`, `invoice_count`, `acc_id`, `created_date`, `updated_date`, `deleted_date`, `payment_total`, `payment_status`) VALUES
(100, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(101, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(102, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(103, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(104, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(105, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(106, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(107, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(108, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(109, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(110, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(111, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(112, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(113, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(114, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(115, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(116, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(117, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(118, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(119, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(120, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(121, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(122, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(123, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(124, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(125, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(126, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(127, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(128, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(129, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(130, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(131, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(132, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(133, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(134, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(135, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(136, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(137, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(138, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(139, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(140, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(141, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(142, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(143, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(144, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(145, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(146, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(147, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(148, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(149, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(150, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(151, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(152, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(153, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(154, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(155, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(156, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1'),
(157, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, '50.000000', '1');

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

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`payment_his_id`, `payment_id`, `payment_total`, `payment_method`, `payment_fee`, `payment_content`, `created_date`, `updated_date`, `deleted_date`, `invoice_count`) VALUES
(100, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(101, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(102, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(103, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(104, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(105, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(106, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(107, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(108, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(109, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(110, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(111, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(112, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(113, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(114, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(115, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(116, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(117, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(118, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(119, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(120, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(121, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(122, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(123, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(124, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(125, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(126, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(127, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(128, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(129, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(130, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(131, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(132, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(133, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(134, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(135, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(136, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(137, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(138, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(139, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(140, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(141, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(142, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(143, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(144, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150),
(145, 100, '15000.000000', 'CK NGAN HANG', '5.000000', 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);

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
  `deleted_date` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_account`, `role_status`, `role_type`, `created_date`, `updated_date`, `deleted_date`, `description`) VALUES
(100, 'ADMIN', 'ADMIN', b'0', '1', '2019-06-04 00:00:00', NULL, NULL, 'QUẢN LÝ ADMIN'),
(102, 'QUẢN LÝ', 'MANAGER', b'0', '2', '2019-06-04 00:00:00', NULL, NULL, 'QUẢN LÝ CÔNG TY'),
(103, 'NHÂN VIÊN KẾ TOÁN', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, 'NHÂN VIÊN CỦA CÔNG TY'),
(104, 'NHÂN VIÊN HÓA ĐƠN', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, NULL),
(105, 'ĐẠI LÝ', 'GROUP', b'0', '5', '2019-06-04 00:00:00', NULL, NULL, 'ĐẠI LÝ THUẾ'),
(106, 'NHÂN VIÊN KHAI THUẾ', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, 'TÀI KHOẢN KHÁCH HÀNG VÀO XEM HÓA ĐƠN'),
(107, 'NGOÀI HỆ THỐNG', 'OUTSIDE', b'0', '0', '2019-06-04 00:00:00', NULL, NULL, NULL),
(108, 'THUẾ VỤ', 'OUTSIDE', b'0', '4', '2019-06-04 00:00:00', NULL, NULL, NULL);

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

--
-- Dumping data for table `sub_menu_navigation`
--

INSERT INTO `sub_menu_navigation` (`sub_menu_id`, `menu_id`, `sub_menu_name`, `sub_menu_level`, `sub_menu_sort`, `created_date`, `updated_date`, `deleted_date`, `icon`, `sub_menu_link`, `sub_menu_tooltip`, `sub_menu_parameter`, `sub_menu_status`) VALUES
(100, 100, 'LẬP HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(101, 100, 'HÓA ĐƠN LƯU TẠM', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(102, 100, 'HÓA ĐƠN CHỜ DUYỆT', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(103, 104, 'HÓA ĐƠN PHẢI KHAI THUẾ TRONG KỲ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(104, 104, 'THỐNG KÊ HÓA ĐƠN ĐÃ KHAI', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(105, 104, 'HÓA ĐƠN ĐÃ BỊ LOẠI', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(106, 105, 'NẠP & SỬ DỤNG HÓA ĐƠN KHÁC HỆ MUA VÀO', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(107, 105, 'NẠP & LƯU DỤNG HÓA ĐƠN KHÁC HỆ ĐÃ KHAI THUẾ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(108, 105, 'THỐNG KÊ HÓA ĐƠN KHÁC HỆ ĐÃ KHAI THUẾ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(109, 106, 'LẬPTÀI KHOẢN KHÁCH MUA HÀNG', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(110, 106, 'LẬPTÀI KHOẢN NHÂN VIÊN KHAI THUẾ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(111, 106, 'LẬPTÀI KHOẢN CÁN BỘ THUẾ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(112, 106, 'ĐẠI LÝ LẬP TÀI KHOẢN CHO KHÁCH HÀNG', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(113, 108, 'KHỞI TẠO & PHÁT HÀNH MẪU HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(114, 108, 'KÍCH HOẠT SỬ DỤNG MẪU HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(115, 109, 'TÌNH HÌNH SỬ DỤNG & MUA HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(116, 109, 'LỊCH SỬ MUA HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0'),
(117, 110, 'DANH MỤC SẢN PHẨM', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');

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
-- Dumping data for table `template_invoice`
--

INSERT INTO `template_invoice` (`temp_id`, `temp_name`, `temp_align_logo`, `temp_align_buyer`, `temp_align_seller`, `temp_background`, `acc_id`, `isdefault`, `created_date`, `updated_date`, `deleted_date`, `sign_digital`) VALUES
(100, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(101, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(102, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(103, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(104, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(105, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(106, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(107, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(108, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(109, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(110, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(111, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(112, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(113, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(114, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(115, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(116, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(117, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(118, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(119, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(120, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(121, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(122, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(123, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(124, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(125, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(126, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(127, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(128, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(129, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(130, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(131, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(132, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(133, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(134, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(135, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(136, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(137, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(138, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(139, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(140, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(141, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(142, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(143, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(144, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(145, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(146, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(147, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(148, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(149, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(150, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(151, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(152, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(153, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(154, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(155, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(156, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(157, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(158, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(159, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100'),
(160, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');

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
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `company_information`
--
ALTER TABLE `company_information`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `history_account`
--
ALTER TABLE `history_account`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `invoice_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `menu_navication`
--
ALTER TABLE `menu_navication`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `payment_his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_menu_navigation`
--
ALTER TABLE `sub_menu_navigation`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `template_invoice`
--
ALTER TABLE `template_invoice`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

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
