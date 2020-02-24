-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 24 fév. 2020 à 08:46
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
-- Base de données :  `gefor`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidature`
--

DROP TABLE IF EXISTS `candidature`;
CREATE TABLE IF NOT EXISTS `candidature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau_etude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut_professionnel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formation_propose_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E33BD3B84B58B3B` (`formation_propose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidature`
--

INSERT INTO `candidature` (`id`, `civilite`, `created_at`, `nom`, `prenom`, `date_naissance`, `adresse`, `code_postal`, `ville`, `pays`, `email`, `telephone`, `niveau_etude`, `statut_professionnel`, `message`, `formation_propose_id`) VALUES
(1, 'Mr', '2020-01-06 00:00:00', 'el asri', 'mohammed', '1975-11-13', '7 RUE DE BELFORT', '78200', 'MANTES LA JOLIE', '', 'mohammed1975@hotmail.fr', '06060606', 'bac', 'cdi', 'fsdf', 1),
(2, 'Mr', '2020-02-10 00:00:00', 'jean', 'dubois', '1970-11-13', '8 RUE DE BELFORT', '78200', 'MANTES LA JOLIE', '', 'mohammed1970@hotmail.fr', '06060606', 'bac+2', 'cdd', 'fsdf', 2),
(3, 'Mme', '2020-02-09 00:00:00', 'dupont', 'julie', '1980-10-10', '10 RUE DE BELFORT', '78200', 'MANTES LA JOLIe', '', '2002@hotmail.fr', '0707070707', 'bac', 'demandeur d\'emploi', 'terftq', 4),
(4, 'Mme', '2020-02-18 00:00:00', 'dupond', 'caroline', '1990-10-10', '11 RUE DE BELFORT', '78200', 'MANTES LA JOLIe', '', '2003@hotmail.fr', '0707070708', 'bac+3', 'cdi', 'terftqdfs', 3),
(5, 'Mlle', '2020-02-11 00:00:00', 'Martin', 'Martino', '1980-10-20', '1 bis de la tourelle', '75000', 'paris', 'france', 'qsef@ye.fr', '0101010101', 'bac+4', 'demandeur d\'emploi', 'efgdfqdsf', 4),
(6, 'Mr', '2020-02-18 00:00:00', 'dupont', 'eric', '1975-02-17', '5 rue de la gare', '78000', 'Versailles', 'France', 'efjszd@sedfs.com', '0505050505', 'bac+3', 'cdd', 'efdqsdfqs', 3),
(7, 'Mlle', '2020-02-11 00:00:00', 'Martin', 'Martina', '1980-10-20', '1 bis de la tourelle', '75000', 'paris', 'france', 'qsef@ye.fr', '0101010101', 'bac+4', 'demandeur d\'emploi', 'efgdfqdsf', 4),
(8, 'Mr', '2020-02-18 00:00:00', 'dupont', 'erika', '1975-02-17', '5 rue de la gare', '78000', 'Versailles', 'France', 'efjszd@sedfs.com', '0505050505', 'bac+3', 'cdd', 'efdqsdfqs', 3);

-- --------------------------------------------------------

--
-- Structure de la table `formation_propose`
--

DROP TABLE IF EXISTS `formation_propose`;
CREATE TABLE IF NOT EXISTS `formation_propose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diplome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation_propose`
--

INSERT INTO `formation_propose` (`id`, `diplome`, `specialite`) VALUES
(1, 'BTS', 'SIO SLAM'),
(2, 'BTS', 'SIO SISR'),
(3, 'BTS', 'ASSURANCE'),
(4, 'BTS', 'MUC');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200222170745', '2020-02-22 17:08:05'),
('20200222170839', '2020-02-22 17:08:46'),
('20200222171016', '2020-02-22 17:10:24'),
('20200222171229', '2020-02-22 17:12:36'),
('20200222173053', '2020-02-22 17:31:06'),
('20200222173757', '2020-02-22 17:38:06'),
('20200222173844', '2020-02-22 17:38:49'),
('20200222174437', '2020-02-22 17:44:44'),
('20200222183934', '2020-02-22 18:39:44'),
('20200223084514', '2020-02-23 08:45:23'),
('20200223085703', '2020-02-23 08:57:14'),
('20200223090632', '2020-02-23 09:06:43');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidature`
--
ALTER TABLE `candidature`
  ADD CONSTRAINT `FK_E33BD3B84B58B3B` FOREIGN KEY (`formation_propose_id`) REFERENCES `formation_propose` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
