/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : farm_db_01

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-05-22 07:01:58
*/

SET FOREIGN_KEY_CHECKS=0;

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
