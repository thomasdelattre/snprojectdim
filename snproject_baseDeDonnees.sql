-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 23 Mars 2017 à 13:40
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `snproject`
--
CREATE DATABASE IF NOT EXISTS `snproject` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `snproject`;

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `idC` int(11) NOT NULL,
  `idE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`idC`, `idE`) VALUES
(2, 16),
(2, 17),
(8, 20),
(8, 21),
(8, 22),
(8, 23),
(8, 24),
(8, 25),
(8, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(9, 35),
(8, 36),
(2, 37);

-- --------------------------------------------------------

--
-- Structure de la table `appliquer`
--

CREATE TABLE `appliquer` (
  `idComp` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `appliquer`
--

INSERT INTO `appliquer` (`idComp`, `idCours`) VALUES
(4, 6),
(3, 6),
(5, 6),
(6, 6),
(7, 7),
(8, 7),
(9, 7),
(10, 8),
(11, 8),
(12, 8),
(13, 11),
(14, 11),
(15, 11),
(16, 10),
(17, 9);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `idClasse` int(11) NOT NULL,
  `libelle` varchar(250) NOT NULL,
  `idP` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`idClasse`, `libelle`, `idP`) VALUES
(2, 'TD1 année 2', 2),
(9, 'BTS SIO', 1),
(8, 'LP DIM', 1);

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `idC` int(11) NOT NULL,
  `libelle` char(200) CHARACTER SET latin1 DEFAULT NULL,
  `idP` int(11) DEFAULT NULL,
  `coef` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`idC`, `libelle`, `idP`, `coef`) VALUES
(3, 'Servlet', 1, 1),
(4, 'Design', 1, 1),
(5, 'Commentaires', 1, 1),
(6, 'Beans', 1, 1),
(7, 'Objet', 1, 1),
(8, 'Fonctions', 1, 1),
(9, 'Soin du code', 1, 1),
(10, 'Oral', 1, 1),
(11, 'Ecrit', 1, 1),
(12, 'Ecouté', 1, 1),
(13, 'Comp 1', 2, 1),
(14, 'comp 2 3', 2, 1),
(15, 'comp 3 3', 2, 1),
(16, 'Comp 1 2', 2, 1),
(17, 'comp 2354345', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `idClasse` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contenir`
--

INSERT INTO `contenir` (`idClasse`, `idCours`) VALUES
(2, 9),
(2, 10),
(2, 11),
(8, 6),
(8, 8),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idC` int(11) NOT NULL,
  `libelle` char(200) CHARACTER SET latin1 DEFAULT NULL,
  `description` char(200) CHARACTER SET latin1 DEFAULT NULL,
  `idP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`idC`, `libelle`, `description`, `idP`) VALUES
(6, 'JEE', '', 1),
(7, 'Java', '', 1),
(8, 'Anglais', '', 1),
(9, 'Cours 1', '', 2),
(10, 'Cours 2', '', 2),
(11, 'cours 3', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idE` int(11) NOT NULL,
  `nom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `login` char(80) CHARACTER SET latin1 DEFAULT NULL,
  `mdp` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `sid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`idE`, `nom`, `prenom`, `login`, `mdp`, `sid`) VALUES
(15, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas', ''),
(16, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas', ''),
(17, 'Essombe', 'Zacharie', 'essombe.zacharie', 'essombe.zacharie', ''),
(19, 'Amrani', 'Ayman', 'amrani.ayman', 'amrani.ayman', ''),
(20, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas', ''),
(21, 'Essombe', 'Zacharie', 'essombe.zacharie', 'essombe.zacharie', ''),
(22, 'Amrani', 'Ayman', 'amrani.ayman', 'amrani.ayman', ''),
(23, 'Leleu', 'Sylvain', 'leleu.sylvain', 'leleu.sylvain', ''),
(24, 'Tahrour', 'Djalel', 'tahrour.djalel', 'tahrour.djalel', ''),
(25, 'Mathias', 'Anais', 'mathias.anais', 'mathias.anais', ''),
(26, 'Hmain', 'Ismael', 'hmain.ismael', 'hmain.ismael', ''),
(27, 'Demaziere', 'Arthur', 'demaziere.arthur', 'demaziere.arthur', ''),
(28, 'Chretien', 'Simon', 'chretien.simon', 'chretien.simon', ''),
(29, 'Hakem', 'Raphael', 'hakem.raphael', 'hakem.raphael', ''),
(30, 'Specq', 'Florian', 'specq.florian', 'specq.florian', ''),
(31, 'Wallyn', 'Vincent', 'wallyn.vincent', 'wallyn.vincent', ''),
(32, 'Popieul', 'Clement', 'popieul.clement', 'popieul.clement', ''),
(33, 'Delarue', 'Lucien', 'delarue.lucien', 'delarue.lucien', ''),
(34, 'Baroni', 'Hubert', 'baroni.hubert', 'baroni.hubert', ''),
(35, 'Lecerf', 'Margaux', 'lecerf.margaux', 'ab4f63f9ac65152575886860dde480a1', 'ad145fb5d4daf3d95a22c199df7e513c'),
(36, 'Alba', 'Thomas', 'alba.thomas', '96e10eb78be43db2dbde3547a7265d0b', ''),
(37, 'Amrani', 'Zacharie', 'amrani.zacharie', '4742bac858a212b8dc7b0e182d75ce40', 'b0503f8ee4f6b73d4dd768f6e553f0c7');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `note` char(4) CHARACTER SET latin1 DEFAULT NULL,
  `dateN` date DEFAULT NULL,
  `idE` int(11) NOT NULL,
  `idC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `notes`
--

INSERT INTO `notes` (`note`, `dateN`, `idE`, `idC`) VALUES
('rr', NULL, 1, 4),
('rr', NULL, 1, 7),
('rr', '2017-03-13', 3, 4),
('vv', NULL, 4, 4),
('rr', NULL, 4, 5),
('rr', '2017-03-09', 4, 6),
('vv', NULL, 4, 7),
('rr', '2017-03-09', 6, 8),
('vv', NULL, 12, 10),
('rr', NULL, 12, 11),
('vv', NULL, 13, 12),
('vv', NULL, 20, 10),
('vv', NULL, 20, 11),
('vv', NULL, 20, 12),
('vv', NULL, 27, 7),
('v', NULL, 27, 8),
('vv', NULL, 27, 9),
('rr', NULL, 28, 7),
('rr', NULL, 28, 8),
('rr', NULL, 28, 9),
('rr', NULL, 29, 7),
('vv', NULL, 29, 8),
('r', NULL, 29, 9),
('rr', NULL, 30, 7),
('r', NULL, 30, 8),
('v', NULL, 30, 9),
('v', NULL, 31, 7),
('rr', NULL, 31, 8),
('vv', NULL, 31, 9),
('rr', NULL, 32, 7),
('rr', NULL, 32, 8),
('rr', NULL, 32, 9),
('v', NULL, 33, 7),
('r', NULL, 33, 8),
('vv', NULL, 33, 9),
('rr', NULL, 34, 7),
('rr', NULL, 34, 8),
('rr', NULL, 34, 9),
('vv', NULL, 35, 7),
('vv', NULL, 35, 8),
('vv', NULL, 35, 9);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `idP` int(11) NOT NULL,
  `nom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `nomEtablissement` char(120) CHARACTER SET latin1 DEFAULT NULL,
  `login` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `mdp` char(200) CHARACTER SET latin1 DEFAULT NULL,
  `sid` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `prof`
--

INSERT INTO `prof` (`idP`, `nom`, `prenom`, `nomEtablissement`, `login`, `mdp`, `sid`) VALUES
(1, 'Leuleu', 'Sylvain', 'IUT Calais', 'leuleu.sylvain', 'ab4f63f9ac65152575886860dde480a1', '7bca6cc64e66ae7f19217b59dac6a624'),
(2, 'Delattre', 'Thomas', 'IUT Calais', 'delattre.thomas', 'ab4f63f9ac65152575886860dde480a1', 'dc2f1fd204f5e6c0fadfc074efd7693f');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`idC`,`idE`),
  ADD KEY `FK_appartenir_idE` (`idE`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`idClasse`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `FK_COMPETENCE_idP` (`idP`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`idClasse`,`idCours`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `FK_COURS_idP` (`idP`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idE`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`idE`,`idC`),
  ADD KEY `FK_NOTES_idC` (`idC`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`idP`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `idClasse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_appartenir_idE` FOREIGN KEY (`idE`) REFERENCES `etudiant` (`idE`);

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `FK_COMPETENCE_idP` FOREIGN KEY (`idP`) REFERENCES `prof` (`idP`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FK_COURS_idP` FOREIGN KEY (`idP`) REFERENCES `prof` (`idP`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_NOTES_idC` FOREIGN KEY (`idC`) REFERENCES `competence` (`idC`),
  ADD CONSTRAINT `FK_NOTES_idE` FOREIGN KEY (`idE`) REFERENCES `etudiant` (`idE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
