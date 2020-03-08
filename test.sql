-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 08 mars 2020 à 22:00
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `alignement`
--

DROP TABLE IF EXISTS `alignement`;
CREATE TABLE IF NOT EXISTS `alignement` (
  `id_ali` int(11) NOT NULL AUTO_INCREMENT,
  `alignement1` text NOT NULL,
  `alignement2` text NOT NULL,
  PRIMARY KEY (`id_ali`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `alignement`
--

INSERT INTO `alignement` (`id_ali`, `alignement1`, `alignement2`) VALUES
(1, 'Bon', 'Loyal'),
(2, 'Bon', 'Neutre'),
(3, 'Bon', 'Chaotique'),
(4, 'Neutre', 'Bon'),
(5, 'Neutre', 'Neutre'),
(6, 'Neutre', 'Chaotique'),
(7, 'Mauvais', 'Loyal'),
(8, 'Mauvais', 'Neutre'),
(9, 'Mauvais', 'Chaotique');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id_Classe` int(11) NOT NULL AUTO_INCREMENT,
  `Classe` text NOT NULL,
  PRIMARY KEY (`id_Classe`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_Classe`, `Classe`) VALUES
(0, 'Mage'),
(1, 'Guerrier'),
(2, 'Archer'),
(3, 'Paladin'),
(4, 'Voleur');

-- --------------------------------------------------------

--
-- Structure de la table `compagnon`
--

DROP TABLE IF EXISTS `compagnon`;
CREATE TABLE IF NOT EXISTS `compagnon` (
  `id_Compagnon` int(11) NOT NULL AUTO_INCREMENT,
  `Compagnon` text NOT NULL,
  PRIMARY KEY (`id_Compagnon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

DROP TABLE IF EXISTS `objet`;
CREATE TABLE IF NOT EXISTS `objet` (
  `id_Objet` int(11) NOT NULL AUTO_INCREMENT,
  `Objet` text NOT NULL,
  PRIMARY KEY (`id_Objet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

DROP TABLE IF EXISTS `personnage`;
CREATE TABLE IF NOT EXISTS `personnage` (
  `id_Personnage` int(11) NOT NULL AUTO_INCREMENT,
  `id_Race` int(11) NOT NULL,
  `id_Classe` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Point de vie` int(11) NOT NULL,
  `Physique` int(11) NOT NULL,
  `Mental` int(11) NOT NULL,
  `Agilité` int(11) NOT NULL,
  `Education` int(11) NOT NULL,
  `Perception` int(11) NOT NULL,
  `Mana` int(11) NOT NULL,
  `id_Compagnon` int(11) NOT NULL,
  PRIMARY KEY (`id_Personnage`),
  KEY `fk_class` (`id_Classe`),
  KEY `fk_race` (`id_Race`),
  KEY `fk_compagnon` (`id_Compagnon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnage_objet`
--

DROP TABLE IF EXISTS `personnage_objet`;
CREATE TABLE IF NOT EXISTS `personnage_objet` (
  `id_ligne` int(11) NOT NULL AUTO_INCREMENT,
  `id_Objet` int(11) NOT NULL,
  `id_Personnage` int(11) NOT NULL,
  PRIMARY KEY (`id_ligne`),
  KEY `fk_objet_personnage` (`id_Personnage`),
  KEY `fk_objet_personnage2` (`id_Objet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE IF NOT EXISTS `race` (
  `id_race` int(11) NOT NULL,
  `Race` text NOT NULL,
  PRIMARY KEY (`id_race`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id_race`, `Race`) VALUES
(0, 'Humain'),
(1, 'Nain'),
(2, 'Elfe'),
(3, 'Orc'),
(4, 'Goblin');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_User` int(11) NOT NULL AUTO_INCREMENT,
  `login` text NOT NULL,
  `mot_de_passe` text NOT NULL,
  PRIMARY KEY (`id_User`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_User`, `login`, `mot_de_passe`) VALUES
(1, 'kekeke', 'poireau');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
