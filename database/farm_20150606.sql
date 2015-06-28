/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : farm_db_01

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-06-06 09:31:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('', 'quochuyls@gmail.com', 'aaea308c5c5014acbe76ae8760556ca903ade0781a73cb522739cce8c2d14191', '2015-05-21 15:29:40');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', '10c55b319fb3b3cc3c08834fd792035645c0b15cb16d39a5cca06d9dc787c322', '2015-05-21 23:15:32');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', 'b29d6b930e5cf4a7f360cd42877c7fbd5d48c3e40ba290f18765f9114385cec0', '2015-05-21 23:19:11');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', '08027c4659491f3b137780428391abc4908509e5cb48c4cf5e48ea4aaa0ec1f4', '2015-05-21 23:30:18');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', 'ca6541a2b24a4af96575b3a9548e7a5daf4e53dc11fed8425e118d9f95ee852c', '2015-05-21 23:40:18');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', '4474ddf13fb8fb65b5fe265753f30a88e7cc2dca1656979a776e567c149680d5', '2015-05-21 23:40:58');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', '7fe7fb72d70d666420d8d558de58cb5556956f22204f36dee16567260a281384', '2015-05-21 23:52:48');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', 'c8660dfd512253bf6125a010e2fd3f6b7013c14c6fb2db816503d5d3bf7ee73d', '2015-05-21 23:53:49');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', 'ab6e5e0ad976d89d3e413087a36ca257621284142294429741346fae6a022a99', '2015-05-22 02:33:23');
INSERT INTO `password_resets` VALUES ('admin', 'mariabong87@gmail.com', 'ca0479fb5e5d8ce8fde403f931197d7ef5bbc6ec4c376df6567569f7388f9481', '2015-05-23 06:05:02');

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

-- ----------------------------
-- Table structure for tbl_banner
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `banner_date` datetime NOT NULL,
  `banner_flg` tinyint(1) NOT NULL,
  `service_edu` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `service_edu_date` datetime NOT NULL,
  `service_edu_flg` tinyint(1) NOT NULL,
  `service_experiment` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `service_experiment_date` datetime NOT NULL,
  `service_experiment_flg` tinyint(1) NOT NULL,
  `service_food` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `service_food_date` datetime NOT NULL,
  `service_food_flg` tinyint(1) NOT NULL,
  `introduct` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `introduct_date` datetime NOT NULL,
  `introduct_flg` tinyint(1) NOT NULL,
  `customer` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `customer_date` datetime NOT NULL,
  `customer_flg` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_ad` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('1', 'SỮA THANH TRÙNG', 'PASTEURIZED MILK', '0', '2015-05-28 22:34:44', '2015-05-28 22:34:44');
INSERT INTO `tbl_category` VALUES ('2', 'SỮA SỐNG', 'RAW GOAT MILK', '0', '2015-05-28 22:34:44', '2015-05-28 22:34:44');

-- ----------------------------
-- Table structure for tbl_contact
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_contact
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `address_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_event_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_event_customer`;
CREATE TABLE `tbl_event_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `link_face` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_event_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_event_farm
-- ----------------------------
DROP TABLE IF EXISTS `tbl_event_farm`;
CREATE TABLE `tbl_event_farm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `link_face` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_event_farm
-- ----------------------------
INSERT INTO `tbl_event_farm` VALUES ('1', 'event_farm_1433182335.png', '11', '11', '11111', '1111', '1111111', '1111', '', '2015-06-01 18:12:15', '2015-06-01 18:12:15', '2015-06-01 18:12:15');

-- ----------------------------
-- Table structure for tbl_introduction
-- ----------------------------
DROP TABLE IF EXISTS `tbl_introduction`;
CREATE TABLE `tbl_introduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `manager_vi` text COLLATE utf8_unicode_ci,
  `manager_en` text COLLATE utf8_unicode_ci,
  `intro_img_top` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_img_right` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_img_bottom` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_img_left` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_introduction
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL COMMENT 'Cateogry id',
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `price_vi` int(11) DEFAULT NULL,
  `price_en` int(11) DEFAULT NULL,
  `price_sale_vi` int(11) DEFAULT NULL,
  `price_sale_en` int(11) DEFAULT NULL,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_flg` tinyint(1) DEFAULT '0',
  `new_flg` tinyint(1) DEFAULT '0',
  `unit_vi` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_en` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '1', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '1', '2015-05-28 23:08:23', '2015-06-04 20:14:16', '2015-05-28 23:08:32');
INSERT INTO `tbl_product` VALUES ('3', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 10:32:21', '2015-05-30 10:32:21', null);
INSERT INTO `tbl_product` VALUES ('4', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 10:35:03', '2015-05-30 10:35:03', null);
INSERT INTO `tbl_product` VALUES ('5', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 10:35:20', '2015-05-30 10:35:20', null);
INSERT INTO `tbl_product` VALUES ('6', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 10:36:06', '2015-05-30 10:36:06', null);
INSERT INTO `tbl_product` VALUES ('7', '0', null, null, null, null, null, null, null, null, null, null, '7.jpg', null, '0', '0', null, null, null, null, '0', '2015-05-30 11:00:49', '2015-05-30 11:00:49', null);
INSERT INTO `tbl_product` VALUES ('8', '0', null, null, null, null, null, null, null, null, null, null, 'product_8.jpg', null, '0', '0', null, null, null, null, '0', '2015-05-30 11:28:40', '2015-05-30 11:28:40', null);
INSERT INTO `tbl_product` VALUES ('9', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 11:35:14', '2015-05-30 11:35:14', null);
INSERT INTO `tbl_product` VALUES ('10', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 11:36:41', '2015-05-30 11:36:41', null);
INSERT INTO `tbl_product` VALUES ('11', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 11:40:45', '2015-05-30 11:40:45', null);
INSERT INTO `tbl_product` VALUES ('12', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 11:41:22', '2015-05-30 11:41:22', null);
INSERT INTO `tbl_product` VALUES ('13', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 12:52:58', '2015-05-30 12:52:58', null);
INSERT INTO `tbl_product` VALUES ('14', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-30 13:01:59', '2015-05-30 13:01:59', null);
INSERT INTO `tbl_product` VALUES ('15', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-31 14:06:34', '2015-05-31 14:06:34', null);
INSERT INTO `tbl_product` VALUES ('16', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-31 14:07:31', '2015-05-31 14:07:31', null);
INSERT INTO `tbl_product` VALUES ('17', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-31 14:09:52', '2015-05-31 14:09:52', null);
INSERT INTO `tbl_product` VALUES ('18', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-31 14:19:38', '2015-05-31 14:19:38', null);
INSERT INTO `tbl_product` VALUES ('19', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('20', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('21', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('22', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('23', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('24', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('25', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('26', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('27', '0', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('28', '0', 'This is title vi', 'This is en title', null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('29', '0', 'This is viet title', 'This is en title', null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('30', '0', 'This is title vi', 'This is en title', null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `tbl_product` VALUES ('31', '0', 'This is title vi', 'This is en title', null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, null, '0', '2015-05-31 14:49:20', '2015-05-31 14:49:20', null);
INSERT INTO `tbl_product` VALUES ('32', '0', 'AAAAAAAAAAAAAAAa', '', 'AAAAAAAAAAAAAA', '', '<p><span style=\"color:#FF0000\"><span style=\"font-size:22px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"background-color:#00FF00\">AAAAAAAAAAAAAAAa</span></span></span></span></p>\r\n', '<p><span style=\"color:#FFFF00\"><em><strong>VVVVVVVVVVVVVVVVVVVV</strong></em></span></p>\r\n', '0', '0', '0', '0', null, null, '1', '1', 'AAA', '', 'AAAaa', '', '0', '2015-05-31 14:52:33', '2015-05-31 14:52:33', null);
INSERT INTO `tbl_product` VALUES ('33', '1', 'AAA', '', 'AAAAA', '', '<p><span style=\"color:#FF0000\">AAAAAAAAAAAAAAAAAAAAA</span></p>\r\n', '', '33', '0', '333', '0', 'product_33.jpg', null, '1', '0', '33', '', '333', '', '0', '2015-05-31 19:51:10', '2015-05-31 19:51:11', '2015-06-25 00:00:00');
INSERT INTO `tbl_product` VALUES ('34', '2', 'Sản phầm 01', '', 'fdfffdf', '', '<ol>\r\n	<li><strong><span style=\"font-size:24px\"><span style=\"color:#FF0000\"><span style=\"background-color:#FFFF00\">B&aacute;n sản phẩm 01</span></span></span></strong></li>\r\n</ol>\r\n', '', '1000', '0', '321', '0', 'product_34.jpg', null, '1', '0', 'Chiếc', '', '1 túi 10 chiếc', '', '1', '2015-06-01 15:34:07', '2015-06-04 20:17:01', '2015-06-26 00:00:00');
INSERT INTO `tbl_product` VALUES ('35', '1', 'Sản phẩm 02', 'Product 02', 'Mô tả Sản phẩm 02', 'product 02 desc', '<h1><span style=\"color:#FF8C00\"><strong>Sản phẩm 02​</strong></span></h1>\r\n', '<p><span style=\"color:#FFFF00\">Product 02 contente</span></p>\r\n', '11', '222', '11', '222', 'product_35.jpg', null, '0', '0', '11', '22', '111', '2222', '0', '2015-06-01 15:39:54', '2015-06-01 15:39:54', '2015-06-01 00:00:00');
INSERT INTO `tbl_product` VALUES ('36', '2', 'Sữa béo', '11111', '22222', '11111', '<p>22222</p>\r\n', '<p><span style=\"color:#FFFF00\"><span style=\"font-size:14px\"><span style=\"font-family:comic sans ms,cursive\">11111</span></span></span></p>\r\n', '222', '111111', '222', '222', 'product_36.png', 'product_icon_36.jpg', '0', '1', '222', '222', '222', '2222', '0', '2015-06-01 18:06:32', '2015-06-04 20:15:43', '2015-06-01 00:00:00');

-- ----------------------------
-- Table structure for tbl_service
-- ----------------------------
DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `type` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_service
-- ----------------------------
INSERT INTO `tbl_service` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '2015-05-29 02:35:58', '2015-05-29 02:36:03', '2015-05-29 02:36:05');

-- ----------------------------
-- Table structure for tbl_video
-- ----------------------------
DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(3) DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_video
-- ----------------------------
INSERT INTO `tbl_video` VALUES ('1', null, 'https://www.youtube.com/watch?v=UOmZ-a4XrqI', 'Hoa Dại Bên Đường Không Nên Hái - Trác Y Đình', '0', 'https://i.ytimg.com/vi/UOmZ-a4XrqI/hqdefault.jpg', '0', '2015-06-05 04:47:43', '2015-06-05 04:47:48', '2015-06-05 04:47:51');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('4', 'admin', 'quochuyls@gmail.com', '$2y$10$Z5ycqIWT46bvu2Qh0Z4JJ.IB//Kz/pKuJhI168HngolH19YAv5JEq', 'opsObCrX41HVD4avE6HzOseWsPlxxoc7XOmOr9Q5W5x1PIV0757BOiDVbi3Z', '2015-05-20 20:55:05', '2015-05-20 21:07:20');
