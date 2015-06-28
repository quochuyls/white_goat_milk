-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2015 at 11:13 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_farm`
--

CREATE TABLE IF NOT EXISTS `tbl_event_farm` (
`id` int(11) NOT NULL,
  `url_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_event_farm`
--

INSERT INTO `tbl_event_farm` (`id`, `url_vi`, `url_en`, `thumbnail`, `title_vi`, `title_en`, `description_vi`, `description_en`, `content_vi`, `content_en`, `link_face`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, '11', '11', 'event_farm_1433182335.png', '11', '11', '11111', '1111', '1111111', '1111', '', '2015-06-01 18:12:15', '2015-06-06 04:11:30', '2015-06-01 18:12:15'),
(2, 'moi-xem-teaser-trailer-the-good-dinosaur-phim-hoat-hinh-thu-16-cua-pixar', 'moi-xem-teaser-trailer-the-good-dinosaur-phim-hoat-hinh-thu-16-cua-pixar', 'event_farm_1433564819.jpg', 'Mời xem teaser trailer The Good Dinosaur, phim hoạt hình thứ 16 của Pixar', 'Mời xem teaser trailer The Good Dinosaur, phim hoạt hình thứ 16 của Pixar', 'Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.', 'Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.', 'Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.', 'Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.Năm nay Pixar quyết định chơi "sộp" khi chiêu đãi cho chúng ta tới 2 phim hoạt hình là Inside Out và The Good Dinosaur. Dự án phim Inside Out đã được Pixar chia sẻ thông tin từ năm trước và sẽ chính thức ra rạp vào ngày 21/8 tới đây, trong khi đó The Good Dinosaur là dự án phim từng được hãng ấp ủ khoảng 3 năm nay nhưng phải tới tháng 11 cuối năm mới được khởi chiếu.', 'https://www.facebook.com/groups/216956768468964/475862445911727/?notif_t=like', '2015-06-06 04:13:32', '2015-06-06 06:37:27', '2015-06-06 04:13:32');

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
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
`id` int(11) NOT NULL,
  `url_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `url_vi`, `url_en`, `categories_id`, `title_vi`, `title_en`, `description_vi`, `description_en`, `content_vi`, `content_en`, `price_vi`, `price_en`, `price_sale_vi`, `price_sale_en`, `thumbnail`, `icon`, `sale_flg`, `new_flg`, `unit_vi`, `unit_en`, `product_code_vi`, `product_code_en`, `delete_flag`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, NULL, NULL, 1, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '1', '1', '1', '1', '1', 1, 1, 1, 1, '1', '1', 1, 1, '1', '1', NULL, NULL, 1, '2015-05-28 23:08:23', '2015-06-04 20:14:16', '2015-05-28 23:08:32'),
(3, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 10:32:21', '2015-05-30 10:32:21', NULL),
(4, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 10:35:03', '2015-05-30 10:35:03', NULL),
(5, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 10:35:20', '2015-05-30 10:35:20', NULL),
(6, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 10:36:06', '2015-05-30 10:36:06', NULL),
(7, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.jpg', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:00:49', '2015-05-30 11:00:49', NULL),
(8, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product_8.jpg', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:28:40', '2015-05-30 11:28:40', NULL),
(9, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:35:14', '2015-05-30 11:35:14', NULL),
(10, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:36:41', '2015-05-30 11:36:41', NULL),
(11, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:40:45', '2015-05-30 11:40:45', NULL),
(12, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 11:41:22', '2015-05-30 11:41:22', NULL),
(13, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 12:52:58', '2015-05-30 12:52:58', NULL),
(14, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-30 13:01:59', '2015-05-30 13:01:59', NULL),
(15, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-31 14:06:34', '2015-05-31 14:06:34', NULL),
(16, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-31 14:07:31', '2015-05-31 14:07:31', NULL),
(17, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-31 14:09:52', '2015-05-31 14:09:52', NULL),
(18, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-31 14:19:38', '2015-05-31 14:19:38', NULL),
(19, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(20, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(21, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(22, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(23, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(24, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(25, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(26, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(27, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(28, NULL, NULL, 0, 'This is title vi', 'This is en title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(29, NULL, NULL, 0, 'This is viet title', 'This is en title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(30, NULL, NULL, 0, 'This is title vi', 'This is en title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(31, NULL, NULL, 0, 'This is title vi', 'This is en title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2015-05-31 14:49:20', '2015-05-31 14:49:20', NULL),
(32, NULL, NULL, 0, 'AAAAAAAAAAAAAAAa', '', 'AAAAAAAAAAAAAA', '', '<p><span style="color:#FF0000"><span style="font-size:22px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:#00FF00">AAAAAAAAAAAAAAAa</span></span></span></span></p>\r\n', '<p><span style="color:#FFFF00"><em><strong>VVVVVVVVVVVVVVVVVVVV</strong></em></span></p>\r\n', 0, 0, 0, 0, NULL, NULL, 1, 1, 'AAA', '', 'AAAaa', '', 0, '2015-05-31 14:52:33', '2015-05-31 14:52:33', NULL),
(33, NULL, NULL, 1, 'AAA', '', 'AAAAA', '', '<p><span style="color:#FF0000">AAAAAAAAAAAAAAAAAAAAA</span></p>\r\n', '', 33, 0, 333, 0, 'product_33.jpg', NULL, 1, 0, '33', '', '333', '', 0, '2015-05-31 19:51:10', '2015-05-31 19:51:11', '2015-06-25 00:00:00'),
(34, NULL, NULL, 2, 'Sản phầm 01', '', 'fdfffdf', '', '<ol>\r\n	<li><strong><span style="font-size:24px"><span style="color:#FF0000"><span style="background-color:#FFFF00">B&aacute;n sản phẩm 01</span></span></span></strong></li>\r\n</ol>\r\n', '', 1000, 0, 321, 0, 'product_34.jpg', NULL, 1, 0, 'Chiếc', '', '1 túi 10 chiếc', '', 1, '2015-06-01 15:34:07', '2015-06-04 20:17:01', '2015-06-26 00:00:00'),
(35, NULL, NULL, 1, 'Sản phẩm 02', 'Product 02', 'Mô tả Sản phẩm 02', 'product 02 desc', '<h1><span style="color:#FF8C00"><strong>Sản phẩm 02​</strong></span></h1>\r\n', '<p><span style="color:#FFFF00">Product 02 contente</span></p>\r\n', 11, 222, 11, 222, 'product_35.jpg', NULL, 0, 0, '11', '22', '111', '2222', 0, '2015-06-01 15:39:54', '2015-06-01 15:39:54', '2015-06-01 00:00:00'),
(36, NULL, NULL, 2, 'Sữa béo', '11111', '22222', '11111', '<p>22222</p>\r\n', '<p><span style="color:#FFFF00"><span style="font-size:14px"><span style="font-family:comic sans ms,cursive">11111</span></span></span></p>\r\n', 222, 111111, 222, 222, 'product_36.png', 'product_icon_36.jpg', 0, 1, '222', '222', '222', '2222', 0, '2015-06-01 18:06:32', '2015-06-04 20:15:43', '2015-06-01 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title_vi`, `title_en`, `description_vi`, `description_en`, `content_vi`, `content_en`, `type`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, '1', '1', '1', '1', '1', '1', 1, '2015-05-29 02:35:58', '2015-05-29 02:36:03', '2015-05-29 02:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE IF NOT EXISTS `tbl_video` (
`id` int(11) NOT NULL,
  `url_vi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(3) DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `url_vi`, `youtube_id`, `url`, `title`, `position`, `thumbnail`, `delete_flag`, `created_at`, `updated_at`, `publish_at`) VALUES
(1, NULL, NULL, 'https://www.youtube.com/watch?v=UOmZ-a4XrqI', 'Hoa Dại Bên Đường Không Nên Hái - Trác Y Đình', 0, 'https://i.ytimg.com/vi/UOmZ-a4XrqI/hqdefault.jpg', 0, '2015-06-05 04:47:43', '2015-06-05 04:47:48', '2015-06-05 04:47:51');

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
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

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
-- Indexes for table `tbl_introduction`
--
ALTER TABLE `tbl_introduction`
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
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_event_customer`
--
ALTER TABLE `tbl_event_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_event_farm`
--
ALTER TABLE `tbl_event_farm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_introduction`
--
ALTER TABLE `tbl_introduction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
