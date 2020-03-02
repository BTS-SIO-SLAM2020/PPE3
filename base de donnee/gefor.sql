-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 25 fév. 2020 à 12:11
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
CREATE DATABASE if not exists `gefor`;
create user ppe3@localhost IDENTIFIED BY ppe3;
grant all on gefor.* to ppe3@localhost;
USE gefor;

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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidature`
--

INSERT INTO `candidature` (`id`, `civilite`, `created_at`, `nom`, `prenom`, `date_naissance`, `adresse`, `code_postal`, `ville`, `pays`, `email`, `telephone`, `niveau_etude`, `statut_professionnel`, `message`, `formation_propose_id`) VALUES
(106, 'Mme', '2019-08-03 00:40:00', 'Carlier', 'Denis', '2015-10-21', '86, impasse Guillot', '86895', 'Guillon', 'FRANCE', 'thibaut.fontaine@besnard.org', '+5316338656673', 'BAC', 'CDD', 'Vero fuga omnis porro sit sed amet.', 17),
(107, 'Mme', '2019-03-12 11:56:46', 'Guillaume', 'Martin', '2019-02-23', '577, impasse Maurice Delahaye', '22434', 'Gallet', 'FRANCE', 'celine.charrier@bouygtel.fr', '+1227901388165', 'BAC+3', 'INTERIM', 'Cumque animi minus ab aut maiores.', 17),
(108, 'Mme', '2019-05-08 04:35:26', 'Delannoy', 'Victor', '2001-09-25', '42, avenue Capucine Vaillant', '71374', 'Leclerc', 'FRANCE', 'albert.margot@dufour.com', '+2146113709468', 'BAC', 'INTERIM', 'Assumenda quaerat deleniti voluptatem omnis ut.', 17),
(109, 'Mr', '2019-08-02 11:52:21', 'Morel', 'Rémy', '1996-02-29', 'rue Carre', '27029', 'HoarauVille', 'FRANCE', 'chauveau.celine@benoit.fr', '+7582796957420', 'BAC+2', 'CDI', 'Ut commodi ad occaecati excepturi dolor. Suscipit vel deserunt repellendus.', 17),
(110, 'Mme', '2019-03-04 20:36:35', 'Thibault', 'Édouard', '1989-03-18', '873, avenue de Carre', '59562', 'Weiss', 'FRANCE', 'dominique.diallo@tiscali.fr', '+1249282999295', 'BAC+4', 'INTERIM', 'Quia et voluptatem reiciendis quibusdam.', 17),
(111, 'Mme', '2019-06-03 00:46:51', 'Dufour', 'Benjamin', '1998-05-16', '7, rue Gros', '92289', 'Monnierboeuf', 'FRANCE', 'laporte.jean@blanchard.fr', '+9990523608080', 'BAC', 'CDD', 'Vero et nulla velit quae id vel voluptatem. Quia vel velit pariatur aut.', 17),
(112, 'Mr', '2019-08-10 17:44:33', 'Collet', 'Henriette', '1995-10-11', '88, place Alex Pottier', '34393', 'Martineau', 'FRANCE', 'marechal.andre@pages.com', '+6997513243266', 'BAC+5', 'CDI', 'Eaque id fugit labore quidem quos veritatis.', 17),
(113, 'Mr', '2019-11-20 07:47:38', 'Pelletier', 'Monique', '1989-10-03', '95, boulevard Luc Schmitt', '91200', 'Legranddan', 'FRANCE', 'dgrondin@laposte.net', '+6408565616910', 'BAC+3', 'CDD', 'Pariatur ducimus quas sed eligendi possimus.', 17),
(114, 'Mme', '2019-06-26 10:40:02', 'Dupont', 'Rémy', '1984-09-29', '11, chemin de Boucher', '02573', 'Klein', 'FRANCE', 'wdevaux@humbert.com', '+2552713732980', 'BAC+5', 'INTERIM', 'Aspernatur officia aliquid dolore voluptas.', 17),
(115, 'Mr', '2019-02-27 00:39:42', 'Maury', 'Clémence', '1971-03-05', '739, place de Navarro', '12037', 'Dijouxboeuf', 'FRANCE', 'gilles41@noos.fr', '+7831268263381', 'BAC', 'INTERIM', 'Sunt accusamus facere aspernatur ut et dolorem.', 18),
(116, 'Mr', '2019-09-13 17:56:00', 'Maillard', 'Françoise', '1983-10-28', '2, boulevard Adrien Traore', '92545', 'Lecomte', 'FRANCE', 'alfred.berger@live.com', '+7766348461349', 'BAC', 'INTERIM', 'Temporibus sit dolorum ut amet sed.', 18),
(117, 'Mme', '2020-02-19 19:15:11', 'Aubry', 'Jérôme', '1981-07-16', '398, rue Michelle Alexandre', '15398', 'SalmonVille', 'FRANCE', 'benjamin.hamel@joly.com', '+8642759775894', 'BAC+3', 'CDD', 'Atque architecto doloribus odit iste temporibus quidem.', 18),
(118, 'Mme', '2019-10-17 20:21:27', 'Gillet', 'Constance', '1994-08-31', '71, rue Andrée Morin', '24949', 'Rousseau-sur-Mer', 'FRANCE', 'charrier.diane@wanadoo.fr', '+4933709329103', 'BAC', 'CDD', 'Dolores consectetur dolor illo ad nostrum aperiam vel.', 18),
(119, 'Mr', '2019-10-22 05:59:03', 'Rousset', 'Marc', '1982-05-31', 'place Mahe', '19826', 'Gimenez', 'FRANCE', 'girard.bertrand@dbmail.com', '+9638288761368', 'BAC+2', 'CDI', 'Illum dicta ut occaecati culpa velit.', 18),
(120, 'Mr', '2020-02-17 16:07:57', 'De Oliveira', 'Margaret', '1980-07-06', '9, avenue de Benoit', '33910', 'Robin', 'FRANCE', 'kfernandes@lombard.org', '+9752120693226', 'BAC+2', 'INTERIM', 'Numquam aspernatur sed et et.', 18),
(121, 'Mr', '2019-06-09 10:54:53', 'Thibault', 'Paulette', '1998-05-01', '93, avenue Suzanne Germain', '33034', 'Klein', 'FRANCE', 'jacqueline.laurent@pierre.com', '+8884545245002', 'BAC+5', 'Demandeur d\'emploi', 'Occaecati omnis voluptatem at laudantium.', 18),
(122, 'Mme', '2020-02-06 13:34:28', 'Roussel', 'Thierry', '1999-04-12', '626, rue Gautier', '76967', 'Traore', 'FRANCE', 'gomes.gerard@garcia.fr', '+3986276282331', 'BAC+5', 'CDI', 'Inventore nihil laborum omnis qui.', 18),
(123, 'Mr', '2019-06-15 11:25:57', 'Jourdan', 'Tristan', '1995-06-26', 'boulevard Thibault Riviere', '36295', 'Germain', 'FRANCE', 'gmichel@ifrance.com', '+3777247246318', 'BAC+3', 'CDD', 'Unde tempore odio qui et dolorem. Optio dolorem et maxime.', 18),
(124, 'Mr', '2020-01-06 10:31:04', 'Delorme', 'Bertrand', '1996-12-07', 'impasse Besson', '80172', 'Tessier', 'FRANCE', 'barbe.charles@live.com', '+8753498882264', 'BAC+3', 'Demandeur d\'emploi', 'Quia ad minus dolorem fugit maxime sunt.', 18),
(125, 'Mme', '2019-04-04 13:14:52', 'Chauvin', 'Aimé', '1982-04-25', 'avenue Noel', '98544', 'Bertin', 'FRANCE', 'pages.william@live.com', '+3715687736120', 'BAC+3', 'INTERIM', 'Similique dolor voluptate doloribus explicabo corrupti.', 18),
(126, 'Mme', '2019-08-11 07:26:00', 'Blot', 'Astrid', '1972-02-19', '7, chemin Claire Voisin', '34967', 'Bouvier', 'FRANCE', 'pierre39@wanadoo.fr', '+8036713832180', 'BAC+4', 'INTERIM', 'Voluptates asperiores quo beatae atque quia corrupti.', 18),
(127, 'Mme', '2019-06-14 09:45:32', 'Aubert', 'David', '1986-02-10', 'place Techer', '57033', 'Lebrun-sur-Maillard', 'FRANCE', 'diane28@valentin.com', '+1924865882158', 'BAC', 'INTERIM', 'Ullam voluptates molestias totam similique ea corrupti.', 19),
(128, 'Mme', '2019-08-04 12:55:59', 'Moulin', 'Raymond', '1975-01-11', '822, rue Pauline Lesage', '14682', 'Rossi', 'FRANCE', 'gabriel.valentin@dasilva.fr', '+9015085039807', 'BAC+5', 'CDI', 'Fugiat qui nam qui at in molestiae.', 19),
(129, 'Mme', '2019-12-31 22:55:29', 'Lamy', 'Hortense', '1985-12-23', '57, rue René Launay', '32818', 'Hubert-sur-Mer', 'FRANCE', 'valerie.guyon@dbmail.com', '+4782680853910', 'BAC+2', 'INTERIM', 'Vel autem magnam in iure qui earum consequuntur.', 19),
(130, 'Mme', '2019-10-08 11:00:22', 'Daniel', 'Christelle', '1998-12-29', '468, chemin Guillaume Vaillant', '28320', 'Simondan', 'FRANCE', 'claire.lesage@cordier.com', '+4765151309757', 'BAC+4', 'CDI', 'Laborum culpa dolorum doloribus unde.', 19),
(131, 'Mr', '2019-12-16 04:13:50', 'Laine', 'Anne', '1994-12-29', '8, impasse Patricia Blin', '95949', 'Dias', 'FRANCE', 'elise.leleu@buisson.com', '+3179674437250', 'BAC', 'CDD', 'Aut qui est vero nihil recusandae maxime molestiae vero.', 19),
(132, 'Mr', '2019-03-06 01:23:40', 'Arnaud', 'Édouard', '1975-03-19', '76, chemin Denis', '77178', 'Meyer', 'FRANCE', 'marie.lemaitre@club-internet.fr', '+8362692122216', 'BAC+3', 'CDD', 'Et ex sequi enim debitis doloribus.', 19),
(133, 'Mr', '2019-07-29 06:02:59', 'Caron', 'Virginie', '1986-03-10', '11, rue de Deschamps', '37581', 'Hoareau', 'FRANCE', 'amelie.gaudin@petit.fr', '+4736452478019', 'BAC+5', 'INTERIM', 'Aut sequi rerum quia in. Nihil aspernatur voluptatem reprehenderit sed unde et.', 19),
(134, 'Mme', '2019-05-02 17:59:14', 'Renault', 'Vincent', '1975-02-15', '324, boulevard Roland Carpentier', '77659', 'Gilbert-sur-Guilbert', 'FRANCE', 'nicole.dumont@voila.fr', '+9103793660129', 'BAC+4', 'Demandeur d\'emploi', 'Porro id omnis qui. Amet similique et omnis optio porro voluptatem.', 19),
(135, 'Mme', '2020-01-15 14:37:56', 'Vallee', 'Margot', '1985-10-15', '788, rue Charrier', '69996', 'Vasseur-sur-Rossi', 'FRANCE', 'hollivier@free.fr', '+8158081927924', 'BAC+3', 'CDD', 'Cumque commodi dolor nesciunt.', 19),
(136, 'Mr', '2019-11-23 16:54:01', 'Dufour', 'Alex', '1973-07-23', '811, chemin de Pruvost', '28193', 'Weiss', 'FRANCE', 'suzanne44@cousin.net', '+5098669020892', 'BAC+3', 'INTERIM', 'Enim enim saepe magni suscipit adipisci consequatur quasi asperiores.', 19),
(137, 'Mme', '2019-09-15 18:37:56', 'Leblanc', 'Jean', '1990-08-28', '467, place Cécile Lopes', '03330', 'Gaudindan', 'FRANCE', 'bboyer@ifrance.com', '+8456874421198', 'BAC+3', 'CDD', 'Molestiae esse est inventore et in. Autem in sunt reiciendis dolorem.', 20),
(138, 'Mr', '2019-08-12 08:37:56', 'Lacroix', 'Christine', '2000-03-18', '72, boulevard de Goncalves', '45776', 'Ribeiro-sur-Baron', 'FRANCE', 'marc.barthelemy@henry.org', '+8700488295273', 'BAC', 'INTERIM', 'Rerum quia amet incidunt tempora.', 20),
(139, 'Mr', '2019-11-05 21:58:16', 'Andre', 'Alexandre', '1980-02-22', '60, avenue de Marin', '05635', 'Muller-sur-Perrin', 'FRANCE', 'joseph.etienne@live.com', '+4928969611694', 'BAC+3', 'CDD', 'Voluptatem optio ipsum quo commodi quis.', 20),
(140, 'Mme', '2019-12-24 01:57:51', 'Charrier', 'René', '1981-02-15', '11, place Robin', '46062', 'Durand', 'FRANCE', 'denis22@bouygtel.fr', '+5002447050741', 'BAC+2', 'Demandeur d\'emploi', 'Laudantium unde blanditiis alias qui. Rerum ullam incidunt esse.', 20),
(141, 'Mr', '2019-02-25 19:32:50', 'Paris', 'Georges', '1997-07-15', '41, avenue Germain', '84388', 'Durand', 'FRANCE', 'rey.luc@lefevre.com', '+3745421191319', 'BAC+4', 'Demandeur d\'emploi', 'Recusandae est sit repudiandae quis minus quod voluptatem.', 20),
(142, 'Mr', '2019-11-15 21:12:46', 'Maillet', 'Guy', '1990-09-06', 'avenue de Lefebvre', '28736', 'BuissonBourg', 'FRANCE', 'vidal.claire@free.fr', '+4456247615985', 'BAC+3', 'CDD', 'Tempora aut in ea cum deserunt. Non fugiat culpa nisi eaque aut ea.', 20),
(143, 'Mr', '2019-05-04 22:00:27', 'Barbe', 'Richard', '1976-10-23', '436, rue Leleu', '07553', 'Loiseau', 'FRANCE', 'loiseau.sebastien@baudry.com', '+2324522552780', 'BAC', 'INTERIM', 'Architecto ab soluta porro pariatur necessitatibus quisquam sit.', 20),
(144, 'Mme', '2019-03-16 07:10:43', 'Riviere', 'Agnès', '1971-01-07', '7, impasse Josette Goncalves', '05363', 'Charles-sur-Huet', 'FRANCE', 'nicolas.legoff@ifrance.com', '+2669508656546', 'BAC', 'Demandeur d\'emploi', 'Rerum esse voluptatem provident praesentium iusto modi earum.', 20),
(145, 'Mr', '2019-12-21 11:04:46', 'Allain', 'Pierre', '1993-10-05', '996, impasse de Dias', '27007', 'Lefort-les-Bains', 'FRANCE', 'laroche.patrick@voila.fr', '+4542142809914', 'BAC+3', 'INTERIM', 'Ab molestiae molestiae at suscipit corporis tempore praesentium.', 20),
(146, 'Mr', '2019-03-17 07:55:42', 'Jacob', 'Aurore', '1973-04-14', 'impasse Fontaine', '83647', 'Collet-la-Forêt', 'FRANCE', 'marchand.zoe@dumont.com', '+7160802392942', 'BAC+4', 'CDD', 'Saepe excepturi non qui perferendis. Aut nihil tempore voluptatem.', 20),
(147, 'Mme', '2019-06-16 00:59:48', 'Goncalves', 'Émile', '1990-06-08', '26, impasse Lacombe', '68676', 'Richard', 'FRANCE', 'rdelmas@voila.fr', '+7014954517188', 'BAC+2', 'INTERIM', 'Nemo dignissimos et veritatis vitae alias ad.', 20),
(148, 'Mr', '2015-01-01 00:00:00', 'el asri', 'osmane', '2015-01-01', '7 RUE DE BELFORT', '78200', 'MANTES LA JOLI', 'france', 'osmane2002@hotmail.fr', '0101010101', 'bac+2', 'cdd', '0101010101', 17);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation_propose`
--

INSERT INTO `formation_propose` (`id`, `diplome`, `specialite`) VALUES
(17, 'BTS', 'SIO SLAM'),
(18, 'BTS', 'SIO SISR'),
(19, 'BTS', 'ASSURANCE'),
(20, 'BTS', 'MUC'),
(21, 'BAC PROFESSIONNEL', 'COMPTABILITÉ');

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
('20200223090632', '2020-02-23 09:06:43'),
('20200225084950', '2020-02-25 08:50:13');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `password`, `roles`) VALUES
(1, 'mea1975', 'meknes', 'ROLE_USER'),
(2, 'mea19752', '$argon2id$v=19$m=65536,t=4,p=1$SUxUTnBZZ01jR1RZZElyOQ$S+jA5ddvbUsuX/SfyN6vxKWR+D/2ajvQU2M9i3HXn6U', 'ROLE_USER'),
(3, 'mea3', '$argon2id$v=19$m=65536,t=4,p=1$c0ZyeVIwNnFEemZNeHJwRg$j+8t9yo1Pi2hCF2OIsCPK3FEAv7Imls1pziOIaQtxW4', 'ROLE_USER'),
(4, 'mea10', '$argon2id$v=19$m=65536,t=4,p=1$NklZMnBpY3RkNlF1cWI3aA$Qg4RGU5TqDSYPzNEkj1u8CPlAQ3uVLUAn7QPHgIz1q8', 'ROLE_USER'),
(5, 'mea11', '$argon2id$v=19$m=65536,t=4,p=1$SGYydHJGN29jM1ZaTHViWQ$LBpnPuDkDerJH1VI/hzresjDhuTpR+37vlEWMdxMDdU', 'ROLE_ADMIN'),
(6, 'utilisateur', '$argon2id$v=19$m=65536,t=4,p=1$UldNN3M3MGJuZHJpWUVTZQ$7BWrhFvH0fFQXB+5ItTq1nq5wXl1ULOiKJvu5HU08zA', 'ROLE_USER');

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
