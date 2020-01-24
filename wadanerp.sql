-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 24 jan. 2020 à 20:05
-- Version du serveur :  8.0.17
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wadanerp`
--

-- --------------------------------------------------------

--
-- Structure de la table `bid`
--

CREATE TABLE `bid` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `letter_of_guarantee` tinyint(1) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `bid`
--

INSERT INTO `bid` (`id`, `name`, `client_name`, `cost`, `submission_date`, `manager`, `link`, `comment`, `letter_of_guarantee`, `status`, `opening_date`, `deleted_at`) VALUES
(1, 'Je suis le bid1', 'Sidi ahmed', 150000, '2020-01-21', 4, 'jhjhjh444j', 'iouiuouoi', 1, 'Archived', '2020-01-15', NULL),
(3, 'Bid it', 'Ahmed', 1200, '2020-01-12', 4, '545', NULL, 1, 'Submitted', '2020-01-28', '2020-01-19 19:57:21'),
(4, 'Bid', 'Elghawth', 12, '2020-01-12', 4, '545', NULL, 1, 'Archived', '2020-01-28', NULL),
(5, 'test bid ot test', 'Ahmed Saledm', 10222, '2020-01-22', 4, 'http://google.com', NULL, 0, 'Submitted', '2020-01-15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `boq`
--

CREATE TABLE `boq` (
  `id` int(11) NOT NULL,
  `Item` varchar(200) DEFAULT NULL,
  `quantity` float NOT NULL,
  `cost` float NOT NULL,
  `price` float NOT NULL,
  `progress` varchar(25) DEFAULT NULL,
  `po_no` varchar(200) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boq`
--

INSERT INTO `boq` (`id`, `Item`, `quantity`, `cost`, `price`, `progress`, `po_no`, `delivery_date`, `deleted_at`, `group_id`) VALUES
(3, 'I\'m the first item ', 5, 100, 1200, '20%', '565sd', NULL, NULL, 1),
(4, NULL, 41, 12, 12, NULL, NULL, NULL, NULL, 1),
(5, 'sfsf', 12, 12, 140, '10%', 'SS#F', '2020-01-13', NULL, 1),
(6, 'fs', 121121, 25, 12, '10%', '11Fv', '2020-01-06', NULL, 1),
(7, 'test item', 14, 200, 200, '10%', 'RRE', '2020-01-27', NULL, 2),
(8, 'fhfh', 111, 4141, 14, '20%', 'ghfh', '2020-01-07', NULL, 3),
(9, 'elem2', 15, 1500, 100, '5%', '454R', '2020-01-14', NULL, 3),
(10, 'ICic', 24, 120, 100, '10%', '1004', '2019-12-31', NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `boq_group`
--

CREATE TABLE `boq_group` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boq_group`
--

INSERT INTO `boq_group` (`Id`, `name`, `project_id`, `deleted_at`) VALUES
(1, 'CISCO', 1, NULL),
(2, 'TEST', 1, NULL),
(3, 'Group Item', 19, NULL),
(4, 'Cisco', 19, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `deal`
--

CREATE TABLE `deal` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `client_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `value` float DEFAULT NULL,
  `expected_close` date DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `deal`
--

INSERT INTO `deal` (`id`, `name`, `client_name`, `contact`, `value`, `expected_close`, `status`, `manager`, `last_update`, `deleted_at`) VALUES
(1, 'Deal1', 'Deal1 client', '2245343', 120001, '2020-01-07', 'Negotiation', 4, '2020-01-09 10:51:22', NULL),
(2, 'dgwg', 'agasgadg', 'dgdgdg', 1400, '2020-01-09', 'Negotiation', 4, NULL, '2020-01-21 19:44:24'),
(3, 'dgwg', 'sfhrfh', '+52454', 1400, '2020-01-09', 'Archived', 4, NULL, NULL),
(4, 'Test name', 'hlhlhl', '5454', 656, '2020-01-14', 'Submitted', 4, NULL, NULL),
(5, 'the new deal', 'ahmed sale', '+55454', 1400, '2020-01-17', 'Submitted', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `bill_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`id`, `project_id`, `bill_num`, `amount`, `date`, `deleted_at`) VALUES
(1, 1, 'dgdgdgdg', 7000, '0000-00-00', NULL),
(2, 20, 'bhgjg', 52424, '2020-01-02', NULL),
(3, 0, 'ddgd', 5454, '2020-01-15', NULL),
(4, 19, 'ff', 11, '2020-01-03', '2020-01-16 16:46:15'),
(5, 19, 'hhh', 12, '2019-12-31', '2020-01-16 16:51:49'),
(6, 19, 'hhhhh', 111, '2020-01-09', '2020-01-16 16:51:34'),
(7, 19, 'k;\';\'', 11, '2020-01-08', '2020-01-16 16:52:54'),
(8, 19, 'ttt', 111, '2020-01-14', '2020-01-16 16:54:25'),
(9, 19, 'h', 1111110, '2020-01-23', '2020-01-16 16:54:27'),
(10, 19, '11', 11111100000, '2020-01-28', '2020-01-16 16:53:49'),
(11, 19, '414141', 4444440, '2020-01-19', '2020-01-16 16:54:20'),
(12, 19, 'inejih', 1996, '2020-01-02', '2020-01-16 16:54:23'),
(13, 19, 'Bill X00', 15000, '2019-12-31', '2020-01-17 15:00:20'),
(14, 19, '21212', 41454, '2020-01-26', '2020-01-16 23:42:39'),
(15, 19, '2332', 11111, '2020-01-14', '2020-01-17 16:28:43'),
(16, 19, 'fdfdf', 541545, '2020-01-11', '2020-01-17 15:00:16'),
(17, 19, 'dfdfd', 45645, '2020-01-27', '2020-01-17 15:00:10'),
(18, 19, 'dfdfdf', 554545, '2020-01-28', '2020-01-17 14:49:01'),
(19, 19, '545454', 545445, '2020-01-27', '2020-01-17 14:48:59'),
(20, 19, '555', 5454540, '2020-01-20', '2020-01-17 14:48:57'),
(21, 0, 'test', 23554, '2020-01-14', NULL),
(22, 19, '45455', 15, '2020-01-26', '2020-01-17 15:00:14'),
(23, 19, 'hj', 666, '2020-01-08', '2020-01-17 15:57:18'),
(24, 19, 'New name', 1111110000, '2020-01-21', NULL),
(25, 19, 'fffffffff', 332323, '2020-01-22', NULL),
(26, 19, 'dfdfdf', 54545, '2020-01-19', NULL),
(27, 19, 'gggggg', 12, '2020-01-14', NULL),
(28, 19, 'dggggggggg', 145151, '2020-01-22', NULL),
(29, 19, 'rg445', 54545, '2020-01-21', '2020-01-17 16:27:02'),
(30, 19, 'gggggggggg', 21212, '2020-01-14', NULL),
(31, 19, 'ggggggg', 545, '2020-01-08', NULL),
(32, 19, 'hhhhhh', 11111100, '2019-12-31', NULL),
(33, 19, 'fffffffff', 566565, '2020-01-01', NULL),
(34, 19, 'IC3', 2121210, '2020-01-08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `writer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unkown',
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_update` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `writer`, `type`, `type_id`, `text`, `last_update`, `created_at`, `deleted_at`) VALUES
(1, '1', 1, 1, 'Hello, this is the first note I wrote ever', '2020-01-14 21:57:51', '2020-01-17 21:57:51', NULL),
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
(94, 'Saud Al Otaibi', 2, 1, '54540315413212.1.200.56123132132', '2020-01-22T07:56:53.496Z', '2020-01-22T07:56:53.496Z', '2020-01-22 23:32:01');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `start_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `end_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `manager` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `po_value` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expenses` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `start_date`, `end_date`, `status`, `manager`, `code`, `po_value`, `expenses`, `link`, `deleted_at`) VALUES
(1, 'project test 1', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-11 13:11:00'),
(2, 'project test 2', '2020-01-15', '2019-12-26', 'opened', '2', 'code test 2', '200000', '2400000', 'http://www.fb.com', '2020-01-11 14:33:27'),
(3, 'project test 3', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-11 13:11:04'),
(4, 'project test 4', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-11 12:58:48'),
(5, 'project test 5', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-11 14:44:26'),
(6, 'project test 6', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-21 00:00:00'),
(7, 'project test 7', '2019-12-01', '2019-12-26', 'opened', '1', 'code test 1', '100000', '1200000', 'http://www.google.com', '2020-01-11 13:04:48'),
(11, 'adadad', '2020-01-06', '2020-01-15', 'dgdg', '0', 'dgdgd', '454564', '0', 'dgdg', '2020-01-11 14:44:43'),
(12, 'ggggg', '2020-01-05', '2020-01-06', 'gggggg', '0', 'ggggggggggggg', '0', '0', 'ggggggg', '2020-01-11 14:29:49'),
(13, 'sfs', '2020-01-17', '2020-01-04', 'sfs', '0', 'sfsf', '0', '0', 'sfsf', '2020-01-11 14:29:47'),
(14, 'fghgh', '2020-01-21', '2020-01-14', 'ghghf', '0', 'fghgh', '0', '0', 'fghghg', '2020-01-11 14:44:45'),
(15, 'je suis là', '2020-01-24', '2020-01-04', 'ssf', '0', 'sfsfs', '56465500', '0', 'sfsf', '2020-01-11 14:43:49'),
(16, 'ffh', '2020-01-08', '2020-01-05', 'hfhf', '0', 'fhfhhfh', '0', '0', 'hfhff', '2020-01-11 14:43:45'),
(17, 'vbcc', '2020-01-02', '2020-01-06', 'vbcc', '1', '4', '1', '1', 'vbcc', '2020-01-11 14:44:46'),
(18, 'vbcc', '2020-01-02', '2020-01-06', 'vbcc', '0', 'hhh', '0', '1', 'vbcc', '2020-01-11 14:44:48'),
(19, 'Sidi Ahmar', '2020-01-20', '2034-07-19', 'Completed', '3', 'lll', '12000', '1111', '656650', NULL),
(20, 'C\'est mon date', '2020-12-31', '1944-01-01', 'Archived', '2', 'gjgjgj', '12000', '0', 'hlhlhl', NULL),
(21, 'fhf', '2020-01-20', '2020-01-22', 'In Progres', '0', 'fhfh', '0', '0', 'hfhfh', '2020-01-11 19:55:26'),
(22, 'This is a special  h', '2019-12-31', '0202-01-24', 'In Progress', '2', 'fg', '5500', '0', 'fgfg', NULL),
(23, 'gsdgdddddd', '2020-01-21', '2020-01-12', 'On Hold', '4154', 'sgsg', '0', '0', 'sgsgsg', NULL),
(24, 'dhdhdhdhdh', '2020-01-20', '2020-01-15', 'Archived', '4545', '4545', '0', '4545', 'dhdhdh', '2020-01-13 18:53:52'),
(25, 'This is p90', '2020-01-06', '2020-01-06', 'Archived', 'ddgdg', 'fhfh', '0', '0', 'fhfh', NULL),
(26, 'hdh', '2020-01-07', '2020-01-14', 'On Hold', '0', 'hdhdhdh', '0', '0', 'dhdhd', NULL),
(27, 'sf', '2020-01-01', '2020-01-14', 'Archived', '0', 'sfsf', '24123.5', '1254560', 'fsfsfss', NULL),
(28, '5454', '2020-01-15', '2020-01-21', 'On Hold', '5454545', '54554545', '45', '54545', '54545', '2020-01-19 17:19:57'),
(29, 'dgdgdgd', '2020-01-10T23:00:00.000Z', '2019-12-31T23:00:00.000Z', 'In Progress', '', 'kkk', '454', NULL, NULL, '2020-01-14 21:08:01'),
(30, 'test saud', '2020-01-15T21:00:00.000Z', '2020-01-30T21:00:00.000Z', 'In Progress', 'mmmm', 'mmm', '0', NULL, NULL, '2020-01-14 21:08:04'),
(31, 'Ù…Ø´Ø±ÙˆØ¹ ÙˆØ²Ø§Ø±Ø© Ø§Ù„Ø®Ø§Ø±Ø¬ÙŠØ©', '2020-01-14T21:00:00.000Z', '2020-01-24T21:00:00.000Z', 'In Progress', '', 'pp', '0', '0', NULL, '2020-01-19 17:19:54');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role` int(11) NOT NULL,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `full_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `role_name`, `full_name`, `deleted_at`) VALUES
(1, 'admin', 'admin', 1, 'Admin', 'Saud Al Otaibi', NULL),
(2, 'pmanager', 'pmanager', 2, 'Project Manager', 'Mohamed Yehdhih', NULL),
(3, 'pmanager2', 'pmanager2', 2, 'Project Manager', 'Abdoullah Ahmed', NULL),
(4, 'sales', 'sales', 3, 'Sales Manager', 'Khaled Abdullah', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `client_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contact` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `manager` int(11) NOT NULL,
  `date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `visit`
--

INSERT INTO `visit` (`id`, `client_name`, `contact`, `reason`, `manager`, `date`, `last_update`, `deleted_at`) VALUES
(2, 'Ahmedou salem', '+2126065454', 'visit for work', 4, '2020-01-14', '2020-01-15', '2020-01-24 18:53:53'),
(3, 'visit numero 1', 'sfsfjks sf', '1200', 4, '2020-01-14', NULL, NULL),
(4, 'asfaf', 'afafafaf', 'الله أكبر', 4, '2020-01-14', NULL, NULL),
(5, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(6, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(7, 'asfaf', 'afafafaf', 'afafaf', 4, '2020-01-08', NULL, NULL),
(8, 'gjgj', 'gjgj', 'fggj', 4, '2020-01-16', NULL, NULL),
(9, 'fhfh', 'fhfhfhfh', 'fhfh', 4, '2020-01-15', NULL, NULL),
(10, 'dhdh', 'dhdhdh', 'dhdh', 4, '2020-01-13', NULL, NULL),
(11, 'sgsg', 'sgsgsg', 'sgs', 4, '2020-01-21', NULL, NULL),
(12, 'sgsg', 'sgsgsg', 'sgs', 4, '2020-01-21', NULL, '2020-01-24 19:08:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boq`
--
ALTER TABLE `boq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Index pour la table `boq_group`
--
ALTER TABLE `boq_group`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bid`
--
ALTER TABLE `bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `boq`
--
ALTER TABLE `boq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `boq_group`
--
ALTER TABLE `boq_group`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `deal`
--
ALTER TABLE `deal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `boq`
--
ALTER TABLE `boq`
  ADD CONSTRAINT `boq_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `boq_group` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
