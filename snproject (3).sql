-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 21 Mars 2017 à 15:27
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
(5, 19);

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
(2, 4),
(2, 5);

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
(4, 'Test', 1),
(2, 'TD1 année 2', 2),
(5, 'Classe 1', 1),
(6, 'Classe 2', 1),
(7, 'Classe 3', 1);

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
(2, 'Test comp', 1, 3);

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
(4, 4),
(5, 3),
(5, 4),
(5, 5),
(6, 3),
(7, 4),
(7, 5);

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
(3, 'Cours 1', '', 1),
(4, 'Cours 2', '', 1),
(5, 'Cours 3', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

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
(15, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas'),
(16, 'Delattre', 'Thomas', 'delattre.thomas', 'delattre.thomas'),
(17, 'Essombe', 'Zacharie', 'essombe.zacharie', 'essombe.zacharie'),
(19, 'Amrani', 'Ayman', 'amrani.ayman', 'amrani.ayman');

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
('vv', NULL, 3, 2),
('rr', '2017-03-13', 3, 4),
('vv', NULL, 4, 2),
('vv', NULL, 4, 4),
('rr', NULL, 4, 5),
('rr', '2017-03-09', 4, 6),
('vv', NULL, 4, 7),
('rr', '2017-03-09', 6, 8),
('vv', NULL, 12, 10),
('rr', NULL, 12, 11),
('vv', NULL, 13, 12);

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
(1, 'Leuleu', 'Sylvain', 'IUT Calais', 'leuleu.sylvain', 'ab4f63f9ac65152575886860dde480a1', 'f6ba06b4f3588584256d67c61539e38e'),
(2, 'Delattre', 'Thomas', 'IUT Calais', 'delattre.thomas', 'ab4f63f9ac65152575886860dde480a1', '235739e8a9d893a8e08082c5d2c926ad');

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
  MODIFY `idClasse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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
