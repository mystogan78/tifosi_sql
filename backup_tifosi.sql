-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 mai 2025 à 18:56
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--
CREATE DATABASE IF NOT EXISTS `tifosi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tifosi`;

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE `achat` (
  `id_client` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 7, '2025-05-28'),
(2, 8, '2025-05-27'),
(3, 5, '2025-05-27'),
(4, 7, '2025-05-26'),
(5, 8, '2025-05-26');

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL,
  `nom_boisson` varchar(45) NOT NULL,
  `id_marque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta Orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 2),
(7, 'Pepsi Max Zéro', 2),
(8, 'Lipton zéro citron', 2),
(9, 'Lipton Peach', 2),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 4);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `cp_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Dupont', 35, 78500),
(2, 'Martin', 45, 92000),
(3, 'Richard', 22, 94100),
(4, 'Simon', 18, 93200),
(5, 'Gilles', 17, 93200),
(6, 'Martin', 35, 75001);

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE `comprend` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(1, 5),
(1, 16),
(1, 18),
(2, 6),
(2, 7),
(2, 12),
(2, 17),
(3, 4),
(3, 10),
(3, 14),
(3, 24),
(4, 5),
(4, 11),
(4, 15),
(4, 13),
(5, 6),
(5, 8),
(5, 10),
(5, 11),
(6, 5),
(6, 9),
(6, 12),
(6, 19),
(7, 6),
(7, 7),
(7, 14),
(7, 22),
(8, 1),
(8, 5),
(8, 12),
(8, 23);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE `contient` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(1, 10),
(2, 7),
(3, 2),
(4, 9),
(5, 12);

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`, `id_menu`) VALUES
(1, 'Mozaccia', 9.8, 4),
(2, 'Gorgonzollaccia', 10.8, 1),
(3, 'Raclaccia', 8.9, 1),
(4, 'Emmentalaccia', 9.8, 2),
(5, 'Tradizione', 8.9, 2),
(6, 'Hawaienne', 11.2, 4),
(7, 'Americaine', 10.8, 3),
(8, 'Paysanne', 12.8, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base tomate'),
(6, 'Bases crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `nom_marque` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Pepsico'),
(3, 'Monster'),
(4, 'Cristalline');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`) VALUES
(1, 'Menu Étudiant', 8.5),
(2, 'Menu Gourmet', 12.9),
(3, 'Menu Savoyarde', 15.9),
(4, 'Menu Gastronomie', 10.9),
(5, 'Menu Titan', 22.9);

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE `paye` (
  `id_client` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `paye`
--

INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
(1, 2, '2025-05-28'),
(2, 3, '2025-05-27'),
(3, 4, '2025-05-27'),
(4, 1, '2025-05-26'),
(5, 1, '2025-05-26');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD KEY `fk_achat_client` (`id_client`),
  ADD KEY `fk_achat_focaccia` (`id_focaccia`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`),
  ADD KEY `fk_boisson_marque` (`id_marque`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD KEY `fk_comprend_focaccia` (`id_focaccia`),
  ADD KEY `fk_comprend_ingredient` (`id_ingredient`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD KEY `fk_contient_menu` (`id_menu`),
  ADD KEY `fk_contient_boisson` (`id_boisson`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`),
  ADD KEY `fk_focaccia_menu` (`id_menu`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `paye`
--
ALTER TABLE `paye`
  ADD KEY `fk_paye_client` (`id_client`),
  ADD KEY `fk_paye_menu` (`id_menu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boisson`
--
ALTER TABLE `boisson`
  MODIFY `id_boisson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `fk_achat_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_achat_focaccia` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE;

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `fk_boisson_marque` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE SET NULL;

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `fk_comprend_focaccia` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comprend_ingredient` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE CASCADE;

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `fk_contient_boisson` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_contient_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE;

--
-- Contraintes pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD CONSTRAINT `fk_focaccia_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE SET NULL;

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `fk_paye_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_paye_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
