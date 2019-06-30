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

 Date: 28/06/2019 13:30:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company_information
-- ----------------------------
DROP TABLE IF EXISTS `company_information`;
CREATE TABLE `company_information`  (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
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
INSERT INTO `company_information` VALUES (100, 'Phạm Thanh Quang', 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH XUÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251710', 'TP.CAN THO', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 100, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (101, 'Hà Anh Tuấn', 'CÔNG TY CỔ PHẦN ATT&T', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251711', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 101, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (102, 'Nguyễn Thị Bình An', 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NHÂN', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251712', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 102, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (103, 'Đinh Nho Thành', 'CÔNG TY CỔ PHẦN ĐỊA ỐC MỸ NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251713', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 103, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (104, 'Phạm Thúy Kiều', 'CÔNG TY CỔ PHẦN ĐỊA ỐC DƯƠNG VẬT', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251714', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 104, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');
INSERT INTO `company_information` VALUES (105, 'Hà Bạch Ngạn', 'CÔNG TY CỔ PHẦN ĐỊA ỐC KHÁNH NAM', '163 - 165 TRẦN QUỐC THẢO, PHƯỜNG 11, QUẬN 3', '6300251715', 'TP.HCM', '09555555', '9566666', '0941415514', 'PTQUANG0968@GMAIL.COM', 'THUESO.COM', '1111111111111', 'VIETCOMBANK', '2019-06-04 00:00:00', NULL, NULL, 105, 'a.PNG', 'CHI NHÁNH ĐỒNG ĐEN, QUẬN 3');

SET FOREIGN_KEY_CHECKS = 1;
