-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2020 at 11:19 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
CREATE TABLE IF NOT EXISTS `beneficiary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `short_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `account` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `name`, `short_name`, `bank`, `phone`, `account`, `created_at`, `deleted_at`) VALUES
(1, 'YUouk', 'MLk', 'UGU uu yy jh', '0022334466', 'kkkuju', '0000-00-00 00:00:00', NULL),
(2, 'Ahmedo', '44444', '4444', '1255444', 'KKfjjjioeiefei', '2020-02-02 16:12:32', NULL),
(3, 'Mohamed Saber', 'Saber', 'Al Rajhi', '0592345710', '158608010151321', '2020-03-11 08:27:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
CREATE TABLE IF NOT EXISTS `bid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `client_name` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `comment` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `letter_of_guarantee` tinyint(1) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`id`, `name`, `client_name`, `cost`, `submission_date`, `manager`, `link`, `comment`, `letter_of_guarantee`, `status`, `opening_date`, `deleted_at`) VALUES
(1, 'Je suis le bid1', 'Sidi ahmed', 150000, '2020-01-30', 4, 'jhjhjh444j', 'iouiuouoi', 0, 'In Progress', '2019-10-24', '2020-05-31 03:05:13'),
(3, 'Bid it', 'Ahmed', 1200, '2020-01-12', 4, '545', NULL, 1, 'Submitted', '2020-01-28', '2020-01-19 19:57:21'),
(4, 'Bid', 'Elghawth', 12, '2020-01-12', 4, '545', NULL, 1, 'Archived', '2020-01-28', NULL),
(5, 'test bid ot test', 'Ahmed Saledm', 10222, '2020-01-31', 4, 'http://google.com', NULL, 0, 'Submitted', '2020-01-27', NULL),
(6, 'تأسيس شبكة', 'محمد صابر', 52000, '2020-03-10', 4, NULL, NULL, 0, 'In Progress', '2020-03-13', '2020-05-31 03:05:15'),
(7, 'تأسيس شبكة حاسب آلي لجوازات مطار الملك عبدالعزيز  الدولي الجديد بجده', 'المديرية العامة للجوازات', 1448350, '2020-06-07', 10, 'https://drive.google.com/drive/u/0/folders/1AiUnapkWKyGhA5PBXPLCUT5vhyKWxtjW', NULL, 0, 'Submitted', '2020-06-08', NULL),
(8, 'منافسة تأمين وتوريد وتركيب أجهزة البنية التحتية لتقنية المعلومات', 'برنامج المدن الطبية', 1047380, '2020-06-04', 10, 'https://drive.google.com/drive/u/0/folders/19bvvMt-dz6Cv9dj3S8XKkb3RetUhMZea', NULL, 0, 'Submitted', '2020-06-10', NULL),
(9, 'تأمين وتوريد وتركيب شبكة البيانات بالكلية الجامعية بالخرمة جامعة الطائف', 'جامعة الطائف', 2563370, '2020-06-08', 10, 'https://drive.google.com/drive/u/0/folders/1CgmF7DCN0anIgN-Lxmo2CqLB-ZQX88nP', NULL, 0, 'Submitted', '2020-06-09', NULL),
(10, 'تأمين وتوريد وتركيب شبكة البيانات بالكلية الجامعية بتربة جامعة الطائف', 'جامعة الطائف', 1959150, '2020-06-08', 10, 'https://drive.google.com/drive/u/0/folders/1LXCPDDwzI07g11j_7yTfMplR9YigaOVi', NULL, 0, 'Submitted', '2020-06-09', NULL),
(11, 'توريد وتركيب أجهزة نظام كاميرات المراقبة لمستشفى الإمام عبدالرحمن بن فيصل بالدمام التابع للشؤون الصحية بوزارة الحرس الوطني ', 'الشؤون الصحیة بوزارة الحرس الوطني', 552615, '2020-06-23', 10, 'https://drive.google.com/drive/u/0/folders/1nxkwf6nSAjkdr3k6ZDXXW_68IXE5BuRb', NULL, 0, 'Submitted', '2020-06-24', NULL),
(12, 'مشروع تجهيز وإعداد مركز البيانات التابع لمدينة الملك عبد العزيز الطبية بالرياض التابع للشئون الصحية بالحرس الوطني', 'الشؤون الصحیة بوزارة الحرس الوطني', 107363, '2020-06-14', 10, 'https://drive.google.com/drive/u/0/folders/1MIUGFv64g1CdfV6vAvxJiBqBvFhTJr4S', NULL, 0, 'Submitted', '2020-06-15', NULL),
(13, 'توريد وتركيب أجهزة نظام كاميرات المراقبة لمستشفى الإمام عبدالرحمن بن فيصل بالدمام التابع للشؤون الصحية بوزارة الحرس الوطني', 'الإدارة العامة للخدمات الطبية للقوت المسلحة', NULL, '2020-06-30', 10, 'https://drive.google.com/drive/u/0/folders/1llTZO-BxecsuUvC79pwBHSbL-Wjpg7Dr', NULL, 1, 'In Progress', '2020-07-01', NULL),
(14, 'توريد و تركيب أجهزة مركز القيادة و التحكم', 'المديرية العامة للشؤون الصحية بمنطقة جازان', NULL, '2020-06-25', 10, 'https://drive.google.com/drive/u/0/folders/1FO2YiRnYMjqWQbmc0-m7xB6fOeXj3k0Z', NULL, 1, 'In Progress', '2020-06-25', NULL),
(15, 'مشروع توريد وتركيب نظام سنترال وملحقاته ونظام بث الاقمار الصناعية ونظام كاميرات المراقبة وتوريد وتركيب أجهزة بث انترنت  لاسلكية  لأحد المواقع التابعة لهذه الرئاسة بمنطقة الرياض', 'المباحث العامة', NULL, '2020-07-05', 10, 'https://drive.google.com/drive/u/0/folders/1Ut_Repf8QgMuMXhtjXP-Ov8920o9oDp5', NULL, 1, 'In Progress', '2020-07-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boq`
--

DROP TABLE IF EXISTS `boq`;
CREATE TABLE IF NOT EXISTS `boq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `quantity` float NOT NULL,
  `cost` float DEFAULT NULL,
  `price` float NOT NULL,
  `progress` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `po_no` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `delivery_date` date NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `boq`
--

INSERT INTO `boq` (`id`, `Item`, `quantity`, `cost`, `price`, `progress`, `po_no`, `delivery_date`, `deleted_at`, `group_id`) VALUES
(3, 'I\'m the first item ', 5, 100, 1200, '20%', '565sd', '2020-02-25', NULL, 5),
(4, 'SFWEF', 41, 12, 12, '30', '5', '2020-02-21', NULL, 1),
(5, 'sfsf', 12, 12, 140, '10%', 'SS#F', '2020-01-13', NULL, 1),
(6, 'fs', 121121, 25, 12, '10%', '11Fv', '2020-01-06', NULL, 1),
(7, 'test item', 14, 200, 200, '10%', 'RRE', '2020-01-03', NULL, 2),
(8, 'fhfh', 111, 4141, 14, '20%', 'ghfh', '2020-01-07', NULL, 3),
(9, 'elem2', 15, 1500, 100, '5%', '454R', '2020-01-14', NULL, 3),
(10, 'ICic', 24, 120, 100, '10%', '1004', '2019-12-31', NULL, 4),
(11, 'hkhkhk', 5644, 545, 14, 'hkhkhkhk', 'hkhk', '2020-02-10', NULL, 1),
(12, 'RTT', 12, NULL, 200, '5%', NULL, '2020-02-04', NULL, 5),
(13, 'RRR', 3, 10, 20, '45', NULL, '2020-02-03', NULL, 5),
(14, 'Funny Item', 14, NULL, 50, '5%', 'UI', '2020-02-02', NULL, 6),
(15, 'GEEG ', 14, 1400, 140, '5%', '14', '2020-07-08', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `boq_group`
--

DROP TABLE IF EXISTS `boq_group`;
CREATE TABLE IF NOT EXISTS `boq_group` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `project_id` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `boq_group`
--

INSERT INTO `boq_group` (`Id`, `name`, `project_id`, `deleted_at`) VALUES
(1, 'CISCO', 1, NULL),
(2, 'TEST', 1, NULL),
(3, 'Group Item', 19, NULL),
(4, 'Cisco', 19, NULL),
(5, 'GP45', 1, NULL),
(6, 'AN', 1, NULL),
(7, 'Test Grou[', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

DROP TABLE IF EXISTS `deal`;
CREATE TABLE IF NOT EXISTS `deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `client_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` float DEFAULT NULL,
  `expected_close` date DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`id`, `name`, `client_name`, `contact`, `value`, `expected_close`, `status`, `manager`, `last_update`, `deleted_at`) VALUES
(1, 'Deal1', 'Deal1 client', '2245343', 120001, '2020-01-01', 'Archived', 4, '2020-01-09 10:51:22', NULL),
(2, 'dgwg', 'agasgadg', 'dgdgdg', 1400, '2020-01-09', 'Negotiation', 4, NULL, '2020-01-21 19:44:24'),
(3, 'dgwg', 'sfhrfh', '+52454', 1400, '2019-12-31', 'Archived', 4, NULL, NULL),
(4, 'Test name', 'hlhlhl', '5454', 656, '2020-01-14', 'Submitted', 4, NULL, NULL),
(5, 'the new deal', 'ahmed sale', '+55454', 1400, '2020-01-17', 'Submitted', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `bill_num` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `amount` float NOT NULL,
  `date` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `project_id`, `bill_num`, `amount`, `date`, `deleted_at`) VALUES
(1, 1, 'dgdgdgdg', 1013, '2020-02-28 18:00:00', NULL),
(2, 20, 'bhgjg', 52424, '2020-01-02 00:00:00', NULL),
(3, 0, 'ddgd', 5454, '2020-01-15 00:00:00', NULL),
(4, 19, 'ff', 11, '2020-01-03 00:00:00', '2020-01-16 16:46:15'),
(5, 19, 'hhh', 12, '2019-12-31 00:00:00', '2020-01-16 16:51:49'),
(6, 19, 'hhhhh', 111, '2020-01-09 00:00:00', '2020-01-16 16:51:34'),
(7, 19, 'k;\';\'', 11, '2020-01-08 00:00:00', '2020-01-16 16:52:54'),
(8, 19, 'ttt', 111, '2020-01-14 00:00:00', '2020-01-16 16:54:25'),
(9, 19, 'h', 1111110, '2020-01-23 00:00:00', '2020-01-16 16:54:27'),
(10, 19, '11', 11111100000, '2020-01-28 00:00:00', '2020-01-16 16:53:49'),
(11, 19, '414141', 4444440, '2020-01-19 00:00:00', '2020-01-16 16:54:20'),
(12, 19, 'inejih', 1996, '2020-01-02 00:00:00', '2020-01-16 16:54:23'),
(13, 19, 'Bill X00', 15000, '2019-12-31 00:00:00', '2020-01-17 15:00:20'),
(14, 19, '21212', 41454, '2020-01-26 00:00:00', '2020-01-16 23:42:39'),
(15, 19, '2332', 11111, '2020-01-14 00:00:00', '2020-01-17 16:28:43'),
(16, 19, 'fdfdf', 541545, '2020-01-11 00:00:00', '2020-01-17 15:00:16'),
(17, 19, 'dfdfd', 45645, '2020-01-27 00:00:00', '2020-01-17 15:00:10'),
(18, 19, 'dfdfdf', 554545, '2020-01-28 00:00:00', '2020-01-17 14:49:01'),
(19, 19, '545454', 545445, '2020-01-27 00:00:00', '2020-01-17 14:48:59'),
(20, 19, '555', 5454540, '2020-01-20 00:00:00', '2020-01-17 14:48:57'),
(21, 0, 'test', 23554, '2020-01-14 00:00:00', NULL),
(22, 19, '45455', 15, '2020-01-26 00:00:00', '2020-01-17 15:00:14'),
(23, 19, 'hj', 666, '2020-01-08 00:00:00', '2020-01-17 15:57:18'),
(24, 19, 'New name', 1111110000, '2020-01-21 00:00:00', NULL),
(25, 19, 'fffffffff', 332323, '2020-01-22 00:00:00', NULL),
(26, 19, 'dfdfdf', 54545, '2020-01-19 00:00:00', NULL),
(27, 19, 'gggggg', 12, '2020-01-14 00:00:00', NULL),
(28, 19, 'dggggggggg', 145151, '2020-01-22 00:00:00', NULL),
(29, 19, 'rg445', 54545, '2020-01-21 00:00:00', '2020-01-17 16:27:02'),
(30, 19, 'gggggggggg', 21212, '2020-01-14 00:00:00', NULL),
(31, 19, 'ggggggg', 545, '2020-01-08 00:00:00', NULL),
(32, 19, 'hhhhhh', 11111100, '2019-12-31 00:00:00', NULL),
(33, 19, 'fffffffff', 566565, '2020-01-01 00:00:00', NULL),
(34, 19, 'IC3', 2121210, '2020-01-08 00:00:00', NULL),
(35, 1, 'fhfh', 45454500, '2020-01-16 00:00:00', '2020-02-07 23:45:51'),
(36, 1, 'dhdhdh', 2000, '2020-01-26 23:00:00', NULL),
(37, 1, 'dhdh', 6554, '2020-01-16 00:00:00', '2020-02-02 21:13:10'),
(38, 5, 'RR', 1400, '2020-02-06 00:00:00', NULL),
(39, 1, 'VV', 1400, '1969-12-31 23:00:00', NULL),
(40, 1, 'last added', 1401, '2020-02-12 19:00:00', '2020-02-12 08:33:58'),
(41, 1, 'Yy', 14, '2020-02-25 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(100) COLLATE utf8mb4_bin DEFAULT 'unkown',
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `last_update` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `writer`, `type`, `type_id`, `text`, `last_update`, `created_at`, `deleted_at`) VALUES
(1, '1', 1, 1, 'Hello, this is the first note I wrote ever', '2020-01-14 21:57:51', '2020-01-17 21:57:51', '2020-02-02 16:47:35'),
(2, '1', 1, 1, 'second note of first project ', '2020-01-09 10:51:22', '2020-01-13 09:53:39', '2020-01-09 00:00:00'),
(3, NULL, 1, 19, 'bnbn', '2020-01-13 18:25:17', '2020-01-13 18:25:17', '2020-01-09 00:00:00'),
(4, NULL, 1, 19, 'bnbnsgdg', '2020-01-13 18:26:22', '2020-01-13 18:26:22', '2020-01-14 09:55:02'),
(5, NULL, 1, 19, 'xsgsg', '2020-01-13 18:27:29', '2020-01-13 18:27:29', '2020-01-14 10:03:16'),
(6, NULL, 1, 19, 'sfsfsfsf', '2020-01-13 18:29:45', '2020-01-13 18:29:45', '2020-01-14 10:02:40'),
(7, NULL, 1, 19, 'sfsfsfsfsf', '2020-01-13 18:30:09', '2020-01-13 18:30:09', '2020-01-14 10:02:33'),
(8, NULL, 1, 19, 'jjjjjjjjjjj', '2020-01-13 18:32:48', '2020-01-13 18:32:48', '2020-01-14 10:03:01'),
(9, NULL, 1, 19, 'slkfjsklfjlsfklsfssjhfjksf', '2020-01-13 18:36:36', '2020-01-13 18:36:36', '2020-01-14 10:03:27'),
(10, NULL, 1, 19, 'dgdg', '2020-01-13 18:38:42', '2020-01-13 18:38:42', '2020-01-14 10:04:25'),
(11, NULL, 1, 19, 'fhfhfhfhfh', '2020-01-13 18:39:00', '2020-01-13 18:39:00', '2020-01-14 10:03:52'),
(12, NULL, 1, 19, 'fhfhfh', '2020-01-13 18:39:10', '2020-01-13 18:39:10', '2020-01-14 10:03:57'),
(13, NULL, 1, 19, 'fhfh', '2020-01-13 18:39:20', '2020-01-13 18:39:20', '2020-01-14 10:03:58'),
(14, NULL, 1, 19, 'sfsfsfsfsfh', '2020-01-13 18:39:49', '2020-01-13 18:39:49', '2020-01-14 10:03:59'),
(15, NULL, 1, 19, 'iiiiiiiiiiiiiiiii', '2020-01-13 18:41:37', '2020-01-13 18:41:37', '2020-01-14 10:04:00'),
(16, NULL, 1, 19, 'sfjsjfklsfkljslf', '2020-01-13 18:43:28', '2020-01-13 18:43:28', '2020-01-14 10:04:01'),
(17, NULL, 1, 19, 'dtgdgdgjdklgjdg', '2020-01-13 18:43:34', '2020-01-13 18:43:34', '2020-01-14 10:04:02'),
(18, NULL, 1, 19, 'dgdgdgdg', '2020-01-13 18:43:37', '2020-01-13 18:43:37', '2020-01-14 10:04:03'),
(19, NULL, 1, 19, 'fsjkfhsfksjfhks sjkfhsjk skjhfjk sfsjkfh skfhsjk sjkfhsjkhf jkshfjks fsf', '2020-01-13 18:44:12', '2020-01-13 18:44:12', '2020-01-14 10:04:05'),
(20, NULL, 1, 19, 'بسم الله الرحمان الرحميم', '2020-01-13 18:46:42', '2020-01-13 18:46:42', '2020-01-14 10:05:06'),
(21, NULL, 1, 19, 'dhdhdhd', '2020-01-13 19:23:15', '2020-01-13 19:23:15', '2020-01-14 10:04:06'),
(22, NULL, 1, 19, 'ssfsfsf', '2020-01-13 19:24:26', '2020-01-13 19:24:26', '2020-01-14 10:04:07'),
(23, NULL, 1, 19, 'dgdhdhdhdhdh', '2020-01-13 19:24:31', '2020-01-13 19:24:31', '2020-01-14 10:04:17'),
(24, NULL, 1, 19, 'ffhfhfh', '2020-01-13 19:24:39', '2020-01-13 19:24:39', '2020-01-14 10:04:17'),
(25, NULL, 1, 19, 'fhfhfhfhfh', '2020-01-13 19:24:43', '2020-01-13 19:24:43', '2020-01-14 10:04:09'),
(26, NULL, 1, 19, 'dglkjgkljdklgdg', '2020-01-13 19:52:41', '2020-01-13 19:52:41', '2020-01-14 10:04:08'),
(27, NULL, 1, 19, 'dddddddddddddd', '2020-01-14 10:22:37', '2020-01-14 10:22:37', '2020-01-14 10:04:19'),
(28, NULL, 1, 19, 'fffffffff', '2020-01-14 10:22:49', '2020-01-14 10:22:49', '2020-01-14 10:04:10'),
(29, NULL, 1, 19, 'gdgdgdg', '2020-01-14 11:05:10', '2020-01-14 11:05:10', '2020-01-14 10:14:37'),
(30, NULL, 1, 19, 'dgdgdgdg', '2020-01-14 11:05:12', '2020-01-14 11:05:12', '2020-01-14 10:15:30'),
(31, NULL, 1, 19, 'dgdgdgdg', '2020-01-14 11:05:16', '2020-01-14 11:05:16', '2020-01-14 10:15:25'),
(32, NULL, 1, 19, 'dgdgdgdg', '2020-01-14 11:05:24', '2020-01-14 11:05:24', '2020-01-14 10:15:23'),
(33, NULL, 1, 19, 'dgdgdgdgd', '2020-01-14 11:05:27', '2020-01-14 11:05:27', '2020-01-14 10:15:26'),
(34, NULL, 1, 19, 'dhdhdh', '2020-01-14 11:05:56', '2020-01-14 11:05:56', '2020-01-14 10:15:28'),
(35, NULL, 1, 19, 'test not to delete it ', '2020-01-14 11:15:10', '2020-01-14 11:15:10', '2020-01-14 10:15:16'),
(36, NULL, 1, 19, 'rrrrrrrrrrrrrr', '2020-01-14 11:15:41', '2020-01-14 11:15:41', '2020-01-14 11:31:29'),
(37, NULL, 1, 19, 'ffffffffffff', '2020-01-14 11:15:46', '2020-01-14 11:15:46', '2020-01-14 10:41:50'),
(38, NULL, 1, 19, 'erreheh', '2020-01-14 11:15:49', '2020-01-14 11:15:49', '2020-01-14 10:41:47'),
(39, NULL, 1, 19, 'eheheheh', '2020-01-14 11:15:51', '2020-01-14 11:15:51', '2020-01-14 10:41:49'),
(40, NULL, 1, 19, 'ehehehehe', '2020-01-14 11:15:53', '2020-01-14 11:15:53', '2020-01-14 10:41:54'),
(41, NULL, 1, 19, 'eheheheh', '2020-01-14 11:15:56', '2020-01-14 11:15:56', '2020-01-14 10:41:53'),
(42, NULL, 1, 19, 'eheheheheh', '2020-01-14 11:15:59', '2020-01-14 11:15:59', '2020-01-14 10:41:56'),
(43, NULL, 1, 19, 'eheheheh', '2020-01-14 11:16:02', '2020-01-14 11:16:02', '2020-01-14 10:42:00'),
(44, NULL, 1, 19, 'ehhehe', '2020-01-14 11:16:05', '2020-01-14 11:16:05', '2020-01-14 10:41:58'),
(45, NULL, 1, 19, 'hhh', '2020-01-14 11:16:19', '2020-01-14 11:16:19', '2020-01-14 11:31:26'),
(46, NULL, 1, 19, 'yyyy', '2020-01-14 11:16:25', '2020-01-14 11:16:25', '2020-01-14 10:42:02'),
(47, NULL, 1, 19, 'hhhhhhhhhh', '2020-01-14 11:16:52', '2020-01-14 11:16:52', '2020-01-14 11:31:33'),
(48, NULL, 1, 19, 'jjjjjjjj', '2020-01-14 11:16:58', '2020-01-14 11:16:58', '2020-01-14 10:42:04'),
(49, NULL, 1, 19, 'gjgkjgk', '2020-01-14 12:28:11', '2020-01-14 12:28:11', '2020-01-14 11:31:24'),
(50, 'Saud Al Otaibi', 1, 19, 'Je suis saud Al otaibi, et c\'est ma note', '2020-01-14 12:31:14', '2020-01-14 12:31:14', '2020-01-14 16:48:50'),
(51, 'Saud Al Otaibi', 1, 19, 'je suis  une deuxième note; ', '2020-01-14 12:32:11', '2020-01-14 12:32:11', '2020-01-14 16:28:44'),
(52, 'Saud Al Otaibi', 1, 19, 'dhdh', '2020-01-14 12:32:19', '2020-01-14 12:32:19', '2020-01-14 11:37:58'),
(53, 'Saud Al Otaibi', 1, 19, 'The first note, to test the note system\nVhhhh', '2020-01-15T11:32:26.924Z', '2020-01-14 12:32:23', '2020-01-16 14:08:33'),
(54, 'Saud Al Otaibi', 1, 19, '565656', '2020-01-14 17:37:56', '2020-01-14 17:37:56', '2020-01-14 18:30:13'),
(55, 'Saud Al Otaibi', 1, 19, '565656fhfh', '2020-01-14 17:38:04', '2020-01-14 17:38:04', '2020-01-14 18:30:11'),
(56, 'Saud Al Otaibi', 1, 19, 'hkjkjhk', '2020-01-14 17:38:44', '2020-01-14 17:38:44', '2020-01-14 18:30:22'),
(57, 'Saud Al Otaibi', 1, 19, 'gdgdgdg', '2020-01-14 17:39:20', '2020-01-14 17:39:20', '2020-01-14 18:30:17'),
(58, 'Saud Al Otaibi', 1, 19, 'ghhhhhhhhhh', '2020-01-14 17:39:38', '2020-01-14 17:39:38', '2020-01-14 18:30:15'),
(59, 'Saud Al Otaibi', 1, 19, 'ghhhhhhhhhhdgdgdg', '2020-01-14 17:40:36', '2020-01-14 17:40:36', '2020-01-14 18:30:20'),
(60, 'Saud Al Otaibi', 1, 19, 'second ntoe to test the system', '2020-01-14T20:57:06.966Z', '2020-01-14 17:51:27', '2020-01-14 21:02:15'),
(61, 'Saud Al Otaibi', 1, 19, 'fgdgdgdg', '2020-01-14 19:20:55', '2020-01-14 19:20:55', '2020-01-14 18:30:23'),
(62, 'Saud Al Otaibi', 1, 19, 'dgdgdg', '2020-01-14 19:21:00', '2020-01-14 19:21:00', '2020-01-14 18:31:09'),
(63, 'Saud Al Otaibi', 1, 19, 'new to test', '2020-01-14 19:24:25', '2020-01-14 19:24:25', '2020-01-14 18:30:19'),
(64, 'Saud Al Otaibi', 1, 19, 'je suis', '2020-01-14 19:24:36', '2020-01-14 19:24:36', '2020-01-14 18:31:06'),
(65, 'Saud Al Otaibi', 1, 19, '', '2020-01-14 20:09:14', '2020-01-14 19:27:50', '2020-01-14 20:55:20'),
(66, 'Saud Al Otaibi', 1, 19, 'it also used to test the notes ', '2020-01-15T07:57:37.773Z', '2020-01-14 19:27:54', '2020-01-16 14:08:24'),
(67, 'Saud Al Otaibi', 1, 19, 'dhddhdhd', '2020-01-14 19:28:41', '2020-01-14 19:28:41', '2020-01-14 18:31:33'),
(68, 'Saud Al Otaibi', 1, 19, 'hkhkkhk', '2020-01-14 19:29:14', '2020-01-14 19:29:14', '2020-01-14 18:31:31'),
(69, 'Saud Al Otaibi', 1, 19, 'hkhkhkhk', '2020-01-14 19:29:25', '2020-01-14 19:29:25', '2020-01-14 18:30:33'),
(70, 'Saud Al Otaibi', 1, 19, 'gjtyjtjdffffffffff.', '2020-01-14T21:30:47.457Z', '2020-01-14 19:30:54', '2020-01-16 14:08:22'),
(71, 'Saud Al Otaibi', 1, 19, 'gjgjgjgj', '2020-01-14 19:32:00', '2020-01-14 19:32:00', '2020-01-14 20:40:25'),
(72, 'Saud Al Otaibi', 1, 19, 'sfsfsfsf', '2020-01-14 18:39:48', '2020-01-14 18:39:48', '2020-01-14 20:40:21'),
(73, 'Saud Al Otaibi', 1, 19, 'my new note', '2020-01-14 18:39:56', '2020-01-14 18:39:56', '2020-01-14 20:40:23'),
(74, 'Saud Al Otaibi', 1, 19, 'hkhkhk', '2020-01-14 20:09:22', '2020-01-14 20:09:22', '2020-01-14 20:40:19'),
(75, 'Saud Al Otaibi', 1, 19, 'dgdgdgdgd', '2020-01-14T20:59:42.832Z', '2020-01-14T20:59:42.832Z', '2020-01-14 21:02:25'),
(76, 'Saud Al Otaibi', 1, 19, 'test note 1', '2020-01-14T21:00:28.421Z', '2020-01-14T21:00:17.432Z', '2020-01-14 21:07:56'),
(77, 'Saud Al Otaibi', 1, 19, 'ØªØ¬Ø±Ø¨Ù‡ Ø­Ø§Ù„ÙŠÙ‡ Ù„Ù„Ù…Ø°ÙƒØ±Ø§Øª Ø§Ù„ÙŠÙˆÙ…ÙŠØ©', '2020-01-14T21:06:59.065Z', '2020-01-14T21:06:59.065Z', '2020-01-16 14:08:27'),
(78, 'Saud Al Otaibi', 1, 19, 'ØªÙ… Ø²ÙŠØ§Ø±Ø© Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙŠÙˆÙ… ÙˆÙ„Ø§ÙŠÙˆØ¬Ø¯ Ø¬Ø¯ÙŠØ¯', '2020-01-14T21:07:25.249Z', '2020-01-14T21:07:25.249Z', '2020-01-16 14:08:25'),
(79, 'Saud Al Otaibi', 1, 19, 'test ot', '2020-01-14T22:16:57.488Z', '2020-01-14T22:16:57.488Z', '2020-01-14 22:17:32'),
(80, 'Saud Al Otaibi', 1, 19, 'test it again', '2020-01-14T22:17:14.164Z', '2020-01-14T22:17:14.164Z', '2020-01-14 22:17:29'),
(81, 'Saud Al Otaibi', 1, 19, 'Ggchhcg', '2020-01-15T11:32:33.046Z', '2020-01-15T11:32:33.046Z', '2020-01-16 14:08:29'),
(82, 'Mohamed Yehdhih', 1, 19, 'CCCCCCCCCCCCCC', '2020-01-16T11:26:49.934Z', '2020-01-16T11:26:49.934Z', '2020-01-16 14:08:30'),
(83, 'Saud Al Otaibi', 1, 19, 'بسم الله الرحمان الرحيم, الله يسر ولاتعسر ', '2020-01-17T14:11:41.644Z', '2020-01-17T14:11:41.644Z', NULL),
(84, 'Saud Al Otaibi', 1, 19, 'اللهم لاسهل إلا ماجعلته سهلا', '2020-01-17T14:12:42.539Z', '2020-01-17T14:11:55.844Z', NULL),
(85, 'Saud Al Otaibi', 1, 19, 'تجعل الحزن إن شئت سهلا', '2020-01-17T14:12:11.092Z', '2020-01-17T14:12:11.092Z', '2020-01-17 14:12:33'),
(86, 'Saud Al Otaibi', 1, 19, 'My loard, help me ', '2020-01-17T14:12:24.035Z', '2020-01-17T14:12:24.035Z', '2020-01-17 19:05:55'),
(87, 'Saud Al Otaibi', 1, 19, 'تالاالالالاات اتلتالا لتالتال تا', '2020-01-17T19:06:05.750Z', '2020-01-17T19:05:50.086Z', NULL),
(88, 'Saud Al Otaibi', 1, 19, 'تجربة', '2020-01-19T17:17:47.793Z', '2020-01-19T17:17:47.793Z', NULL),
(89, 'Saud Al Otaibi', 2, 4, 'rrrrrty', '2020-01-19T19:51:30.147Z', '2020-01-19T19:51:30.147Z', NULL),
(90, 'Saud Al Otaibi', 2, 4, 'sdgdgdg', '2020-01-19T19:52:14.635Z', '2020-01-19T19:52:14.635Z', NULL),
(91, 'Saud Al Otaibi', 2, 1, 'dgdgdg', '2020-01-21T20:01:27.240Z', '2020-01-21T20:01:27.240Z', '2020-01-22 23:32:07'),
(92, 'Saud Al Otaibi', 2, 1, '000000000000000', '2020-01-22T07:56:28.786Z', '2020-01-22T07:56:28.786Z', '2020-01-22 23:32:05'),
(93, 'Saud Al Otaibi', 2, 1, '1111111111111111111111111111\n1211\n211121', '2020-01-22T07:56:44.655Z', '2020-01-22T07:56:44.655Z', '2020-01-22 23:32:10'),
(94, 'Saud Al Otaibi', 2, 1, '54540315413212.1.200.56123132132', '2020-01-22T07:56:53.496Z', '2020-01-22T07:56:53.496Z', '2020-01-22 23:32:01'),
(95, 'Saud Al Otaibi', 1, 19, 'هذه مذكرة لتجربة الموقع تماما', '2020-01-25T16:11:01.589Z', '2020-01-25T16:11:01.589Z', NULL),
(96, 'Saud Al Otaibim', 5, 1, 'zfsfsf', '2020-07-04T09:55:45.218Z', '2020-01-26T20:02:49.081Z', NULL),
(97, 'Saud Al Otaibim', 5, 1, 'gdgdg', '2020-01-26T20:02:58.313Z', '2020-01-26T20:02:58.313Z', NULL),
(98, NULL, 1, 1, 'auth, \ninvoice valid\ndropbq', '2020-02-12T08:37:03.697Z', '2020-02-01T16:42:54.084Z', NULL),
(99, NULL, 4, 3, 'visit details contact', '2020-02-02T21:24:04.515Z', '2020-02-02T21:24:04.515Z', NULL),
(100, NULL, 7, 1, 'JJN', '2020-02-02T22:34:59.835Z', '2020-02-02T22:34:59.835Z', NULL),
(101, NULL, 1, 1, 'filters responsive\nbackdrop hidden', '2020-02-10T08:30:31.783Z', '2020-02-10T08:30:31.783Z', '2020-02-10 12:38:46'),
(102, NULL, 1, 1, 'iik', '2020-02-11T20:56:18.931Z', '2020-02-11T20:56:18.931Z', NULL),
(103, NULL, 5, 1, 'ممتاز', '2020-03-11T07:30:19.332Z', '2020-03-11T07:30:19.332Z', NULL),
(104, NULL, 5, 4, 'ok..', '2020-03-11T07:32:36.547Z', '2020-03-11T07:32:36.547Z', NULL),
(105, NULL, 1, 9, 'متي التوريد ؟', '2020-03-11T07:38:06.265Z', '2020-03-11T07:38:06.265Z', NULL),
(106, NULL, 1, 9, 'غدا', '2020-03-11T07:38:17.161Z', '2020-03-11T07:38:17.161Z', NULL),
(107, NULL, 2, 1, 'اين وصل التسعير', '2020-03-11T07:51:00.414Z', '2020-03-11T07:51:00.414Z', NULL),
(108, NULL, 2, 1, 'الموضوع متأخر', '2020-03-11T07:51:15.030Z', '2020-03-11T07:51:15.030Z', NULL),
(109, NULL, 2, 1, 'المشكلة ف تسعير ...', '2020-03-11T07:51:31.606Z', '2020-03-11T07:51:31.606Z', NULL),
(110, NULL, 7, 5, 'فضلا التعميد', '2020-03-11T08:30:23.204Z', '2020-03-11T08:30:23.204Z', NULL),
(111, NULL, 5, 9, 'تم ارسال التفاصيل لمدني ', '2020-05-29T19:50:03.788Z', '2020-05-29T19:50:03.788Z', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_tracking`
--

DROP TABLE IF EXISTS `payment_tracking`;
CREATE TABLE IF NOT EXISTS `payment_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `payment_tracking`
--

INSERT INTO `payment_tracking` (`id`, `order_id`, `amount`, `date`, `type`, `deleted_at`) VALUES
(1, 2, '1200', '1990-10-30 00:00:00', 'PDC', NULL),
(2, 4, '120000', '2020-03-11 00:00:00', 'Wire Transfer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `start_date` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `end_date` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_bin DEFAULT 'In Progress',
  `manager` int(11) DEFAULT NULL,
  `code` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `po_value` varchar(120) COLLATE utf8mb4_bin NOT NULL,
  `expenses` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `start_date`, `end_date`, `status`, `manager`, `code`, `po_value`, `expenses`, `link`, `deleted_at`) VALUES
(1, 'hjh', '2019-12-01', '2019-12-30T00:00:00.000Z', 'In Progress', 2, 'Code 1', '10', '1200000', 'http://www.google.com', NULL),
(2, 'project test 2', '2020-01-15', '2019-12-26', 'In Progress', 2, 'Code2', '200000', '2400000', 'http://www.fb.com', NULL),
(3, 'project test 3', '2019-12-01', '2019-12-26', 'On Hold', 1, 'Code4', '100000', '1200000', 'http://www.google.com', NULL),
(4, 'project test 4', '2019-12-01', '2019-12-26', 'Archived', 1, 'Code5', '100000', '1200000', 'http://www.google.com', NULL),
(5, 'project test 5', '2019-12-01', '2019-12-26', 'Completed', 1, 'code test 1', '100000', '1200000', 'http://www.google.com', NULL),
(6, 'project test 6', '2019-12-01', '2019-12-26', 'Completed', 1, 'code test 1', '100000', '1200000', 'http://www.google.com', NULL),
(7, 'project test 7', '2019-12-01', '2019-12-26', 'In Progress', 1, 'Code 25', '100000', '1200000', 'http://www.google.com', NULL),
(8, 'IPol', '2020-02-04T00:00:00.000Z', '2020-02-11T00:00:00.000Z', 'In Progress', 2, '10', '1200', '1200', 'http://www.gp.cpm', '2020-02-09 17:28:39'),
(9, 'Mohamed', '2020-03-01T00:00:00.000Z', '2020-04-30T00:00:00.000Z', 'In Progress', 1, '2907', '594000', NULL, NULL, NULL),
(10, 'الجنة', '2020-07-02T00:00:00.000Z', '2020-07-07T00:00:00.000Z', 'In Progress', NULL, 'ffff', '9000', NULL, NULL, NULL),
(11, 'dgdg', '2020-07-05T00:00:00.000Z', '2020-07-14T00:00:00.000Z', NULL, NULL, 'gg', '40', NULL, NULL, NULL),
(12, 'sfsf', '2020-07-07T00:00:00.000Z', '2020-07-20T00:00:00.000Z', NULL, NULL, 'fhfhf', '442', NULL, NULL, NULL),
(13, 'fhfhf', '2020-07-09T00:00:00.000Z', '2020-07-08T00:00:00.000Z', NULL, NULL, 'xfb', '124', NULL, NULL, NULL),
(14, 'inejih dahm', '2020-07-17T00:00:00.000Z', '2020-07-08T00:00:00.000Z', NULL, NULL, 'dgd', '21', NULL, NULL, NULL),
(15, 'dgdg', '2020-07-08T00:00:00.000Z', '2020-07-21T00:00:00.000Z', NULL, NULL, 'ngng', '111', NULL, NULL, NULL),
(16, 'sfsf', '2020-07-02T00:00:00.000Z', '2020-07-22T00:00:00.000Z', NULL, 1, 'sfsfsf', '454', NULL, NULL, NULL),
(17, 'etst', '2020-07-02T00:00:00.000Z', '2020-07-07T00:00:00.000Z', NULL, 1, 'dfdgdg', '11', NULL, NULL, NULL),
(18, 'dgdg', '2020-07-01T00:00:00.000Z', '2020-07-14T00:00:00.000Z', NULL, NULL, 'fggfg', '14', NULL, NULL, NULL),
(19, 'sgsg', '2020-07-04T00:00:00.000Z', '2020-07-14T00:00:00.000Z', NULL, 1, 'ffhfh', '6352', NULL, NULL, NULL),
(20, 'nbn', '2020-07-01T00:00:00.000Z', '2020-07-09T00:00:00.000Z', NULL, 1, 'ggggg', '14', NULL, NULL, NULL),
(21, 'ccc', '2020-07-08T00:00:00.000Z', '2020-07-07T00:00:00.000Z', NULL, 1, 'dvdv', '122', NULL, NULL, NULL),
(22, 'fff', '2020-07-04T00:00:00.000Z', '2020-07-06T00:00:00.000Z', NULL, 2, 'fhfh', '12412', NULL, NULL, NULL),
(23, 'dgdg', '2020-07-08T00:00:00.000Z', '2020-07-07T00:00:00.000Z', NULL, 1, 'dffhfh', '111', NULL, NULL, NULL),
(24, 'gdgdg', '2020-07-04T00:00:00.000Z', '2020-07-07T00:00:00.000Z', NULL, 2, 'dgdgdg', '254', NULL, NULL, NULL),
(25, 'dgdg', '2020-07-16T00:00:00.000Z', '2020-07-07T00:00:00.000Z', NULL, NULL, 'dgdgdg', '645', NULL, NULL, NULL),
(26, 'svsv', '2020-07-10T00:00:00.000Z', '2020-07-06T00:00:00.000Z', NULL, 2, 'svsv', '656', NULL, NULL, NULL),
(27, 'DD', '2020-07-07T00:00:00.000Z', '2020-07-13T00:00:00.000Z', 'In Progress', 2, 'FF', '14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

DROP TABLE IF EXISTS `purchase_item`;
CREATE TABLE IF NOT EXISTS `purchase_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `project` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_bin DEFAULT NULL,
  `received` tinyint(1) NOT NULL,
  `received_date` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_bin DEFAULT 'initial',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `purchase_item`
--

INSERT INTO `purchase_item` (`id`, `part_code`, `quantity`, `rate`, `project`, `order_id`, `description`, `received`, `received_date`, `status`, `deleted_at`) VALUES
(1, 'ICIICI', 54540, '131', 1, 4, 'jjjdes cc kljfkls ', 1, '2020-05-31 14:52:30', 'Check In', NULL),
(2, 'DAG', 5, '44.4', 2, 2, 'gjgj', 0, NULL, 'Initial', NULL),
(3, 'FFV', 141, '1', 2, 2, 'sdgdh', 1, '2020-02-03 00:25:30', 'Check Out', NULL),
(4, 'YCYVV', 3, '3000', 5, 2, 'Je suis la bonne uinj', 0, NULL, 'Initial', NULL),
(5, 'FFF', 1, '1400', 2, 2, 'sfgwsgs sgs', 0, NULL, 'Initial', NULL),
(6, 'Name ', 545, '5454', 7, 2, 'efefe fe', 0, NULL, 'Initial', NULL),
(7, 'w65f', 6460, '54564.23', 6, 2, 'wfwfwfwf', 0, NULL, 'Initial', NULL),
(8, 'KKK', 12, '140', 2, 2, 'gddg', 0, '2020-02-05 20:29:38', 'Initial', NULL),
(9, 'GG', 145, '50', 5, 2, 'dgdgd', 0, '2020-02-05 20:29:49', 'Initial', NULL),
(10, 'KKK', 14, '14', 2, 2, '554', 0, '2020-02-06 01:36:35', 'Initial', NULL),
(11, 'FF', 25, '26', 5, 2, '', 0, '2020-02-06 01:36:46', 'Initial', NULL),
(12, 'CC001', 15, '125', 9, 0, 'HD Camera', 1, NULL, 'Check In', NULL),
(13, 'Yh', 120, '12', 2, 0, '', 1, NULL, 'Check In', NULL),
(14, 'kjjk', 47, '5400', 4, 7, 'kk', 1, '2020-07-19 16:55:50', 'Check In', NULL),
(15, 'kjjk', 47, '5400', 4, 7, 'kk', 0, NULL, 'Initial', NULL),
(16, 'Testing with', 1, '14', 1, 8, '', 1, '2020-07-18 22:10:37', 'Check In', NULL),
(17, 'استغفر الله ', 1000, '1000', 1, 0, 'بليليل', 1, '2020-07-18 22:34:58', 'Check Out', NULL),
(18, 'UEHT ', 214, '14', 0, 0, 'dsgdg', 1, NULL, 'Check In', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE IF NOT EXISTS `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `ship_to` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `discount` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `terms` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `vat` tinyint(1) DEFAULT NULL,
  `vat_value` int(11) DEFAULT 15,
  `currency` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `prepared_by` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `num`, `vendor`, `ship_to`, `discount`, `link`, `terms`, `project`, `vat`, `vat_value`, `currency`, `created_at`, `deleted_at`, `approved_by`, `status`, `prepared_by`, `date`) VALUES
(1, 1, 1, 'kjkljflka', '50', 'http://www.gp.cpm', 'fjefio joiejioejiog', 26, 1, 15, 'dol', '2020-01-07 00:00:00', '2020-01-26 19:46:10', 6, 'Opened', '4', '2020-01-13'),
(2, NULL, 5, 'hghghg ghgh', '305', 'http://google.com', 'JL INTERNATIONALLL\n1 RUE PAUL ======SPAAK', 3, 1, 15, 'eur', NULL, NULL, 7, 'Closed', 'Saud Al Otaibim', '2020-01-13'),
(3, NULL, 5, 'chip here ', '50%', '545', 'addada ', 20, 0, 15, 'sar', NULL, NULL, 7, 'Closed', 'Saud Al Otaibim', '2020-01-13'),
(4, NULL, 5, 'chip here ', '0', 'http://google.com', 'derb el kabir rue 15 casablanca\nappartement N 24', 20, 1, 15, 'dol', NULL, NULL, 7, 'Opened', 'Othman khaledf', '2020-01-13'),
(5, NULL, 6, 'afafafa', '0', 'f', NULL, 0, 1, 15, 'eur', NULL, NULL, 7, 'Closed', 'Othman khaledf', '2020-02-10'),
(6, NULL, 7, 'Dardelta Office', '0', 'www', '90% PDC', 9, 1, 15, 'SAR', NULL, NULL, 7, 'Opened', 'Othman khaledf', '2020-03-11'),
(7, NULL, 5, 'afsfs', '0', 'http://google.com', 'sfsf', 1, 1, 15, 'SAR', NULL, NULL, 7, 'Opened', 'Othman khaledf', '2020-03-10'),
(8, NULL, 5, 'ship here ', '0', 'http://www.google.com', NULL, 0, NULL, 5, 'USD', NULL, NULL, 1, 'Opened', 'Othman khaledf', '2020-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `code`) VALUES
(1, 'Admin', 'SA'),
(2, 'Project Manager', 'PM'),
(3, 'Sales Manager', 'SM'),
(4, 'Accountant', 'AC'),
(5, 'CEO', 'CEO');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `short_name`, `phone`, `created_at`, `deleted_at`) VALUES
(1, 'supplier 1', '', '56465456', '2020-01-27 19:52:29', '2020-01-27 19:53:27'),
(2, 'Ahmed', 'ici', '0606790396', NULL, '2020-01-26 16:06:03'),
(3, 'getge', 'afafaf', '9858544', NULL, '2020-01-26 16:06:01'),
(4, 'Ahmned salem sidi', 'ahmed', '0606790396', '2020-01-26 16:07:46', '2020-01-26 16:51:28'),
(5, 'Fournisseur 1', 'Mkkjbb', '00554433', '2020-01-28 20:26:27', NULL),
(6, 'Supp1', 'Supp tst 1', '00557733', '2020-02-02 21:26:17', NULL),
(7, 'Mohamed saber', 'Saber', '0592345710', '2020-03-11 07:52:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `description` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `owner` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `priority`, `status`, `owner`, `created_at`, `deleted_at`) VALUES
(1, 'task one', 'je suis task 1', 'Meduim', 'Opened', 2, '2020-01-25 22:12:53', NULL),
(2, 'Test it', 'je suis en train de tester le task', 'High', 'On Hold', 0, '2020-01-25 22:02:33', NULL),
(3, 'jkljk', 'ljlkjkljk', 'Low', 'On Hold', 0, '2020-01-25 22:01:59', '2020-02-09 17:28:46'),
(4, 'Test task', 'test desc', 'High', 'Opened', 0, '2020-02-02 21:32:41', NULL),
(5, 'Test task', 'test desc', 'High', 'Closed', 8, '2020-02-02 21:32:44', NULL),
(6, 'Test task', 'test desc', 'High', 'Closed', 0, '2020-02-02 21:32:46', '2020-02-02 23:43:50'),
(7, 'Test task', 'test desc', 'High', 'Closed', 0, '2020-02-02 21:32:46', '2020-02-02 23:43:47'),
(8, 'Test task', 'test desc', 'High', 'Closed', 0, '2020-02-02 21:32:47', '2020-02-02 23:43:44'),
(9, 'مناقصة الطائف الخرمة وتربة', NULL, 'High', 'Opened', 4, '2020-05-29 19:49:32', NULL),
(10, 'Look forwared', 'dgdgdgdg', 'High', 'Opened', 2, '2020-07-20 20:56:33', NULL),
(11, 'you\'ve to create ur home work', 'sfsf', 'High', 'Opened', 2, '2020-07-20 21:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `role` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `name`, `created_at`, `deleted_at`) VALUES
(1, 'admin', 'saund@test.om', 'admin', 'SA,CEO,PM', 'Othman khaledf', NULL, NULL),
(2, 'pmanager', 'elmoctar.yehdhih@gmail.com', 'pmanager', 'PM,AC', 'Mohamed Yehdhih', NULL, NULL),
(4, 'smanager', 'khalid@test.om', 'smanager', 'SM', 'Khaled Abdullah', NULL, NULL),
(7, 'ceo', 'manager@dardelta.com', 'ceo', 'CEO,AC', 'Saoud Aloutaibi', NULL, NULL),
(8, 'saud', 'saud@dardelta.com.sa', '12341234', 'CEO', 'Saud alotaibi', NULL, NULL),
(9, 'msabir@dardelta.com.sa', 'msabir@dardelta.com.sa', '123456789', 'CEO', 'Mohammed Saber', NULL, NULL),
(10, 'shdlan@gmail.com', 'shdlan@gmail.com', 'S12345678', 'SM,PM,SA', 'Saud PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE IF NOT EXISTS `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `contact` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `manager` int(11) NOT NULL,
  `date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id`, `client_name`, `contact`, `reason`, `manager`, `date`, `last_update`, `deleted_at`) VALUES
(2, 'Ahmedou salem', '+2126065454', 'visit for work', 4, '2020-01-14', '2020-01-15', '2020-01-24 18:53:53'),
(3, 'visit numero 1', 'sfsfjks sf', '850', 4, '2020-01-13', NULL, NULL),
(4, 'asfaf', 'afafafaf', 'MKJOOO', 4, '2020-01-26', NULL, NULL),
(5, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(6, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(7, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(8, 'gjgj', 'gjgj', 'fggj', 4, '2020-01-16', NULL, NULL),
(9, 'fhfh', 'fhfhfhfh', 'fhfh', 4, '2020-01-15', NULL, '2020-02-10 23:25:51'),
(10, 'dhdh', 'dhdhdh', 'dhdh', 4, '2020-01-13', NULL, '2020-02-10 23:25:49'),
(11, 'sgsg', 'sgsgsg', 'sgs', 4, '2020-01-21', NULL, '2020-02-10 23:25:47'),
(12, 'sgsg', 'sgsgsg', 'sgs', 4, '2020-01-21', NULL, '2020-01-24 19:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
CREATE TABLE IF NOT EXISTS `voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `date` datetime DEFAULT NULL,
  `beneficiary` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_bin DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `type`, `amount`, `date`, `beneficiary`, `description`, `order_id`, `deleted_at`) VALUES
(1, 'Cash', '5001', '2020-01-16 08:08:11', 2, 'rfghfhfhf', 2, NULL),
(2, 'Check', '1200', '2020-02-02 19:53:26', 2, 'kk', 3, NULL),
(3, 'Wire Transfer', '400', '2020-02-02 19:54:05', 2, 'Hello worlds', 4, NULL),
(4, 'Wire Transfer', '200', '2020-02-07 07:57:46', 1, 'hello', 4, NULL),
(5, 'Wire Transfer', '5000', '2020-03-11 08:27:59', 3, 'pettycash', 6, NULL),
(6, 'Check', '12000', '2020-07-18 22:37:44', 2, '', 0, NULL),
(7, 'Cash', '1500', '2020-07-19 15:51:48', 1, 'tesxt', 0, NULL),
(8, 'Cash', '1500', '2020-07-19 16:56:51', 2, 'testinmg', 0, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boq`
--
ALTER TABLE `boq`
  ADD CONSTRAINT `boq_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `boq_group` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
