-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 08 Mars 2017 à 15:19
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

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

DROP TABLE IF EXISTS `appartenir`;
CREATE TABLE `appartenir` (
  `idC` int(11) NOT NULL,
  `idE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`idC`, `idE`) VALUES
(2, 1),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `appliquer`
--

DROP TABLE IF EXISTS `appliquer`;
CREATE TABLE `appliquer` (
  `idComp` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
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
(1, 'Verbes irrÃ©guliers', 1, 1),
(2, 'fefs', 1, 263),
(3, 'expression', 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
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
(2, 'Anglais', 'Speak English very well', 1),
(3, 'Francais', 'Commentaire de texte', 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE `etudiant` (
  `idE` int(11) NOT NULL,
  `nom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `login` char(80) CHARACTER SET latin1 DEFAULT NULL,
  `mdp` char(60) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`idE`, `nom`, `prenom`, `login`, `mdp`) VALUES
(1, 'Essombe', 'Zacharie', 'essombe.zacharie', 'essombe.zacharie'),
(3, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas'),
(4, 'Ayman', 'Amrani', 'ayman.amrani', 'ayman.amrani');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
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
('rr', NULL, 1, 1),
('vv', NULL, 3, 1),
('vv', NULL, 3, 2),
('vv', NULL, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

DROP TABLE IF EXISTS `prof`;
CREATE TABLE `prof` (
  `idP` int(11) NOT NULL,
  `nom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `prenom` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `nomEtablissement` char(120) CHARACTER SET latin1 DEFAULT NULL,
  `login` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `mdp` char(15) CHARACTER SET latin1 DEFAULT NULL,
  `sid` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `prof`
--

INSERT INTO `prof` (`idP`, `nom`, `prenom`, `nomEtablissement`, `login`, `mdp`, `sid`) VALUES
(1, 'Leuleu', 'Sylvain', 'IUT Calais', NULL, NULL, '');

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
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `FK_COMPETENCE_idP` (`idP`);

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
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_appartenir_idC` FOREIGN KEY (`idC`) REFERENCES `cours` (`idC`),
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
