-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 07 Mars 2017 à 10:53
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

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `idC` int(11) NOT NULL,
  `idE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`idC`, `idE`) VALUES
(1, 1),
(2, 27),
(1, 28),
(1, 29),
(1, 30),
(3, 31),
(1, 32);

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `idC` int(11) NOT NULL,
  `libelle` char(200) DEFAULT NULL,
  `idP` int(11) DEFAULT NULL,
  `coef` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `competence`
--

INSERT INTO `competence` (`idC`, `libelle`, `idP`, `coef`) VALUES
(1, 'Micro blog', 1, 2),
(2, 'Hearthstone', 1, 3),
(3, 'Voler', 1, 10),
(4, 'Se téléporter', 1, 6),
(5, 'pre', 1, 5),
(6, 'POO', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idC` int(11) NOT NULL,
  `libelle` char(200) DEFAULT NULL,
  `description` char(200) DEFAULT NULL,
  `idP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`idC`, `libelle`, `description`, `idP`) VALUES
(1, 'PHP', 'Elaboration d\'un micro blog en php', 1),
(2, 'Java', 'Schmup', 1),
(3, 'Java', 'Java', 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idE` int(11) NOT NULL,
  `nom` char(60) DEFAULT NULL,
  `prenom` char(60) DEFAULT NULL,
  `login` char(80) DEFAULT NULL,
  `mdp` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`idE`, `nom`, `prenom`, `login`, `mdp`) VALUES
(26, 'Thomas', 'Thomas', NULL, NULL),
(27, 'Amrani', 'Ayman', NULL, NULL),
(28, 'Essombe', 'Zacharie', NULL, NULL),
(29, 'Mathias', 'Anais', 'Mathias.Anais', '123456'),
(30, 'Hmain', 'Ismael', 'hmain.ismael', '123456'),
(31, 'Leuleu', 'Sylvain', 'leuleu.sylvain', '123456'),
(32, 'ayman', 'Admin', 'ayman.admin', 'ayman.admin');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `note` char(4) DEFAULT NULL,
  `dateN` date DEFAULT NULL,
  `idE` int(11) NOT NULL,
  `idC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notes`
--

INSERT INTO `notes` (`note`, `dateN`, `idE`, `idC`) VALUES
('vv', '2017-03-08', 1, 1),
('vv', '2017-03-01', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `idP` int(11) NOT NULL,
  `nom` char(60) DEFAULT NULL,
  `prenom` char(60) DEFAULT NULL,
  `nomEtablissement` char(120) DEFAULT NULL,
  `login` char(60) DEFAULT NULL,
  `mdp` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prof`
--

INSERT INTO `prof` (`idP`, `nom`, `prenom`, `nomEtablissement`, `login`, `mdp`) VALUES
(1, 'Essombe', 'Zacharie', 'ST JO', NULL, NULL);

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
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
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
