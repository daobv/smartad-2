-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2014 at 01:29 AM
-- Server version: 5.5.37
-- PHP Version: 5.3.10-1ubuntu3.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_ad`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

DROP TABLE IF EXISTS `acl`;
CREATE TABLE IF NOT EXISTS `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(11) DEFAULT NULL,
  `control` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `adv_apperance`
--

DROP TABLE IF EXISTS `adv_apperance`;
CREATE TABLE IF NOT EXISTS `adv_apperance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `adv_apperance`
--

INSERT INTO `adv_apperance` (`id`, `name`, `image`) VALUES
(1, 'APK', 'fa fa-android'),
(2, 'Google Play', 'fa fa-android'),
(3, 'Apple Store', 'fa fa-apple'),
(4, 'IPA', 'fa fa-apple');

-- --------------------------------------------------------

--
-- Table structure for table `adv_status`
--

DROP TABLE IF EXISTS `adv_status`;
CREATE TABLE IF NOT EXISTS `adv_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `adv_status`
--

INSERT INTO `adv_status` (`id`, `code`, `name`) VALUES
(1, 'testing', 'Đang Test'),
(2, 'hold', 'Tạm Ngưng'),
(3, 'runing', 'Đang Chạy'),
(4, 'timeout', 'Hết Hạn');

-- --------------------------------------------------------

--
-- Table structure for table `adv_type`
--

DROP TABLE IF EXISTS `adv_type`;
CREATE TABLE IF NOT EXISTS `adv_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adv_type`
--

INSERT INTO `adv_type` (`id`, `name`) VALUES
(1, 'CPI'),
(2, 'CPL'),
(3, 'CPS');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `adv_type` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `appearance_id` int(11) NOT NULL,
  `area` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `registered_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `name`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `link`, `price`, `size`, `registered_date`) VALUES
(1, 'CÔNG THÀNH XƯNG ĐẾ', 'https://lh5.ggpht.com/AzuQ8IHD7fYk__zb3DVi6PzIYwnYD3cwFDoiaSINa_sNMgwNgGjL9k-_v_K0I8wQ9QQ=w300', '<p><span style="color: #333333; font-family: Arial; font-size: 12px; line-height: 17.142858505249023px; background-color: #f9f9f9;"><strong>C&ocirc;ng Th&agrave;nh Xưng Đế</strong> l&agrave; game chiến thuật "quốc chiến". Dựa tr&ecirc;n bối cảnh thật về tam quốc, bao gồm hơn 300 th&agrave;nh tr&igrave; mở ra to&agrave;n cảnh quốc chiến! Văn thần v&otilde; tướng đều c&oacute; mặt, ph&aacute; vỡ lối m&ograve;n "trọng v&otilde; khinh văn" thường thấy trong game, nội ch&iacute;nh sự vụ, qu&acirc;n sư ra trận, tỏ r&otilde; bản sắc chiến thuật của quan văn!</span></p>', 1, 2, 2, 'Việt Nam', '2014-10-18 00:00:00', '2014-10-31 00:00:00', 1, '<div class="tab_item" style="box-sizing: border-box; color: #333333; font-family: Arial; font-size: 12px; line-height: 17.142858505249023px; margin-bottom: 10px; background-color: #f9f9f9;"><label style="box-sizing: border-box; display: inline-block; margin-bottom: 5px; font-weight: bold;"><strong style="box-sizing: border-box;">Banner(320x50):</strong></label>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px;"><img class="img_banner" style="box-sizing: border-box; vertical-align: middle; width: 320px; height: 50px;" src="http://image.sangame.net/images/2014/08/15/JiRSl.jpg" alt="" /></p>\r\n</div>\r\n<div class="row-item" style="box-sizing: border-box; color: #333333; font-family: Arial; font-size: 12px; line-height: 17.142858505249023px; margin-bottom: 10px; background-color: #f9f9f9;"><label style="box-sizing: border-box; display: inline-block; margin-bottom: 5px; font-weight: bold;"><strong style="box-sizing: border-box;">Screen shoot</strong></label>\r\n<ul class="images_screen_shoot list-inline" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px; list-style: none;">\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 0px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh5.ggpht.com/67qNOrrYoXWTBng2zEFFgt2q20GuYfw9A1ZSwtBJ5PFq73vRndxyK5lsWAWt2lv_a8c=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh5.ggpht.com/67qNOrrYoXWTBng2zEFFgt2q20GuYfw9A1ZSwtBJ5PFq73vRndxyK5lsWAWt2lv_a8c=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #2a6496; cursor: pointer; outline: 0px; background: transparent;" href="https://lh3.ggpht.com/u8C7LRN0fx6HlBuMyBhIu80lqbJBQbrhZlQH4_2FYssEw_AXG_M2Rrt6xujXKswe25U9=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh3.ggpht.com/u8C7LRN0fx6HlBuMyBhIu80lqbJBQbrhZlQH4_2FYssEw_AXG_M2Rrt6xujXKswe25U9=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #2a6496; cursor: pointer; outline: 0px; background: transparent;" href="https://lh4.ggpht.com/SEYekZEPisfIdryFVijQMYFsbL8bdln6PYJNFVx7jG8RZpJr8ytq2aDmoCgXUPgw9ePO=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh4.ggpht.com/SEYekZEPisfIdryFVijQMYFsbL8bdln6PYJNFVx7jG8RZpJr8ytq2aDmoCgXUPgw9ePO=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh4.ggpht.com/YDNePgLeEKaP0GzzGQOitNxXlqfvIAMfvi12SoeSBUIGCRcCMu3sOKwLiXV-inCa3klX=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh4.ggpht.com/YDNePgLeEKaP0GzzGQOitNxXlqfvIAMfvi12SoeSBUIGCRcCMu3sOKwLiXV-inCa3klX=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh5.ggpht.com/2KgotFOwIkMMQCtqQIteJJjsyoDngC9M61NZe7NLYISy4n_VP4RLFO6F2Td3fyWpYltF=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh5.ggpht.com/2KgotFOwIkMMQCtqQIteJJjsyoDngC9M61NZe7NLYISy4n_VP4RLFO6F2Td3fyWpYltF=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh4.ggpht.com/1fbK9rnHmOUCDj14-6TMYLpnJ7XlPmytqRCBOjN-e_88TdXLJsO8NQqPNgWUyKsv5g=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh4.ggpht.com/1fbK9rnHmOUCDj14-6TMYLpnJ7XlPmytqRCBOjN-e_88TdXLJsO8NQqPNgWUyKsv5g=h900" alt="" /></a></li>\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh4.ggpht.com/uwk8F_fIfnd5d6dVW3-e74UBrlIfkFI6chm_GUFDTMT7RXKfqjz6Rf6E8hVUjyh-wiZB=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh4.ggpht.com/uwk8F_fIfnd5d6dVW3-e74UBrlIfkFI6chm_GUFDTMT7RXKfqjz6Rf6E8hVUjyh-wiZB=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh6.ggpht.com/hmUTAuG9Ov7dunNJMkd4Sm4B7NTYrdFJSk2DFNrlNfIsHpHyZpaDgw-5AnLBrXTUibg=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh6.ggpht.com/hmUTAuG9Ov7dunNJMkd4Sm4B7NTYrdFJSk2DFNrlNfIsHpHyZpaDgw-5AnLBrXTUibg=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh5.ggpht.com/YWtIIQRHcoXZJwta9kfEe5YeYDONjzix3XNUdLfjTpoj1F2-e4vVsIdeRL9m51GYsA=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh5.ggpht.com/YWtIIQRHcoXZJwta9kfEe5YeYDONjzix3XNUdLfjTpoj1F2-e4vVsIdeRL9m51GYsA=h900" alt="" /></a></li>\r\n&nbsp;\r\n<li style="box-sizing: border-box; display: inline-block; padding-right: 5px; padding-left: 5px;"><a style="box-sizing: border-box; color: #428bca; text-decoration: none; cursor: pointer; background: transparent;" href="https://lh3.ggpht.com/KqggTxJ9eJXZH9KarezYHS_duu45ZgP4qF1--qA3q4HLOhi4WUgk009mMiw8fRHlHXE=h900" rel="prettyPhoto[pp_gal]"><img style="box-sizing: border-box; vertical-align: middle; width: 170px;" src="https://lh3.ggpht.com/KqggTxJ9eJXZH9KarezYHS_duu45ZgP4qF1--qA3q4HLOhi4WUgk009mMiw8fRHlHXE=h900" alt="" /></a></li>\r\n</ul>\r\n</div>\r\n<div class="row-item" style="box-sizing: border-box; color: #333333; font-family: Arial; font-size: 12px; line-height: 17.142858505249023px; margin-bottom: 10px; background-color: #f9f9f9;"><label style="box-sizing: border-box; display: inline-block; margin-bottom: 5px; font-weight: bold;"><strong style="box-sizing: border-box;">M&ocirc; tả</strong></label>\r\n<div class="content_desc" style="box-sizing: border-box;">\r\n<div class="content_data" style="box-sizing: border-box;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px;">C&ocirc;ng Th&agrave;nh Xưng Đế l&agrave; game chiến thuật "quốc chiến". Dựa tr&ecirc;n bối cảnh thật về tam quốc, bao gồm hơn 300 th&agrave;nh tr&igrave; mở ra to&agrave;n cảnh quốc chiến! Văn thần v&otilde; tướng đều c&oacute; mặt, ph&aacute; vỡ lối m&ograve;n "trọng v&otilde; khinh văn" thường thấy trong game, nội ch&iacute;nh sự vụ, qu&acirc;n sư ra trận, tỏ r&otilde; bản sắc chiến thuật của quan văn!</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px;">Ngo&agrave;i ra c&ograve;n đưa v&agrave;o h&igrave;nh thức chiến đấu tức th&igrave;, dẫn nhập hệ thống địa h&igrave;nh với 4 loại t&agrave;i nguy&ecirc;n lớn, chiến thuật, binh kh&iacute;, khoa kĩ, chức quan ho&agrave;ng th&agrave;nh gi&uacute;p bạn thỏa m&atilde;n nhiệt huyết tranh h&ugrave;ng của m&igrave;nh, mở rộng l&atilde;nh thổ, thống nhất thi&ecirc;n hạ!</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px;">C&ocirc;ng Th&agrave;nh Xưng Đế tuyệt đối c&ocirc;ng bằng, chỉ hơn kh&ocirc;ng k&eacute;m, rất đ&aacute;ng để bạn mặc sức chiến đấu!</p>\r\n</div>\r\n</div>\r\n</div>', 'https://play.google.com/store/apps/details?id=com.yologame.congthanhxungde', 5000, '45M', '2014-10-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `slug`, `order`, `active`) VALUES
(1, 0, 'Dịch Vụ', '#', 0, 1),
(2, 0, 'Hình Thức', '#', 0, 1),
(3, 1, 'CPI', 'cpi', 0, 1),
(4, 1, 'CPS', 'cps', 0, 1),
(5, 1, 'CPL', 'cpl', 0, 1),
(6, 0, 'Giới Thiệu', 'gioi-thieu', 0, 1),
(7, 0, 'Liên Hệ', 'lien-he', 0, 1),
(8, 2, 'Social', 'social', 0, 1),
(9, 2, 'Search', 'search', 0, 1),
(10, 2, 'Display', 'display', 0, 1),
(11, 2, 'Mobile App', 'mobile-app', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interaction`
--

DROP TABLE IF EXISTS `interaction`;
CREATE TABLE IF NOT EXISTS `interaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interaction_info` int(11) NOT NULL,
  `action` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `revenue` double DEFAULT '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interaction_info`
--

DROP TABLE IF EXISTS `interaction_info`;
CREATE TABLE IF NOT EXISTS `interaction_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '0',
  `ref_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
CREATE TABLE IF NOT EXISTS `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `action` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  `cr` double DEFAULT '0',
  `payment` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_statistic`
--

DROP TABLE IF EXISTS `merchant_statistic`;
CREATE TABLE IF NOT EXISTS `merchant_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `keys` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE IF NOT EXISTS `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'textField, textArea, checkBox, radioButton, dropDown',
  `key` text NOT NULL COMMENT 'json_encode',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `category`, `name`, `title`, `value`, `type`, `key`) VALUES
(1, 'Site', 'title', 'Tiêu đề trang web', 'Hệ Thống Quản Lý CPI SmartAd', 'textField', ''),
(2, 'Site', 'meta_description', 'Thẻ Meta description', 'Hệ Thống Quản Lý CPI SmartAd', 'textArea', ''),
(3, 'Site', 'meta_keywords', 'Thẻ Meta keywords', '', 'textArea', ''),
(4, 'Site', 'logo', 'Logo', 'http://smartad.local/themes/backend/images/logo.png', 'textField', ''),
(5, 'Site', 'site_dir', 'Đường dẫn tới website (Không có / ở cuối)', '/var/www/megadoc-vn', 'textField', ''),
(6, 'Site', 'site_url', 'Liên kết tới website (Không có / ở cuối)', 'http://smartad.local', 'textField', ''),
(9, 'Support', 'support_email', 'Email hỗ trợ', 'contact@smartad.vn', 'textField', ''),
(10, 'Support', 'support_yahoo', 'Yahoo hỗ trợ', 'smartad.yahoo', 'textField', ''),
(11, 'Support', 'support_skype', 'Skype hỗ trợ', 'smartad.skype', 'textField', ''),
(12, 'Support', 'support_phone', 'Điện thoại hỗ trợ', '0123456789', 'textField', ''),
(13, 'Company', 'company_name', 'Tên đơn vị chủ quản', 'Công Ty Truyền Thông SmartAd', 'textField', ''),
(14, 'Company', 'company_address', 'Địa chỉ đơn vị chủ quản', '', 'textField', ''),
(15, 'Company', 'company_phone', 'Số điện thoại đơn vị chủ quản', '08.1234567', 'textField', ''),
(16, 'Company', 'company_email', 'Email đơn vị chủ quản', 'contact@smartad.vn', 'textField', ''),
(21, 'System', 'cronjob_auth', 'Chuỗi mã hóa cho các thao tác tự động', 'f6ecbaf6b02b1443619ad4a0bc6d318fda8fe00e', 'textField', ''),
(25, 'Credit', 'user_register', 'Thưởng đăng ký thành viên', '0', 'textField', ''),
(26, 'Credit', 'user_upload_normal', 'Thưởng tải tài liệu lên', '0', 'textField', ''),
(27, 'Credit', 'user_upload_special', 'Thưởng tải tài liệu vào danh mục đặc biệt', '0', 'textField', ''),
(28, 'Credit', 'user_facebook_connect', 'Thưởng kết nối facebook', '0', 'textField', ''),
(29, 'Credit', 'ongoing_event', 'Thưởng cho sự kiện đang diễn ra', '0', 'textField', ''),
(30, 'Email', 'email_type', 'Kiểu gửi email', 'smtp', 'radioButton', '{"smtp":"SMTP","mail":"mail()","sendmail":"sendmail"}'),
(31, 'Email', 'email_host', 'Máy chủ Email', 'smtp.googlemail.com', 'textField', ''),
(32, 'Email', 'email_port', 'Cổng máy chủ gửi email', '465', 'textField', ''),
(33, 'Email', 'email_secure', 'Bảo mật', 'ssl', 'radioButton', '{"none":"none","tsl":"TSL","ssl":"SSL"}'),
(34, 'Email', 'email_account', 'Tài khoản email', 'dao.hunter@gmail.com', 'textField', ''),
(35, 'Email', 'email_password', 'Mật khẩu email', 'S40l41th3', 'passwordField', ''),
(38, 'Credit', 'view_payment', 'Thưởng cho mỗi lượt xem tài liệu ', '8', 'textField', ''),
(39, 'Credit', 'share_payment', 'Thưởng cho mỗi lượt share tài liệu', '8', 'textField', ''),
(40, 'Credit', 'share_payment', 'Thưởng cho mỗi lượt download \r\n(tài liệu miễn phí)', '0', 'textField', ''),
(41, 'Site', 'favicon', 'Favicon', 'http://smartad.local/themes/backend/images/fav.png', 'textField', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT '#',
  `is_show` tinyint(1) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `name`, `image_url`, `redirect_url`, `is_show`, `created_date`) VALUES
(16, 'Hệ Thống Quảng Cáo Thông Minh', 'http://smartad.local/uploads/slider/he-thong-quang-cao-thong-minh-1413077593.jpg', '#', 1, '2014-10-12 01:33:13'),
(17, 'Hệ Thống Tiếp Thị Liên Kết', 'http://smartad.local/uploads/slider/he-thong-tiep-thi-lien-ket-1413077620.jpg', '#', 1, '2014-10-12 01:33:40'),
(18, 'Lựa Chọn Tối Ưu', 'http://smartad.local/uploads/slider/lua-chon-toi-uu-1413077639.jpg', '#', 1, '2014-10-12 01:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `static_page`
--

DROP TABLE IF EXISTS `static_page`;
CREATE TABLE IF NOT EXISTS `static_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `boolean` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `static_page`
--

INSERT INTO `static_page` (`id`, `title`, `slug`, `description`, `content`, `date`, `author`, `type`, `boolean`) VALUES
(1, 'Thông báo: Thanh toán doanh thu SmartAd 9/2014', 'thanh-toan-doanh-thu-smartad-9-2014', 'Thông báo: Thanh toán doanh thu SmartAd 9/2014 ', '<p><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Thời gian thanh to&aacute;n l&agrave;: ng&agrave;y 15 v&agrave; 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua bưu điện nhận tiền tại bưu cục đăng k&yacute; từ ng&agrave;y 17/08/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua ng&acirc;n h&agrave;ng, nếu hết ngay 16/10/2014 chưa nhận được tiền th&igrave; vui l&ograve;ng pm lại BQT&nbsp;để được giải đ&aacute;p.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c th&agrave;nh vi&ecirc;n nhận thanh to&aacute;n bằng thẻ điện thoại. Nhận m&atilde; thẻ trong mail tại smartAd ng&agrave;y 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&ograve;n bạn th&agrave;nh vi&ecirc;n n&agrave;o chưa cập nhật th&ocirc;ng tin thanh to&aacute;n, hoặc muốn thay đổi th&ocirc;ng tin thanh to&aacute;n th&igrave; vui l&ograve;ng cập nhật chậm nhất l&agrave; ng&agrave;y 12/10/2014 nh&eacute;.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Ch&uacute;c c&aacute;c bạn kinh doanh hiệu quả ^^</span></p>', '2014-10-11 12:18:17', NULL, 1, 1),
(2, 'Giới Thiệu', 'gioi-thieu', 'Giới thiệu SmartAd', '<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;">\r\n<h3 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; color: inherit; font-size: 26px;">Giới thiệu SmartAd</h3>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">SmartAds l&agrave; hệ thống tiếp thị li&ecirc;n kết được x&acirc;y dựng bởi Ho&agrave;ng Kim Media, ch&uacute;ng t&ocirc;i mang lại giải ph&aacute;p marketing online tốt nhất cho nh&agrave; quảng c&aacute;o với chi ph&iacute; tối thiểu, doanh thu cao nhất cho người tiếp thị c&ugrave;ng với hệ thống thống k&ecirc; tin cậy đảm bảo lợi &iacute;ch cho nh&agrave; quảng c&aacute;o v&agrave; người tiếp thị.</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">M&ocirc; h&igrave;nh hoạt động</strong></p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; quảng c&aacute;o đưa sản phẩm l&ecirc;n kho sản phẩm của SmartAd</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Người tiếp thị gia nhập hệ thống, lấy link sản phẩm tr&ecirc;n kho sản phẩm đi ph&acirc;n phối</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Kh&aacute;ch h&agrave;ng tương t&aacute;c sản phẩm từ link ph&acirc;n phối của người tiếp thị n&agrave;o th&igrave; t&iacute;nh doanh thu cho người tiếp thị đ&oacute; (Tương t&aacute;c gồm: c&agrave;i đặt, đăng k&yacute;, mua h&agrave;ng &hellip;)</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; cung cấp v&agrave; SmartAd đối so&aacute;t để chốt doanh thu cho người tiếp thị</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- SmartAd thanh to&aacute;n doanh thu cho Người tiếp thị.</p>\r\n</div>\r\n<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; vertical-align: middle;" src="http://smartad.vn/asset/images/about.png" alt="" /></div>', '2014-10-12 01:43:10', 1, 6, 1),
(3, 'Liên Hệ', 'lien-he', 'Advertising network', '<h2 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 32px; font-weight: 400; line-height: 1.1; color: #2c3e50;">SMARTAD</h2>\r\n<address style="margin: 0px 0px 21px; padding: 0px; box-sizing: border-box; font-style: normal; line-height: 21.428571701049805px; color: #2c3e50; font-family: Roboto; font-size: 15px;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">Advertising network</strong><br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Tầng 24.3 tầng 24 CT2 Vimeco<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Nguyễn Ch&aacute;nh<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Cầu Giấy<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />H&agrave; Nội<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Việt Nam<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Hotline">Hotline:&nbsp;</abbr>0976.297.541<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Phone">Phone:&nbsp;</abbr>04.62840636</address>', '2014-10-12 01:49:31', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` int(11) DEFAULT '0',
  `user_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `user_role`, `user_group`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dao.hunter@gmail.com', 1, 0),
(2, 'longpg', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'longpg@smartosc.com', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `group_name`, `manager`) VALUES
(2, 'Affiliate Group 1', 2),
(3, 'Merchant 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `store_channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `full_name`, `job`, `company`, `address`, `city`, `country`, `phone_number`, `user_type`, `store_channel`, `reference`) VALUES
(1, 1, 'Bùi Văn Đạo', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '05895453', 1, '', ''),
(2, 2, 'Phạm Gia Long', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '09895453', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Affiliate Manager');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
