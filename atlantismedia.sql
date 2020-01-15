-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 15 jan. 2020 à 12:36
-- Version du serveur :  8.0.18
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
-- Base de données :  `atlantismedia`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
CREATE TABLE IF NOT EXISTS `artiste` (
  `id_artiste` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `nom`, `prenom`) VALUES
(1, 'Tarantino', 'Quentin'),
(2, 'Pennac', 'Daniel'),
(3, 'Muse', NULL),
(4, 'Bowie', 'David'),
(5, 'Ubisoft', NULL),
(6, 'Blizzard Entertainment', NULL),
(7, 'Goldman', 'Jean-Jacques'),
(8, 'Souchon', 'Alain'),
(9, 'Willis', 'Bruce'),
(10, 'Ford', 'Harrison'),
(11, 'Jones', 'Tom');

-- --------------------------------------------------------

--
-- Structure de la table `artiste_type_artiste`
--

DROP TABLE IF EXISTS `artiste_type_artiste`;
CREATE TABLE IF NOT EXISTS `artiste_type_artiste` (
  `id_artiste` int(11) NOT NULL,
  `id_type_artiste` int(11) NOT NULL,
  PRIMARY KEY (`id_artiste`,`id_type_artiste`),
  KEY `id_type_artiste` (`id_type_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `artiste_type_artiste`
--

INSERT INTO `artiste_type_artiste` (`id_artiste`, `id_type_artiste`) VALUES
(3, 6),
(11, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `libelle`) VALUES
(1, 'Film'),
(2, 'Livre'),
(3, 'Musique'),
(4, 'Jeu Vidéo');

-- --------------------------------------------------------

--
-- Structure de la table `critique`
--

DROP TABLE IF EXISTS `critique`;
CREATE TABLE IF NOT EXISTS `critique` (
  `id_critique` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(250) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_critique`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `critique`
--

INSERT INTO `critique` (`id_critique`, `commentaire`, `note`) VALUES
(1, 'Origin Of Symmetry : super album de Muse, des titres devenus cultes !', 5);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `libelle`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Arts Martiaux'),
(4, 'Aventure'),
(5, 'Comédie'),
(6, 'Drame'),
(7, 'Science Fiction'),
(8, 'Policier'),
(9, 'Fantasy'),
(10, 'Rock'),
(11, 'Pop'),
(12, 'Variété Française'),
(13, 'FPS');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE IF NOT EXISTS `langue` (
  `id_langue` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_langue`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id_langue`, `libelle`) VALUES
(1, 'Anglais'),
(2, 'Français');

-- --------------------------------------------------------

--
-- Structure de la table `morceaux`
--

DROP TABLE IF EXISTS `morceaux`;
CREATE TABLE IF NOT EXISTS `morceaux` (
  `id_morceaux` int(11) NOT NULL AUTO_INCREMENT,
  `titre_morceaux` varchar(50) NOT NULL,
  `duree` int(11) NOT NULL,
  PRIMARY KEY (`id_morceaux`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `morceaux`
--

INSERT INTO `morceaux` (`id_morceaux`, `titre_morceaux`, `duree`) VALUES
(1, '1.It\'s Not Unusual', 2),
(2, '2.Memphis Tennessee', 2),
(3, '3.I Need Your Loving', 2),
(4, ' 4.Watcha Gonna Do', 3),
(5, '5.Skye Boat Song', 3),
(6, '6. Worried Man', 2),
(7, '7.Once Upon A Time', 2),
(8, '8.Autumn Leaves', 3),
(9, '9.It\'s Just A Matter Of Time', 2),
(10, '10.Spanish Harlem', 3),
(11, '11.If You Need Me', 2),
(12, '12.When The World Was Beautiful', 2),
(13, '1.New Born', 6),
(14, '2.Bliss', 4),
(15, '3.Space Dementia', 6),
(16, '4.Hyper Music', 3),
(17, '5.Plug In Baby', 3),
(18, '6.Citizen Erased', 7),
(19, '7.Micro Cuts', 3),
(20, '8.Screenager', 4),
(21, '9.Darkshines', 4),
(22, '10.Feeling Good', 3),
(23, '11.Megalomania', 4);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id_oeuvre` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `duree` varchar(11) DEFAULT NULL,
  `code_isbn` varchar(50) DEFAULT NULL,
  `date_acquisition` date DEFAULT NULL,
  `id_statut` int(11) NOT NULL,
  `id_origine` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_support` int(11) NOT NULL,
  PRIMARY KEY (`id_oeuvre`),
  KEY `id_categorie` (`id_categorie`),
  KEY `id_support` (`id_support`),
  KEY `id_origine` (`id_origine`),
  KEY `id_statut` (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id_oeuvre`, `titre`, `duree`, `code_isbn`, `date_acquisition`, `id_statut`, `id_origine`, `id_categorie`, `id_support`) VALUES
(1, 'It\'s not Unusual', NULL, NULL, NULL, 3, 7, 3, 1),
(2, 'Origin of Symmetry', NULL, NULL, NULL, 3, 2, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_artiste`
--

DROP TABLE IF EXISTS `oeuvre_artiste`;
CREATE TABLE IF NOT EXISTS `oeuvre_artiste` (
  `id_oeuvre` int(11) NOT NULL,
  `id_artiste` int(11) NOT NULL,
  `date_de_realisation` date DEFAULT NULL,
  PRIMARY KEY (`id_oeuvre`,`id_artiste`),
  KEY `id_artiste` (`id_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre_artiste`
--

INSERT INTO `oeuvre_artiste` (`id_oeuvre`, `id_artiste`, `date_de_realisation`) VALUES
(1, 11, NULL),
(2, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_critique`
--

DROP TABLE IF EXISTS `oeuvre_critique`;
CREATE TABLE IF NOT EXISTS `oeuvre_critique` (
  `id_oeuvre` int(11) NOT NULL,
  `id_critique` int(11) NOT NULL,
  `date_de_commentaire` date DEFAULT NULL,
  PRIMARY KEY (`id_oeuvre`,`id_critique`),
  KEY `id_critique` (`id_critique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_genre`
--

DROP TABLE IF EXISTS `oeuvre_genre`;
CREATE TABLE IF NOT EXISTS `oeuvre_genre` (
  `id_genre` int(11) NOT NULL,
  `id_oeuvre` int(11) NOT NULL,
  PRIMARY KEY (`id_genre`,`id_oeuvre`),
  KEY `id_oeuvre` (`id_oeuvre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre_genre`
--

INSERT INTO `oeuvre_genre` (`id_genre`, `id_oeuvre`) VALUES
(11, 2);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_langue`
--

DROP TABLE IF EXISTS `oeuvre_langue`;
CREATE TABLE IF NOT EXISTS `oeuvre_langue` (
  `id_oeuvre` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  PRIMARY KEY (`id_oeuvre`,`id_langue`),
  KEY `id_langue` (`id_langue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre_langue`
--

INSERT INTO `oeuvre_langue` (`id_oeuvre`, `id_langue`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_morceaux`
--

DROP TABLE IF EXISTS `oeuvre_morceaux`;
CREATE TABLE IF NOT EXISTS `oeuvre_morceaux` (
  `id_oeuvre` int(11) NOT NULL,
  `id_morceaux` int(11) NOT NULL,
  PRIMARY KEY (`id_oeuvre`,`id_morceaux`),
  KEY `id_morceaux` (`id_morceaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre_morceaux`
--

INSERT INTO `oeuvre_morceaux` (`id_oeuvre`, `id_morceaux`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23);

-- --------------------------------------------------------

--
-- Structure de la table `origine`
--

DROP TABLE IF EXISTS `origine`;
CREATE TABLE IF NOT EXISTS `origine` (
  `id_origine` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_origine`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `origine`
--

INSERT INTO `origine` (`id_origine`, `libelle`) VALUES
(1, 'Amazone'),
(2, 'Cultura'),
(3, 'Fnac'),
(4, 'Steam'),
(5, 'Playstation Store'),
(6, 'Leclerc'),
(7, 'Deezer'),
(8, 'Zone Téléchargement');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id_statut` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `libelle`) VALUES
(1, 'Pas commencée'),
(2, 'En cours'),
(3, 'Terminée');

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE IF NOT EXISTS `support` (
  `id_support` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_support`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `support`
--

INSERT INTO `support` (`id_support`, `libelle`) VALUES
(1, 'CD'),
(2, 'Papier'),
(3, 'Dématérialisé'),
(4, 'PS4'),
(5, 'DVD'),
(6, 'VHS'),
(7, 'Cloud');

-- --------------------------------------------------------

--
-- Structure de la table `type_artiste`
--

DROP TABLE IF EXISTS `type_artiste`;
CREATE TABLE IF NOT EXISTS `type_artiste` (
  `id_type_artiste` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_type_artiste`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_artiste`
--

INSERT INTO `type_artiste` (`id_type_artiste`, `libelle`) VALUES
(1, 'Auteur'),
(2, 'Acteur'),
(3, 'Réalisateur'),
(4, 'Editeur'),
(5, 'Développeur'),
(6, 'Groupe'),
(7, 'Chanteur'),
(8, 'Guitariste'),
(9, 'Bassiste'),
(10, 'Batteur'),
(11, 'Pianiste');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `artiste_type_artiste`
--
ALTER TABLE `artiste_type_artiste`
  ADD CONSTRAINT `artiste_type_artiste_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`),
  ADD CONSTRAINT `artiste_type_artiste_ibfk_2` FOREIGN KEY (`id_type_artiste`) REFERENCES `type_artiste` (`id_type_artiste`);

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `oeuvre_ibfk_1` FOREIGN KEY (`id_origine`) REFERENCES `origine` (`id_origine`),
  ADD CONSTRAINT `oeuvre_ibfk_2` FOREIGN KEY (`id_support`) REFERENCES `support` (`id_support`),
  ADD CONSTRAINT `oeuvre_ibfk_3` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`),
  ADD CONSTRAINT `oeuvre_ibfk_4` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);

--
-- Contraintes pour la table `oeuvre_artiste`
--
ALTER TABLE `oeuvre_artiste`
  ADD CONSTRAINT `oeuvre_artiste_ibfk_1` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `oeuvre_artiste_ibfk_2` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`);

--
-- Contraintes pour la table `oeuvre_critique`
--
ALTER TABLE `oeuvre_critique`
  ADD CONSTRAINT `oeuvre_critique_ibfk_1` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `oeuvre_critique_ibfk_2` FOREIGN KEY (`id_critique`) REFERENCES `critique` (`id_critique`);

--
-- Contraintes pour la table `oeuvre_genre`
--
ALTER TABLE `oeuvre_genre`
  ADD CONSTRAINT `oeuvre_genre_ibfk_1` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `oeuvre_genre_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

--
-- Contraintes pour la table `oeuvre_langue`
--
ALTER TABLE `oeuvre_langue`
  ADD CONSTRAINT `oeuvre_langue_ibfk_1` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `oeuvre_langue_ibfk_2` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`);

--
-- Contraintes pour la table `oeuvre_morceaux`
--
ALTER TABLE `oeuvre_morceaux`
  ADD CONSTRAINT `oeuvre_morceaux_ibfk_1` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `oeuvre_morceaux_ibfk_2` FOREIGN KEY (`id_morceaux`) REFERENCES `morceaux` (`id_morceaux`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
