/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100140
 Source Host           : localhost:3306
 Source Schema         : thueso

 Target Server Type    : MySQL
 Target Server Version : 100140
 File Encoding         : 65001

 Date: 15/06/2019 23:25:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_member
-- ----------------------------
DROP TABLE IF EXISTS `account_member`;
CREATE TABLE `account_member`  (
  `acc_mem_id` int(11) NOT NULL,
  `acc_mem_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_mem_password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `acc_mem_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`acc_mem_id`) USING BTREE,
  INDEX `account_member_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `account_member_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_member
-- ----------------------------
INSERT INTO `account_member` VALUES (100, 'NGUYỄN HỒNG BÁ', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');
INSERT INTO `account_member` VALUES (101, 'NGUYỄN HỒNG B', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');
INSERT INTO `account_member` VALUES (102, 'NGUYỄN HỒNG C', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');
INSERT INTO `account_member` VALUES (103, 'NGUYỄN HỒNG D', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');
INSERT INTO `account_member` VALUES (104, 'NGUYỄN HỒNG E', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');
INSERT INTO `account_member` VALUES (105, 'NGUYỄN HỒNG F', '111111', 100, '2019-06-04 00:00:00', NULL, NULL, '0', 'PTQUANG0968@GMAIL.COM', '0941415514', '');

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `acc_active` bit(1) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `acc_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acc_id`) USING BTREE,
  INDEX `accounts_fk`(`role_id`) USING BTREE,
  CONSTRAINT `accounts_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (100, 'PHẠM THANH QUANG', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (101, 'NGUYỂN BÌNH AN', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (102, 'DƯƠNG VĨNH TÂM', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (103, 'ĐINH NHO THÀNH', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (104, 'NGUYỄN VĂN A', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (105, 'NGUYỄN VĂN B', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (106, 'NGUYỄN VĂN C', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (107, 'NGUYỄN VĂN D', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');
INSERT INTO `accounts` VALUES (108, 'NGUYỄN VĂN E', '111111', 100, b'0', '2019-06-04 00:00:00', NULL, NULL, '');

-- ----------------------------
-- Table structure for company_information
-- ----------------------------
DROP TABLE IF EXISTS `company_information`;
CREATE TABLE `company_information`  (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_tax_code` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comp_city` varchar(15) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `comp_tel_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comp_fax` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comp_mobile_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comp_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comp_website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comp_bank_account` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comp_bank_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `acc_id` int(11) NOT NULL,
  `logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`comp_id`) USING BTREE,
  INDEX `company_information_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `company_information_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company_information
-- ----------------------------
INSERT INTO `company_information` VALUES (100, 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH XUÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 100, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (101, 'CÔNG TY CỔ PHẦN ATT&T', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 101, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (102, 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NHÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 102, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (103, 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 103, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (104, 'CÔNG TY CỔ PHẦN ĐỊA ỐC DƯƠNG VẬT', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 104, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (105, 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 105, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');

-- ----------------------------
-- Table structure for history_account
-- ----------------------------
DROP TABLE IF EXISTS `history_account`;
CREATE TABLE `history_account`  (
  `his_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `method` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `excuted_date` datetime(0) NOT NULL,
  `old_password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mac_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`his_id`) USING BTREE,
  INDEX `history_account_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `history_account_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history_account
-- ----------------------------
INSERT INTO `history_account` VALUES (100, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (101, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (102, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (103, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (104, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (105, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (106, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (107, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (108, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (109, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (110, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (111, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (112, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (113, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (114, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (115, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (116, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (117, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"UPDATE\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (118, 100, 'UPDATE', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (119, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (120, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (121, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (122, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (123, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (124, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (125, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (126, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (127, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (128, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (129, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (130, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (131, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (132, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');
INSERT INTO `history_account` VALUES (133, 100, 'INSERT', '2019-06-04 00:00:00', '111111', '{\"INSERT\"}', '192.168.1.1');

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `invoice_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `invoice_item_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_quantity` int(11) NOT NULL,
  `invoice_unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_price` decimal(18, 6) NOT NULL,
  `invoice_amount` decimal(18, 6) NOT NULL,
  `invoice_total_amount` decimal(18, 6) NOT NULL,
  `invoice_total_tax` decimal(18, 6) NOT NULL,
  `invoice_total` decimal(18, 6) NOT NULL,
  PRIMARY KEY (`invoice_detail_id`) USING BTREE,
  INDEX `invoice_details_fk`(`invoice_id`) USING BTREE,
  CONSTRAINT `invoice_details_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 166 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------
INSERT INTO `invoice_details` VALUES (100, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (101, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (102, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (103, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (104, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (105, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (106, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (107, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (108, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (109, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (110, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (111, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (112, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (113, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (114, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (115, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (116, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (117, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (118, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (119, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (120, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (121, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (122, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (123, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (124, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (125, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (126, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (127, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (128, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (129, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (130, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (131, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (132, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (133, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (134, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (135, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (136, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (137, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (138, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (139, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (140, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (141, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (142, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (143, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (144, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (145, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (146, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (147, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (148, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (149, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (150, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (151, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (152, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (153, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (154, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (155, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (156, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (157, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (158, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (159, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (160, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (161, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (162, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (163, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (164, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);
INSERT INTO `invoice_details` VALUES (165, 100, 'MUỐI', 1000, '5000', 250000.000000, 160000000.000000, 15200000.000000, 200000.000000, 150000000.000000);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_number` int(11) NOT NULL,
  `invoice_serial` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `public_date` datetime(0) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` float NOT NULL,
  `is_paid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `search_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invoice_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_id` int(11) NULL DEFAULT NULL,
  `invoice_cancel_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `invoice_cancel_image` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `printer` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `export_pdf` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_excel` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_xml` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acc_mem_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_id`) USING BTREE,
  INDEX `invoices_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `invoices_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (100, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (101, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (102, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (103, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (104, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (105, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (106, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (107, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (108, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (109, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (110, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (111, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (112, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (113, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (114, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (115, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (116, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (117, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (118, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (119, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (120, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (121, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (122, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (123, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (124, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (125, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (126, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (127, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (128, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (129, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (130, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (131, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (132, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (133, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (134, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);
INSERT INTO `invoices` VALUES (135, 1111, '2222', '2019-06-04 00:00:00', 'CK/TM', 0.15, '1', '1111111111111', 100, '2019-06-04 00:00:00', NULL, NULL, '1', 'ASDASDDASAS', 100, NULL, NULL, '1', '1', '1', '1', 100);

-- ----------------------------
-- Table structure for menu_navication
-- ----------------------------
DROP TABLE IF EXISTS `menu_navication`;
CREATE TABLE `menu_navication`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_parameter` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_tooltip` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `acc_id` int(11) NOT NULL,
  `menu_sort` int(11) NOT NULL,
  `icon` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_menu` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE,
  INDEX `menu_navication_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `menu_navication_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_navication
-- ----------------------------
INSERT INTO `menu_navication` VALUES (100, 'LẬP & PHÁT HÀNH', 'thueso.com', '/TEST/900', 'LẬP & PHÁT HÀNH HÓA ĐƠN ĐIỆN TỬ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 1, 'fas fa-info-circle', 'LẬP & PHÁT HÀNH', '1');
INSERT INTO `menu_navication` VALUES (101, 'HÓA ĐƠN ĐÃ PHÁT HÀNH', 'thueso.com', '/TEST/900', 'HÓA ĐƠN ĐÃ PHÁT HÀNH', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 2, 'fas fa-info-fas fa-info-c', 'HÓA ĐƠN ĐÃ PHÁT HÀNH', '1');
INSERT INTO `menu_navication` VALUES (102, 'HÓA ĐƠN MUA VÀO', 'thueso.com', '/TEST/900', 'HÓA ĐƠN MUA VÀO', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 3, 'fas fa-info-circle', 'HÓA ĐƠN MUA VÀO', '1');
INSERT INTO `menu_navication` VALUES (103, 'HÓA ĐƠN HỦY', 'thueso.com', '/TEST/900', 'HÓA ĐƠN HỦY', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 4, 'fas fa-info-circle', 'HÓA ĐƠN HỦY', '1');
INSERT INTO `menu_navication` VALUES (104, 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ', 'thueso.com', '/TEST/900', 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 5, 'fas fa-info-circle', 'HÓA ĐƠN KHAI / ĐÃ KHAI THUẾ', '1');
INSERT INTO `menu_navication` VALUES (105, 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ', 'thueso.com', '/TEST/900', 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 6, 'fas fa-info-circle', 'ĐỒNG BỘ CÁC HÓA ĐƠN KHÁC HỆ', '1');
INSERT INTO `menu_navication` VALUES (106, 'TẠO TÀI KHOẢN PHÂN CẤP', 'thueso.com', '/TEST/900', 'TẠO TÀI KHOẢN PHÂN CẤP', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 7, 'fas fa-info-circle', 'TẠO TÀI KHOẢN PHÂN CẤP', '1');
INSERT INTO `menu_navication` VALUES (107, 'THÔNG TIN DOANH NGHIỆP', 'thueso.com', '/TEST/900', 'THÔNG TIN DOANH NGHIỆP', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 8, 'fas fa-info-circle', 'Thông tin doanh nghiệp', '0');
INSERT INTO `menu_navication` VALUES (108, 'CÀI ĐẶT HÓA ĐƠN', 'thueso.com', '/TEST/900', 'CÀI ĐẶT HÓA ĐƠN', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 9, '', 'Cài đặt hóa đơn', '0');
INSERT INTO `menu_navication` VALUES (109, 'TÌNH HÌNH SỬ DỤNG HÓA ĐƠN', 'thueso.com', '/TEST/900', 'TÌNH HÌNH SỬ DỤNG HÓA ĐƠN', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 10, 'fas fa-info-circle', 'Tình hình sử dụng hóa đơn', '0');
INSERT INTO `menu_navication` VALUES (110, 'SẢN PHẨM DỊCH VỤ', 'thueso.com', '/TEST/900', 'SẢN PHẨM DỊCH VỤ', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 11, 'fas fa-info-circle', 'Sản phẩm dịch vụ', '0');
INSERT INTO `menu_navication` VALUES (111, 'TIỆN ÍCH', 'thueso.com', '/TEST/900', 'TIỆN ÍCH', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 12, 'fas fa-info-circle', 'Tiện ích', '0');
INSERT INTO `menu_navication` VALUES (112, 'THOÁT', 'thueso.com', '/TEST/900', 'THOÁT', '0', '2019-06-04 00:00:00', NULL, NULL, 100, 13, 'fas fa-info-circle', 'Thoát', '0');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `acc_mem_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `messages_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `messages_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_count` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `payment_total` decimal(18, 6) NOT NULL,
  `payment_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE,
  INDEX `payment_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `payment_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (100, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (101, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (102, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (103, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (104, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (105, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (106, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (107, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (108, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (109, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (110, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (111, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (112, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (113, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (114, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (115, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (116, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (117, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (118, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (119, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (120, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (121, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (122, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (123, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (124, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (125, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (126, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (127, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (128, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (129, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (130, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (131, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (132, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (133, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (134, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (135, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (136, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (137, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (138, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (139, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (140, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (141, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (142, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (143, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (144, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (145, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (146, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (147, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (148, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (149, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (150, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (151, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (152, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (153, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (154, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (155, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (156, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');
INSERT INTO `payment` VALUES (157, 'CK', 'CK QUA NGÂN HÀNG', 300, 100, '2019-06-04 00:00:00', NULL, NULL, 50.000000, '1');

-- ----------------------------
-- Table structure for payment_history
-- ----------------------------
DROP TABLE IF EXISTS `payment_history`;
CREATE TABLE `payment_history`  (
  `payment_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `payment_total` decimal(18, 6) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_fee` decimal(18, 6) NOT NULL,
  `payment_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `invoice_count` int(11) NOT NULL,
  PRIMARY KEY (`payment_his_id`) USING BTREE,
  INDEX `payment_history_fk`(`payment_id`) USING BTREE,
  CONSTRAINT `payment_history_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 146 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment_history
-- ----------------------------
INSERT INTO `payment_history` VALUES (100, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (101, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (102, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (103, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (104, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (105, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (106, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (107, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (108, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (109, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (110, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (111, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (112, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (113, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (114, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (115, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (116, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (117, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (118, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (119, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (120, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (121, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (122, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (123, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (124, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (125, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (126, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (127, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (128, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (129, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (130, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (131, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (132, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (133, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (134, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (135, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (136, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (137, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (138, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (139, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (140, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (141, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (142, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (143, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (144, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);
INSERT INTO `payment_history` VALUES (145, 100, 15000.000000, 'CK NGAN HANG', 5.000000, 'CK THIEU 100 K', '2019-06-04 00:00:00', NULL, NULL, 150);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pro_quantity` int(11) NOT NULL,
  `pro_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_price` decimal(18, 6) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `acc_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`) USING BTREE,
  INDEX `products_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `products_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_status` bit(1) NOT NULL,
  `role_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (100, 'ADMIN', 'ADMIN', b'0', '1', '2019-06-04 00:00:00', NULL, NULL, 'QUẢN LÝ ADMIN');
INSERT INTO `roles` VALUES (102, 'QUẢN LÝ', 'MANAGER', b'0', '2', '2019-06-04 00:00:00', NULL, NULL, 'QUẢN LÝ CÔNG TY');
INSERT INTO `roles` VALUES (103, 'NHÂN VIÊN KẾ TOÁN', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, 'NHÂN VIÊN CỦA CÔNG TY');
INSERT INTO `roles` VALUES (104, 'NHÂN VIÊN HÓA ĐƠN', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, NULL);
INSERT INTO `roles` VALUES (105, 'ĐẠI LÝ', 'GROUP', b'0', '5', '2019-06-04 00:00:00', NULL, NULL, 'ĐẠI LÝ THUẾ');
INSERT INTO `roles` VALUES (106, 'NHÂN VIÊN KHAI THUẾ', 'STAFF', b'0', '3', '2019-06-04 00:00:00', NULL, NULL, 'TÀI KHOẢN KHÁCH HÀNG VÀO XEM HÓA ĐƠN');
INSERT INTO `roles` VALUES (107, 'NGOÀI HỆ THỐNG', 'OUTSIDE', b'0', '0', '2019-06-04 00:00:00', NULL, NULL, NULL);
INSERT INTO `roles` VALUES (108, 'THUẾ VỤ', 'OUTSIDE', b'0', '4', '2019-06-04 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sub_menu_navigation
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu_navigation`;
CREATE TABLE `sub_menu_navigation`  (
  `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `sub_menu_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_menu_level` int(11) NOT NULL,
  `sub_menu_sort` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `icon` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sub_menu_link` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_menu_tooltip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sub_menu_parameter` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sub_menu_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sub_menu_id`) USING BTREE,
  INDEX `sub_menu_navigation_fk`(`menu_id`) USING BTREE,
  CONSTRAINT `sub_menu_navigation_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu_navication` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sub_menu_navigation
-- ----------------------------
INSERT INTO `sub_menu_navigation` VALUES (100, 100, 'LẬP HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (101, 100, 'HÓA ĐƠN LƯU TẠM', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (102, 100, 'HÓA ĐƠN CHỜ DUYỆT', 0, 3, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (103, 104, 'HÓA ĐƠN PHẢI KHAI THUẾ TRONG KỲ', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (104, 104, 'THỐNG KÊ HÓA ĐƠN ĐÃ KHAI', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (105, 104, 'HÓA ĐƠN ĐÃ BỊ LOẠI', 0, 3, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (106, 105, 'NẠP & SỬ DỤNG HÓA ĐƠN KHÁC HỆ MUA VÀO', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (107, 105, 'NẠP & LƯU DỤNG HÓA ĐƠN KHÁC HỆ ĐÃ KHAI THUẾ', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (108, 105, 'THỐNG KÊ HÓA ĐƠN KHÁC HỆ ĐÃ KHAI THUẾ', 0, 3, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (109, 106, 'LẬPTÀI KHOẢN KHÁCH MUA HÀNG', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (110, 106, 'LẬPTÀI KHOẢN NHÂN VIÊN KHAI THUẾ', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (111, 106, 'LẬPTÀI KHOẢN CÁN BỘ THUẾ', 0, 3, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (112, 106, 'ĐẠI LÝ LẬP TÀI KHOẢN CHO KHÁCH HÀNG', 0, 4, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (113, 108, 'KHỞI TẠO & PHÁT HÀNH MẪU HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (114, 108, 'KÍCH HOẠT SỬ DỤNG MẪU HÓA ĐƠN', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (115, 109, 'TÌNH HÌNH SỬ DỤNG & MUA HÓA ĐƠN', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (116, 109, 'LỊCH SỬ MUA HÓA ĐƠN', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (117, 110, 'Danh mục sản phẩm', 0, 1, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');
INSERT INTO `sub_menu_navigation` VALUES (118, 110, 'Nhập sản phẩm dịch vụ', 0, 2, '2019-06-04 00:00:00', NULL, NULL, 'CI.ICO', '/TEST/TEST', 'LẬP HÓA ĐƠN', '/TEST', '0');

-- ----------------------------
-- Table structure for template_invoice
-- ----------------------------
DROP TABLE IF EXISTS `template_invoice`;
CREATE TABLE `template_invoice`  (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_buyer` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_align_seller` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `temp_background` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(11) NOT NULL,
  `isdefault` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `deleted_date` datetime(0) NULL DEFAULT NULL,
  `sign_digital` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`temp_id`) USING BTREE,
  INDEX `template_invoice_fk`(`acc_id`) USING BTREE,
  CONSTRAINT `template_invoice_fk` FOREIGN KEY (`acc_id`) REFERENCES `accounts` (`acc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of template_invoice
-- ----------------------------
INSERT INTO `template_invoice` VALUES (100, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (101, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (102, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (103, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (104, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (105, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (106, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (107, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (108, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (109, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (110, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (111, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (112, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (113, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (114, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (115, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (116, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (117, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (118, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (119, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (120, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (121, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (122, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (123, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (124, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (125, 'MAU 001', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '0', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (126, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (127, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (128, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (129, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (130, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (131, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (132, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (133, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (134, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (135, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (136, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (137, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (138, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (139, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (140, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (141, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (142, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (143, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (144, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (145, 'MAU 002', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (146, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (147, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (148, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (149, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (150, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (151, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (152, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (153, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (154, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (155, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (156, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (157, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (158, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (159, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');
INSERT INTO `template_invoice` VALUES (160, 'MAU 003', 'ABC.PNG', 'CENTER', 'CENTER', 'BAC.PNG', 100, '1', '2019-06-04 00:00:00', NULL, NULL, '100100100100100');

-- ----------------------------
-- Procedure structure for MENU_TOP
-- ----------------------------
DROP PROCEDURE IF EXISTS `MENU_TOP`;
delimiter ;;
CREATE PROCEDURE `MENU_TOP`(IN `ACCOUNTID` INT, IN `GROUPMENU` CHAR ( 2 ) CHARSET UTF8, IN `MENUSTATUS` CHAR ( 2 ) CHARSET UTF8, IN MENUID CHAR(100))
  NO SQL 
BEGIN 
	#load menu top join 2 table menu_navication and sub_menu_navigation
	IF (MENUSTATUS = '-1' && ACCOUNTID = -1 && GROUPMENU='-1') THEN
	
	SELECT 		sub_menu_name,
		sub_menu_link,
		sub_menu_parameter,
		icon,
		sub_menu_tooltip,
		menu_id
	FROM sub_menu_navigation WHERE menu_id IN ( MENUID );

ELSE
	SELECT
		alias,
		menu_link,
		menu_parameter,
		menu_tooltip,
		icon,
		menu_id
	FROM
		menu_navication 
	WHERE
		acc_id = ACCOUNTID -- check account of customer
		
		AND menu_status = MENUSTATUS -- status 0 enable 1 disable
		
		AND group_menu = GROUPMENU; -- group menu 0 menu top 1 menu bottom
	
END IF;
	
	END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
