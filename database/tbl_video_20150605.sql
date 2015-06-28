/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : farm_db_01

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-06-05 07:12:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_video
-- ----------------------------
DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `tbl_video` VALUES ('1', 'https://www.youtube.com/watch?v=UOmZ-a4XrqI', 'Hoa Dại Bên Đường Không Nên Hái - Trác Y Đình', '0', 'https://i.ytimg.com/vi/UOmZ-a4XrqI/hqdefault.jpg', '0', '2015-06-05 04:47:43', '2015-06-05 04:47:48', '2015-06-05 04:47:51');
