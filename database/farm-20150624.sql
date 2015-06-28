-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2015 at 04:42 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`type`, `email`, `token`, `created_at`) VALUES
('', 'quochuyls@gmail.com', 'aaea308c5c5014acbe76ae8760556ca903ade0781a73cb522739cce8c2d14191', '2015-05-21 08:29:40'),
('admin', 'mariabong87@gmail.com', '10c55b319fb3b3cc3c08834fd792035645c0b15cb16d39a5cca06d9dc787c322', '2015-05-21 16:15:32'),
('admin', 'mariabong87@gmail.com', 'b29d6b930e5cf4a7f360cd42877c7fbd5d48c3e40ba290f18765f9114385cec0', '2015-05-21 16:19:11'),
('admin', 'mariabong87@gmail.com', '08027c4659491f3b137780428391abc4908509e5cb48c4cf5e48ea4aaa0ec1f4', '2015-05-21 16:30:18'),
('admin', 'mariabong87@gmail.com', 'ca6541a2b24a4af96575b3a9548e7a5daf4e53dc11fed8425e118d9f95ee852c', '2015-05-21 16:40:18'),
('admin', 'mariabong87@gmail.com', '4474ddf13fb8fb65b5fe265753f30a88e7cc2dca1656979a776e567c149680d5', '2015-05-21 16:40:58'),
('admin', 'mariabong87@gmail.com', '7fe7fb72d70d666420d8d558de58cb5556956f22204f36dee16567260a281384', '2015-05-21 16:52:48'),
('admin', 'mariabong87@gmail.com', 'c8660dfd512253bf6125a010e2fd3f6b7013c14c6fb2db816503d5d3bf7ee73d', '2015-05-21 16:53:49'),
('admin', 'mariabong87@gmail.com', 'ab6e5e0ad976d89d3e413087a36ca257621284142294429741346fae6a022a99', '2015-05-21 19:33:23'),
('admin', 'mariabong87@gmail.com', 'ca0479fb5e5d8ce8fde403f931197d7ef5bbc6ec4c376df6567569f7388f9481', '2015-05-22 23:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'mariabong87@gmail.com', '$2y$10$Z5ycqIWT46bvu2Qh0Z4JJ.IB//Kz/pKuJhI168HngolH19YAv5JEq', 'opsObCrX41HVD4avE6HzOseWsPlxxoc7XOmOr9Q5W5x1PIV0757BOiDVbi3Z', '2015-05-20 20:55:05', '2015-05-20 21:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id` int(11) NOT NULL,
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
  `customer_flg` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `banner`, `banner_date`, `banner_flg`, `service_edu`, `service_edu_date`, `service_edu_flg`, `service_experiment`, `service_experiment_date`, `service_experiment_flg`, `service_food`, `service_food_date`, `service_food_flg`, `introduct`, `introduct_date`, `introduct_flg`, `customer`, `customer_date`, `customer_flg`) VALUES
(1, '1', '0000-00-00 00:00:00', 1, 'service_edu.png', '2015-06-09 05:28:10', 1, 'service_experiment.png', '2015-06-09 05:28:23', 1, 'service_food.png', '2015-06-09 05:28:49', 1, 'introduct.png', '2015-06-09 05:29:59', 1, 'customer.png', '2015-06-09 05:31:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_ad` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name_vi`, `name_en`, `delete_flag`, `created_at`, `updated_ad`) VALUES
(1, 'SỮA THANH TRÙNG', 'PASTEURIZED MILK', 0, '2015-05-28 22:34:44', '2015-05-28 22:34:44'),
(2, 'SỮA SỐNG', 'RAW GOAT MILK', 0, '2015-05-28 22:34:44', '2015-05-28 22:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(11) NOT NULL,
  `address_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `address_vi`, `address_en`, `email`, `phone`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, 'Thôn Ké Mới, xã Tản Lĩnh, Huyện Ba Vì, thành phố Hà Nội', 'Thôn Ké Mới, xã Tản Lĩnh, Huyện Ba Vì, thành phố Hà Nội', 'info@nongtraidetrang.vn', '0949.051.105', '2015-06-09 07:35:52', '2015-06-09 07:35:52', '2015-06-09 07:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL,
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
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name_vi`, `name_en`, `description_vi`, `description_en`, `address_vi`, `address_en`, `email`, `phone`, `thumbnail`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, 'Khách hàng 1', 'Khách hàng 1 en', 'Mô tả khách hàng 1', 'Mô tả khách hàng 1 en', 'Địa chỉ khách hàng 1', 'Địa chỉ khách hàng 1 en', 'khachhang1@gmail.com', '1234567890', 'customer_1433831984.JPG', '2015-06-09 06:39:44', '2015-06-09 06:39:44', '2015-06-09 06:39:44'),
(2, 'khách hàng 2', 'khách hàng 2 en', 'mô tả khách hàng 2', 'mô tả khách hàng 2 en', 'địa chỉ khách hàng 2 ', 'địa chỉ khách hàng 2 en', 'khachhang2@gmail.com', '1234567890', 'customer_1433832127.JPG', '2015-06-09 06:42:07', '2015-06-09 06:42:07', '2015-06-09 06:42:07'),
(3, 'khách hàng 3', 'khách hàng 3 en', 'mô tả khách hàng 3', 'mt khách hàng 3 en', 'địa chỉ khách hàng 3', 'dc khách hàng 3 en', 'khachhang3@gmail.com', '1234567890', 'customer_1433832206.JPG', '2015-06-09 06:43:26', '2015-06-09 06:43:26', '2015-06-09 06:43:26'),
(4, 'khách hàng 4', 'khách hàng 4 en', 'mt khách hàng 4', 'mt khách hàng 4 en', 'dc khách hàng 4', 'dc khách hàng 4 en', 'khachhang4@gmail.com', '1234567890', 'customer_1433832274.jpg', '2015-06-09 06:44:34', '2015-06-09 06:44:34', '2015-06-09 06:44:34'),
(5, 'khách hàng 5', 'khách hàng 5 en', 'khách hàng 5', 'khách hàng 5 en', 'khách hàng 5', 'khách hàng 5 en', 'khachhang5@gmail.com', '1234567890', 'customer_1433832351.jpg', '2015-06-09 06:45:51', '2015-06-09 06:45:51', '2015-06-09 06:45:51'),
(6, 'khách hàng 6', 'khách hàng 6 en', 'khách hàng 6', 'khách hàng 6 en', 'khách hàng 6', 'khách hàng 6 en', 'khachhang6@gmail.com', '1234567890', 'customer_1433832453.jpg', '2015-06-09 06:47:33', '2015-06-09 06:47:33', '2015-06-09 06:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_event_customer` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `link_face` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_event_customer`
--

INSERT INTO `tbl_event_customer` (`id`, `thumbnail`, `title_vi`, `title_en`, `description_vi`, `description_en`, `link_face`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, 'event_customer_1433837571.JPG', 'Gia đình cô Trang gửi nuôi chú chó FOXIE', 'Gia đình cô Trang gửi nuôi chú chó FOXIE', 'Nông trại “Dê Trắng” – Nông trại xanh, sống an lành Nông trại “Dê Trắng” là thương hiệu lớn của công ty cổ phần đầu tư phát triển DOK Việt Nam. Nông trại nằm tại Tản Lĩnh, Ba Vì. Với diện tích 12ha, trong đó có 10ha', 'Nông trại “Dê Trắng” – Nông trại xanh, sống an lành Nông trại “Dê Trắng” là thương hiệu lớn của công ty cổ phần đầu tư phát triển DOK Việt Nam. Nông trại nằm tại Tản Lĩnh, Ba Vì. Với diện tích 12ha, trong đó có 10ha', 'http://www.facebook.com/detrangfarm', '2015-06-09 08:12:51', '2015-06-09 08:12:51', '2015-06-09 08:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_farm`
--

CREATE TABLE IF NOT EXISTS `tbl_event_farm` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `link_face` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_event_farm`
--

INSERT INTO `tbl_event_farm` (`id`, `thumbnail`, `slug`, `title_vi`, `title_en`, `description_vi`, `description_en`, `content_vi`, `content_en`, `link_face`, `created_at`, `updated_at`, `publish_at`) VALUES
(2, 'event_farm_1433835210.jpg', 'chuong-trinh-trai-nghiem-de-tin-tuong', 'Chương trình “Trải nghiệm để tin tưởng”', 'Chương trình “Trải nghiệm để tin tưởng”', 'Đầu năm Ất Mùi 2015, sản phẩm sữa dê tươi nguyên chất 100% thương hiệu “Detrang farm” của nông trại Dê Trắng đã chính thức được đưa ra thị trường và ...', 'Đầu năm Ất Mùi 2015, sản phẩm sữa dê tươi nguyên chất 100% thương hiệu “Detrang farm” của nông trại Dê Trắng đã chính thức được đưa ra thị trường và ...', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Đầu năm Ất M&ugrave;i 2015, sản phẩm sữa d&ecirc; tươi nguy&ecirc;n chất 100% thương hiệu&nbsp;</span><strong>&ldquo;Detrang farm&rdquo;</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;của n&ocirc;ng trại D&ecirc; Trắng đ&atilde; ch&iacute;nh thức được đưa ra thị trường v&agrave; nhận được sự quan t&acirc;m ủng hộ nhiệt t&igrave;nh của đ&ocirc;ng đảo qu&yacute; kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/9/8870/18443958799_77c4199fb1_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo; tạo cơ hội để qu&yacute; kh&aacute;ch h&agrave;ng được trải nghiệm những hoạt động l&yacute; th&uacute; m&agrave; trước đ&acirc;y bạn chưa c&oacute; cơ hội được biết đến</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nhằm cảm ơn sự đ&oacute;n nhận của kh&aacute;ch h&agrave;ng, &ldquo;Detrang farm&rdquo; tổ chức chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;. Chương tr&igrave;nh tổ chức với mục đ&iacute;ch tạo cơ hội cho kh&aacute;ch h&agrave;ng l&ecirc;n tham quan N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty. Đ&uacute;ng như t&ecirc;n gọi của chương tr&igrave;nh, kh&aacute;ch h&agrave;ng c&oacute; thể th&ocirc;ng qua buổi tham quan để tiếp cận trực tiếp với sản phẩm, được &ldquo;mắt thấy tai nghe&rdquo; quy tr&igrave;nh sản xuất sữa d&ecirc; tươi nguy&ecirc;n chất 100% của n&ocirc;ng trại. Qua đ&oacute; cũng để tăng th&ecirc;m sự tin tưởng v&agrave; gắn b&oacute; của kh&aacute;ch h&agrave;ng v&agrave;o thương hiệu sữa d&ecirc; Detrang farm. Chi tiết kế hoạch chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;.</span></p>\r\n\r\n<p style="text-align: center;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8881/18632343611_02e7a0af8e_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" />Sản phẩm sữa d&ecirc; 100% thuần khiết &ldquo;Detrang Farm&rdquo; được vắt trực tiếp từ đ&agrave;n d&ecirc; sữa trong N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty tại x&atilde; Tản Lĩnh, huyện Ba V&igrave;. Giống d&ecirc; sữa được chọn nhập từ nước ngo&agrave;i, c&oacute; nguồn gốc r&otilde; r&agrave;ng, c&oacute; đầy đủ th&ocirc;ng tin về 3 đời thế hệ gần nhất. Ngo&agrave;i vấn đề con giống, để c&oacute; nguồn sữa d&ecirc; thơm ngon thuần khiết, khẩu phần ăn cho d&ecirc; chủ yếu từ loại cỏ tươi chuy&ecirc;n d&ugrave;ng. Chuồng trại cho d&ecirc; được thiết kế cao, tho&aacute;ng m&aacute;t, sạch sẽ gi&uacute;p d&ecirc; kh&ocirc;ng bị bệnh. D&ecirc; đến kỳ cho sữa được chăm s&oacute;c đặc biệt, trước khi vắt sữa, d&ecirc; sữa được đảm bảo vệ sinh th&acirc;n thể sạch sẽ, s&aacute;t tr&ugrave;ng kĩ. Sữa sống sau khi vắt trực tiếp sẽ được đ&oacute;ng k&iacute;n, bảo quản lạnh trong m&ocirc;i trường v&ocirc; tr&ugrave;ng.</span><br />\r\n<img alt="" src="https://c1.staticflickr.com/1/439/18442426450_6a70ee9218_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /><em>Khẩu phần ăn cho d&ecirc; chủ yếu từ loại cỏ tươi chuy&ecirc;n d&ugrave;ng</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="https://c1.staticflickr.com/1/501/18603770966_ef07c8a060_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" />Chuồng trại cho d&ecirc; được thiết kế cao, tho&aacute;ng m&aacute;t, sạch sẽ</em></p>\r\n\r\n<p style="text-align: justify;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại D&ecirc; Trắng l&agrave; n&ocirc;ng trại hoạt động theo m&ocirc; h&igrave;nh working farm. L&agrave; n&ocirc;ng trại du lịch nhưng kh&ocirc;ng giống như Farm Park (m&ocirc; phỏng) m&agrave; N&ocirc;ng trại D&ecirc; Trắng hoạt động chăn nu&ocirc;i thực tế, một số đ&agrave;n vật nu&ocirc;i c&oacute; quy m&ocirc; lớn như d&ecirc;, ngựa, đ&agrave; điểu&hellip; Tất cả hoạt động chăn nu&ocirc;i đều diễn ra theo quy tr&igrave;nh chuẩn, kiểm so&aacute;t nghi&ecirc;m ngặt từ nguồn thức ăn đến chế độ chăm s&oacute;c. N&ocirc;ng trại mở cửa phục vụ cho kh&aacute;ch du lịch tham quan, nghỉ dưỡng, trải nghiệm c&aacute;c hoạt động chăn nu&ocirc;i trồng trọt. C&aacute;c sản phẩm v&agrave; dịch vụ của n&ocirc;ng trại bao gồm:</span><br />\r\n<strong>N&ocirc;ng trại gi&aacute;o dục</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">M&ocirc; h&igrave;nh gi&aacute;o dục về n&ocirc;ng nghiệp nhằm gi&uacute;p học sinh được tiếp cận với những c&acirc;y trồng, vật nu&ocirc;i m&agrave; trước đ&acirc;y c&oacute; thể chỉ được nh&igrave;n thấy qua tivi, internet&hellip; gi&uacute;p trẻ ho&agrave;n thiện tư duy về thế giới xung quanh.</span><br />\r\n<strong>Du lịch thực nghiệm n&ocirc;ng nghiệp</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Tạo ra một n&ocirc;ng trại xanh, gần gũi thi&ecirc;n nhi&ecirc;n l&agrave; sự kết hợp của kh&ocirc;ng gian n&ocirc;ng th&ocirc;n bắc bộ với c&acirc;y đa, giếng nước, chợ qu&ecirc;, đ&agrave;n tr&acirc;u &hellip; miệt vườn T&acirc;y Nam Bộ với c&aacute;c vườn c&acirc;y ăn quả, đ&agrave;n ngựa, đ&agrave;n d&ecirc; tr&ecirc;n c&aacute;c thảo nguy&ecirc;n, l&agrave; đ&agrave; điểu v&agrave; c&aacute;c loại gia cầm, thủy cầm v&agrave; những kh&ocirc;ng gian xanh của những h&agrave;ng c&acirc;y, hồ c&acirc;u, đầm cỏ. Đến với n&ocirc;ng trại du kh&aacute;ch c&ograve;n được trực tiếp tham gia v&agrave;o c&aacute;c hoạt động chăn nu&ocirc;i như vắt sữa d&ecirc;, si&ecirc;u thị rau củ quả tự h&aacute;i, c&acirc;u c&aacute;&hellip; tham gia trải nghiệm cưỡi ngựa, cưỡi đ&agrave; điểu. &ldquo;N&ocirc;ng trại D&ecirc; Trắng&rdquo; muốn tạo ra nhiều cơ hội cho kh&aacute;ch h&agrave;ng, du kh&aacute;ch c&oacute; thể trực tiếp trải nghiệm những hoạt động l&yacute; th&uacute; để ph&aacute;t triển vốn kỹ năng sống.</span></p>\r\n\r\n<p style="text-align: center;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8894/18603779686_f2a77fb234_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Kh&aacute;ch tham quan c&oacute; cơ hội được thực nghiệm đ&uacute;ng nghĩa nhất</em></p>\r\n\r\n<p style="text-align: justify;"><strong>Thực phẩm n&ocirc;ng trại</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Hoạt động chăn nu&ocirc;i của n&ocirc;ng trại được &aacute;p dụng theo m&ocirc; h&igrave;nh ti&ecirc;n tiến, quản l&yacute; chặt chẽ nhằm tạo ra những thực phẩm sạch, an to&agrave;n, thơm ngon, bổ dưỡng&hellip; Thương hiệu sữa d&ecirc; tươi nguy&ecirc;n chất &ldquo;Detrang farm&rdquo; l&agrave; một trong những d&ograve;ng sản phẩm chất lượng của n&ocirc;ng trại. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c loại thực phẩm kh&aacute;c như thịt đ&agrave; điểu, thịt d&ecirc;, thịt g&agrave;, thịt lợn rừng&hellip;</span></p>\r\n\r\n<p style="text-align: center;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/1/504/18442373968_f151ef978a_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m sử dụng sữa d&ecirc; tươi nguy&ecirc;n chất của N&ocirc;ng trại D&ecirc; Trắng bởi nguồn thức ăn chủ yếu của d&ecirc; l&agrave; cỏ tươi chuy&ecirc;n d&ugrave;ng</em></p>\r\n\r\n<p style="text-align: justify;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; mang tới một m&ocirc;i trường gi&aacute;o dục thực tế trực quan sinh động, những trải nghiệm phong ph&uacute; cho kh&aacute;ch tham quan, v&agrave; những sản phẩm &ldquo;xanh&rdquo; an to&agrave;n, chất lượng.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Đầu năm Ất M&ugrave;i 2015, sản phẩm sữa d&ecirc; tươi nguy&ecirc;n chất 100% thương hiệu&nbsp;</span><strong>&ldquo;Detrang farm&rdquo;</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;của n&ocirc;ng trại D&ecirc; Trắng đ&atilde; ch&iacute;nh thức được đưa ra thị trường v&agrave; nhận được sự quan t&acirc;m ủng hộ nhiệt t&igrave;nh của đ&ocirc;ng đảo qu&yacute; kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/9/8870/18443958799_77c4199fb1_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo; tạo cơ hội để qu&yacute; kh&aacute;ch h&agrave;ng được trải nghiệm những hoạt động l&yacute; th&uacute; m&agrave; trước đ&acirc;y bạn chưa c&oacute; cơ hội được biết đến</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nhằm cảm ơn sự đ&oacute;n nhận của kh&aacute;ch h&agrave;ng, &ldquo;Detrang farm&rdquo; tổ chức chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;. Chương tr&igrave;nh tổ chức với mục đ&iacute;ch tạo cơ hội cho kh&aacute;ch h&agrave;ng l&ecirc;n tham quan N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty. Đ&uacute;ng như t&ecirc;n gọi của chương tr&igrave;nh, kh&aacute;ch h&agrave;ng c&oacute; thể th&ocirc;ng qua buổi tham quan để tiếp cận trực tiếp với sản phẩm, được &ldquo;mắt thấy tai nghe&rdquo; quy tr&igrave;nh sản xuất sữa d&ecirc; tươi nguy&ecirc;n chất 100% của n&ocirc;ng trại. Qua đ&oacute; cũng để tăng th&ecirc;m sự tin tưởng v&agrave; gắn b&oacute; của kh&aacute;ch h&agrave;ng v&agrave;o thương hiệu sữa d&ecirc; Detrang farm. Chi tiết kế hoạch chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;.</span></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8881/18632343611_02e7a0af8e_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" />Sản phẩm sữa d&ecirc; 100% thuần khiết &ldquo;Detrang Farm&rdquo; được vắt trực tiếp từ đ&agrave;n d&ecirc; sữa trong N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty tại x&atilde; Tản Lĩnh, huyện Ba V&igrave;. Giống d&ecirc; sữa được chọn nhập từ nước ngo&agrave;i, c&oacute; nguồn gốc r&otilde; r&agrave;ng, c&oacute; đầy đủ th&ocirc;ng tin về 3 đời thế hệ gần nhất. Ngo&agrave;i vấn đề con giống, để c&oacute; nguồn sữa d&ecirc; thơm ngon thuần khiết, khẩu phần ăn cho d&ecirc; chủ yếu từ loại cỏ tươi chuy&ecirc;n d&ugrave;ng. Chuồng trại cho d&ecirc; được thiết kế cao, tho&aacute;ng m&aacute;t, sạch sẽ gi&uacute;p d&ecirc; kh&ocirc;ng bị bệnh. D&ecirc; đến kỳ cho sữa được chăm s&oacute;c đặc biệt, trước khi vắt sữa, d&ecirc; sữa được đảm bảo vệ sinh th&acirc;n thể sạch sẽ, s&aacute;t tr&ugrave;ng kĩ. Sữa sống sau khi vắt trực tiếp sẽ được đ&oacute;ng k&iacute;n, bảo quản lạnh trong m&ocirc;i trường v&ocirc; tr&ugrave;ng.</span><br />\r\n<img alt="" src="https://c1.staticflickr.com/1/439/18442426450_6a70ee9218_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /><em>Khẩu phần ăn cho d&ecirc; chủ yếu từ loại cỏ tươi chuy&ecirc;n d&ugrave;ng</em></p>\r\n\r\n<p style="text-align:center"><em><img alt="" src="https://c1.staticflickr.com/1/501/18603770966_ef07c8a060_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" />Chuồng trại cho d&ecirc; được thiết kế cao, tho&aacute;ng m&aacute;t, sạch sẽ</em></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại D&ecirc; Trắng l&agrave; n&ocirc;ng trại hoạt động theo m&ocirc; h&igrave;nh working farm. L&agrave; n&ocirc;ng trại du lịch nhưng kh&ocirc;ng giống như Farm Park (m&ocirc; phỏng) m&agrave; N&ocirc;ng trại D&ecirc; Trắng hoạt động chăn nu&ocirc;i thực tế, một số đ&agrave;n vật nu&ocirc;i c&oacute; quy m&ocirc; lớn như d&ecirc;, ngựa, đ&agrave; điểu&hellip; Tất cả hoạt động chăn nu&ocirc;i đều diễn ra theo quy tr&igrave;nh chuẩn, kiểm so&aacute;t nghi&ecirc;m ngặt từ nguồn thức ăn đến chế độ chăm s&oacute;c. N&ocirc;ng trại mở cửa phục vụ cho kh&aacute;ch du lịch tham quan, nghỉ dưỡng, trải nghiệm c&aacute;c hoạt động chăn nu&ocirc;i trồng trọt. C&aacute;c sản phẩm v&agrave; dịch vụ của n&ocirc;ng trại bao gồm:</span><br />\r\n<strong>N&ocirc;ng trại gi&aacute;o dục</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">M&ocirc; h&igrave;nh gi&aacute;o dục về n&ocirc;ng nghiệp nhằm gi&uacute;p học sinh được tiếp cận với những c&acirc;y trồng, vật nu&ocirc;i m&agrave; trước đ&acirc;y c&oacute; thể chỉ được nh&igrave;n thấy qua tivi, internet&hellip; gi&uacute;p trẻ ho&agrave;n thiện tư duy về thế giới xung quanh.</span><br />\r\n<strong>Du lịch thực nghiệm n&ocirc;ng nghiệp</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Tạo ra một n&ocirc;ng trại xanh, gần gũi thi&ecirc;n nhi&ecirc;n l&agrave; sự kết hợp của kh&ocirc;ng gian n&ocirc;ng th&ocirc;n bắc bộ với c&acirc;y đa, giếng nước, chợ qu&ecirc;, đ&agrave;n tr&acirc;u &hellip; miệt vườn T&acirc;y Nam Bộ với c&aacute;c vườn c&acirc;y ăn quả, đ&agrave;n ngựa, đ&agrave;n d&ecirc; tr&ecirc;n c&aacute;c thảo nguy&ecirc;n, l&agrave; đ&agrave; điểu v&agrave; c&aacute;c loại gia cầm, thủy cầm v&agrave; những kh&ocirc;ng gian xanh của những h&agrave;ng c&acirc;y, hồ c&acirc;u, đầm cỏ. Đến với n&ocirc;ng trại du kh&aacute;ch c&ograve;n được trực tiếp tham gia v&agrave;o c&aacute;c hoạt động chăn nu&ocirc;i như vắt sữa d&ecirc;, si&ecirc;u thị rau củ quả tự h&aacute;i, c&acirc;u c&aacute;&hellip; tham gia trải nghiệm cưỡi ngựa, cưỡi đ&agrave; điểu. &ldquo;N&ocirc;ng trại D&ecirc; Trắng&rdquo; muốn tạo ra nhiều cơ hội cho kh&aacute;ch h&agrave;ng, du kh&aacute;ch c&oacute; thể trực tiếp trải nghiệm những hoạt động l&yacute; th&uacute; để ph&aacute;t triển vốn kỹ năng sống.</span></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8894/18603779686_f2a77fb234_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Kh&aacute;ch tham quan c&oacute; cơ hội được thực nghiệm đ&uacute;ng nghĩa nhất</em></p>\r\n\r\n<p style="text-align:justify"><strong>Thực phẩm n&ocirc;ng trại</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Hoạt động chăn nu&ocirc;i của n&ocirc;ng trại được &aacute;p dụng theo m&ocirc; h&igrave;nh ti&ecirc;n tiến, quản l&yacute; chặt chẽ nhằm tạo ra những thực phẩm sạch, an to&agrave;n, thơm ngon, bổ dưỡng&hellip; Thương hiệu sữa d&ecirc; tươi nguy&ecirc;n chất &ldquo;Detrang farm&rdquo; l&agrave; một trong những d&ograve;ng sản phẩm chất lượng của n&ocirc;ng trại. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c loại thực phẩm kh&aacute;c như thịt đ&agrave; điểu, thịt d&ecirc;, thịt g&agrave;, thịt lợn rừng&hellip;</span></p>\r\n\r\n<p style="text-align:center"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/1/504/18442373968_f151ef978a_b.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m sử dụng sữa d&ecirc; tươi nguy&ecirc;n chất của N&ocirc;ng trại D&ecirc; Trắng bởi nguồn thức ăn chủ yếu của d&ecirc; l&agrave; cỏ tươi chuy&ecirc;n d&ugrave;ng</em></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; mang tới một m&ocirc;i trường gi&aacute;o dục thực tế trực quan sinh động, những trải nghiệm phong ph&uacute; cho kh&aacute;ch tham quan, v&agrave; những sản phẩm &ldquo;xanh&rdquo; an to&agrave;n, chất lượng.</span></p>\r\n', 'http://www.facebook.com/detrangfarm', '2015-06-09 07:33:30', '2015-06-09 07:33:30', '2015-06-09 07:33:30'),
(3, 'event_farm_1435151084.jpg', 'fgffgh', 'fgffgh', 'dfghdfghdfghdfghdfgh', 'fdghdfhfghdfghfgHdfg\r\nh\r\ndfghdfghdfghdfg', 'dfghdfghdfghdfhdfghfghdfghdfgh ', '<p>dfghdfghdfghdfghdfhdfghdfhdfgh</p>\r\n\r\n<p>dfh</p>\r\n\r\n<p>df</p>\r\n\r\n<p>ghdfg</p>\r\n', '<p>ểtrvwerfvwe</p>\r\n', 'http://farm.local/admin/event-farm/create', '2015-06-24 13:04:44', '2015-06-24 13:04:44', '2015-06-24 13:04:44'),
(4, 'event_farm_1435151953.jpg', 'ban-co-dung-tai-nghe-de-chup-hinh', 'Bạn có dùng tai nghe để chụp hình?', 'Bạn có dùng tai nghe để chụp hình?', 'Bấm nút tăng/giảm âm lượng trên tai nghe khi ở ứng dụng chụp hình tức là bạn nhấn phím chụp. Xin hỏi xem bạn có dùng tính năng này không? bạn có biết tính năng này không?', 'Bấm nút tăng/giảm âm lượng trên tai nghe khi ở ứng dụng chụp hình tức là bạn nhấn phím chụp. Xin hỏi xem bạn có dùng tính năng này không? bạn có biết tính năng này không? ', '<p><span style="color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Bấm n&uacute;t tăng/giảm &acirc;m lượng tr&ecirc;n tai nghe khi ở ứng dụng chụp h&igrave;nh tức l&agrave; bạn nhấn ph&iacute;m chụp. Xin hỏi xem bạn c&oacute; d&ugrave;ng t&iacute;nh năng n&agrave;y kh&ocirc;ng? bạn c&oacute; biết t&iacute;nh năng n&agrave;y kh&ocirc;ng?Bấm n&uacute;t tăng/giảm &acirc;m lượng tr&ecirc;n tai nghe khi ở ứng dụng chụp h&igrave;nh tức l&agrave; bạn nhấn ph&iacute;m chụp. Xin hỏi xem bạn c&oacute; d&ugrave;ng t&iacute;nh năng n&agrave;y kh&ocirc;ng? bạn c&oacute; biết t&iacute;nh năng n&agrave;y kh&ocirc;ng?</span></p>\r\n', '<p><span style="color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Bấm n&uacute;t tăng/giảm &acirc;m lượng tr&ecirc;n tai nghe khi ở ứng dụng chụp h&igrave;nh tức l&agrave; bạn nhấn ph&iacute;m chụp. Xin hỏi xem bạn c&oacute; d&ugrave;ng t&iacute;nh năng n&agrave;y kh&ocirc;ng? bạn c&oacute; biết t&iacute;nh năng n&agrave;y kh&ocirc;ng?&nbsp;</span><span style="color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Bấm n&uacute;t tăng/giảm &acirc;m lượng tr&ecirc;n tai nghe khi ở ứng dụng chụp h&igrave;nh tức l&agrave; bạn nhấn ph&iacute;m chụp. Xin hỏi xem bạn c&oacute; d&ugrave;ng t&iacute;nh năng n&agrave;y kh&ocirc;ng? bạn c&oacute; biết t&iacute;nh năng n&agrave;y kh&ocirc;ng?&nbsp;</span><span style="color:rgb(20, 20, 20); font-family:helvetica,arial,sans-serif; font-size:15px">Bấm n&uacute;t tăng/giảm &acirc;m lượng tr&ecirc;n tai nghe khi ở ứng dụng chụp h&igrave;nh tức l&agrave; bạn nhấn ph&iacute;m chụp. Xin hỏi xem bạn c&oacute; d&ugrave;ng t&iacute;nh năng n&agrave;y kh&ocirc;ng? bạn c&oacute; biết t&iacute;nh năng n&agrave;y kh&ocirc;ng?&nbsp;</span></p>\r\n', 'http://farm.local/admin/event-farm/create', '2015-06-24 13:19:13', '2015-06-24 13:19:13', '2015-06-24 13:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer_info`
--

CREATE TABLE IF NOT EXISTS `tbl_footer_info` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `address_vi` varchar(1000) DEFAULT NULL,
  `address_en` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer_info`
--

INSERT INTO `tbl_footer_info` (`id`, `email`, `website`, `address_vi`, `address_en`, `created_at`, `updated_at`) VALUES
(1, 'vandung.coltech@gmail.com', 'demofarm.engkevn.com', '??a ch? Vi?t', '??a ch? Eng', '2015-06-24 12:35:24', '2015-06-24 12:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_header_info`
--

CREATE TABLE IF NOT EXISTS `tbl_header_info` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_header_info`
--

INSERT INTO `tbl_header_info` (`id`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '1234567890', 'vandung.coltech@gmail.com', '2015-06-24 09:34:32', '2015-06-24 10:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_introduction`
--

CREATE TABLE IF NOT EXISTS `tbl_introduction` (
  `id` int(11) NOT NULL,
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
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_introduction`
--

INSERT INTO `tbl_introduction` (`id`, `content_vi`, `content_en`, `manager_vi`, `manager_en`, `intro_img_top`, `intro_img_right`, `intro_img_bottom`, `intro_img_left`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, '<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; l&agrave; thương hiệu lớn của c&ocirc;ng ty cổ phần đầu tư ph&aacute;t triển DOK Việt Nam.</p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại nằm tại Tản Lĩnh, Ba V&igrave;. Với diện t&iacute;ch 12ha, trong đ&oacute; c&oacute; 10ha sử dụng cho việc chăn nu&ocirc;i v&agrave; trồng trọt. Bao gồm c&aacute;c loại vật nu&ocirc;i như d&ecirc;, đ&agrave; điểu, ngựa, cừu, tr&acirc;u, b&ograve;, c&aacute;c lo&agrave;i gia s&uacute;c, gia cầm giống qu&yacute;&hellip; Đặc biệt với đ&agrave;n d&ecirc; quy hoạch 500 con chủ yếu l&agrave; d&ecirc; lấy sữa, bước đầu cung cấp sản phẩm sữa tươi nguy&ecirc;n chất 100% ra thị trường, cam kết, đảm bảo chất lượng sữa đạt ti&ecirc;u chuẩn.</p>\r\n\r\n<p style="text-align:justify">Với mục ti&ecirc;u v&agrave; niềm tin sẽ trở th&agrave;nh n&ocirc;ng trại gi&aacute;o dục quy m&ocirc; lớn nhất Việt Nam v&agrave; trở th&agrave;nh doanh nghiệp h&agrave;ng đầu trong lĩnh vực kinh doanh c&aacute;c sản phẩm từ sữa d&ecirc; N&ocirc;ng trại &ldquo;Detrang farm&rdquo; sẽ mang tới cho kh&aacute;ch h&agrave;ng cả gi&aacute; trị tinh thần v&agrave; sức khỏe.</p>\r\n\r\n<p style="text-align:justify"><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="border-style:solid; border-width:3px; height:200px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<p style="text-align:justify"><span style="color:#008000">Sứ mệnh</span></p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; hoạt động nhằm mang tới một n&ocirc;ng trại gi&aacute;o dục về n&ocirc;ng nghiệp thực tế trực quan sinh động, những trải nghiệm phong ph&uacute; cho kh&aacute;ch tham quan n&ocirc;ng trại. Đồng thời N&ocirc;ng trại &ldquo;Detrang farm&rdquo; cũng mang tới cho kh&aacute;ch h&agrave;ng những sản phẩm n&ocirc;ng nghiệp an to&agrave;n, chất lượng. N&ocirc;ng trại &ldquo;Detrang farm&rdquo;tạo ra những gi&aacute; trị mới cho n&ocirc;ng nghiệp, li&ecirc;n tục tăng trưởng đ&oacute;ng g&oacute;p v&agrave;o sự ph&aacute;t triển tri thức, kinh tế, x&atilde; hội của đất nước.</p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo;hoạt động dựa tr&ecirc;n những gi&aacute; trị cốt l&otilde;i trung thực, tạo lập v&agrave; song h&agrave;nh. DOK lu&ocirc;n n&acirc;ng cao khẩu hiệu &ldquo;một doanh nghiệp hoạt động kinh doanh bền vững tr&ecirc;n cơ sở tạo lập uy t&iacute;n v&agrave; x&acirc;y dựng thương hiệu, can đảm đi đầu, ki&ecirc;n cường giữ vững bản sắc gi&aacute; trị cốt l&otilde;i, linh hoạt s&aacute;ng tạo đề cao chiến lược v&agrave; tầm nh&igrave;n d&agrave;i hạn&rdquo;.</p>\r\n\r\n<p style="text-align:justify">L&agrave;m chủ v&agrave; &aacute;p dụng được c&aacute;c kỹ thuật v&agrave; &aacute;p dụng m&ocirc; h&igrave;nh chăn nu&ocirc;i ti&ecirc;n tiến với đội ngũ c&ocirc;ng nh&acirc;n được đ&agrave;o tạo b&agrave;i bản N&ocirc;ng trại &ldquo;Detrang farm&rdquo;sẽ đem đến cho người d&ugrave;ng những sản phẩm chất lượng, gi&agrave;u dinh dưỡng được kiểm nghiệm an to&agrave;n vệ sinh thực phẩm nghi&ecirc;m ngặt.</p>\r\n\r\n<p><span style="color:#008000">SẢN PHẨM</span></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(34, 82, 119); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:18px">Từ thương hiệu N&ocirc;ng trại &ldquo;Detrang farm&rdquo; DOK mang đến những sản phẩm m&agrave; c&aacute;c c&ocirc;ng ty, c&aacute;c n&ocirc;ng trại kh&aacute;c kh&ocirc;ng thể c&oacute; được. Ngo&agrave;i cung cấp chủ yếu l&agrave; sữa d&ecirc; sống c&ocirc;ng ty c&ograve;n cung cấp c&aacute;c sản phẩm ho&agrave;n hảo kh&aacute;c như:</span></p>\r\n', '<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; l&agrave; thương hiệu lớn của c&ocirc;ng ty cổ phần đầu tư ph&aacute;t triển DOK Việt Nam.</p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại nằm tại Tản Lĩnh, Ba V&igrave;. Với diện t&iacute;ch 12ha, trong đ&oacute; c&oacute; 10ha sử dụng cho việc chăn nu&ocirc;i v&agrave; trồng trọt. Bao gồm c&aacute;c loại vật nu&ocirc;i như d&ecirc;, đ&agrave; điểu, ngựa, cừu, tr&acirc;u, b&ograve;, c&aacute;c lo&agrave;i gia s&uacute;c, gia cầm giống qu&yacute;&hellip; Đặc biệt với đ&agrave;n d&ecirc; quy hoạch 500 con chủ yếu l&agrave; d&ecirc; lấy sữa, bước đầu cung cấp sản phẩm sữa tươi nguy&ecirc;n chất 100% ra thị trường, cam kết, đảm bảo chất lượng sữa đạt ti&ecirc;u chuẩn.</p>\r\n\r\n<p style="text-align:justify">Với mục ti&ecirc;u v&agrave; niềm tin sẽ trở th&agrave;nh n&ocirc;ng trại gi&aacute;o dục quy m&ocirc; lớn nhất Việt Nam v&agrave; trở th&agrave;nh doanh nghiệp h&agrave;ng đầu trong lĩnh vực kinh doanh c&aacute;c sản phẩm từ sữa d&ecirc; N&ocirc;ng trại &ldquo;Detrang farm&rdquo; sẽ mang tới cho kh&aacute;ch h&agrave;ng cả gi&aacute; trị tinh thần v&agrave; sức khỏe.</p>\r\n\r\n<p style="text-align:justify"><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="border-style:solid; border-width:3px; height:200px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(0, 128, 0)">Sứ mệnh</span></p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo; hoạt động nhằm mang tới một n&ocirc;ng trại gi&aacute;o dục về n&ocirc;ng nghiệp thực tế trực quan sinh động, những trải nghiệm phong ph&uacute; cho kh&aacute;ch tham quan n&ocirc;ng trại. Đồng thời N&ocirc;ng trại &ldquo;Detrang farm&rdquo; cũng mang tới cho kh&aacute;ch h&agrave;ng những sản phẩm n&ocirc;ng nghiệp an to&agrave;n, chất lượng. N&ocirc;ng trại &ldquo;Detrang farm&rdquo;tạo ra những gi&aacute; trị mới cho n&ocirc;ng nghiệp, li&ecirc;n tục tăng trưởng đ&oacute;ng g&oacute;p v&agrave;o sự ph&aacute;t triển tri thức, kinh tế, x&atilde; hội của đất nước.</p>\r\n\r\n<p style="text-align:justify">N&ocirc;ng trại &ldquo;Detrang farm&rdquo;hoạt động dựa tr&ecirc;n những gi&aacute; trị cốt l&otilde;i trung thực, tạo lập v&agrave; song h&agrave;nh. DOK lu&ocirc;n n&acirc;ng cao khẩu hiệu &ldquo;một doanh nghiệp hoạt động kinh doanh bền vững tr&ecirc;n cơ sở tạo lập uy t&iacute;n v&agrave; x&acirc;y dựng thương hiệu, can đảm đi đầu, ki&ecirc;n cường giữ vững bản sắc gi&aacute; trị cốt l&otilde;i, linh hoạt s&aacute;ng tạo đề cao chiến lược v&agrave; tầm nh&igrave;n d&agrave;i hạn&rdquo;.</p>\r\n\r\n<p style="text-align:justify">L&agrave;m chủ v&agrave; &aacute;p dụng được c&aacute;c kỹ thuật v&agrave; &aacute;p dụng m&ocirc; h&igrave;nh chăn nu&ocirc;i ti&ecirc;n tiến với đội ngũ c&ocirc;ng nh&acirc;n được đ&agrave;o tạo b&agrave;i bản N&ocirc;ng trại &ldquo;Detrang farm&rdquo;sẽ đem đến cho người d&ugrave;ng những sản phẩm chất lượng, gi&agrave;u dinh dưỡng được kiểm nghiệm an to&agrave;n vệ sinh thực phẩm nghi&ecirc;m ngặt.</p>\r\n\r\n<p><span style="color:rgb(0, 128, 0)">SẢN PHẨM</span></p>\r\n\r\n<p><span style="color:rgb(34, 82, 119); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:18px">Từ thương hiệu N&ocirc;ng trại &ldquo;Detrang farm&rdquo; DOK mang đến những sản phẩm m&agrave; c&aacute;c c&ocirc;ng ty, c&aacute;c n&ocirc;ng trại kh&aacute;c kh&ocirc;ng thể c&oacute; được. Ngo&agrave;i cung cấp chủ yếu l&agrave; sữa d&ecirc; sống c&ocirc;ng ty c&ograve;n cung cấp c&aacute;c sản phẩm ho&agrave;n hảo kh&aacute;c như:</span></p>\r\n', 'Ông Đỗ Hồng Khanh với cương vị là Chủ tịch hội đồng quản trị( CTHĐQT) công ty cổ phần Bạch Đằng, kiêm CTHĐQT công ty giống gia cầm Ba Vì, Công ty cổ phần Đầu tư phát triển DOK Việt Nam. Ngoài ra hiện nay ông còn giữ vai trò là Phó chủ tịch Hội các nhà quản trị Việt Nam.', 'Ông Đỗ Hồng Khanh với cương vị là Chủ tịch hội đồng quản trị( CTHĐQT) công ty cổ phần Bạch Đằng, kiêm CTHĐQT công ty giống gia cầm Ba Vì, Công ty cổ phần Đầu tư phát triển DOK Việt Nam. Ngoài ra hiện nay ông còn giữ vai trò là Phó chủ tịch Hội các nhà quản trị Việt Nam.', 'intro_img_top.png', 'intro_img_right.png', 'intro_img_bottom.png', 'intro_img_left.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `products` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `token`, `info`, `products`, `active`, `created_at`) VALUES
(1, 'dY3s9KxhgcioRnoCfacmXhcvy07IPBgaV5evcszLbrj1K', '{"_token":"r2pr1kCXeaDVXod0T0vSR8RhJFqTmOTregvEasiV","name":"Nguy\\u1ec5n V\\u0103n D\\u0169ng","phone":"1234567890","email":"vandung.coltech@gmail.com","city":"1","address":"abc","note":"","payment_method":"cod"}', '{"39":{"product_id":39,"product_slug":"sua-thanh-trung-nguyen-chat","thumbnail":"product_39.png","title_vi":"S\\u1eefa Thanh Tr\\u00f9ng","title_en":"PASTEURIZED MILK","product_code_vi":"Chai 900ml","product_code_en":"","quantity":"8","price_vi":98000,"price_en":0}}', 1, '2015-06-09 04:02:12'),
(2, 'LDaRJfbxYvrQRAjWZFlfbAUUfwGbqxzIciLhOlRCSM0g6', '{"_token":"r2pr1kCXeaDVXod0T0vSR8RhJFqTmOTregvEasiV","name":"Nguy\\u1ec5n V\\u0103n D\\u0169ng","phone":"1234567890","email":"vandung.coltech@gmail.com","city":"1","address":"abc","note":"H\\u00f4m kia m\\u00ecnh v\\u00e0 ng\\u01b0\\u1eddi y\\u00eau c\\u00f2n \\u0111ang th\\u1ea3o lu\\u1eadn khoa h\\u1ecdc v\\u1edbi nhau v\\u1ec1 vi\\u1ec7c l\\u00e0m sao \\u0111\\u1ec3 drone d\\u00e2n d\\u1ee5ng c\\u00f3 th\\u1ec3 tr\\u00e1nh nhau tr\\u00ean kh\\u00f4ng n\\u1ebfu c\\u00f3 nhi\\u1ec1u drone c\\u00f9ng xu\\u1ea5t hi\\u1ec7n trong m\\u1ed9t khu v\\u1ef1c nh\\u01b0 c\\u00e1c show ca nh\\u1ea1c ngo\\u00e0i tr\\u1eddi vv v\\u00e0 vv","payment_method":"cod"}', '{"39":{"product_id":39,"product_slug":"sua-thanh-trung-nguyen-chat","thumbnail":"product_39.png","title_vi":"S\\u1eefa Thanh Tr\\u00f9ng","title_en":"PASTEURIZED MILK","product_code_vi":"Chai 900ml","product_code_en":"","quantity":"10","price_vi":98000,"price_en":0},"37":{"product_id":37,"product_slug":"lien-khuc-tuan-vu-chon-loc-2015-part-9-nguoi-mau-bikini-hd-ai-shinozaki","thumbnail":"product_37.jpg","title_vi":"Li\\u00ean kh\\u00fac Tu\\u1ea5n V\\u0169","title_en":"","product_code_vi":"222","product_code_en":"","quantity":"5","price_vi":22,"price_en":0},"38":{"product_id":38,"product_slug":"ca-nhac-nguoi-mau-tuyen-tap-ca-khuc-hay-cua-quang-le-nhac-vang-nguoi-mau-bikini-yuri-murakami","thumbnail":"product_38.jpg","title_vi":"Ca Nh\\u1ea1c Ng\\u01b0\\u1eddi M\\u1eabu","title_en":"","product_code_vi":"222","product_code_en":"","quantity":"5","price_vi":22,"price_en":0}}', 1, '2015-06-09 04:50:12'),
(3, 'Fj1eRdE4MlHVupW8DTNxWcuAXz8FP5mK1L7MNug8g2iky', '{"_token":"r2pr1kCXeaDVXod0T0vSR8RhJFqTmOTregvEasiV","name":"Nguy\\u1ec5n V\\u0103n D\\u0169ng","phone":"1234567890","email":"vandung.coltech@gmail.com","city":"1","address":"abc","note":"","payment_method":"cod"}', '{"39":{"product_id":39,"product_slug":"sua-thanh-trung-nguyen-chat","thumbnail":"product_39.png","title_vi":"S\\u1eefa Thanh Tr\\u00f9ng","title_en":"PASTEURIZED MILK","product_code_vi":"Chai 900ml","product_code_en":"","quantity":"4","price_vi":98000,"price_en":0}}', 1, '2015-06-09 04:57:35'),
(4, 'Pkf9HClOA2vFlM4zFdV7pVfQSDi9T670nIY2a86dP4LP0', '{"_token":"XVE2q2fXcMu4jP3DtpV5CTySDgdcSYx4SzFuoeS4","name":"Nguy\\u1ec5n V\\u0103n D\\u0169ng","phone":"1234567890","email":"vandung.coltech@gmail.com","city":"1","address":"nh\\u00e0 s\\u1ed1 8 - ng\\u00f5 93 - \\u0111\\u01b0\\u1eddng Ph\\u00fa \\u0110\\u00f4 - M\\u1ec5 Tr\\u00ec - H\\u00e0 N\\u1ed9i","note":"","payment_method":"cod"}', '{"45":{"product_id":45,"product_slug":"sua-song","thumbnail":"product_45.png","title_vi":"S\\u1eefa S\\u1ed1ng","title_en":"S\\u1eefa s\\u1ed1ng","product_code_vi":"Can 2 l\\u00edt","product_code_en":"Can 2 l\\u00edt","quantity":"5","price_vi":80000,"price_en":80000},"39":{"product_id":39,"product_slug":"sua-thanh-trung-nguyen-chat","thumbnail":"product_39.png","title_vi":"S\\u1eefa Thanh Tr\\u00f9ng","title_en":"PASTEURIZED MILK","product_code_vi":"Chai 900ml","product_code_en":"","quantity":"5","price_vi":98000,"price_en":0}}', 0, '2015-06-09 12:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL COMMENT 'Cateogry id',
  `title_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `categories_id`, `title_vi`, `title_en`, `slug`, `description_vi`, `description_en`, `content_vi`, `content_en`, `price_vi`, `price_en`, `price_sale_vi`, `price_sale_en`, `thumbnail`, `icon`, `sale_flg`, `new_flg`, `unit_vi`, `unit_en`, `product_code_vi`, `product_code_en`, `delete_flag`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, 1, 'AAAAAAA', '1', NULL, '1', '1', '1', '1', 1, 1, 1, 1, '1', '1', 1, 1, '1', '1', NULL, NULL, 1, '2015-05-28 23:08:23', '2015-06-04 20:14:16', '2015-05-28 23:08:32'),
(33, 1, 'AAA', '', NULL, 'AAAAA', '', '<p><span style="color:#FF0000">AAAAAAAAAAAAAAAAAAAAA</span></p>\r\n', '', 33, 0, 333, 0, 'product_33.jpg', NULL, 1, 0, '33', '', '333', '', 1, '2015-05-31 19:51:10', '2015-06-09 07:41:29', '2015-06-25 00:00:00'),
(34, 2, 'Sản phầm 01', '', NULL, 'fdfffdf', '', '<ol>\r\n	<li><strong><span style="font-size:24px"><span style="color:#FF0000"><span style="background-color:#FFFF00">B&aacute;n sản phẩm 01</span></span></span></strong></li>\r\n</ol>\r\n', '', 1000, 0, 321, 0, 'product_34.jpg', NULL, 1, 0, 'Chiếc', '', '1 túi 10 chiếc', '', 1, '2015-06-01 15:34:07', '2015-06-04 20:17:01', '2015-06-26 00:00:00'),
(35, 1, 'Sản phẩm 02', 'Product 02', NULL, 'Mô tả Sản phẩm 02', 'product 02 desc', '<h1><span style="color:#FF8C00"><strong>Sản phẩm 02​</strong></span></h1>\r\n', '<p><span style="color:#FFFF00">Product 02 contente</span></p>\r\n', 11, 222, 11, 222, 'product_35.jpg', NULL, 0, 0, '11', '22', '111', '2222', 1, '2015-06-01 15:39:54', '2015-06-07 08:51:12', '2015-06-01 00:00:00'),
(36, 2, 'Sữa béo', '11111', NULL, '22222', '11111', '<p>22222</p>\r\n', '<p><span style="color:#FFFF00"><span style="font-size:14px"><span style="font-family:comic sans ms,cursive">11111</span></span></span></p>\r\n', 222, 111111, 222, 222, 'product_36.png', 'product_icon_36.jpg', 0, 1, '222', '222', '222', '2222', 1, '2015-06-01 18:06:32', '2015-06-07 08:51:20', '2015-06-01 00:00:00'),
(37, 1, 'Liên khúc Tuấn Vũ', '', 'lien-khuc-tuan-vu-chon-loc-2015-part-9-nguoi-mau-bikini-hd-ai-shinozaki', 'Liên khúc Tuấn Vũ chọn lọc 2015 Part 9 - Người mẫu Bikini HD(篠崎 愛 - Ai shinozaki)', '', '<p><span style="color:#FF0000"><span dir="ltr">Liên khúc Tuấn Vũ chọn lọc 2015 Part 9 - Người mẫu Bikini HD(篠崎 愛 - Ai shinozaki)</span></span></p>\r\n', '', 22, 0, 222, 0, 'product_37.jpg', NULL, 0, 1, '222', '', '222', '', 1, '2015-06-06 11:03:27', '2015-06-09 07:41:24', '2015-06-06 18:04:22'),
(38, 1, 'Ca Nhạc Người Mẫu', '', 'ca-nhac-nguoi-mau-tuyen-tap-ca-khuc-hay-cua-quang-le-nhac-vang-nguoi-mau-bikini-yuri-murakami', 'Ca Nhạc Người Mẫu,Tuyển Tập Ca Khúc Hay Của Quang Lê, Nhạc Vàng, Người Mẫu Bikini Yuri Murakami', '', '<p>Ca Nhạc Người Mẫu,Tuyển Tập Ca Kh&uacute;c Hay Của Quang L&ecirc;, Nhạc V&agrave;ng, Người Mẫu Bikini Yuri Murakami</p>\r\n', '', 22, 0, 222, 0, 'product_38.jpg', NULL, 0, 0, '22', '', '222', '', 1, '2015-06-06 11:12:00', '2015-06-09 07:41:19', '2015-06-16 00:00:00'),
(39, 1, 'Sữa Thanh Trùng', 'PASTEURIZED MILK', 'sua-thanh-trung-nguyen-chat', '-	Loại sản phẩm: Sữa dê tươi thanh trùng không đường', '', '<p>- Loại sản phẩm: Sữa d&ecirc; tươi thanh tr&ugrave;ng kh&ocirc;ng đường<br />\r\n- Quy chuẩn đ&oacute;ng g&oacute;i: Đ&oacute;ng chai nhựa ti&ecirc;u chuẩn HDPE, dung t&iacute;ch chai 900ml<br />\r\n- T&ecirc;n thương hiệu: Sữa d&ecirc; tươi &ldquo;Detrang Farm&rdquo;<br />\r\n- Nơi sản xuất: N&ocirc;ng trại Detrang Farm &ndash; K&eacute; Mới, Tản Lĩnh, Ba V&igrave;, H&agrave; Nội<br />\r\n- C&ocirc;ng ty sở hữu sản phẩm: C&ocirc;ng ty CP Đầu tư ph&aacute;t triển DOK Việt Nam<br />\r\n- M&atilde; vạch sản phẩm 8 936093 94002 7<br />\r\n<br />\r\n<strong>Th&agrave;nh phần dinh dưỡng:</strong> Sử dụng ho&agrave;n to&agrave;n 100% sữa d&ecirc; tươi nguy&ecirc;n chất v&agrave; kh&ocirc;ng sử dụng chất bảo quản.<br />\r\n<br />\r\n<em>Bảng th&agrave;nh phần dinh dưỡng</em></p>\r\n\r\n<table align="left" style="width:550px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Năng lượng</td>\r\n			<td>62,7 Kcal</td>\r\n			<td>Vitamin B6</td>\r\n			<td>32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất b&eacute;o</td>\r\n			<td>3,5 g</td>\r\n			<td>Axit Pantothenic</td>\r\n			<td>290&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất đạm</td>\r\n			<td>3,2 g</td>\r\n			<td>Axit Folic</td>\r\n			<td>2,4&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hydrat cacbon</td>\r\n			<td>4,6 g</td>\r\n			<td>Biotin</td>\r\n			<td>4,5&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin A</td>\r\n			<td>142 l.U</td>\r\n			<td>Canxi</td>\r\n			<td>104 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin D</td>\r\n			<td>19 l.U</td>\r\n			<td>Magi&ecirc;</td>\r\n			<td>8,0 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>31&nbsp;&micro;g</td>\r\n			<td>Kẽm</td>\r\n			<td>0,32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2</td>\r\n			<td>195&nbsp;&micro;g</td>\r\n			<td>Sắt</td>\r\n			<td>0,28&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>111&nbsp;&micro;g</td>\r\n			<td>Iốt</td>\r\n			<td>17&nbsp;&micro;g</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bảo quản</strong><br />\r\n- Bảo quản sữa ở nhiệt độ từ 3 - 5 độ C<br />\r\n- Đ&oacute;ng chặt nắp chai sau mỗi lần sử dụng<br />\r\n- Uống trực tiếp hoặc uống n&oacute;ng<br />\r\n- Sau khi mở nắp n&ecirc;n sử dụng tốt nhất trong ng&agrave;y<br />\r\n- Hạn sử dụng: 5 ng&agrave;y kể từ ng&agrave;y sản xuất</p>\r\n', '', 98000, 0, 0, 0, 'product_39.png', 'product_icon_39.png', 1, 1, 'Chai', '', 'Chai 900ml', '', 0, '2015-06-07 08:12:25', '2015-06-07 08:53:35', '2015-06-07 00:00:00'),
(40, 1, '22', '', NULL, '22', '', '<p>2222</p>\r\n', '', 22222, 0, 22, 0, 'E:\\environment\\xampp\\tmp\\php28B0.tmp', NULL, 0, 0, '22', '', '222', '', 1, '2015-06-07 08:20:02', '2015-06-07 08:21:12', NULL),
(41, 1, '22', '', NULL, '22', '', '<p>2222</p>\r\n', '', 22222, 0, 22, 0, 'E:\\environment\\xampp\\tmp\\phpA265.tmp', NULL, 0, 1, '22', '', '222', '', 1, '2015-06-07 08:20:33', '2015-06-07 08:21:01', NULL),
(42, 1, '22', '', '22', '22', '', '<p>2222</p>\r\n', '', 22222, 0, 22, 0, 'product_42.JPG', NULL, 0, 0, '22', '', '222', '', 1, '2015-06-07 08:20:49', '2015-06-07 08:29:41', NULL),
(43, 1, 'AAA', '', 'aaa', 'AAA', '', '<p>aaa</p>\r\n', '', 0, 0, 0, 0, 'product_43.png', NULL, 1, 1, 'aaa', '', 'aaa', '', 1, '2015-06-07 08:22:59', '2015-06-07 08:29:29', '2015-06-05 00:00:00'),
(44, 1, 'eee', '', 'eee', 'eeeee', '', '<p>ee</p>\r\n', '', 0, 0, 0, 0, 'product_44.JPG', NULL, 0, 1, 'eee', '', 'eee', '', 1, '2015-06-07 08:28:13', '2015-06-07 08:29:22', NULL),
(45, 2, 'Sữa Sống', 'Sữa sống', 'sua-song', 'Sữa sống nguyên chất', 'Sữa sống nguyên chất', '<p>- Loại sản phẩm: Sữa d&ecirc; tươi thanh tr&ugrave;ng kh&ocirc;ng đường<br />\r\n- Quy chuẩn đ&oacute;ng g&oacute;i: Đ&oacute;ng chai nhựa ti&ecirc;u chuẩn HDPE, dung t&iacute;ch chai 900ml<br />\r\n- T&ecirc;n thương hiệu: Sữa d&ecirc; tươi &ldquo;Detrang Farm&rdquo;<br />\r\n- Nơi sản xuất: N&ocirc;ng trại Detrang Farm &ndash; K&eacute; Mới, Tản Lĩnh, Ba V&igrave;, H&agrave; Nội<br />\r\n- C&ocirc;ng ty sở hữu sản phẩm: C&ocirc;ng ty CP Đầu tư ph&aacute;t triển DOK Việt Nam<br />\r\n- M&atilde; vạch sản phẩm 8 936093 94002 7<br />\r\n<br />\r\n<strong>Th&agrave;nh phần dinh dưỡng:</strong>&nbsp;Sử dụng ho&agrave;n to&agrave;n 100% sữa d&ecirc; tươi nguy&ecirc;n chất v&agrave; kh&ocirc;ng sử dụng chất bảo quản.<br />\r\n<br />\r\n<em>Bảng th&agrave;nh phần dinh dưỡng</em></p>\r\n\r\n<table align="left" style="line-height:20.7999992370605px; width:550px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Năng lượng</td>\r\n			<td>62,7 Kcal</td>\r\n			<td>Vitamin B6</td>\r\n			<td>32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất b&eacute;o</td>\r\n			<td>3,5 g</td>\r\n			<td>Axit Pantothenic</td>\r\n			<td>290&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất đạm</td>\r\n			<td>3,2 g</td>\r\n			<td>Axit Folic</td>\r\n			<td>2,4&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hydrat cacbon</td>\r\n			<td>4,6 g</td>\r\n			<td>Biotin</td>\r\n			<td>4,5&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin A</td>\r\n			<td>142 l.U</td>\r\n			<td>Canxi</td>\r\n			<td>104 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin D</td>\r\n			<td>19 l.U</td>\r\n			<td>Magi&ecirc;</td>\r\n			<td>8,0 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>31&nbsp;&micro;g</td>\r\n			<td>Kẽm</td>\r\n			<td>0,32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2</td>\r\n			<td>195&nbsp;&micro;g</td>\r\n			<td>Sắt</td>\r\n			<td>0,28&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>111&nbsp;&micro;g</td>\r\n			<td>Iốt</td>\r\n			<td>17&nbsp;&micro;g</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bảo quản</strong><br />\r\n- Bảo quản sữa ở nhiệt độ từ 3 - 5 độ C<br />\r\n- Đ&oacute;ng chặt nắp chai sau mỗi lần sử dụng<br />\r\n- Uống trực tiếp hoặc uống n&oacute;ng<br />\r\n- Sau khi mở nắp n&ecirc;n sử dụng tốt nhất trong ng&agrave;y<br />\r\n- Hạn sử dụng: 5 ng&agrave;y kể từ ng&agrave;y sản xuất</p>\r\n', '<p>- Loại sản phẩm: Sữa d&ecirc; tươi thanh tr&ugrave;ng kh&ocirc;ng đường<br />\r\n- Quy chuẩn đ&oacute;ng g&oacute;i: Đ&oacute;ng chai nhựa ti&ecirc;u chuẩn HDPE, dung t&iacute;ch chai 900ml<br />\r\n- T&ecirc;n thương hiệu: Sữa d&ecirc; tươi &ldquo;Detrang Farm&rdquo;<br />\r\n- Nơi sản xuất: N&ocirc;ng trại Detrang Farm &ndash; K&eacute; Mới, Tản Lĩnh, Ba V&igrave;, H&agrave; Nội<br />\r\n- C&ocirc;ng ty sở hữu sản phẩm: C&ocirc;ng ty CP Đầu tư ph&aacute;t triển DOK Việt Nam<br />\r\n- M&atilde; vạch sản phẩm 8 936093 94002 7<br />\r\n<br />\r\n<strong>Th&agrave;nh phần dinh dưỡng:</strong>&nbsp;Sử dụng ho&agrave;n to&agrave;n 100% sữa d&ecirc; tươi nguy&ecirc;n chất v&agrave; kh&ocirc;ng sử dụng chất bảo quản.<br />\r\n<br />\r\n<em>Bảng th&agrave;nh phần dinh dưỡng</em></p>\r\n\r\n<table align="left" style="line-height:20.7999992370605px; width:550px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Năng lượng</td>\r\n			<td>62,7 Kcal</td>\r\n			<td>Vitamin B6</td>\r\n			<td>32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất b&eacute;o</td>\r\n			<td>3,5 g</td>\r\n			<td>Axit Pantothenic</td>\r\n			<td>290&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất đạm</td>\r\n			<td>3,2 g</td>\r\n			<td>Axit Folic</td>\r\n			<td>2,4&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hydrat cacbon</td>\r\n			<td>4,6 g</td>\r\n			<td>Biotin</td>\r\n			<td>4,5&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin A</td>\r\n			<td>142 l.U</td>\r\n			<td>Canxi</td>\r\n			<td>104 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin D</td>\r\n			<td>19 l.U</td>\r\n			<td>Magi&ecirc;</td>\r\n			<td>8,0 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>31&nbsp;&micro;g</td>\r\n			<td>Kẽm</td>\r\n			<td>0,32&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2</td>\r\n			<td>195&nbsp;&micro;g</td>\r\n			<td>Sắt</td>\r\n			<td>0,28&nbsp;&micro;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>111&nbsp;&micro;g</td>\r\n			<td>Iốt</td>\r\n			<td>17&nbsp;&micro;g</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bảo quản</strong><br />\r\n- Bảo quản sữa ở nhiệt độ từ 3 - 5 độ C<br />\r\n- Đ&oacute;ng chặt nắp chai sau mỗi lần sử dụng<br />\r\n- Uống trực tiếp hoặc uống n&oacute;ng<br />\r\n- Sau khi mở nắp n&ecirc;n sử dụng tốt nhất trong ng&agrave;y<br />\r\n- Hạn sử dụng: 5 ng&agrave;y kể từ ng&agrave;y sản xuất</p>\r\n', 80000, 80000, 0, 0, 'product_45.png', 'product_icon_45.png', 0, 0, 'Can', 'Can', 'Can 2 lít', 'Can 2 lít', 0, '2015-06-09 08:01:27', '2015-06-09 08:01:27', '2015-06-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE IF NOT EXISTS `tbl_service` (
  `id` int(11) NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `type` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title_vi`, `title_en`, `description_vi`, `description_en`, `content_vi`, `content_en`, `type`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, 'Nông trại giáo dục – Let’s be a farmer', 'EN Nông trại giáo dục – Let’s be a farmer', 'Nông trại giáo dục là một trong những sản phẩm chính của Detrang Farm. Có thể nói nông trại giáo dục là một một sản phẩm giáo dục nông nghiệp thực nghiệm với nội dung được thiết kế phù hợp cho từng lứa tuổi và thường xuyên được thay đổi linh hoạt để đáp ứng nhu cầu của từng cá nhân và tập thể.', 'Nông trại giáo dục là một trong những sản phẩm chính của Detrang Farm. Có thể nói nông trại giáo dục là một một sản phẩm giáo dục nông nghiệp thực nghiệm với nội dung được thiết kế phù hợp cho từng lứa tuổi và thường xuyên được thay đổi linh hoạt để đáp ứng nhu cầu của từng cá nhân và tập thể.', '<p><span style="font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại gi&aacute;o dục l&agrave; một trong những sản phẩm ch&iacute;nh của Detrang Farm. C&oacute; thể n&oacute;i n&ocirc;ng trại gi&aacute;o dục l&agrave; một một sản phẩm gi&aacute;o dục n&ocirc;ng nghiệp thực nghiệm với nội dung được thiết kế ph&ugrave; hợp cho từng lứa tuổi v&agrave; thường xuy&ecirc;n được thay đổi linh hoạt để đ&aacute;p ứng nhu cầu của từng c&aacute; nh&acirc;n v&agrave; tập thể. Tr&ecirc;n cơ sở l&agrave; những b&agrave;i học trong cuộc sống v&agrave; trường lớp, Detrang Farm th&ocirc;ng qua c&aacute;c hoạt động tự tay nu&ocirc;i, trồng, chăm s&oacute;c gia s&uacute;c v&agrave; n&ocirc;ng phẩm; thu hoạch sản phẩm kết hợp với những hoạt động vui chơi tập thể tại n&ocirc;ng trại để mang lại những b&agrave;i học gi&aacute;o dục bổ &iacute;ch cho người tham gia trải nghiệm tại đ&acirc;y.</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="border-style:solid; border-width:2px; height:200px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Hoạt động tr&ecirc;n Detrang Farm</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;</span></p>\r\n\r\n<p style="text-align: justify;"><strong>Giới thiệu</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Đến với Detrang Farm c&aacute;c bạn sẽ được giới thiệu c&aacute;c loại thực phẩm cần thiết, c&aacute;c loại c&acirc;y trồng vật nu&ocirc;i gần gũi với con người (như tr&acirc;u, b&ograve;, g&agrave;, ch&oacute;, d&ecirc;&hellip;) c&ugrave;ng với c&aacute;c phương ph&aacute;p nu&ocirc;i trồng truyền thống v&agrave; hiện đại.&nbsp;</span></p>\r\n\r\n<p style="text-align: justify;"><strong>Quan s&aacute;t</strong></p>\r\n\r\n<p style="text-align: justify;"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Tham quan thực tế nh&agrave; k&iacute;nh, vườn ươm, khu chăn nu&ocirc;i gia s&uacute;c gia cầm.</span></p>\r\n\r\n<p style="text-align:justify"><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="background-color:rgb(255, 255, 255); border-style:solid; border-width:2px; color:rgb(51, 51, 51); cursor:default; font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px; height:200px; line-height:20.7999992370605px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<p style="text-align:justify"><strong>&Aacute;p dụng</strong><br />\r\nThực h&agrave;nh trồng, chăm s&oacute;c một số loại c&acirc;y đơn giản như c&acirc;y l&uacute;a nước,&hellip;. V&agrave; đặc biệt c&ograve;n được trải nghiệm qu&aacute; tr&igrave;nh vắt sữa d&ecirc; trực tiếp.</p>\r\n\r\n<p style="text-align:justify"><strong>Thu hoạch</strong><br />\r\nH&aacute;i lượm những n&ocirc;ng sản c&oacute; sẵn tại Detrang Farm như ng&ocirc;, dưa chuột, thanh long&hellip;<br />\r\n<strong>Tạo gi&aacute; trị</strong><br />\r\nTận dụng những n&ocirc;ng phẩm c&oacute; sẵn tại n&ocirc;ng trại để chế biến th&agrave;nh những m&oacute;n ăn đơn giản như b&aacute;nh chuối chi&ecirc;n, chế biến sữa d&ecirc;&hellip; Thiết kế sang tạo những vật dụng trang tr&iacute; độc đ&aacute;o từ những nguy&ecirc;n vật liệu th&acirc;n thiện với m&ocirc;i trường.<br />\r\n<strong>Chia sẻ gi&aacute; trị</strong><br />\r\nGiao lưu v&agrave; trao đổi những b&agrave;i học hữu &iacute;ch r&uacute;t ra được từ việc tham gia c&aacute;c chương tr&igrave;nh gi&aacute;o dục tại Detrang Farm; c&ugrave;ng nhau thưởng thức những m&oacute;n ăn vừa tự tay chế biến. Tham gia đ&oacute;ng g&oacute;p, x&acirc;y dựng N&ocirc;ng trại bằng &yacute; kiến v&agrave; h&agrave;nh động thiết thực.</p>\r\n', '<p><span style="font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">N&ocirc;ng trại gi&aacute;o dục l&agrave; một trong những sản phẩm ch&iacute;nh của Detrang Farm. C&oacute; thể n&oacute;i n&ocirc;ng trại gi&aacute;o dục l&agrave; một một sản phẩm gi&aacute;o dục n&ocirc;ng nghiệp thực nghiệm với nội dung được thiết kế ph&ugrave; hợp cho từng lứa tuổi v&agrave; thường xuy&ecirc;n được thay đổi linh hoạt để đ&aacute;p ứng nhu cầu của từng c&aacute; nh&acirc;n v&agrave; tập thể. Tr&ecirc;n cơ sở l&agrave; những b&agrave;i học trong cuộc sống v&agrave; trường lớp, Detrang Farm th&ocirc;ng qua c&aacute;c hoạt động tự tay nu&ocirc;i, trồng, chăm s&oacute;c gia s&uacute;c v&agrave; n&ocirc;ng phẩm; thu hoạch sản phẩm kết hợp với những hoạt động vui chơi tập thể tại n&ocirc;ng trại để mang lại những b&agrave;i học gi&aacute;o dục bổ &iacute;ch cho người tham gia trải nghiệm tại đ&acirc;y.</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="border-style:solid; border-width:2px; height:200px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style="text-align:justify"><strong>Hoạt động tr&ecirc;n Detrang Farm</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><strong>Giới thiệu</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Đến với Detrang Farm c&aacute;c bạn sẽ được giới thiệu c&aacute;c loại thực phẩm cần thiết, c&aacute;c loại c&acirc;y trồng vật nu&ocirc;i gần gũi với con người (như tr&acirc;u, b&ograve;, g&agrave;, ch&oacute;, d&ecirc;&hellip;) c&ugrave;ng với c&aacute;c phương ph&aacute;p nu&ocirc;i trồng truyền thống v&agrave; hiện đại.&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><strong>Quan s&aacute;t</strong></p>\r\n\r\n<p style="text-align:justify"><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Tham quan thực tế nh&agrave; k&iacute;nh, vườn ươm, khu chăn nu&ocirc;i gia s&uacute;c gia cầm.</span></p>\r\n</div>\r\n\r\n<p style="text-align:justify"><img alt="" src="https://c1.staticflickr.com/1/264/18006027534_33f4bda5c0_b.jpg" style="border-style:solid; border-width:2px; font-family:sans-serif,arial,verdana,trebuchet ms; height:200px; line-height:20.7999992370605px; margin-left:250px; margin-right:250px; width:300px" /></p>\r\n\r\n<p style="text-align:justify"><strong>&Aacute;p dụng</strong><br />\r\nThực h&agrave;nh trồng, chăm s&oacute;c một số loại c&acirc;y đơn giản như c&acirc;y l&uacute;a nước,&hellip;. V&agrave; đặc biệt c&ograve;n được trải nghiệm qu&aacute; tr&igrave;nh vắt sữa d&ecirc; trực tiếp.</p>\r\n\r\n<p style="text-align:justify"><strong>Thu hoạch</strong><br />\r\nH&aacute;i lượm những n&ocirc;ng sản c&oacute; sẵn tại Detrang Farm như ng&ocirc;, dưa chuột, thanh long&hellip;<br />\r\n<strong>Tạo gi&aacute; trị</strong><br />\r\nTận dụng những n&ocirc;ng phẩm c&oacute; sẵn tại n&ocirc;ng trại để chế biến th&agrave;nh những m&oacute;n ăn đơn giản như b&aacute;nh chuối chi&ecirc;n, chế biến sữa d&ecirc;&hellip; Thiết kế sang tạo những vật dụng trang tr&iacute; độc đ&aacute;o từ những nguy&ecirc;n vật liệu th&acirc;n thiện với m&ocirc;i trường.<br />\r\n<strong>Chia sẻ gi&aacute; trị</strong><br />\r\nGiao lưu v&agrave; trao đổi những b&agrave;i học hữu &iacute;ch r&uacute;t ra được từ việc tham gia c&aacute;c chương tr&igrave;nh gi&aacute;o dục tại Detrang Farm; c&ugrave;ng nhau thưởng thức những m&oacute;n ăn vừa tự tay chế biến. Tham gia đ&oacute;ng g&oacute;p, x&acirc;y dựng N&ocirc;ng trại bằng &yacute; kiến v&agrave; h&agrave;nh động thiết thực.</p>\r\n', 1, '2015-05-29 02:35:58', '2015-06-09 06:12:54', '2015-05-29 02:36:05'),
(2, 'Kế hoạch chương trình “Trải nghiệm để tin tưởng”', 'Kế hoạch chương trình “Trải nghiệm để tin tưởng”', 'Nhân dịp đầu năm mới, vui Xuân Ất Mùi năm 2015, “Nông trại dê trắng – Detrangfarm” xin gửi đến quý khách hàng và gia đình lời chúc năm mới tốt lành nhất, kính chúc quý khách hàng cùng gia đình một năm mới SỨC KHỎE', 'Nhân dịp đầu năm mới, vui Xuân Ất Mùi năm 2015, “Nông trại dê trắng – Detrangfarm” xin gửi đến quý khách hàng và gia đình lời chúc năm mới tốt lành nhất, kính chúc quý khách hàng cùng gia đình một năm mới SỨC KHỎE', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nh&acirc;n dịp đầu năm mới, vui Xu&acirc;n Ất M&ugrave;i năm 2015,&nbsp;</span><strong>&ldquo;N&ocirc;ng trại d&ecirc; trắng &ndash; Detrangfarm&rdquo;</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;xin gửi đến qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; gia đ&igrave;nh lời ch&uacute;c năm mới tốt l&agrave;nh nhất, k&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng c&ugrave;ng gia đ&igrave;nh một năm mới&nbsp;</span><strong>SỨC KHỎE &ndash; AN KHANG &ndash; THỊNH VƯỢNG.</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Cảm ơn sự quan t&acirc;m ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng d&agrave;nh cho sản phẩm sữa d&ecirc; tươi nguy&ecirc;n chất 100% thương hiệu &ldquo;Detrangfarm&rdquo; của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">L&agrave; một doanh nghiệp đầu tư ph&aacute;t triển n&ocirc;ng nghiệp xanh, bền vững, l&agrave; những người tr&acirc;n qu&yacute; sức khỏe v&agrave; cũng l&agrave; những người cha, người mẹ, người con trong gia đ&igrave;nh ch&uacute;ng t&ocirc;i cảm kết mang tới sản phẩm chất lượng v&agrave; lu&ocirc;n mong muốn được đồng h&agrave;nh chăm s&oacute;c sức khỏe gia đ&igrave;nh bạn.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nhằm cảm ơn sự đ&oacute;n nhận của kh&aacute;ch h&agrave;ng &ldquo;Detrang farm&rdquo; tổ chức chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;. Chương tr&igrave;nh tổ chức tạo cơ hội để kh&aacute;ch h&agrave;ng l&ecirc;n tham quan N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty. Qua đ&oacute; cũng để tăng th&ecirc;m sự tin tưởng v&agrave; gắn b&oacute; của kh&aacute;ch h&agrave;ng v&agrave;o thương hiệu sữa d&ecirc; Detrang farm. Kế hoạch được tổ chức như sau:</span><br />\r\n<strong>1- Thời gian:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;22/03/2015</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">8h00 s&aacute;ng 22/03 đo&agrave;n tập trung tại Big C &ndash; 222 Trần Duy Hưng, Cầu Giấy, H&agrave; Nội để di chuyển bằng &ocirc; t&ocirc; l&ecirc;n tham quan n&ocirc;ng trại.</span><br />\r\n<strong>2- Địa điểm:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Detrang farm &ndash; N&ocirc;ng trại D&ecirc; Trắng</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Th&ocirc;n K&eacute; Mới, x&atilde; Tản Lĩnh, Huyện Ba V&igrave;, th&agrave;nh phố H&agrave; Nội.</span><br />\r\n<strong>3- Chi ph&iacute;:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;V&eacute; mời miễn ph&iacute;&nbsp;</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">C&ocirc;ng ty chịu to&agrave;n bộ chi ph&iacute; đi lại v&agrave; ăn trưa cho kh&aacute;ch h&agrave;ng.</span><br />\r\n<strong>4- Lịch tr&igrave;nh cụ thể</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Những hoạt động qu&yacute; kh&aacute;ch c&oacute; thể trải nghiệm trọng chuyến đi lần n&agrave;y tại N&ocirc;ng trại D&ecirc; Trắng:</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></p>\r\n\r\n<p style="text-align: center;"><em>Trải nghiệm vắt sữa d&ecirc; trực tiếp tr&ecirc;n n&ocirc;ng trại</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="background-color:rgb(255, 255, 255); border-style:solid; border-width:3px; color:rgb(51, 51, 51); cursor:default; font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; width:500px" /><em>Được &ocirc;m những ch&uacute; d&ecirc; ngộ nghĩnh được đ&aacute;nh số thứ tự</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="background-color:rgb(255, 255, 255); border-style:solid; border-width:3px; color:rgb(51, 51, 51); cursor:default; font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; text-align:center; width:500px" /><em>Trải nghiệm với hoạt động cho dể ăn</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; text-align:center; width:500px" /><em>Ngo&agrave;i ra bạn c&oacute; thể thỏa th&iacute;ch cưỡi ngựa</em></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; text-align:center; width:500px" /><em>Hoặc chơi với Đ&agrave; Điểu</em></p>\r\n', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nh&acirc;n dịp đầu năm mới, vui Xu&acirc;n Ất M&ugrave;i năm 2015,&nbsp;</span><strong>&ldquo;N&ocirc;ng trại d&ecirc; trắng &ndash; Detrangfarm&rdquo;</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;xin gửi đến qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; gia đ&igrave;nh lời ch&uacute;c năm mới tốt l&agrave;nh nhất, k&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng c&ugrave;ng gia đ&igrave;nh một năm mới&nbsp;</span><strong>SỨC KHỎE &ndash; AN KHANG &ndash; THỊNH VƯỢNG.</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Cảm ơn sự quan t&acirc;m ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng d&agrave;nh cho sản phẩm sữa d&ecirc; tươi nguy&ecirc;n chất 100% thương hiệu &ldquo;Detrangfarm&rdquo; của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">L&agrave; một doanh nghiệp đầu tư ph&aacute;t triển n&ocirc;ng nghiệp xanh, bền vững, l&agrave; những người tr&acirc;n qu&yacute; sức khỏe v&agrave; cũng l&agrave; những người cha, người mẹ, người con trong gia đ&igrave;nh ch&uacute;ng t&ocirc;i cảm kết mang tới sản phẩm chất lượng v&agrave; lu&ocirc;n mong muốn được đồng h&agrave;nh chăm s&oacute;c sức khỏe gia đ&igrave;nh bạn.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Nhằm cảm ơn sự đ&oacute;n nhận của kh&aacute;ch h&agrave;ng &ldquo;Detrang farm&rdquo; tổ chức chương tr&igrave;nh &ldquo;Trải nghiệm để tin tưởng&rdquo;. Chương tr&igrave;nh tổ chức tạo cơ hội để kh&aacute;ch h&agrave;ng l&ecirc;n tham quan N&ocirc;ng trại D&ecirc; Trắng của c&ocirc;ng ty. Qua đ&oacute; cũng để tăng th&ecirc;m sự tin tưởng v&agrave; gắn b&oacute; của kh&aacute;ch h&agrave;ng v&agrave;o thương hiệu sữa d&ecirc; Detrang farm. Kế hoạch được tổ chức như sau:</span><br />\r\n<strong>1- Thời gian:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;22/03/2015</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">8h00 s&aacute;ng 22/03 đo&agrave;n tập trung tại Big C &ndash; 222 Trần Duy Hưng, Cầu Giấy, H&agrave; Nội để di chuyển bằng &ocirc; t&ocirc; l&ecirc;n tham quan n&ocirc;ng trại.</span><br />\r\n<strong>2- Địa điểm:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Detrang farm &ndash; N&ocirc;ng trại D&ecirc; Trắng</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Th&ocirc;n K&eacute; Mới, x&atilde; Tản Lĩnh, Huyện Ba V&igrave;, th&agrave;nh phố H&agrave; Nội.</span><br />\r\n<strong>3- Chi ph&iacute;:</strong><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;V&eacute; mời miễn ph&iacute;&nbsp;</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">C&ocirc;ng ty chịu to&agrave;n bộ chi ph&iacute; đi lại v&agrave; ăn trưa cho kh&aacute;ch h&agrave;ng.</span><br />\r\n<strong>4- Lịch tr&igrave;nh cụ thể</strong><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Những hoạt động qu&yacute; kh&aacute;ch c&oacute; thể trải nghiệm trọng chuyến đi lần n&agrave;y tại N&ocirc;ng trại D&ecirc; Trắng:</span></p>\r\n\r\n<p><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></p>\r\n\r\n<p style="text-align:center"><em>Trải nghiệm vắt sữa d&ecirc; trực tiếp tr&ecirc;n n&ocirc;ng trại</em></p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; width:500px" /><em>Được &ocirc;m những ch&uacute; d&ecirc; ngộ nghĩnh được đ&aacute;nh số thứ tự</em></p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; width:500px" /><em>Trải nghiệm với hoạt động cho dể ăn</em></p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; width:500px" /><em>Ngo&agrave;i ra bạn c&oacute; thể thỏa th&iacute;ch cưỡi ngựa</em></p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; font-family:sans-serif,arial,verdana,trebuchet ms; height:333px; line-height:20.7999992370605px; margin-left:180px; margin-right:180px; width:500px" /><em>Hoặc chơi với Đ&agrave; Điểu</em></p>\r\n', 2, NULL, '2015-06-09 06:20:35', NULL),
(3, 'Sữa dê tươi thanh trùng Detrang Farm', 'Sữa dê tươi thanh trùng Detrang Farm', 'Sữa dê là một loại đồ uống dinh dưỡng rất được ưa chuộng ở các nước phát triển. Khác với sữa bò, đã có một cuộc nghiên cứu lâm sàng mở rộng đối với trẻ em Pháp bị dị ứng với sữa bò cho biết 93% các em bé trong số', 'Sữa dê là một loại đồ uống dinh dưỡng rất được ưa chuộng ở các nước phát triển. Khác với sữa bò, đã có một cuộc nghiên cứu lâm sàng mở rộng đối với trẻ em Pháp bị dị ứng với sữa bò cho biết 93% các em bé trong số', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Để đ&aacute;p ứng tốt hơn nhu cầu sử dụng sữa d&ecirc; của kh&aacute;ch h&agrave;ng, sau một thời gian chuẩn bị Detrang Farm đ&atilde; cho ra mắt sản phẩm mới &ndash; Sữa d&ecirc; tươi thanh tr&ugrave;ng nguy&ecirc;n chất.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Sau một thời gian c&oacute; mặt tr&ecirc;n thị trường sản phẩm Sữa d&ecirc; tươi (sữa sống) nh&atilde;n hiệu Detrang Farm đ&atilde; nhận được những phản hồi t&iacute;ch cực về chất lượng cũng như sự ủng hộ nhiệt t&igrave;nh của c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Với mong muốn n&acirc;ng cao sự tiện dụng cho kh&aacute;ch h&agrave;ng c&ocirc;ng ty đ&atilde; quyết định đầu tư m&aacute;y m&oacute;c trang thiết bị để cho ra mắt sản phẩm mới &ndash; Sữa d&ecirc; tươi thanh tr&ugrave;ng nguy&ecirc;n chất 100%. (Sữa thanh tr&ugrave;ng l&agrave; sữa được gia nhiệt ở 800C loại bỏ hầu hết c&aacute;c vi khuẩn m&agrave; vẫn giữ nguy&ecirc;n được dinh dưỡng c&oacute; trong sữa). Kh&aacute;ch h&agrave;ng khi mua sản phẩm sữa d&ecirc; tươi thanh tr&ugrave;ng c&oacute; thể sử dụng ngay v&agrave; c&oacute; thể bảo quản lạnh trong 5 ng&agrave;y kể từ ng&agrave;y sản xuất.</span></p>\r\n\r\n<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Sữa &ndash; d&ecirc; &ndash; thanh &ndash; tr&ugrave;ng &ndash; Detrang &ndash; Farm</em><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Trong dịp ra mắt sản phẩm mới, c&ocirc;ng ty thực hiện chương tr&igrave;nh ưu đ&atilde;i miễn ph&iacute; giao h&agrave;ng trong nội th&agrave;nh H&agrave; Nội. Đặc biệt qu&yacute; kh&aacute;ch sẽ được giảm gi&aacute; 10% trong 5 ng&agrave;y đầu ti&ecirc;n từ ng&agrave;y 5-10/5/2015 khi mua từ 2lit sữa d&ecirc; thanh tr&ugrave;ng nh&atilde;n hiệu Detrang Farm trở l&ecirc;n.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua sản phẩm c&oacute; thể li&ecirc;n hệ với c&ocirc;ng ty qua số điện thoại 0422.42.68.68 hoặc 0942.133.919 để được tư vấn v&agrave; giao h&agrave;ng tận nh&agrave;.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Gi&aacute; b&aacute;n sản phẩm sữa d&ecirc; thanh tr&ugrave;ng l&agrave;: 98.000đ/lit.</span></p>\r\n', '<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Để đ&aacute;p ứng tốt hơn nhu cầu sử dụng sữa d&ecirc; của kh&aacute;ch h&agrave;ng, sau một thời gian chuẩn bị Detrang Farm đ&atilde; cho ra mắt sản phẩm mới &ndash; Sữa d&ecirc; tươi thanh tr&ugrave;ng nguy&ecirc;n chất.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Sau một thời gian c&oacute; mặt tr&ecirc;n thị trường sản phẩm Sữa d&ecirc; tươi (sữa sống) nh&atilde;n hiệu Detrang Farm đ&atilde; nhận được những phản hồi t&iacute;ch cực về chất lượng cũng như sự ủng hộ nhiệt t&igrave;nh của c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Với mong muốn n&acirc;ng cao sự tiện dụng cho kh&aacute;ch h&agrave;ng c&ocirc;ng ty đ&atilde; quyết định đầu tư m&aacute;y m&oacute;c trang thiết bị để cho ra mắt sản phẩm mới &ndash; Sữa d&ecirc; tươi thanh tr&ugrave;ng nguy&ecirc;n chất 100%. (Sữa thanh tr&ugrave;ng l&agrave; sữa được gia nhiệt ở 800C loại bỏ hầu hết c&aacute;c vi khuẩn m&agrave; vẫn giữ nguy&ecirc;n được dinh dưỡng c&oacute; trong sữa). Kh&aacute;ch h&agrave;ng khi mua sản phẩm sữa d&ecirc; tươi thanh tr&ugrave;ng c&oacute; thể sử dụng ngay v&agrave; c&oacute; thể bảo quản lạnh trong 5 ng&agrave;y kể từ ng&agrave;y sản xuất.</span></p>\r\n\r\n<p><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px"><img alt="" src="https://c1.staticflickr.com/9/8864/18624580412_3f71a8651e_n.jpg" style="border-style:solid; border-width:3px; height:333px; margin-left:180px; margin-right:180px; width:500px" /></span><em>Sữa &ndash; d&ecirc; &ndash; thanh &ndash; tr&ugrave;ng &ndash; Detrang &ndash; Farm</em><span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">&nbsp;Trong dịp ra mắt sản phẩm mới, c&ocirc;ng ty thực hiện chương tr&igrave;nh ưu đ&atilde;i miễn ph&iacute; giao h&agrave;ng trong nội th&agrave;nh H&agrave; Nội. Đặc biệt qu&yacute; kh&aacute;ch sẽ được giảm gi&aacute; 10% trong 5 ng&agrave;y đầu ti&ecirc;n từ ng&agrave;y 5-10/5/2015 khi mua từ 2lit sữa d&ecirc; thanh tr&ugrave;ng nh&atilde;n hiệu Detrang Farm trở l&ecirc;n.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua sản phẩm c&oacute; thể li&ecirc;n hệ với c&ocirc;ng ty qua số điện thoại 0422.42.68.68 hoặc 0942.133.919 để được tư vấn v&agrave; giao h&agrave;ng tận nh&agrave;.</span><br />\r\n<span style="color:rgb(149, 148, 148); font-family:source sans pro,source sans pro black,source sans pro light,source sans pro semibold,source sans pro extralight; font-size:14px">Gi&aacute; b&aacute;n sản phẩm sữa d&ecirc; thanh tr&ugrave;ng l&agrave;: 98.000đ/lit.</span></p>\r\n', 3, NULL, '2015-06-09 06:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE IF NOT EXISTS `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(3) DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `slug`, `url`, `youtube_id`, `position`, `thumbnail`, `delete_flag`, `created_at`, `updated_at`, `publish_at`) VALUES
(2, 'Liên khúc Tuấn Vũ chọn lọc 2015 Part 7 - Người mẫu Bikini HD(篠崎 愛 - Ai shinozaki)', 'lien-khuc-tuan-vu-chon-loc-2015-part-7-nguoi-mau-bikini-hd-ai-shinozaki', 'https://www.youtube.com/watch?v=Jg1a597NJ88', 'Jg1a597NJ88', 2, 'https://i.ytimg.com/vi/2wA7e_C_Mtg/hqdefault.jpg', 0, '2015-06-06 10:35:24', '2015-06-06 10:35:24', '0000-00-00 00:00:00'),
(3, 'Liên khúc Tuấn Vũ chọn lọc 2015 Part 7 - Người mẫu Bikini HD(篠崎 愛 - Ai shinozaki)', 'lien-khuc-tuan-vu-chon-loc-2015-part-7-nguoi-mau-bikini-hd-ai-shinozaki', 'https://www.youtube.com/watch?v=Jg1a597NJ88', 'Jg1a597NJ88', 2, 'https://i.ytimg.com/vi/2wA7e_C_Mtg/hqdefault.jpg', 1, '2015-06-06 10:36:32', '2015-06-06 16:03:33', '2015-06-06 19:28:34'),
(4, 'Liên khúc Tuấn Vũ chọn lọc 2015 Part 8 - Người mẫu Bikini HD(篠崎 愛 - Ai shinozaki)', 'lien-khuc-tuan-vu-chon-loc-2015-part-8-nguoi-mau-bikini-hd-ai-shinozaki', 'https://www.youtube.com/watch?v=2wA7e_C_Mtg', '2wA7e_C_Mtg', 2, 'https://i.ytimg.com/vi/2wA7e_C_Mtg/hqdefault.jpg', 1, '2015-06-06 10:46:28', '2015-06-06 16:08:35', '2015-06-18 00:00:00'),
(5, 'Ca Nhạc Người Mẫu,Liên Khúc Nhạc Sống Chọn Lọc Hay Nhất Năm 2015', 'ca-nhac-nguoi-mau-lien-khuc-nhac-song-chon-loc-hay-nhat-nam-2015', 'https://www.youtube.com/watch?v=aMoC19JMbj8', 'aMoC19JMbj8', 2, 'https://i.ytimg.com/vi/aMoC19JMbj8/hqdefault.jpg', 1, '2015-06-06 12:34:30', '2015-06-06 16:02:58', '2015-06-06 00:00:00'),
(6, 'Ca Nhạc Người Mẫu,Liên Khúc Nhạc Sống Chọn Lọc Hay Nhất Năm 2015', 'ca-nhac-nguoi-mau-lien-khuc-nhac-song-chon-loc-hay-nhat-nam-2015', 'https://www.youtube.com/watch?v=aMoC19JMbj8', 'aMoC19JMbj8', 2, 'https://i.ytimg.com/vi/aMoC19JMbj8/hqdefault.jpg', 0, '2015-06-06 12:34:52', '2015-06-06 12:34:52', '2015-06-30 00:00:00'),
(7, 'Nhạc Vàng Người Mẫu Sexy Vòng Một Khủng', 'nhac-vang-nguoi-mau-sexy-vong-mot-khung', 'https://www.youtube.com/watch?v=TxSbcBKbesc', 'TxSbcBKbesc', 1, 'https://i.ytimg.com/vi/TxSbcBKbesc/hqdefault.jpg', 0, '2015-06-06 12:41:10', '2015-06-07 06:18:31', '2015-06-07 00:00:00'),
(8, 'Nhạc Vàng Người Mẫu Sexy Vòng Một Khủng', 'nhac-vang-nguoi-mau-sexy-vong-mot-khung', 'https://www.youtube.com/watch?v=TxSbcBKbesc', 'TxSbcBKbesc', 1, 'https://i.ytimg.com/vi/TxSbcBKbesc/hqdefault.jpg', 1, '2015-06-07 05:33:50', '2015-06-07 06:18:13', NULL),
(9, '(Liên Khúc) Chiều Mưa Hay Nhất - Mạnh Đình, Như Quỳnh & Lâm Thúy Vân', 'lien-khuc-chieu-mua-hay-nhat-manh-dinh-nhu-quynh-lam-thuy-van', 'https://www.youtube.com/watch?v=0BIVpaYchaI', '0BIVpaYchaI', 3, 'https://i.ytimg.com/vi/0BIVpaYchaI/hqdefault.jpg', 0, '2015-06-07 05:52:00', '2015-06-07 08:02:53', '2015-06-07 00:00:00'),
(10, '(Liên Khúc) Chiều Mưa Hay Nhất - Mạnh Đình, Như Quỳnh & Lâm Thúy Vân', 'lien-khuc-chieu-mua-hay-nhat-manh-dinh-nhu-quynh-lam-thuy-van', 'https://www.youtube.com/watch?v=0BIVpaYchaI', '0BIVpaYchaI', 3, 'https://i.ytimg.com/vi/0BIVpaYchaI/hqdefault.jpg', 1, '2015-06-07 05:53:10', '2015-06-07 05:54:29', '0000-00-00 00:00:00'),
(11, '(Liên Khúc) Chiều Mưa Hay Nhất - Mạnh Đình, Như Quỳnh & Lâm Thúy Vân', 'lien-khuc-chieu-mua-hay-nhat-manh-dinh-nhu-quynh-lam-thuy-van', 'https://www.youtube.com/watch?v=0BIVpaYchaI', '0BIVpaYchaI', 3, 'https://i.ytimg.com/vi/0BIVpaYchaI/hqdefault.jpg', 1, '2015-06-07 05:54:12', '2015-06-07 05:54:21', '0000-00-00 00:00:00'),
(12, 'Vì Anh Nhớ Em - Phúc Bồ', 'vi-anh-nho-em-phuc-bo', 'https://www.youtube.com/watch?v=mOusPLeHgKY', 'mOusPLeHgKY', 1, 'https://i.ytimg.com/vi/mOusPLeHgKY/hqdefault.jpg', 0, '2015-06-08 01:21:47', '2015-06-08 01:21:48', '2015-06-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'quochuyls@gmail.com', '$2y$10$Z5ycqIWT46bvu2Qh0Z4JJ.IB//Kz/pKuJhI168HngolH19YAv5JEq', 'opsObCrX41HVD4avE6HzOseWsPlxxoc7XOmOr9Q5W5x1PIV0757BOiDVbi3Z', '2015-05-20 13:55:05', '2015-05-20 14:07:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_event_customer`
--
ALTER TABLE `tbl_event_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_event_farm`
--
ALTER TABLE `tbl_event_farm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer_info`
--
ALTER TABLE `tbl_footer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_header_info`
--
ALTER TABLE `tbl_header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_introduction`
--
ALTER TABLE `tbl_introduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_event_customer`
--
ALTER TABLE `tbl_event_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_event_farm`
--
ALTER TABLE `tbl_event_farm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_footer_info`
--
ALTER TABLE `tbl_footer_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_header_info`
--
ALTER TABLE `tbl_header_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_introduction`
--
ALTER TABLE `tbl_introduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
