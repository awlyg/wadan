-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 03 jan. 2020 à 18:59
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
  `text` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_bin NOT NULL,
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
(1, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL),
(2, 'project test 2', '0000-00-00', '2019-12-26', 'opened', 2, 'code test 2', 200000, 2400000, 'http://www.fb.com', NULL),
(3, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL),
(4, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL),
(5, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL),
(6, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL),
(7, 'project test 1', '2019-12-01', '2019-12-26', 'opened', 1, 'code test 1', 100000, 1200000, 'http://www.google.com', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
