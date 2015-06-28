/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : farm_db_01

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-05-21 04:16:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES ('4', 'admin', 'mariabong87@gmail.com', '$2y$10$Z5ycqIWT46bvu2Qh0Z4JJ.IB//Kz/pKuJhI168HngolH19YAv5JEq', 'opsObCrX41HVD4avE6HzOseWsPlxxoc7XOmOr9Q5W5x1PIV0757BOiDVbi3Z', '2015-05-20 20:55:05', '2015-05-20 21:07:20');
