-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 13 jan. 2020 à 09:57
-- Version du serveur :  5.7.27
-- Version de PHP : 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `erp`
--

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `num_bill` float NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `writer` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `last_update` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `writer`, `type`, `type_id`, `text`, `last_update`, `created_at`) VALUES
(1, 1, 1, 1, 'Hello, this is the first note I wrote ever', '2020-01-14 21:57:51', '2020-01-17 21:57:51'),
(2, 1, 1, 1, 'second note of first project ', '2020-01-09 10:51:22', '2020-01-13 09:53:39');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `manager` int(11) NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `po_value` float NOT NULL,
  `expenses` float NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `start_date`, `end_date`, `status`, `manager`, `code`, `po_value`, `expenses`, `link`, `deleted_at`) VALUES
(1, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-11 13:11:00'),
(2, 'project test 2', '2020-01-15', '2019-12-26', 'opened', 2, 'code test 2', 200000, 2400000, 'http://www.fb.com', '2020-01-11 14:33:27'),
(3, 'project test 3', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-11 13:11:04'),
(4, 'project test 4', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-11 12:58:48'),
(5, 'project test 5', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-11 14:44:26'),
(6, 'project test 6', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-21 00:00:00'),
(7, 'project test 7', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', '2020-01-11 13:04:48'),
(8, 'test', '5544-12-11', '0000-00-00', 'openened', 4564, '64654564', 5646, 46564, '5656456', '2020-01-11 14:44:22'),
(9, 'test', '5544-12-11', '0000-00-00', 'openened', 4564, '64654564', 5646, 46564, '5656456', '2020-01-11 14:44:39'),
(10, 'test', '5544-12-11', '0000-00-00', 'openened', 4564, '64654564', 5646, 46564, '5656456', '2020-01-11 14:44:41'),
(11, 'adadad', '2020-01-06', '2020-01-15', 'dgdg', 0, 'dgdgd', 454564, 0, 'dgdg', '2020-01-11 14:44:43'),
(12, 'ggggg', '2020-01-05', '2020-01-06', 'gggggg', 0, 'ggggggggggggg', 0, 0, 'ggggggg', '2020-01-11 14:29:49'),
(13, 'sfs', '2020-01-17', '2020-01-04', 'sfs', 0, 'sfsf', 0, 0, 'sfsf', '2020-01-11 14:29:47'),
(14, 'fghgh', '2020-01-21', '2020-01-14', 'ghghf', 0, 'fghgh', 0, 0, 'fghghg', '2020-01-11 14:44:45'),
(15, 'je suis là', '2020-01-24', '2020-01-04', 'ssf', 0, 'sfsfs', 56465500, 0, 'sfsf', '2020-01-11 14:43:49'),
(16, 'ffh', '2020-01-08', '2020-01-05', 'hfhf', 0, 'fhfhhfh', 0, 0, 'hfhff', '2020-01-11 14:43:45'),
(17, 'vbcc', '2020-01-02', '2020-01-06', 'vbcc', 1, '4', 1, 1, 'vbcc', '2020-01-11 14:44:46'),
(18, 'vbcc', '2020-01-02', '2020-01-06', 'vbcc', 0, 'hhh', 0, 1, 'vbcc', '2020-01-11 14:44:48'),
(19, 'inejih dahm', '2020-01-20', '2034-07-19', 'On Hold', 0, 'fjfjf', 10500, 1000, 'fjfj', NULL),
(20, 'hlfm', '2020-01-22', '2020-01-14', 'Completed', 0, 'hlhl', 0, 0, 'hlhlhl', NULL),
(21, 'fhf', '2020-01-20', '2020-01-22', 'In Progres', 0, 'fhfh', 0, 0, 'hfhfh', '2020-01-11 19:55:26'),
(22, 'This is a special  h', '2019-12-31', '2020-01-25', 'In Progress', 0, 'fg', 5500, 0, 'fgfg', NULL),
(23, 'gsdgdddddd', '2020-01-21', '2020-01-12', 'On Hold', 0, 'sgsg', 0, 0, 'sgsgsg', NULL),
(24, 'dhdhdhdhdh', '2020-01-20', '2020-01-15', 'Archived', 4545, '4545', 0, 4545, 'dhdhdh', NULL),
(25, 'This is p90', '2020-01-06', '2020-01-06', 'Archived', 0, 'fhfh', 0, 0, 'fhfh', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'pmanager', 'pmanager', 2);

--
-- Index pour les tables déchargées
--

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
