-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 09 Février 2017 à 09:52
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `aeroportgpdim`
--
CREATE DATABASE IF NOT EXISTS `aeroportgpdim` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aeroportgpdim`;

-- --------------------------------------------------------

--
-- Structure de la table `aeroport`
--

CREATE TABLE `aeroport` (
  `idA` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idU` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE `vols` (
  `idV` int(11) NOT NULL,
  `heureDepart` date NOT NULL,
  `heureArrivee` date NOT NULL,
  `destination` varchar(100) NOT NULL,
  `jour` date NOT NULL,
  `idA` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `aeroport`
--
ALTER TABLE `aeroport`
  ADD PRIMARY KEY (`idA`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`idU`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `aeroport`
--
ALTER TABLE `aeroport`
  MODIFY `idA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idU` int(11) NOT NULL AUTO_INCREMENT;--
-- Base de données :  `blog_theo`
--
CREATE DATABASE IF NOT EXISTS `blog_theo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog_theo`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `contenu` text NOT NULL,
  `date` int(150) DEFAULT NULL,
  `image` varchar(120) DEFAULT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `image`, `id_region`) VALUES
(31, 'Test image final', 'Nunc lorem orci, placerat vel euismod vel, convallis at lacus. Nam velit magna, maximus in enim sed, aliquet rutrum lorem. Fusce hendrerit velit ut diam fringilla ultrices. Cras ullamcorper finibus purus, id pretium dolor malesuada sit amet. Donec eleifend magna eget placerat suscipit. Praesent feugiat id lacus a tincidunt. Integer erat sem, faucibus vel nunc a, congue cursus diam. Donec finibus ante urna, eu convallis arcu interdum in. Proin placerat arcu id elit posuere, a tincidunt urna suscipit. Nulla maximus diam sit amet erat iaculis, id ullamcorper ipsum vehicula. Ut euismod posuere ullamcorper. Sed viverra luctus felis, vitae blandit nulla porta non. In ut purus a neque pulvinar porttitor a a felis. Proin pulvinar ullamcorper vulputate.', 1480623394, 'img/img19.jpg', 21),
(17, 'Test Alsace', 'Vivamus vel vestibulum ligula, nec pellentesque magna. Sed eu velit id leo suscipit mollis et quis enim. In mauris nunc, porttitor in pretium tempor, fermentum ac neque. Proin ac lacinia tortor. Morbi condimentum porttitor ante, mattis molestie ligula porta imperdiet. Proin eget quam pretium, ornare odio eget, pulvinar nibh. Fusce metus tortor, dapibus eu efficitur sed, sodales vitae mauris. Praesent odio velit, consectetur sed purus quis, congue scelerisque dui. Suspendisse efficitur mi quis malesuada lobortis. Mauris non velit eget lacus pellentesque bibendum. Ut odio tortor, hendrerit eget malesuada in, imperdiet vel enim. Sed laoreet felis in quam lacinia scelerisque. Quisque quis magna imperdiet, pretium nisi ut, accumsan velit. Nullam volutpat mi non lacus gravida, fringilla malesuada sem dapibus. Duis sed mattis velit. In venenatis arcu nec purus semper tempor.\r\n\r\n', 1480593059, NULL, 7),
(16, 'Test d\'insertion', 'Nunc lorem orci, placerat vel euismod vel, convallis at lacus. Nam velit magna, maximus in enim sed, aliquet rutrum lorem. Fusce hendrerit velit ut diam fringilla ultrices. Cras ullamcorper finibus purus, id pretium dolor malesuada sit amet. Donec eleifend magna eget placerat suscipit. Praesent feugiat id lacus a tincidunt. Integer erat sem, faucibus vel nunc a, congue cursus diam. Donec finibus ante urna, eu convallis arcu interdum in. Proin placerat arcu id elit posuere, a tincidunt urna suscipit. Nulla maximus diam sit amet erat iaculis, id ullamcorper ipsum vehicula. Ut euismod posuere ullamcorper. Sed viverra luctus felis, vitae blandit nulla porta non. In ut purus a neque pulvinar porttitor a a felis. Proin pulvinar ullamcorper vulputate.\r\n\r\nAliquam blandit mauris eget justo venenatis, id suscipit mi semper. Donec tempus gravida justo et fringilla. Praesent posuere elementum urna, vitae vehicula nisi mollis in. Suspendisse at ante imperdiet, euismod eros ultricies, vehicula est. Nulla tempor rutrum augue, et aliquet diam luctus non. Nunc id risus et est hendrerit interdum. Nullam sagittis condimentum congue. Suspendisse eleifend arcu eu nisl condimentum eleifend. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nSed tincidunt neque et eros volutpat faucibus. Vestibulum enim lacus, cursus a lobortis sed, consequat quis lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed quis scelerisque metus. Phasellus pellentesque blandit enim, eu fringilla nisi dignissim non. Fusce lacinia fermentum ex, vel pharetra velit. Fusce faucibus in justo vel laoreet. Aliquam sit amet augue suscipit, tristique urna non, ullamcorper metus.', 1480587836, NULL, 21),
(39, 'tset sans img 3', 'eza', 1480687568, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`nom`, `prenom`, `password`) VALUES
('Delattre', 'Theo', '$2y$10$9WMIh.VihzMpF.1cUQULwedq0odDA9mUF0syqimv4G7kziHPf9nNS');

-- --------------------------------------------------------

--
-- Structure de la table `incontournables`
--

CREATE TABLE `incontournables` (
  `id` int(11) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `contenu` text NOT NULL,
  `date` int(150) NOT NULL,
  `image` varchar(120) DEFAULT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `incontournables`
--

INSERT INTO `incontournables` (`id`, `titre`, `contenu`, `date`, `image`, `id_region`) VALUES
(1, 'Incontournable Nord Pas de Calais', 'test', 156631561, '', 21),
(3, 'Test image à l\'envers', 'g', 1484571876, 'img/imgIncontournable2.jpg', 7),
(4, 'a', 'a', 1484577537, NULL, 7),
(5, 'a', 'a', 1484577558, NULL, 7),
(6, 'b', 'b', 1484577623, NULL, 7),
(7, 'zefg', 'ezf', 1484577639, NULL, 7),
(8, 'Ã©Ã ', 'Ã© Ã  ÃªÃª Ã®', 1484578806, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id_region`, `libelle`) VALUES
(21, 'Nord-Pas-De-Calais'),
(1, 'Picardie'),
(2, 'Haute-Normandie'),
(3, 'Basse-Normandie'),
(5, 'Bretagne'),
(8, 'Pays de la Loire'),
(9, 'Centre'),
(4, 'Iles-de-France'),
(6, 'Champagne-Ardenne'),
(17, 'Lorraine'),
(7, 'Alsace'),
(10, 'Bourgogne'),
(22, 'Franche-Comté'),
(18, 'Poitou-Charentes'),
(19, 'Limousin'),
(20, 'Auvergne'),
(11, 'Rhône-Alpes'),
(12, 'Aquitaine'),
(15, 'Midi-Pyrénées'),
(16, 'Languedoc-Roussillon'),
(13, 'Provence-Alpes-Côte d\'Azur'),
(14, 'Corse');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `incontournables`
--
ALTER TABLE `incontournables`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `incontournables`
--
ALTER TABLE `incontournables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;--
-- Base de données :  `concrete5`
--
CREATE DATABASE IF NOT EXISTS `concrete5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `concrete5`;

-- --------------------------------------------------------

--
-- Structure de la table `arealayoutcolumns`
--

CREATE TABLE `arealayoutcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `arealayoutcolumns`
--

INSERT INTO `arealayoutcolumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 2, 1),
(2, 1, 1, 3, 2),
(3, 1, 2, 4, 3),
(4, 2, 0, 5, 4),
(5, 2, 1, 6, 5),
(6, 3, 0, 7, 6),
(7, 3, 1, 8, 7),
(8, 3, 2, 9, 8);

-- --------------------------------------------------------

--
-- Structure de la table `arealayoutcustomcolumns`
--

CREATE TABLE `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `arealayoutpresets`
--

CREATE TABLE `arealayoutpresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `arealayouts`
--

CREATE TABLE `arealayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `arealayouts`
--

INSERT INTO `arealayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 0, 0, 0, 12, 1),
(2, 0, 0, 0, 12, 1),
(3, 0, 0, 0, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `arealayoutsusingpresets`
--

CREATE TABLE `arealayoutsusingpresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `arealayoutthemegridcolumns`
--

CREATE TABLE `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT '0',
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `arealayoutthemegridcolumns`
--

INSERT INTO `arealayoutthemegridcolumns` (`arLayoutColumnID`, `arLayoutColumnSpan`, `arLayoutColumnOffset`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0),
(5, 8, 0),
(6, 4, 0),
(7, 4, 0),
(8, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionassignments`
--

CREATE TABLE `areapermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionblocktypeaccesslist`
--

CREATE TABLE `areapermissionblocktypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `areapermissionblocktypeaccesslistcustom`
--

CREATE TABLE `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `areas`
--

CREATE TABLE `areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `areas`
--

INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 138, 'Main', 0, 0, 0, 0),
(2, 138, 'Main : 1', 0, 0, 0, 1),
(3, 138, 'Main : 2', 0, 0, 0, 1),
(4, 138, 'Main : 3', 0, 0, 0, 1),
(5, 138, 'Main : 4', 0, 0, 0, 1),
(6, 138, 'Main : 5', 0, 0, 0, 1),
(7, 138, 'Main : 6', 0, 0, 0, 1),
(8, 138, 'Main : 7', 0, 0, 0, 1),
(9, 138, 'Main : 8', 0, 0, 0, 1),
(10, 139, 'Main', 0, 0, 0, 0),
(11, 152, 'Main', 0, 0, 0, 0),
(12, 153, 'Main', 0, 0, 0, 0),
(13, 154, 'Main', 0, 0, 0, 0),
(14, 1, 'Header Site Title', 0, 0, 1, 0),
(15, 155, 'Main', 0, 0, 0, 0),
(16, 1, 'Header Navigation', 0, 0, 1, 0),
(17, 1, 'Main', 0, 0, 0, 0),
(18, 1, 'Page Footer', 0, 0, 0, 0),
(19, 156, 'Main', 0, 0, 0, 0),
(20, 1, 'Footer Legal', 0, 0, 1, 0),
(21, 157, 'Main', 0, 0, 0, 0),
(22, 1, 'Footer Navigation', 0, 0, 1, 0),
(23, 158, 'Main', 0, 0, 0, 0),
(24, 1, 'Footer Contact', 0, 0, 1, 0),
(25, 159, 'Main', 0, 0, 0, 0),
(26, 1, 'Header Search', 0, 0, 1, 0),
(27, 160, 'Main', 0, 0, 0, 0),
(28, 1, 'Footer Site Title', 0, 0, 1, 0),
(29, 161, 'Main', 0, 0, 0, 0),
(30, 1, 'Footer Social', 0, 0, 1, 0),
(31, 1, 'Contenu', 0, 0, 0, 0),
(32, 1, 'Menu', 0, 0, 0, 0),
(33, 1, 'Diaporama', 0, 0, 0, 0),
(34, 1, 'Col1', 0, 0, 0, 0),
(35, 1, 'Col2', 0, 0, 0, 0),
(36, 1, 'Col3', 0, 0, 0, 0),
(37, 1, 'CTA', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ataddress`
--

CREATE TABLE `ataddress` (
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ataddresssettings`
--

CREATE TABLE `ataddresssettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atboolean`
--

CREATE TABLE `atboolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atboolean`
--

INSERT INTO `atboolean` (`value`, `avID`) VALUES
(1, 9),
(1, 16),
(1, 18),
(1, 24),
(1, 25),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 43),
(1, 44),
(1, 51),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 109),
(1, 118),
(0, 119),
(1, 125),
(1, 126);

-- --------------------------------------------------------

--
-- Structure de la table `atbooleansettings`
--

CREATE TABLE `atbooleansettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atbooleansettings`
--

INSERT INTO `atbooleansettings` (`akCheckedByDefault`, `akID`) VALUES
(0, 5),
(0, 7),
(0, 8),
(0, 11),
(0, 12),
(0, 13),
(1, 14),
(1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `atdatetime`
--

CREATE TABLE `atdatetime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atdatetimesettings`
--

CREATE TABLE `atdatetimesettings` (
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atdefault`
--

CREATE TABLE `atdefault` (
  `value` longtext COLLATE utf8_unicode_ci,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atdefault`
--

INSERT INTO `atdefault` (`value`, `avID`) VALUES
('fa fa-th-large', 1),
('pages, add page, delete page, copy, move, alias', 2),
('pages, add page, delete page, copy, move, alias', 3),
('pages, add page, delete page, copy, move, alias, bulk', 4),
('find page, search page, search, find, pages, sitemap', 5),
('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 6),
('file, file attributes, title, attribute, description, rename', 7),
('files, category, categories', 8),
('new file set', 10),
('users, groups, people, find, delete user, remove user, change password, password', 11),
('find, search, people, delete user, remove user, change password, password', 12),
('user, group, people, permissions, expire, badges', 13),
('user attributes, user data, gather data, registration data', 14),
('new user, create', 15),
('new user group, new group, group, create', 17),
('group set', 19),
('community, points, karma', 20),
('action, community actions', 21),
('forms, log, error, email, mysql, exception, survey', 22),
('forms, questions, response, data', 23),
('questions, quiz, response', 26),
('forms, log, error, email, mysql, exception, survey, history', 27),
('new theme, theme, active theme, change theme, template, css', 28),
('page types', 29),
('page attributes, custom', 38),
('single, page, custom, application', 39),
('atom, rss, feed, syndication', 40),
('icon-bullhorn', 41),
('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 42),
('edit stacks, view stacks, all stacks', 45),
('block, refresh, custom', 46),
('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', 47),
('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', 48),
('update, upgrade', 49),
('concrete5.org, my account, marketplace', 50),
('buy theme, new theme, marketplace, template', 52),
('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', 53),
('dashboard, configuration', 54),
('website name, title', 55),
('accessibility, easy mode', 56),
('sharing, facebook, twitter', 57),
('logo, favicon, iphone, icon, bookmark', 58),
('tinymce, content block, fonts, editor, content, overlay', 59),
('translate, translation, internationalization, multilingual', 60),
('timezone, profile, locale', 61),
('site attributes', 62),
('multilingual, localization, internationalization, i18n', 71),
('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', 72),
('bulk, seo, change keywords, engine, optimization, search', 73),
('traffic, statistics, google analytics, quant, pageviews, hits', 74),
('pretty, slug', 75),
('configure search, site search, search option', 76),
('file options, file manager, upload, modify', 77),
('security, files, media, extension, manager, upload', 78),
('images, picture, responsive, retina', 79),
('uploading, upload, images, image, resizing, manager', 80),
('security, alternate storage, hide files', 81),
('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', 82),
('cache option, turn off cache, no cache, page cache, caching', 83),
('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', 84),
('queries, database, mysql', 85),
('editors, hide site, offline, private, public, access', 86),
('security, actions, administrator, admin, package, marketplace, search', 87),
('security, lock ip, lock out, block ip, address, restrict, access', 88),
('security, registration', 89),
('antispam, block spam, security', 90),
('lock site, under construction, hide, hidden', 91),
('profile, login, redirect, specific, dashboard, administrators', 92),
('member profile, member page, community, forums, social, avatar', 93),
('signup, new user, community, public registration, public, registration', 94),
('auth, authentication, types, oauth, facebook, login, registration', 95),
('global, password, reset, change password, force, sign out', 96),
('smtp, mail settings', 97),
('email server, mail settings, mail configuration, external, internal', 98),
('test smtp, test mail', 99),
('email server, mail settings, mail configuration, private message, message system, import, email, message', 100),
('conversations', 101),
('conversations', 102),
('conversations ratings, ratings, community, community points', 103),
('conversations bad words, banned words, banned, bad words, bad, words, list', 104),
('attribute configuration', 105),
('attributes, sets', 106),
('attributes, types', 107),
('topics, tags, taxonomy', 108),
('overrides, system info, debug, support, help', 110),
('errors, exceptions, develop, support, help', 111),
('email, logging, logs, smtp, pop, errors, mysql, log', 112),
('network, proxy server', 113),
('database, entities, doctrine, orm', 114),
('export, backup, database, sql, mysql, encryption, restore', 115),
('upgrade, new version, update', 116),
('fa fa-trash-o', 120),
('fa fa-briefcase', 121),
('fa fa-edit', 122),
('fa fa-th', 123);

-- --------------------------------------------------------

--
-- Structure de la table `atemptysettings`
--

CREATE TABLE `atemptysettings` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atemptysettings`
--

INSERT INTO `atemptysettings` (`akID`) VALUES
(4),
(16),
(17),
(18),
(19);

-- --------------------------------------------------------

--
-- Structure de la table `atexpress`
--

CREATE TABLE `atexpress` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atexpressselectedentries`
--

CREATE TABLE `atexpressselectedentries` (
  `avID` int(10) UNSIGNED NOT NULL,
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atexpresssettings`
--

CREATE TABLE `atexpresssettings` (
  `exEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atfile`
--

CREATE TABLE `atfile` (
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atfilesettings`
--

CREATE TABLE `atfilesettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atnumber`
--

CREATE TABLE `atnumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atnumber`
--

INSERT INTO `atnumber` (`value`, `avID`) VALUES
('2.0000', 117),
('1.0000', 124),
('200.0000', 127),
('100.0000', 128);

-- --------------------------------------------------------

--
-- Structure de la table `atselect`
--

CREATE TABLE `atselect` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atselectedsociallinks`
--

CREATE TABLE `atselectedsociallinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atselectedtopics`
--

CREATE TABLE `atselectedtopics` (
  `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atselectoptionlists`
--

CREATE TABLE `atselectoptionlists` (
  `avSelectOptionListID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atselectoptionlists`
--

INSERT INTO `atselectoptionlists` (`avSelectOptionListID`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `atselectoptions`
--

CREATE TABLE `atselectoptions` (
  `avSelectOptionID` int(10) UNSIGNED NOT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atselectoptionsselected`
--

CREATE TABLE `atselectoptionsselected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `avSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `atselectsettings`
--

CREATE TABLE `atselectsettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atselectsettings`
--

INSERT INTO `atselectsettings` (`akSelectAllowMultipleValues`, `akSelectAllowOtherValues`, `akSelectOptionDisplayOrder`, `avSelectOptionListID`, `akID`) VALUES
(1, 1, 'display_asc', 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `atsociallinks`
--

CREATE TABLE `atsociallinks` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attextareasettings`
--

CREATE TABLE `attextareasettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attextareasettings`
--

INSERT INTO `attextareasettings` (`akTextareaDisplayMode`, `akID`) VALUES
('', 2),
('', 3),
('', 6),
('', 9);

-- --------------------------------------------------------

--
-- Structure de la table `attextsettings`
--

CREATE TABLE `attextsettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attextsettings`
--

INSERT INTO `attextsettings` (`akTextPlaceholder`, `akID`) VALUES
('', 1);

-- --------------------------------------------------------

--
-- Structure de la table `attopic`
--

CREATE TABLE `attopic` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attopicsettings`
--

CREATE TABLE `attopicsettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attributekeycategories`
--

CREATE TABLE `attributekeycategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributekeycategories`
--

INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL),
(4, 'site', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `attributekeys`
--

CREATE TABLE `attributekeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributekeys`
--

INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsInternal`, `akIsSearchableIndexed`, `atID`, `akCategoryID`, `pkgID`, `akCategory`) VALUES
(1, 'meta_title', 'Meta Title', 1, 0, 0, 1, 1, NULL, 'pagekey'),
(2, 'meta_description', 'Meta Description', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(3, 'meta_keywords', 'Meta Keywords', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(4, 'desktop_priority', 'Desktop Priority', 1, 1, 0, 6, 1, NULL, 'pagekey'),
(5, 'is_desktop', 'Is Desktop', 1, 1, 0, 3, 1, NULL, 'pagekey'),
(6, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 2, 1, NULL, 'pagekey'),
(7, 'exclude_nav', 'Exclude From Nav', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(8, 'exclude_page_list', 'Exclude From Page List', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(9, 'header_extra_content', 'Header Extra Content', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(10, 'tags', 'Tags', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(11, 'is_featured', 'Is Featured', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(12, 'exclude_search_index', 'Exclude From Search Index', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(13, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(14, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(15, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(16, 'width', 'Width', 1, 0, 0, 6, 3, NULL, 'filekey'),
(17, 'height', 'Height', 1, 0, 0, 6, 3, NULL, 'filekey'),
(18, 'account_profile_links', 'Personal Links', 1, 0, 0, 14, 2, NULL, 'userkey'),
(19, 'duration', 'Duration', 1, 0, 0, 6, 3, NULL, 'filekey');

-- --------------------------------------------------------

--
-- Structure de la table `attributesetkeys`
--

CREATE TABLE `attributesetkeys` (
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributesetkeys`
--

INSERT INTO `attributesetkeys` (`asDisplayOrder`, `akID`, `asID`) VALUES
(0, 1, 1),
(1, 2, 1),
(1, 7, 2),
(2, 8, 2),
(2, 9, 1),
(4, 10, 2),
(0, 11, 2),
(3, 12, 2),
(3, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `attributesets`
--

CREATE TABLE `attributesets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributesets`
--

INSERT INTO `attributesets` (`asID`, `asHandle`, `asName`, `asDisplayOrder`, `asIsLocked`, `akCategoryID`, `pkgID`) VALUES
(1, 'seo', 'SEO', 0, 0, 1, NULL),
(2, 'navigation', 'Navigation and Indexing', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `attributetypecategories`
--

CREATE TABLE `attributetypecategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `atID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributetypecategories`
--

INSERT INTO `attributetypecategories` (`akCategoryID`, `atID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 13),
(2, 14),
(2, 15),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 15),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 13),
(4, 15);

-- --------------------------------------------------------

--
-- Structure de la table `attributetypes`
--

CREATE TABLE `attributetypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributetypes`
--

INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', NULL),
(2, 'textarea', 'Text Area', NULL),
(3, 'boolean', 'Checkbox', NULL),
(4, 'date_time', 'Date/Time', NULL),
(5, 'image_file', 'Image/File', NULL),
(6, 'number', 'Number', NULL),
(7, 'select', 'Select', NULL),
(8, 'address', 'Address', NULL),
(9, 'telephone', 'Phone Number', NULL),
(10, 'url', 'URL', NULL),
(11, 'email', 'Email', NULL),
(12, 'rating', 'Rating', NULL),
(13, 'topics', 'Topics', NULL),
(14, 'social_links', 'Social Links', NULL),
(15, 'express', 'Express Entity', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `attributevalues`
--

CREATE TABLE `attributevalues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `attributevalues`
--

INSERT INTO `attributevalues` (`avID`, `akID`) VALUES
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(17, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(38, 3),
(39, 3),
(40, 3),
(42, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 4),
(124, 4),
(118, 5),
(125, 5),
(1, 6),
(41, 6),
(120, 6),
(121, 6),
(122, 6),
(123, 6),
(9, 7),
(16, 7),
(18, 7),
(24, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(43, 7),
(51, 7),
(63, 7),
(65, 7),
(66, 7),
(67, 7),
(68, 7),
(69, 7),
(70, 7),
(119, 7),
(126, 7),
(25, 12),
(44, 12),
(64, 12),
(109, 12),
(127, 16),
(128, 17);

-- --------------------------------------------------------

--
-- Structure de la table `authenticationtypes`
--

CREATE TABLE `authenticationtypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `authenticationtypes`
--

INSERT INTO `authenticationtypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `authtypeconcretecookiemap`
--

CREATE TABLE `authtypeconcretecookiemap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bannedwords`
--

CREATE TABLE `bannedwords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bannedwords`
--

INSERT INTO `bannedwords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Structure de la table `basicworkflowpermissionassignments`
--

CREATE TABLE `basicworkflowpermissionassignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `basicworkflowprogressdata`
--

CREATE TABLE `basicworkflowprogressdata` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blockfeatureassignments`
--

CREATE TABLE `blockfeatureassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blockpermissionassignments`
--

CREATE TABLE `blockpermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blocks`
--

CREATE TABLE `blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `blocks`
--

INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2017-02-01 13:57:19', '2017-02-01 13:57:19', NULL, '0', 6, 1, NULL),
(2, '', '2017-02-01 13:57:19', '2017-02-01 13:57:19', NULL, '0', 1, 1, NULL),
(3, '', '2017-02-01 13:57:20', '2017-02-01 13:57:20', NULL, '0', 11, 1, NULL),
(4, '', '2017-02-01 13:57:20', '2017-02-01 13:57:20', NULL, '0', 9, 1, NULL),
(5, '', '2017-02-01 13:57:20', '2017-02-01 13:57:20', NULL, '0', 8, 1, NULL),
(6, '', '2017-02-01 13:57:21', '2017-02-01 13:57:21', NULL, '0', 1, 1, NULL),
(7, '', '2017-02-01 13:57:21', '2017-02-01 13:57:21', NULL, '0', 36, 1, NULL),
(8, '', '2017-02-01 13:57:21', '2017-02-01 13:57:21', NULL, '0', 10, 1, NULL),
(9, '', '2017-02-01 13:57:22', '2017-02-01 13:57:22', NULL, '0', 1, 1, NULL),
(10, '', '2017-02-01 13:57:22', '2017-02-01 13:57:22', NULL, '0', 7, 1, NULL),
(11, '', '2017-02-01 13:57:23', '2017-02-01 13:57:23', NULL, '0', 7, 1, NULL),
(12, '', '2017-02-01 13:57:23', '2017-02-01 13:57:23', NULL, '0', 7, 1, NULL),
(13, '', '2017-02-01 13:57:23', '2017-02-01 13:57:23', NULL, '0', 36, 1, NULL),
(14, '', '2017-02-01 13:57:24', '2017-02-01 13:57:24', NULL, '0', 12, 1, NULL),
(15, '', '2017-02-01 13:57:31', '2017-02-01 13:57:31', NULL, '0', 12, 1, NULL),
(16, '', '2017-02-01 13:57:36', '2017-02-01 13:57:36', NULL, '0', 2, 1, NULL),
(18, '', '2017-02-01 18:15:16', '2017-02-01 18:17:08', NULL, '0', 14, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMjoiPHA+Jm5ic3A7PC9wPg0KDQo8cD4mbmJzcDs8L3A+DQoiO30=');

-- --------------------------------------------------------

--
-- Structure de la table `blocktypepermissionblocktypeaccesslist`
--

CREATE TABLE `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blocktypepermissionblocktypeaccesslistcustom`
--

CREATE TABLE `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blocktypes`
--

CREATE TABLE `blocktypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `blocktypes`
--

INSERT INTO `blocktypes` (`btIgnorePageThemeGridFrameworkContainer`, `btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineEdit`, `btSupportsInlineAdd`, `btDisplayOrder`, `btInterfaceHeight`, `btInterfaceWidth`, `pkgID`) VALUES
(0, 1, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 400, 400, 0),
(0, 2, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 3, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 4, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 5, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 6, 'desktop_app_status', 'concrete5 Status Messages', 'Displays alerts about your concrete5 site and package updates.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 7, 'desktop_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 8, 'desktop_site_activity', 'Site Activity', 'Displays a graph of recent activity on your site.', 0, 0, 0, 0, 0, 0, 560, 450, 0),
(0, 9, 'desktop_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 0, 0, 0, 0, 100, 300, 0),
(0, 10, 'desktop_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 0, 0, 0, 0, 100, 300, 0),
(0, 11, 'desktop_latest_form', 'Latest Form', 'Shows the latest form submission.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 12, 'desktop_waiting_for_me', 'Waiting for Me', 'Displays workflow actions waiting for you.', 0, 0, 0, 0, 0, 0, 560, 450, 0),
(0, 13, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 0, 350, 800, 0),
(0, 14, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 0, 465, 600, 0),
(0, 15, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 0, 450, 400, 0),
(0, 16, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 0, 175, 370, 0),
(0, 17, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 0, 320, 300, 0),
(0, 18, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 0, 365, 500, 0),
(0, 19, 'express_entry_list', 'Express Entry List', 'Add a searchable Express entry list to a page.', 0, 0, 0, 0, 0, 0, 400, 640, 0),
(0, 20, 'express_entry_detail', 'Express Entry Detail', 'Add an Express entry detail display to a page.', 0, 0, 0, 0, 0, 0, 400, 640, 0),
(0, 21, 'express_form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 0, 480, 640, 0),
(0, 22, 'form', 'Legacy Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 0, 430, 420, 0),
(0, 23, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 0, 500, 470, 0),
(0, 24, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 0, 520, 400, 0),
(0, 25, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 26, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 27, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 0, 560, 450, 0),
(0, 28, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 29, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 0, 460, 400, 0),
(1, 30, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 0, 500, 600, 0),
(1, 31, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 0, 400, 400, 0),
(0, 32, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 0, 550, 400, 0),
(0, 33, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 0, 465, 600, 0),
(0, 34, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 0, 400, 430, 0),
(0, 35, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 350, 800, 0),
(0, 36, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 0, 550, 400, 0),
(0, 37, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 0, 420, 400, 0),
(1, 38, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 0, 550, 600, 0),
(0, 39, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 0, 400, 420, 0),
(0, 40, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 0, 150, 500, 0),
(0, 41, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 439, 450, 0),
(0, 42, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 0, 270, 320, 0),
(0, 43, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 0, 490, 400, 0);

-- --------------------------------------------------------

--
-- Structure de la table `blocktypesetblocktypes`
--

CREATE TABLE `blocktypesetblocktypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `blocktypesetblocktypes`
--

INSERT INTO `blocktypesetblocktypes` (`btID`, `btsID`, `displayOrder`) VALUES
(14, 1, 0),
(30, 1, 1),
(32, 1, 2),
(17, 1, 3),
(31, 1, 4),
(24, 1, 5),
(13, 2, 0),
(23, 2, 1),
(33, 2, 2),
(35, 2, 3),
(34, 2, 4),
(15, 2, 5),
(41, 2, 6),
(25, 2, 7),
(36, 2, 8),
(40, 2, 9),
(21, 3, 0),
(37, 3, 1),
(16, 3, 2),
(19, 4, 0),
(20, 4, 1),
(39, 5, 0),
(5, 5, 1),
(26, 5, 2),
(27, 5, 3),
(28, 5, 4),
(18, 6, 0),
(38, 6, 1),
(42, 6, 2),
(43, 6, 3),
(29, 6, 4),
(6, 7, 0),
(8, 7, 1),
(9, 7, 2),
(10, 7, 3),
(11, 7, 4),
(12, 7, 5),
(7, 7, 6);

-- --------------------------------------------------------

--
-- Structure de la table `blocktypesets`
--

CREATE TABLE `blocktypesets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `blocktypesets`
--

INSERT INTO `blocktypesets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Express', 'express', 0, 0),
(5, 'Social Networking', 'social', 0, 0),
(6, 'Multimedia', 'multimedia', 0, 0),
(7, 'Desktop', 'core_desktop', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `btcontentfile`
--

CREATE TABLE `btcontentfile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btcontentimage`
--

CREATE TABLE `btcontentimage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `fOnstateID` int(10) UNSIGNED DEFAULT '0',
  `maxWidth` int(10) UNSIGNED DEFAULT '0',
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btcontentlocal`
--

CREATE TABLE `btcontentlocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btcontentlocal`
--

INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
(18, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `btcorearealayout`
--

CREATE TABLE `btcorearealayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btcorearealayout`
--

INSERT INTO `btcorearealayout` (`bID`, `arLayoutID`) VALUES
(2, 1),
(6, 2),
(9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `btcoreconversation`
--

CREATE TABLE `btcoreconversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btcorepagetypecomposercontroloutput`
--

CREATE TABLE `btcorepagetypecomposercontroloutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btcorepagetypecomposercontroloutput`
--

INSERT INTO `btcorepagetypecomposercontroloutput` (`bID`, `ptComposerOutputControlID`) VALUES
(16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `btcorescrapbookdisplay`
--

CREATE TABLE `btcorescrapbookdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btcorestackdisplay`
--

CREATE TABLE `btcorestackdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btdatenavigation`
--

CREATE TABLE `btdatenavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT '0'COMMENT
) ;

-- --------------------------------------------------------

--
-- Structure de la table `btdesktopnewsflowlatest`
--

CREATE TABLE `btdesktopnewsflowlatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btdesktopnewsflowlatest`
--

INSERT INTO `btdesktopnewsflowlatest` (`bID`, `slot`) VALUES
(10, 'A'),
(11, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Structure de la table `btdesktopsiteactivity`
--

CREATE TABLE `btdesktopsiteactivity` (
  `bID` int(10) UNSIGNED NOT NULL,
  `types` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btdesktopsiteactivity`
--

INSERT INTO `btdesktopsiteactivity` (`bID`, `types`) VALUES
(5, '["form_submissions","survey_results","signups","conversation_messages","workflow"]');

-- --------------------------------------------------------

--
-- Structure de la table `btexpressentrydetail`
--

CREATE TABLE `btexpressentrydetail` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) UNSIGNED NOT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btexpressentrylist`
--

CREATE TABLE `btexpressentrylist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detailPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `linkedProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `columns` longtext COLLATE utf8_unicode_ci,
  `displayLimit` int(11) DEFAULT '20',
  `enableSearch` int(11) DEFAULT '0',
  `enableKeywordSearch` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btexpressform`
--

CREATE TABLE `btexpressform` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exFormID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `submitLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `replyToEmailControlID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btexternalform`
--

CREATE TABLE `btexternalform` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btfaq`
--

CREATE TABLE `btfaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btfaqentries`
--

CREATE TABLE `btfaqentries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btfeature`
--

CREATE TABLE `btfeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btform`
--

CREATE TABLE `btform` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btformanswers`
--

CREATE TABLE `btformanswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT '0',
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btformanswerset`
--

CREATE TABLE `btformanswerset` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btformquestions`
--

CREATE TABLE `btformquestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0',
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT '1000',
  `width` int(10) UNSIGNED DEFAULT '50',
  `height` int(10) UNSIGNED DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btgooglemap`
--

CREATE TABLE `btgooglemap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btimageslider`
--

CREATE TABLE `btimageslider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btimagesliderentries`
--

CREATE TABLE `btimagesliderentries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btnavigation`
--

CREATE TABLE `btnavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btnextprevious`
--

CREATE TABLE `btnextprevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btpageattributedisplay`
--

CREATE TABLE `btpageattributedisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btpagelist`
--

CREATE TABLE `btpagelist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `Was enum, display_asc','display_desc','chrono_asc','chrono_desc','alpha_asc','alpha_desc','score_asc','score_desc'`,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btpagetitle`
--

CREATE TABLE `btpagetitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTopic` int(10) UNSIGNED DEFAULT '0',
  `useFilterTag` int(10) UNSIGNED DEFAULT '0',
  `useFilterDate` int(10) UNSIGNED DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btrssdisplay`
--

CREATE TABLE `btrssdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `btrssdisplay`
--

INSERT INTO `btrssdisplay` (`bID`, `title`, `url`, `dateFormat`, `itemsToDisplay`, `showSummary`, `launchInNewWindow`) VALUES
(7, 'Tutorials', 'http://documentation.concrete5.org/rss/tutorials', '', 1, 1, 1),
(13, 'News from concrete5.org', 'http://www.concrete5.org/rss/blog', '', 3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `btsearch`
--

CREATE TABLE `btsearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btsharethispage`
--

CREATE TABLE `btsharethispage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btsociallinks`
--

CREATE TABLE `btsociallinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `slID` int(10) UNSIGNED DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btsurvey`
--

CREATE TABLE `btsurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btsurveyoptions`
--

CREATE TABLE `btsurveyoptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btsurveyresults`
--

CREATE TABLE `btsurveyresults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btswitchlanguage`
--

CREATE TABLE `btswitchlanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bttags`
--

CREATE TABLE `bttags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bttestimonial`
--

CREATE TABLE `bttestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bttopiclist`
--

CREATE TABLE `bttopiclist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btvideo`
--

CREATE TABLE `btvideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT '0',
  `oggfID` int(10) UNSIGNED DEFAULT '0',
  `posterfID` int(10) UNSIGNED DEFAULT '0',
  `mp4fID` int(10) UNSIGNED DEFAULT '0',
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `btyoutube`
--

CREATE TABLE `btyoutube` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionattributekeys`
--

CREATE TABLE `collectionattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionattributekeys`
--

INSERT INTO `collectionattributekeys` (`akID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13);

-- --------------------------------------------------------

--
-- Structure de la table `collectionattributevalues`
--

CREATE TABLE `collectionattributevalues` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionattributevalues`
--

INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 6, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 7, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(16, 1, 7, 16),
(17, 1, 3, 17),
(17, 1, 7, 18),
(19, 1, 3, 19),
(20, 1, 3, 20),
(22, 1, 3, 21),
(25, 1, 3, 22),
(26, 1, 3, 23),
(27, 1, 7, 24),
(27, 1, 12, 25),
(28, 1, 3, 26),
(29, 1, 3, 27),
(31, 1, 3, 28),
(32, 1, 3, 29),
(32, 1, 7, 30),
(34, 1, 7, 31),
(35, 1, 7, 32),
(36, 1, 7, 33),
(37, 1, 7, 34),
(38, 1, 7, 35),
(39, 1, 7, 36),
(41, 1, 7, 37),
(42, 1, 3, 38),
(43, 1, 3, 39),
(44, 1, 3, 40),
(46, 1, 6, 41),
(48, 1, 3, 42),
(50, 1, 7, 43),
(50, 1, 12, 44),
(50, 1, 3, 45),
(51, 1, 3, 46),
(52, 1, 3, 47),
(53, 1, 3, 48),
(54, 1, 3, 49),
(55, 1, 3, 50),
(55, 1, 7, 51),
(56, 1, 3, 52),
(57, 1, 3, 53),
(58, 1, 3, 54),
(60, 1, 3, 55),
(61, 1, 3, 56),
(62, 1, 3, 57),
(63, 1, 3, 58),
(64, 1, 3, 59),
(65, 1, 3, 60),
(66, 1, 3, 61),
(67, 1, 3, 62),
(67, 1, 7, 63),
(67, 1, 12, 64),
(69, 1, 7, 65),
(70, 1, 7, 66),
(71, 1, 7, 67),
(72, 1, 7, 68),
(73, 1, 7, 69),
(74, 1, 7, 70),
(76, 1, 3, 71),
(82, 1, 3, 72),
(83, 1, 3, 73),
(84, 1, 3, 74),
(85, 1, 3, 75),
(86, 1, 3, 76),
(88, 1, 3, 77),
(89, 1, 3, 78),
(90, 1, 3, 79),
(91, 1, 3, 80),
(92, 1, 3, 81),
(94, 1, 3, 82),
(95, 1, 3, 83),
(96, 1, 3, 84),
(97, 1, 3, 85),
(99, 1, 3, 86),
(100, 1, 3, 87),
(104, 1, 3, 88),
(105, 1, 3, 89),
(106, 1, 3, 90),
(107, 1, 3, 91),
(109, 1, 3, 92),
(110, 1, 3, 93),
(111, 1, 3, 94),
(112, 1, 3, 95),
(113, 1, 3, 96),
(115, 1, 3, 97),
(116, 1, 3, 98),
(117, 1, 3, 99),
(118, 1, 3, 100),
(119, 1, 3, 101),
(120, 1, 3, 102),
(121, 1, 3, 103),
(122, 1, 3, 104),
(124, 1, 3, 105),
(125, 1, 3, 106),
(126, 1, 3, 107),
(127, 1, 3, 108),
(129, 1, 12, 109),
(130, 1, 3, 110),
(131, 1, 3, 111),
(132, 1, 3, 112),
(133, 1, 3, 113),
(134, 1, 3, 114),
(135, 1, 3, 115),
(137, 1, 3, 116),
(138, 1, 4, 117),
(138, 1, 5, 118),
(138, 1, 7, 119),
(140, 1, 6, 120),
(143, 1, 6, 121),
(149, 1, 6, 122),
(150, 1, 6, 123),
(152, 1, 4, 124),
(152, 1, 5, 125),
(152, 1, 7, 126);

-- --------------------------------------------------------

--
-- Structure de la table `collections`
--

CREATE TABLE `collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collections`
--

INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2017-02-01 13:54:42', '2017-02-01 18:13:41', NULL),
(2, '2017-02-01 13:55:58', '2017-02-01 13:55:58', 'dashboard'),
(3, '2017-02-01 13:55:58', '2017-02-01 13:55:58', 'sitemap'),
(4, '2017-02-01 13:55:59', '2017-02-01 13:55:59', 'full'),
(5, '2017-02-01 13:55:59', '2017-02-01 13:55:59', 'explore'),
(6, '2017-02-01 13:55:59', '2017-02-01 13:56:00', 'search'),
(7, '2017-02-01 13:56:00', '2017-02-01 13:56:00', 'files'),
(8, '2017-02-01 13:56:00', '2017-02-01 13:56:01', 'search'),
(9, '2017-02-01 13:56:01', '2017-02-01 13:56:01', 'attributes'),
(10, '2017-02-01 13:56:01', '2017-02-01 13:56:01', 'sets'),
(11, '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'add_set'),
(12, '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'users'),
(13, '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'search'),
(14, '2017-02-01 13:56:03', '2017-02-01 13:56:03', 'groups'),
(15, '2017-02-01 13:56:03', '2017-02-01 13:56:03', 'attributes'),
(16, '2017-02-01 13:56:03', '2017-02-01 13:56:04', 'add'),
(17, '2017-02-01 13:56:04', '2017-02-01 13:56:04', 'add_group'),
(18, '2017-02-01 13:56:04', '2017-02-01 13:56:04', 'bulkupdate'),
(19, '2017-02-01 13:56:05', '2017-02-01 13:56:05', 'group_sets'),
(20, '2017-02-01 13:56:05', '2017-02-01 13:56:05', 'points'),
(21, '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'assign'),
(22, '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'actions'),
(23, '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'express'),
(24, '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'entries'),
(25, '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'reports'),
(26, '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'forms'),
(27, '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'legacy'),
(28, '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'surveys'),
(29, '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'logs'),
(30, '2017-02-01 13:56:09', '2017-02-01 13:56:09', 'pages'),
(31, '2017-02-01 13:56:09', '2017-02-01 13:56:09', 'themes'),
(32, '2017-02-01 13:56:10', '2017-02-01 13:56:10', 'inspect'),
(33, '2017-02-01 13:56:10', '2017-02-01 13:56:10', 'types'),
(34, '2017-02-01 13:56:10', '2017-02-01 13:56:11', 'organize'),
(35, '2017-02-01 13:56:11', '2017-02-01 13:56:11', 'add'),
(36, '2017-02-01 13:56:11', '2017-02-01 13:56:11', 'form'),
(37, '2017-02-01 13:56:12', '2017-02-01 13:56:12', 'output'),
(38, '2017-02-01 13:56:12', '2017-02-01 13:56:12', 'attributes'),
(39, '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'permissions'),
(40, '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'templates'),
(41, '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'add'),
(42, '2017-02-01 13:56:14', '2017-02-01 13:56:14', 'attributes'),
(43, '2017-02-01 13:56:14', '2017-02-01 13:56:14', 'single'),
(44, '2017-02-01 13:56:14', '2017-02-01 13:56:15', 'feeds'),
(45, '2017-02-01 13:56:15', '2017-02-01 13:56:15', 'conversations'),
(46, '2017-02-01 13:56:15', '2017-02-01 13:56:15', 'messages'),
(47, '2017-02-01 13:56:16', '2017-02-01 13:56:16', 'blocks'),
(48, '2017-02-01 13:56:16', '2017-02-01 13:56:17', 'stacks'),
(49, '2017-02-01 13:56:17', '2017-02-01 13:56:17', 'permissions'),
(50, '2017-02-01 13:56:17', '2017-02-01 13:56:18', 'list'),
(51, '2017-02-01 13:56:18', '2017-02-01 13:56:18', 'types'),
(52, '2017-02-01 13:56:18', '2017-02-01 13:56:19', 'extend'),
(53, '2017-02-01 13:56:19', '2017-02-01 13:56:19', 'install'),
(54, '2017-02-01 13:56:19', '2017-02-01 13:56:19', 'update'),
(55, '2017-02-01 13:56:19', '2017-02-01 13:56:20', 'connect'),
(56, '2017-02-01 13:56:20', '2017-02-01 13:56:20', 'themes'),
(57, '2017-02-01 13:56:20', '2017-02-01 13:56:21', 'addons'),
(58, '2017-02-01 13:56:21', '2017-02-01 13:56:21', 'system'),
(59, '2017-02-01 13:56:21', '2017-02-01 13:56:21', 'basics'),
(60, '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'name'),
(61, '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'accessibility'),
(62, '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'social'),
(63, '2017-02-01 13:56:23', '2017-02-01 13:56:23', 'icons'),
(64, '2017-02-01 13:56:23', '2017-02-01 13:56:23', 'editor'),
(65, '2017-02-01 13:56:24', '2017-02-01 13:56:24', 'multilingual'),
(66, '2017-02-01 13:56:24', '2017-02-01 13:56:24', 'timezone'),
(67, '2017-02-01 13:56:25', '2017-02-01 13:56:25', 'attributes'),
(68, '2017-02-01 13:56:25', '2017-02-01 13:56:25', 'express'),
(69, '2017-02-01 13:56:25', '2017-02-01 13:56:26', 'entities'),
(70, '2017-02-01 13:56:26', '2017-02-01 13:56:26', 'attributes'),
(71, '2017-02-01 13:56:26', '2017-02-01 13:56:26', 'associations'),
(72, '2017-02-01 13:56:26', '2017-02-01 13:56:27', 'forms'),
(73, '2017-02-01 13:56:27', '2017-02-01 13:56:27', 'customize_search'),
(74, '2017-02-01 13:56:27', '2017-02-01 13:56:27', 'order_entries'),
(75, '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'entries'),
(76, '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'multilingual'),
(77, '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'setup'),
(78, '2017-02-01 13:56:29', '2017-02-01 13:56:29', 'copy'),
(79, '2017-02-01 13:56:29', '2017-02-01 13:56:29', 'page_report'),
(80, '2017-02-01 13:56:29', '2017-02-01 13:56:30', 'translate_interface'),
(81, '2017-02-01 13:56:30', '2017-02-01 13:56:30', 'seo'),
(82, '2017-02-01 13:56:30', '2017-02-01 13:56:30', 'urls'),
(83, '2017-02-01 13:56:31', '2017-02-01 13:56:31', 'bulk'),
(84, '2017-02-01 13:56:31', '2017-02-01 13:56:31', 'codes'),
(85, '2017-02-01 13:56:32', '2017-02-01 13:56:32', 'excluded'),
(86, '2017-02-01 13:56:32', '2017-02-01 13:56:32', 'searchindex'),
(87, '2017-02-01 13:56:33', '2017-02-01 13:56:33', 'files'),
(88, '2017-02-01 13:56:33', '2017-02-01 13:56:33', 'permissions'),
(89, '2017-02-01 13:56:33', '2017-02-01 13:56:34', 'filetypes'),
(90, '2017-02-01 13:56:34', '2017-02-01 13:56:34', 'thumbnails'),
(91, '2017-02-01 13:56:34', '2017-02-01 13:56:34', 'image_uploading'),
(92, '2017-02-01 13:56:35', '2017-02-01 13:56:35', 'storage'),
(93, '2017-02-01 13:56:35', '2017-02-01 13:56:35', 'optimization'),
(94, '2017-02-01 13:56:35', '2017-02-01 13:56:36', 'cache'),
(95, '2017-02-01 13:56:36', '2017-02-01 13:56:36', 'clearcache'),
(96, '2017-02-01 13:56:36', '2017-02-01 13:56:36', 'jobs'),
(97, '2017-02-01 13:56:37', '2017-02-01 13:56:37', 'query_log'),
(98, '2017-02-01 13:56:37', '2017-02-01 13:56:37', 'permissions'),
(99, '2017-02-01 13:56:37', '2017-02-01 13:56:38', 'site'),
(100, '2017-02-01 13:56:38', '2017-02-01 13:56:38', 'tasks'),
(101, '2017-02-01 13:56:38', '2017-02-01 13:56:38', 'users'),
(102, '2017-02-01 13:56:39', '2017-02-01 13:56:39', 'advanced'),
(103, '2017-02-01 13:56:39', '2017-02-01 13:56:39', 'workflows'),
(104, '2017-02-01 13:56:40', '2017-02-01 13:56:40', 'blacklist'),
(105, '2017-02-01 13:56:40', '2017-02-01 13:56:40', 'captcha'),
(106, '2017-02-01 13:56:41', '2017-02-01 13:56:41', 'antispam'),
(107, '2017-02-01 13:56:41', '2017-02-01 13:56:41', 'maintenance'),
(108, '2017-02-01 13:56:42', '2017-02-01 13:56:42', 'registration'),
(109, '2017-02-01 13:56:42', '2017-02-01 13:56:42', 'postlogin'),
(110, '2017-02-01 13:56:42', '2017-02-01 13:56:43', 'profiles'),
(111, '2017-02-01 13:56:43', '2017-02-01 13:56:43', 'open'),
(112, '2017-02-01 13:56:43', '2017-02-01 13:56:43', 'authentication'),
(113, '2017-02-01 13:56:44', '2017-02-01 13:56:44', 'global_password_reset'),
(114, '2017-02-01 13:56:44', '2017-02-01 13:56:44', 'notification'),
(115, '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'mail'),
(116, '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'method'),
(117, '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'test'),
(118, '2017-02-01 13:56:46', '2017-02-01 13:56:46', 'importers'),
(119, '2017-02-01 13:56:46', '2017-02-01 13:56:46', 'conversations'),
(120, '2017-02-01 13:56:46', '2017-02-01 13:56:47', 'settings'),
(121, '2017-02-01 13:56:47', '2017-02-01 13:56:47', 'points'),
(122, '2017-02-01 13:56:47', '2017-02-01 13:56:48', 'bannedwords'),
(123, '2017-02-01 13:56:48', '2017-02-01 13:56:48', 'permissions'),
(124, '2017-02-01 13:56:49', '2017-02-01 13:56:49', 'attributes'),
(125, '2017-02-01 13:56:49', '2017-02-01 13:56:49', 'sets'),
(126, '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'types'),
(127, '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'topics'),
(128, '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'add'),
(129, '2017-02-01 13:56:51', '2017-02-01 13:56:51', 'environment'),
(130, '2017-02-01 13:56:51', '2017-02-01 13:56:51', 'info'),
(131, '2017-02-01 13:56:52', '2017-02-01 13:56:52', 'debug'),
(132, '2017-02-01 13:56:52', '2017-02-01 13:56:52', 'logging'),
(133, '2017-02-01 13:56:52', '2017-02-01 13:56:53', 'proxy'),
(134, '2017-02-01 13:56:53', '2017-02-01 13:56:53', 'entities'),
(135, '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'backup'),
(136, '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'backup'),
(137, '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'update'),
(138, '2017-02-01 13:56:55', '2017-02-01 13:56:55', 'welcome'),
(139, '2017-02-01 13:56:57', '2017-02-01 13:56:58', 'me'),
(140, '2017-02-01 13:57:25', '2017-02-01 13:57:25', '!trash'),
(141, '2017-02-01 13:57:25', '2017-02-01 13:57:25', 'login'),
(142, '2017-02-01 13:57:26', '2017-02-01 13:57:26', 'register'),
(143, '2017-02-01 13:57:26', '2017-02-01 13:57:26', 'account'),
(144, '2017-02-01 13:57:27', '2017-02-01 13:57:27', 'edit_profile'),
(145, '2017-02-01 13:57:27', '2017-02-01 13:57:27', 'avatar'),
(146, '2017-02-01 13:57:27', '2017-02-01 13:57:28', 'messages'),
(147, '2017-02-01 13:57:28', '2017-02-01 13:57:28', 'page_forbidden'),
(148, '2017-02-01 13:57:28', '2017-02-01 13:57:28', 'download_file'),
(149, '2017-02-01 13:57:29', '2017-02-01 13:57:29', '!drafts'),
(150, '2017-02-01 13:57:29', '2017-02-01 13:57:30', '!stacks'),
(151, '2017-02-01 13:57:30', '2017-02-01 13:57:30', 'page_not_found'),
(152, '2017-02-01 13:57:30', '2017-02-01 13:57:30', 'desktop'),
(153, '2017-02-01 13:57:36', '2017-02-01 13:57:36', NULL),
(154, '2017-02-01 13:58:23', '2017-02-01 13:58:23', 'header-site-title'),
(155, '2017-02-01 13:58:24', '2017-02-01 13:58:24', 'header-navigation'),
(156, '2017-02-01 13:58:24', '2017-02-01 13:58:24', 'footer-legal'),
(157, '2017-02-01 13:58:25', '2017-02-01 13:58:25', 'footer-navigation'),
(158, '2017-02-01 13:58:25', '2017-02-01 13:58:25', 'footer-contact'),
(159, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'header-search'),
(160, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'footer-site-title'),
(161, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'footer-social');

-- --------------------------------------------------------

--
-- Structure de la table `collectionsearchindexattributes`
--

CREATE TABLE `collectionsearchindexattributes` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_desktop_priority` decimal(14,4) DEFAULT '0.0000',
  `ak_is_desktop` tinyint(1) DEFAULT '0',
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionsearchindexattributes`
--

INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_desktop_priority`, `ak_is_desktop`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
(2, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(10, NULL, NULL, 'files, category, categories', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(11, NULL, NULL, 'new file set', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(15, NULL, NULL, 'user attributes, user data, gather data, registration data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(16, NULL, NULL, 'new user, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(17, NULL, NULL, 'new user group, new group, group, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(19, NULL, NULL, 'group set', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(20, NULL, NULL, 'community, points, karma', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(22, NULL, NULL, 'action, community actions', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(25, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(26, NULL, NULL, 'forms, questions, response, data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(27, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0),
(28, NULL, NULL, 'questions, quiz, response', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(29, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(31, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(32, NULL, NULL, 'page types', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(34, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(35, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(36, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(37, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(38, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(39, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(41, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(42, NULL, NULL, 'page attributes, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(43, NULL, NULL, 'single, page, custom, application', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(44, NULL, NULL, 'atom, rss, feed, syndication', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(46, NULL, NULL, NULL, '0.0000', 0, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0),
(48, NULL, NULL, 'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(50, NULL, NULL, 'edit stacks, view stacks, all stacks', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0),
(51, NULL, NULL, 'block, refresh, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(52, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(53, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(54, NULL, NULL, 'update, upgrade', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(55, NULL, NULL, 'concrete5.org, my account, marketplace', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(56, NULL, NULL, 'buy theme, new theme, marketplace, template', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(57, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(58, NULL, NULL, 'dashboard, configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(60, NULL, NULL, 'website name, title', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(61, NULL, NULL, 'accessibility, easy mode', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(62, NULL, NULL, 'sharing, facebook, twitter', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(63, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(64, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(65, NULL, NULL, 'translate, translation, internationalization, multilingual', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(66, NULL, NULL, 'timezone, profile, locale', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(67, NULL, NULL, 'site attributes', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0),
(69, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(70, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(71, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(72, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(73, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(74, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(76, NULL, NULL, 'multilingual, localization, internationalization, i18n', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(82, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(83, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(84, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(85, NULL, NULL, 'pretty, slug', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(86, NULL, NULL, 'configure search, site search, search option', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(88, NULL, NULL, 'file options, file manager, upload, modify', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(89, NULL, NULL, 'security, files, media, extension, manager, upload', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(90, NULL, NULL, 'images, picture, responsive, retina', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(91, NULL, NULL, 'uploading, upload, images, image, resizing, manager', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(92, NULL, NULL, 'security, alternate storage, hide files', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(94, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(95, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(96, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(97, NULL, NULL, 'queries, database, mysql', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(99, NULL, NULL, 'editors, hide site, offline, private, public, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(100, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(104, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(105, NULL, NULL, 'security, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(106, NULL, NULL, 'antispam, block spam, security', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(107, NULL, NULL, 'lock site, under construction, hide, hidden', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(109, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(110, NULL, NULL, 'member profile, member page, community, forums, social, avatar', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(111, NULL, NULL, 'signup, new user, community, public registration, public, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(112, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(113, NULL, NULL, 'global, password, reset, change password, force, sign out', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(115, NULL, NULL, 'smtp, mail settings', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(116, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(117, NULL, NULL, 'test smtp, test mail', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(118, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(119, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(120, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(121, NULL, NULL, 'conversations ratings, ratings, community, community points', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(122, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(124, NULL, NULL, 'attribute configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(125, NULL, NULL, 'attributes, sets', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(126, NULL, NULL, 'attributes, types', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(127, NULL, NULL, 'topics, tags, taxonomy', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(129, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 1, 0),
(130, NULL, NULL, 'overrides, system info, debug, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(131, NULL, NULL, 'errors, exceptions, develop, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(132, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(133, NULL, NULL, 'network, proxy server', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(134, NULL, NULL, 'database, entities, doctrine, orm', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(135, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(137, NULL, NULL, 'upgrade, new version, update', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(138, NULL, NULL, NULL, '2.0000', 1, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(140, NULL, NULL, NULL, '0.0000', 0, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0),
(143, NULL, NULL, NULL, '0.0000', 0, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0),
(149, NULL, NULL, NULL, '0.0000', 0, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0),
(150, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0),
(152, NULL, NULL, NULL, '1.0000', 1, NULL, 1, 0, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionareastyles`
--

CREATE TABLE `collectionversionareastyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblocks`
--

CREATE TABLE `collectionversionblocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbRelationID` int(10) UNSIGNED DEFAULT '0',
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionversionblocks`
--

INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbRelationID`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1, 2, 18, 'Col1', 17, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 1, 'Main', 1, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 2, 'Main', 2, 1, 1, 0, 0, 0, 0, 0),
(138, 1, 3, 'Main : 1', 3, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 4, 'Main : 2', 4, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 5, 'Main : 3', 5, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 6, 'Main', 6, 2, 1, 0, 0, 0, 0, 0),
(138, 1, 7, 'Main : 4', 7, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 8, 'Main : 5', 8, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 9, 'Main', 9, 3, 1, 0, 0, 0, 0, 0),
(138, 1, 10, 'Main : 6', 10, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 11, 'Main : 7', 11, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 12, 'Main : 8', 12, 0, 1, 0, 0, 0, 0, 0),
(138, 1, 13, 'Main', 13, 4, 1, 0, 0, 0, 0, 0),
(139, 1, 14, 'Main', 14, 0, 1, 0, 0, 0, 0, 0),
(152, 1, 15, 'Main', 15, 0, 1, 0, 0, 0, 0, 0),
(153, 1, 16, 'Main', 16, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblockscachesettings`
--

CREATE TABLE `collectionversionblockscachesettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblocksoutputcache`
--

CREATE TABLE `collectionversionblocksoutputcache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionblockstyles`
--

CREATE TABLE `collectionversionblockstyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionversionblockstyles`
--

INSERT INTO `collectionversionblockstyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(138, 1, 13, 'Main', 1);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionfeatureassignments`
--

CREATE TABLE `collectionversionfeatureassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionrelatededits`
--

CREATE TABLE `collectionversionrelatededits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `collectionversions`
--

CREATE TABLE `collectionversions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collectionversions`
--

INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`, `cvPublishDate`) VALUES
(1, 1, 'Home', '', '', '2017-02-01 13:54:42', '2017-02-01 13:54:42', 'Initial Version', 1, 0, 1, NULL, 3, 4, NULL, NULL),
(1, 2, 'Home', '', '', '2017-02-01 13:54:42', '2017-02-01 18:13:41', 'New Version 2', 0, 1, 1, NULL, 3, 5, NULL, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2017-02-01 13:55:58', '2017-02-01 13:55:58', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2017-02-01 13:55:58', '2017-02-01 13:55:58', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2017-02-01 13:55:59', '2017-02-01 13:55:59', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(5, 1, 'Flat View', 'explore', '', '2017-02-01 13:55:59', '2017-02-01 13:55:59', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(6, 1, 'Page Search', 'search', '', '2017-02-01 13:55:59', '2017-02-01 13:55:59', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2017-02-01 13:56:00', '2017-02-01 13:56:00', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(8, 1, 'File Manager', 'search', '', '2017-02-01 13:56:00', '2017-02-01 13:56:00', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(9, 1, 'Attributes', 'attributes', '', '2017-02-01 13:56:01', '2017-02-01 13:56:01', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(10, 1, 'File Sets', 'sets', '', '2017-02-01 13:56:01', '2017-02-01 13:56:01', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(13, 1, 'Search Users', 'search', '', '2017-02-01 13:56:02', '2017-02-01 13:56:02', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(14, 1, 'User Groups', 'groups', '', '2017-02-01 13:56:03', '2017-02-01 13:56:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(15, 1, 'Attributes', 'attributes', '', '2017-02-01 13:56:03', '2017-02-01 13:56:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(16, 1, 'Add User', 'add', '', '2017-02-01 13:56:03', '2017-02-01 13:56:03', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(17, 1, 'Add Group', 'add_group', '', '2017-02-01 13:56:04', '2017-02-01 13:56:04', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2017-02-01 13:56:04', '2017-02-01 13:56:04', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2017-02-01 13:56:05', '2017-02-01 13:56:05', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(20, 1, 'Community Points', 'points', NULL, '2017-02-01 13:56:05', '2017-02-01 13:56:05', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(22, 1, 'Actions', 'actions', NULL, '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(23, 1, 'Express', 'express', 'Express Data Objects', '2017-02-01 13:56:06', '2017-02-01 13:56:06', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(24, 1, 'View Entries', 'entries', '', '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(25, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(26, 1, 'Form Results', 'forms', 'Get submission data.', '2017-02-01 13:56:07', '2017-02-01 13:56:07', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(27, 1, 'Form Results', 'legacy', 'Get submission data.', '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(28, 1, 'Surveys', 'surveys', '', '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(29, 1, 'Logs', 'logs', '', '2017-02-01 13:56:08', '2017-02-01 13:56:08', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(30, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2017-02-01 13:56:09', '2017-02-01 13:56:09', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(31, 1, 'Themes', 'themes', 'Reskin your site.', '2017-02-01 13:56:09', '2017-02-01 13:56:09', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(32, 1, 'Inspect', 'inspect', '', '2017-02-01 13:56:10', '2017-02-01 13:56:10', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(33, 1, 'Page Types', 'types', '', '2017-02-01 13:56:10', '2017-02-01 13:56:10', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(34, 1, 'Organize Page Type Order', 'organize', '', '2017-02-01 13:56:10', '2017-02-01 13:56:10', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(35, 1, 'Add Page Type', 'add', '', '2017-02-01 13:56:11', '2017-02-01 13:56:11', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(36, 1, 'Compose Form', 'form', '', '2017-02-01 13:56:11', '2017-02-01 13:56:11', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(37, 1, 'Defaults and Output', 'output', '', '2017-02-01 13:56:12', '2017-02-01 13:56:12', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(38, 1, 'Page Type Attributes', 'attributes', '', '2017-02-01 13:56:12', '2017-02-01 13:56:12', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(39, 1, 'Page Type Permissions', 'permissions', '', '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(40, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(41, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2017-02-01 13:56:13', '2017-02-01 13:56:13', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(42, 1, 'Attributes', 'attributes', '', '2017-02-01 13:56:14', '2017-02-01 13:56:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(43, 1, 'Single Pages', 'single', '', '2017-02-01 13:56:14', '2017-02-01 13:56:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(44, 1, 'RSS Feeds', 'feeds', '', '2017-02-01 13:56:14', '2017-02-01 13:56:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(45, 1, 'Conversations', 'conversations', '', '2017-02-01 13:56:15', '2017-02-01 13:56:15', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(46, 1, 'Messages', 'messages', '', '2017-02-01 13:56:15', '2017-02-01 13:56:15', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2017-02-01 13:56:16', '2017-02-01 13:56:16', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(48, 1, 'Stacks & Global Areas', 'stacks', 'Share content across your site.', '2017-02-01 13:56:16', '2017-02-01 13:56:16', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2017-02-01 13:56:17', '2017-02-01 13:56:17', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(50, 1, 'Stack List', 'list', '', '2017-02-01 13:56:17', '2017-02-01 13:56:17', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2017-02-01 13:56:18', '2017-02-01 13:56:18', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(52, 1, 'Extend concrete5', 'extend', '', '2017-02-01 13:56:18', '2017-02-01 13:56:18', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(53, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2017-02-01 13:56:19', '2017-02-01 13:56:19', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(54, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2017-02-01 13:56:19', '2017-02-01 13:56:19', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(55, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2017-02-01 13:56:19', '2017-02-01 13:56:19', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(56, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2017-02-01 13:56:20', '2017-02-01 13:56:20', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(57, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2017-02-01 13:56:20', '2017-02-01 13:56:20', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(58, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2017-02-01 13:56:21', '2017-02-01 13:56:21', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(59, 1, 'Basics', 'basics', 'Basic information about your website.', '2017-02-01 13:56:21', '2017-02-01 13:56:21', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(60, 1, 'Name & Attributes', 'name', '', '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(61, 1, 'Accessibility', 'accessibility', '', '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(62, 1, 'Social Links', 'social', '', '2017-02-01 13:56:22', '2017-02-01 13:56:22', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(63, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2017-02-01 13:56:23', '2017-02-01 13:56:23', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(64, 1, 'Rich Text Editor', 'editor', '', '2017-02-01 13:56:23', '2017-02-01 13:56:23', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(65, 1, 'Languages', 'multilingual', '', '2017-02-01 13:56:24', '2017-02-01 13:56:24', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(66, 1, 'Time Zone', 'timezone', '', '2017-02-01 13:56:24', '2017-02-01 13:56:24', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(67, 1, 'Custom Attributes', 'attributes', '', '2017-02-01 13:56:25', '2017-02-01 13:56:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(68, 1, 'Express', 'express', 'Express', '2017-02-01 13:56:25', '2017-02-01 13:56:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(69, 1, 'Data Objects', 'entities', '', '2017-02-01 13:56:25', '2017-02-01 13:56:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(70, 1, 'Attributes', 'attributes', '', '2017-02-01 13:56:26', '2017-02-01 13:56:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(71, 1, 'Associations', 'associations', '', '2017-02-01 13:56:26', '2017-02-01 13:56:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(72, 1, 'Forms', 'forms', '', '2017-02-01 13:56:26', '2017-02-01 13:56:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(73, 1, 'Customize Search', 'customize_search', '', '2017-02-01 13:56:27', '2017-02-01 13:56:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(74, 1, 'Customize Search', 'order_entries', '', '2017-02-01 13:56:27', '2017-02-01 13:56:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(75, 1, 'Custom Entry Locations', 'entries', '', '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(76, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(77, 1, 'Multilingual Setup', 'setup', '', '2017-02-01 13:56:28', '2017-02-01 13:56:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(78, 1, 'Copy Languages', 'copy', '', '2017-02-01 13:56:29', '2017-02-01 13:56:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(79, 1, 'Page Report', 'page_report', '', '2017-02-01 13:56:29', '2017-02-01 13:56:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(80, 1, 'Translate Site Interface', 'translate_interface', '', '2017-02-01 13:56:29', '2017-02-01 13:56:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(81, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2017-02-01 13:56:30', '2017-02-01 13:56:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(82, 1, 'URLs and Redirection', 'urls', '', '2017-02-01 13:56:30', '2017-02-01 13:56:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(83, 1, 'Bulk SEO Updater', 'bulk', '', '2017-02-01 13:56:31', '2017-02-01 13:56:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(84, 1, 'Tracking Codes', 'codes', '', '2017-02-01 13:56:31', '2017-02-01 13:56:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(85, 1, 'Excluded URL Word List', 'excluded', '', '2017-02-01 13:56:32', '2017-02-01 13:56:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(86, 1, 'Search Index', 'searchindex', '', '2017-02-01 13:56:32', '2017-02-01 13:56:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(87, 1, 'Files', 'files', '', '2017-02-01 13:56:33', '2017-02-01 13:56:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(88, 1, 'File Manager Permissions', 'permissions', '', '2017-02-01 13:56:33', '2017-02-01 13:56:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(89, 1, 'Allowed File Types', 'filetypes', '', '2017-02-01 13:56:33', '2017-02-01 13:56:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(90, 1, 'Thumbnails', 'thumbnails', '', '2017-02-01 13:56:34', '2017-02-01 13:56:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(91, 1, 'Image Uploading', 'image_uploading', '', '2017-02-01 13:56:34', '2017-02-01 13:56:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(92, 1, 'File Storage Locations', 'storage', '', '2017-02-01 13:56:35', '2017-02-01 13:56:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(93, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2017-02-01 13:56:35', '2017-02-01 13:56:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(94, 1, 'Cache & Speed Settings', 'cache', '', '2017-02-01 13:56:35', '2017-02-01 13:56:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(95, 1, 'Clear Cache', 'clearcache', '', '2017-02-01 13:56:36', '2017-02-01 13:56:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(96, 1, 'Automated Jobs', 'jobs', '', '2017-02-01 13:56:36', '2017-02-01 13:56:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(97, 1, 'Database Query Log', 'query_log', '', '2017-02-01 13:56:37', '2017-02-01 13:56:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(98, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2017-02-01 13:56:37', '2017-02-01 13:56:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(99, 1, 'Site Access', 'site', '', '2017-02-01 13:56:37', '2017-02-01 13:56:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(100, 1, 'Task Permissions', 'tasks', '', '2017-02-01 13:56:38', '2017-02-01 13:56:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(101, 1, 'User Permissions', 'users', '', '2017-02-01 13:56:38', '2017-02-01 13:56:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(102, 1, 'Advanced Permissions', 'advanced', '', '2017-02-01 13:56:39', '2017-02-01 13:56:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(103, 1, 'Workflows', 'workflows', '', '2017-02-01 13:56:39', '2017-02-01 13:56:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(104, 1, 'IP Blacklist', 'blacklist', '', '2017-02-01 13:56:40', '2017-02-01 13:56:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(105, 1, 'Captcha Setup', 'captcha', '', '2017-02-01 13:56:40', '2017-02-01 13:56:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(106, 1, 'Spam Control', 'antispam', '', '2017-02-01 13:56:41', '2017-02-01 13:56:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(107, 1, 'Maintenance Mode', 'maintenance', '', '2017-02-01 13:56:41', '2017-02-01 13:56:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(108, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2017-02-01 13:56:42', '2017-02-01 13:56:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(109, 1, 'Login Destination', 'postlogin', '', '2017-02-01 13:56:42', '2017-02-01 13:56:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(110, 1, 'Public Profiles', 'profiles', '', '2017-02-01 13:56:42', '2017-02-01 13:56:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(111, 1, 'Public Registration', 'open', '', '2017-02-01 13:56:43', '2017-02-01 13:56:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(112, 1, 'Authentication Types', 'authentication', '', '2017-02-01 13:56:43', '2017-02-01 13:56:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(113, 1, 'Global Password Reset', 'global_password_reset', 'Signs out all users, resets all passwords and forces users to choose a new one', '2017-02-01 13:56:44', '2017-02-01 13:56:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(114, 1, 'Notification Settings', 'notification', '', '2017-02-01 13:56:44', '2017-02-01 13:56:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(115, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(116, 1, 'SMTP Method', 'method', '', '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(117, 1, 'Test Mail Settings', 'test', '', '2017-02-01 13:56:45', '2017-02-01 13:56:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(118, 1, 'Email Importers', 'importers', '', '2017-02-01 13:56:46', '2017-02-01 13:56:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(119, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2017-02-01 13:56:46', '2017-02-01 13:56:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(120, 1, 'Settings', 'settings', '', '2017-02-01 13:56:46', '2017-02-01 13:56:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(121, 1, 'Community Points', 'points', '', '2017-02-01 13:56:47', '2017-02-01 13:56:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(122, 1, 'Banned Words', 'bannedwords', '', '2017-02-01 13:56:47', '2017-02-01 13:56:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(123, 1, 'Conversation Permissions', 'permissions', '', '2017-02-01 13:56:48', '2017-02-01 13:56:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(124, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2017-02-01 13:56:49', '2017-02-01 13:56:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(125, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2017-02-01 13:56:49', '2017-02-01 13:56:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(126, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(127, 1, 'Topics', 'topics', '', '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(128, 1, 'Add Topic Tree', 'add', '', '2017-02-01 13:56:50', '2017-02-01 13:56:50', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(129, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2017-02-01 13:56:51', '2017-02-01 13:56:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(130, 1, 'Environment Information', 'info', '', '2017-02-01 13:56:51', '2017-02-01 13:56:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(131, 1, 'Debug Settings', 'debug', '', '2017-02-01 13:56:52', '2017-02-01 13:56:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(132, 1, 'Logging Settings', 'logging', '', '2017-02-01 13:56:52', '2017-02-01 13:56:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(133, 1, 'Proxy Server', 'proxy', '', '2017-02-01 13:56:52', '2017-02-01 13:56:52', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(134, 1, 'Database Entities', 'entities', '', '2017-02-01 13:56:53', '2017-02-01 13:56:53', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(135, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(136, 1, 'Backup Database', 'backup', '', '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(137, 1, 'Update concrete5', 'update', '', '2017-02-01 13:56:54', '2017-02-01 13:56:54', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(138, 1, 'Welcome', 'welcome', '', '2017-02-01 13:56:55', '2017-02-01 13:56:55', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(139, 1, 'Waiting for Me', 'me', '', '2017-02-01 13:56:57', '2017-02-01 13:56:57', 'Initial Version', 1, 0, 1, NULL, 0, 2, NULL, NULL),
(140, 1, 'Trash', '!trash', '', '2017-02-01 13:57:25', '2017-02-01 13:57:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(141, 1, 'Login', 'login', '', '2017-02-01 13:57:25', '2017-02-01 13:57:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(142, 1, 'Register', 'register', '', '2017-02-01 13:57:26', '2017-02-01 13:57:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(143, 1, 'My Account', 'account', '', '2017-02-01 13:57:26', '2017-02-01 13:57:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(144, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2017-02-01 13:57:27', '2017-02-01 13:57:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(145, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2017-02-01 13:57:27', '2017-02-01 13:57:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(146, 1, 'Private Messages', 'messages', 'Inbox for site-specific messages.', '2017-02-01 13:57:27', '2017-02-01 13:57:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(147, 1, 'Page Forbidden', 'page_forbidden', '', '2017-02-01 13:57:28', '2017-02-01 13:57:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(148, 1, 'Download File', 'download_file', '', '2017-02-01 13:57:28', '2017-02-01 13:57:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL),
(149, 1, 'Drafts', '!drafts', '', '2017-02-01 13:57:29', '2017-02-01 13:57:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(150, 1, 'Stacks', '!stacks', '', '2017-02-01 13:57:29', '2017-02-01 13:57:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(151, 1, 'Page Not Found', 'page_not_found', '', '2017-02-01 13:57:30', '2017-02-01 13:57:30', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(152, 1, 'Welcome Back', 'desktop', '', '2017-02-01 13:57:30', '2017-02-01 13:57:30', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(153, 1, '', NULL, NULL, '2017-02-01 13:57:36', '2017-02-01 13:57:36', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL, NULL),
(154, 1, 'Header Site Title', 'header-site-title', NULL, '2017-02-01 13:58:23', '2017-02-01 13:58:23', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(155, 1, 'Header Navigation', 'header-navigation', NULL, '2017-02-01 13:58:24', '2017-02-01 13:58:24', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(156, 1, 'Footer Legal', 'footer-legal', NULL, '2017-02-01 13:58:24', '2017-02-01 13:58:24', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(157, 1, 'Footer Navigation', 'footer-navigation', NULL, '2017-02-01 13:58:25', '2017-02-01 13:58:25', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(158, 1, 'Footer Contact', 'footer-contact', NULL, '2017-02-01 13:58:25', '2017-02-01 13:58:25', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(159, 1, 'Header Search', 'header-search', NULL, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(160, 1, 'Footer Site Title', 'footer-site-title', NULL, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL),
(161, 1, 'Footer Social', 'footer-social', NULL, '2017-02-01 13:59:30', '2017-02-01 13:59:30', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `collectionversionthemecustomstyles`
--

CREATE TABLE `collectionversionthemecustomstyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE `config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `config`
--

INSERT INTO `config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'concrete', 'security.token.encryption', '48026c09497070d52098fdd0c8ff5c414800eaa4046237ce1a0928e12ec986fa'),
('', 'concrete', 'security.token.jobs', '38a9346aa602bc20d56ce0dfb850d913244b84a17840d74efbf0d7fcb1f58084'),
('', 'concrete', 'security.token.validation', '585b68e1b49ed8b8d6d254a9a176e9cdb178130596db55622d138964e9f5ea4a');

-- --------------------------------------------------------

--
-- Structure de la table `configstore`
--

CREATE TABLE `configstore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `configstore`
--

INSERT INTO `configstore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('file_manager.sort.7', '2017-02-01 17:14:59', '["folderItemName","desc"]', 1, 0),
('MAIN_HELP_LAST_VIEWED', '2017-02-01 12:58:25', '1485953905', 1, 0),
('NEWSFLOW_LAST_VIEWED', '2017-02-01 12:57:39', 'FIRSTRUN', 1, 0),
('QUICK_NAV_BOOKMARKS', '2017-02-01 13:01:05', 'O:47:"Concrete\\Core\\Application\\Service\\DashboardMenu":1:{s:8:"\0*\0items";a:9:{i:0;s:18:"/dashboard/welcome";i:1;s:25:"/dashboard/composer/write";i:2;s:26:"/dashboard/composer/drafts";i:3;s:23:"/dashboard/sitemap/full";i:4;s:25:"/dashboard/sitemap/search";i:5;s:23:"/dashboard/files/search";i:6;s:21:"/dashboard/files/sets";i:7;s:29:"/dashboard/reports/statistics";i:8;s:24:"/dashboard/reports/forms";}}', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `conversationdiscussions`
--

CREATE TABLE `conversationdiscussions` (
  `cnvDiscussionID` int(10) UNSIGNED NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationeditors`
--

CREATE TABLE `conversationeditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conversationeditors`
--

INSERT INTO `conversationeditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'redactor', 'Redactor', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `conversationfeaturedetailassignments`
--

CREATE TABLE `conversationfeaturedetailassignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationflaggedmessages`
--

CREATE TABLE `conversationflaggedmessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationflaggedmessagetypes`
--

CREATE TABLE `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conversationflaggedmessagetypes`
--

INSERT INTO `conversationflaggedmessagetypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Structure de la table `conversationmessageattachments`
--

CREATE TABLE `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationmessagenotifications`
--

CREATE TABLE `conversationmessagenotifications` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationmessageratings`
--

CREATE TABLE `conversationmessageratings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationmessages`
--

CREATE TABLE `conversationmessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationpermissionaddmessageaccesslist`
--

CREATE TABLE `conversationpermissionaddmessageaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationpermissionassignments`
--

CREATE TABLE `conversationpermissionassignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conversationpermissionassignments`
--

INSERT INTO `conversationpermissionassignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 67, 92),
(0, 68, 93),
(0, 71, 94),
(0, 70, 95),
(0, 72, 96),
(0, 69, 97),
(0, 73, 98),
(0, 74, 99);

-- --------------------------------------------------------

--
-- Structure de la table `conversationratingtypes`
--

CREATE TABLE `conversationratingtypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conversationratingtypes`
--

INSERT INTO `conversationratingtypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversationsubscriptions`
--

CREATE TABLE `conversationsubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conversationsubscriptions`
--

INSERT INTO `conversationsubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

-- --------------------------------------------------------

--
-- Structure de la table `downloadstatistics`
--

CREATE TABLE `downloadstatistics` (
  `dsID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL,
  `rcID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressattributekeys`
--

CREATE TABLE `expressattributekeys` (
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentities`
--

CREATE TABLE `expressentities` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `default_edit_form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `result_column_set` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentityassociations`
--

CREATE TABLE `expressentityassociations` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `target_entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentityassociationselectedentries`
--

CREATE TABLE `expressentityassociationselectedentries` (
  `id` int(11) NOT NULL,
  `exSelectedEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentityentries`
--

CREATE TABLE `expressentityentries` (
  `exEntryID` int(11) NOT NULL,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryEntityID` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentityentryassociations`
--

CREATE TABLE `expressentityentryassociations` (
  `id` int(11) NOT NULL,
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressentityentryattributevalues`
--

CREATE TABLE `expressentityentryattributevalues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressformfieldsetassociationcontrols`
--

CREATE TABLE `expressformfieldsetassociationcontrols` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `association_entity_label_mask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressformfieldsetattributekeycontrols`
--

CREATE TABLE `expressformfieldsetattributekeycontrols` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressformfieldsetcontrols`
--

CREATE TABLE `expressformfieldsetcontrols` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressformfieldsets`
--

CREATE TABLE `expressformfieldsets` (
  `id` int(11) NOT NULL,
  `form_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressformfieldsettextcontrols`
--

CREATE TABLE `expressformfieldsettextcontrols` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expressforms`
--

CREATE TABLE `expressforms` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `featureassignments`
--

CREATE TABLE `featureassignments` (
  `faID` int(10) UNSIGNED NOT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL,
  `fcID` int(10) UNSIGNED DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `featurecategories`
--

CREATE TABLE `featurecategories` (
  `fcID` int(10) UNSIGNED NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `featurecategories`
--

INSERT INTO `featurecategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Structure de la table `features`
--

CREATE TABLE `features` (
  `feID` int(10) UNSIGNED NOT NULL,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `features`
--

INSERT INTO `features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fileattributekeys`
--

CREATE TABLE `fileattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fileattributekeys`
--

INSERT INTO `fileattributekeys` (`akID`) VALUES
(16),
(17),
(19);

-- --------------------------------------------------------

--
-- Structure de la table `fileattributevalues`
--

CREATE TABLE `fileattributevalues` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fileattributevalues`
--

INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 16, 127),
(1, 1, 17, 128);

-- --------------------------------------------------------

--
-- Structure de la table `fileimagethumbnailpaths`
--

CREATE TABLE `fileimagethumbnailpaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fileimagethumbnailtypes`
--

CREATE TABLE `fileimagethumbnailtypes` (
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) NOT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fileimagethumbnailtypes`
--

INSERT INTO `fileimagethumbnailtypes` (`ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`, `ftTypeID`) VALUES
('file_manager_listing', 'File Manager Thumbnails', 60, 60, 1, 1),
('file_manager_detail', 'File Manager Detail Thumbnails', 400, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionassignments`
--

CREATE TABLE `filepermissionassignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionfiletypeaccesslist`
--

CREATE TABLE `filepermissionfiletypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionfiletypeaccesslistcustom`
--

CREATE TABLE `filepermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filepermissionfiletypes`
--

CREATE TABLE `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) UNSIGNED NOT NULL,
  `folderTreeNodeID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `files`
--

INSERT INTO `files` (`fID`, `fDateAdded`, `fPassword`, `fOverrideSetPermissions`, `ocID`, `folderTreeNodeID`, `uID`, `fslID`) VALUES
(1, '2017-02-01 18:14:44', NULL, 0, 0, 7, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `filesearchindexattributes`
--

CREATE TABLE `filesearchindexattributes` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `filesearchindexattributes`
--

INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '200.0000', '100.0000', '0.0000');

-- --------------------------------------------------------

--
-- Structure de la table `filesetfiles`
--

CREATE TABLE `filesetfiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filesets`
--

CREATE TABLE `filesets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filesetsavedsearches`
--

CREATE TABLE `filesetsavedsearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filestoragelocations`
--

CREATE TABLE `filestoragelocations` (
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `filestoragelocations`
--

INSERT INTO `filestoragelocations` (`fslName`, `fslConfiguration`, `fslID`, `fslIsDefault`) VALUES
('Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `filestoragelocationtypes`
--

CREATE TABLE `filestoragelocationtypes` (
  `fslTypeHandle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `filestoragelocationtypes`
--

INSERT INTO `filestoragelocationtypes` (`fslTypeHandle`, `fslTypeName`, `fslTypeID`, `pkgID`) VALUES
('default', 'Default', 1, 0),
('local', 'Local', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fileusagerecord`
--

CREATE TABLE `fileusagerecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fileversionlog`
--

CREATE TABLE `fileversionlog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fileversions`
--

CREATE TABLE `fileversions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8_unicode_ci,
  `fvExtension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(11) NOT NULL,
  `fvTags` longtext COLLATE utf8_unicode_ci,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fileversions`
--

INSERT INTO `fileversions` (`fvID`, `fvFilename`, `fvPrefix`, `fvDateAdded`, `fvActivateDateTime`, `fvIsApproved`, `fvAuthorUID`, `fvSize`, `fvApproverUID`, `fvTitle`, `fvDescription`, `fvExtension`, `fvType`, `fvTags`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fID`) VALUES
(1, 'chatPetit.jpg', '621485969284', '2017-02-01 18:14:45', '2017-02-01 18:14:45', 1, 1, 0, 1, 'chatPetit.jpg', '', NULL, 0, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gapage`
--

CREATE TABLE `gapage` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatheringconfigureddatasources`
--

CREATE TABLE `gatheringconfigureddatasources` (
  `gcsID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatheringdatasources`
--

CREATE TABLE `gatheringdatasources` (
  `gasID` int(10) UNSIGNED NOT NULL,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `gatheringdatasources`
--

INSERT INTO `gatheringdatasources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitemfeatureassignments`
--

CREATE TABLE `gatheringitemfeatureassignments` (
  `gafaID` int(10) UNSIGNED NOT NULL,
  `gaiID` int(10) UNSIGNED DEFAULT NULL,
  `faID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitems`
--

CREATE TABLE `gatheringitems` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) UNSIGNED DEFAULT '1',
  `gaiSlotHeight` int(10) UNSIGNED DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitemselectedtemplates`
--

CREATE TABLE `gatheringitemselectedtemplates` (
  `gaiID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitemtemplatefeatures`
--

CREATE TABLE `gatheringitemtemplatefeatures` (
  `gfeID` int(10) UNSIGNED NOT NULL,
  `gatID` int(10) UNSIGNED DEFAULT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `gatheringitemtemplatefeatures`
--

INSERT INTO `gatheringitemtemplatefeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitemtemplates`
--

CREATE TABLE `gatheringitemtemplates` (
  `gatID` int(10) UNSIGNED NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) UNSIGNED DEFAULT '0',
  `gatFixedSlotHeight` int(10) UNSIGNED DEFAULT '0',
  `gatForceDefault` int(10) UNSIGNED DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `gatheringitemtemplates`
--

INSERT INTO `gatheringitemtemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gatheringitemtemplatetypes`
--

CREATE TABLE `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) UNSIGNED NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `gatheringitemtemplatetypes`
--

INSERT INTO `gatheringitemtemplatetypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Structure de la table `gatheringpermissionassignments`
--

CREATE TABLE `gatheringpermissionassignments` (
  `gaID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gatherings`
--

CREATE TABLE `gatherings` (
  `gaID` int(10) UNSIGNED NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `groups`
--

INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Structure de la table `groupsetgroups`
--

CREATE TABLE `groupsetgroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupsets`
--

CREATE TABLE `groupsets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0),
(8, 'Update Statistics Trackers', 'Scan the sitemap for file usage and stack usage to update statistics trackers', '2017-02-01 13:55:57', NULL, 0, NULL, 0, 'ENABLED', 'update_statistics', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobsetjobs`
--

CREATE TABLE `jobsetjobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jobsetjobs`
--

INSERT INTO `jobsetjobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobsets`
--

CREATE TABLE `jobsets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jobsets`
--

INSERT INTO `jobsets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobslog`
--

CREATE TABLE `jobslog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `legacyattributekeys`
--

CREATE TABLE `legacyattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mailimporters`
--

CREATE TABLE `mailimporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mailimporters`
--

INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Structure de la table `mailvalidationhashes`
--

CREATE TABLE `mailvalidationhashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `multilingualpagerelations`
--

CREATE TABLE `multilingualpagerelations` (
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `multilingualtranslations`
--

CREATE TABLE `multilingualtranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notificationalerts`
--

CREATE TABLE `notificationalerts` (
  `naID` int(10) UNSIGNED NOT NULL,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notificationpermissionsubscriptionlist`
--

CREATE TABLE `notificationpermissionsubscriptionlist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notificationpermissionsubscriptionlistcustom`
--

CREATE TABLE `notificationpermissionsubscriptionlistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `nID` int(10) UNSIGNED NOT NULL,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauthusermap`
--

CREATE TABLE `oauthusermap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagefeeds`
--

CREATE TABLE `pagefeeds` (
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL,
  `iconFID` int(10) UNSIGNED NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepaths`
--

CREATE TABLE `pagepaths` (
  `cPath` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagepaths`
--

INSERT INTO `pagepaths` (`cPath`, `ppID`, `cID`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
('/dashboard', 1, 2, 1, 1),
('/dashboard/sitemap', 2, 3, 1, 1),
('/dashboard/sitemap/full', 3, 4, 1, 1),
('/dashboard/sitemap/explore', 4, 5, 1, 1),
('/dashboard/sitemap/search', 5, 6, 1, 1),
('/dashboard/files', 6, 7, 1, 1),
('/dashboard/files/search', 7, 8, 1, 1),
('/dashboard/files/attributes', 8, 9, 1, 1),
('/dashboard/files/sets', 9, 10, 1, 1),
('/dashboard/files/add_set', 10, 11, 1, 1),
('/dashboard/users', 11, 12, 1, 1),
('/dashboard/users/search', 12, 13, 1, 1),
('/dashboard/users/groups', 13, 14, 1, 1),
('/dashboard/users/attributes', 14, 15, 1, 1),
('/dashboard/users/add', 15, 16, 1, 1),
('/dashboard/users/add_group', 16, 17, 1, 1),
('/dashboard/users/groups/bulkupdate', 17, 18, 1, 1),
('/dashboard/users/group_sets', 18, 19, 1, 1),
('/dashboard/users/points', 19, 20, 1, 1),
('/dashboard/users/points/assign', 20, 21, 1, 1),
('/dashboard/users/points/actions', 21, 22, 1, 1),
('/dashboard/express', 22, 23, 1, 1),
('/dashboard/express/entries', 23, 24, 1, 1),
('/dashboard/reports', 24, 25, 1, 1),
('/dashboard/reports/forms', 25, 26, 1, 1),
('/dashboard/reports/forms/legacy', 26, 27, 1, 1),
('/dashboard/reports/surveys', 27, 28, 1, 1),
('/dashboard/reports/logs', 28, 29, 1, 1),
('/dashboard/pages', 29, 30, 1, 1),
('/dashboard/pages/themes', 30, 31, 1, 1),
('/dashboard/pages/themes/inspect', 31, 32, 1, 1),
('/dashboard/pages/types', 32, 33, 1, 1),
('/dashboard/pages/types/organize', 33, 34, 1, 1),
('/dashboard/pages/types/add', 34, 35, 1, 1),
('/dashboard/pages/types/form', 35, 36, 1, 1),
('/dashboard/pages/types/output', 36, 37, 1, 1),
('/dashboard/pages/types/attributes', 37, 38, 1, 1),
('/dashboard/pages/types/permissions', 38, 39, 1, 1),
('/dashboard/pages/templates', 39, 40, 1, 1),
('/dashboard/pages/templates/add', 40, 41, 1, 1),
('/dashboard/pages/attributes', 41, 42, 1, 1),
('/dashboard/pages/single', 42, 43, 1, 1),
('/dashboard/pages/feeds', 43, 44, 1, 1),
('/dashboard/conversations', 44, 45, 1, 1),
('/dashboard/conversations/messages', 45, 46, 1, 1),
('/dashboard/blocks', 46, 47, 1, 1),
('/dashboard/blocks/stacks', 47, 48, 1, 1),
('/dashboard/blocks/permissions', 48, 49, 1, 1),
('/dashboard/blocks/stacks/list', 49, 50, 1, 1),
('/dashboard/blocks/types', 50, 51, 1, 1),
('/dashboard/extend', 51, 52, 1, 1),
('/dashboard/extend/install', 52, 53, 1, 1),
('/dashboard/extend/update', 53, 54, 1, 1),
('/dashboard/extend/connect', 54, 55, 1, 1),
('/dashboard/extend/themes', 55, 56, 1, 1),
('/dashboard/extend/addons', 56, 57, 1, 1),
('/dashboard/system', 57, 58, 1, 1),
('/dashboard/system/basics', 58, 59, 1, 1),
('/dashboard/system/basics/name', 59, 60, 1, 1),
('/dashboard/system/basics/accessibility', 60, 61, 1, 1),
('/dashboard/system/basics/social', 61, 62, 1, 1),
('/dashboard/system/basics/icons', 62, 63, 1, 1),
('/dashboard/system/basics/editor', 63, 64, 1, 1),
('/dashboard/system/basics/multilingual', 64, 65, 1, 1),
('/dashboard/system/basics/timezone', 65, 66, 1, 1),
('/dashboard/system/basics/attributes', 66, 67, 1, 1),
('/dashboard/system/express', 67, 68, 1, 1),
('/dashboard/system/express/entities', 68, 69, 1, 1),
('/dashboard/system/express/entities/attributes', 69, 70, 1, 1),
('/dashboard/system/express/entities/associations', 70, 71, 1, 1),
('/dashboard/system/express/entities/forms', 71, 72, 1, 1),
('/dashboard/system/express/entities/customize_search', 72, 73, 1, 1),
('/dashboard/system/express/entities/order_entries', 73, 74, 1, 1),
('/dashboard/system/express/entries', 74, 75, 1, 1),
('/dashboard/system/multilingual', 75, 76, 1, 1),
('/dashboard/system/multilingual/setup', 76, 77, 1, 1),
('/dashboard/system/multilingual/copy', 77, 78, 1, 1),
('/dashboard/system/multilingual/page_report', 78, 79, 1, 1),
('/dashboard/system/multilingual/translate_interface', 79, 80, 1, 1),
('/dashboard/system/seo', 80, 81, 1, 1),
('/dashboard/system/seo/urls', 81, 82, 1, 1),
('/dashboard/system/seo/bulk', 82, 83, 1, 1),
('/dashboard/system/seo/codes', 83, 84, 1, 1),
('/dashboard/system/seo/excluded', 84, 85, 1, 1),
('/dashboard/system/seo/searchindex', 85, 86, 1, 1),
('/dashboard/system/files', 86, 87, 1, 1),
('/dashboard/system/files/permissions', 87, 88, 1, 1),
('/dashboard/system/files/filetypes', 88, 89, 1, 1),
('/dashboard/system/files/thumbnails', 89, 90, 1, 1),
('/dashboard/system/files/image_uploading', 90, 91, 1, 1),
('/dashboard/system/files/storage', 91, 92, 1, 1),
('/dashboard/system/optimization', 92, 93, 1, 1),
('/dashboard/system/optimization/cache', 93, 94, 1, 1),
('/dashboard/system/optimization/clearcache', 94, 95, 1, 1),
('/dashboard/system/optimization/jobs', 95, 96, 1, 1),
('/dashboard/system/optimization/query_log', 96, 97, 1, 1),
('/dashboard/system/permissions', 97, 98, 1, 1),
('/dashboard/system/permissions/site', 98, 99, 1, 1),
('/dashboard/system/permissions/tasks', 99, 100, 1, 1),
('/dashboard/system/permissions/users', 100, 101, 1, 1),
('/dashboard/system/permissions/advanced', 101, 102, 1, 1),
('/dashboard/system/permissions/workflows', 102, 103, 1, 1),
('/dashboard/system/permissions/blacklist', 103, 104, 1, 1),
('/dashboard/system/permissions/captcha', 104, 105, 1, 1),
('/dashboard/system/permissions/antispam', 105, 106, 1, 1),
('/dashboard/system/permissions/maintenance', 106, 107, 1, 1),
('/dashboard/system/registration', 107, 108, 1, 1),
('/dashboard/system/registration/postlogin', 108, 109, 1, 1),
('/dashboard/system/registration/profiles', 109, 110, 1, 1),
('/dashboard/system/registration/open', 110, 111, 1, 1),
('/dashboard/system/registration/authentication', 111, 112, 1, 1),
('/dashboard/system/registration/global_password_reset', 112, 113, 1, 1),
('/dashboard/system/registration/notification', 113, 114, 1, 1),
('/dashboard/system/mail', 114, 115, 1, 1),
('/dashboard/system/mail/method', 115, 116, 1, 1),
('/dashboard/system/mail/method/test', 116, 117, 1, 1),
('/dashboard/system/mail/importers', 117, 118, 1, 1),
('/dashboard/system/conversations', 118, 119, 1, 1),
('/dashboard/system/conversations/settings', 119, 120, 1, 1),
('/dashboard/system/conversations/points', 120, 121, 1, 1),
('/dashboard/system/conversations/bannedwords', 121, 122, 1, 1),
('/dashboard/system/conversations/permissions', 122, 123, 1, 1),
('/dashboard/system/attributes', 123, 124, 1, 1),
('/dashboard/system/attributes/sets', 124, 125, 1, 1),
('/dashboard/system/attributes/types', 125, 126, 1, 1),
('/dashboard/system/attributes/topics', 126, 127, 1, 1),
('/dashboard/system/attributes/topics/add', 127, 128, 1, 1),
('/dashboard/system/environment', 128, 129, 1, 1),
('/dashboard/system/environment/info', 129, 130, 1, 1),
('/dashboard/system/environment/debug', 130, 131, 1, 1),
('/dashboard/system/environment/logging', 131, 132, 1, 1),
('/dashboard/system/environment/proxy', 132, 133, 1, 1),
('/dashboard/system/environment/entities', 133, 134, 1, 1),
('/dashboard/system/backup', 134, 135, 1, 1),
('/dashboard/system/backup/backup', 135, 136, 1, 1),
('/dashboard/system/backup/update', 136, 137, 1, 1),
('/dashboard/welcome', 137, 138, 1, 1),
('/dashboard/welcome/me', 138, 139, 1, 1),
('/!trash', 139, 140, 1, 1),
('/login', 140, 141, 1, 1),
('/register', 141, 142, 1, 1),
('/account', 142, 143, 1, 1),
('/account/edit_profile', 143, 144, 1, 1),
('/account/avatar', 144, 145, 1, 1),
('/account/messages', 145, 146, 1, 1),
('/page_forbidden', 146, 147, 1, 1),
('/download_file', 147, 148, 1, 1),
('/!drafts', 148, 149, 1, 1),
('/!stacks', 149, 150, 1, 1),
('/page_not_found', 150, 151, 1, 1),
('/account/welcome', 151, 152, 1, 0),
('/!stacks/header-site-title', 152, 154, 1, 1),
('/!stacks/header-navigation', 153, 155, 1, 1),
('/!stacks/footer-legal', 154, 156, 1, 1),
('/!stacks/footer-navigation', 155, 157, 1, 1),
('/!stacks/footer-contact', 156, 158, 1, 1),
('/!stacks/header-search', 157, 159, 1, 1),
('/!stacks/footer-site-title', 158, 160, 1, 1),
('/!stacks/footer-social', 159, 161, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionassignments`
--

CREATE TABLE `pagepermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagepermissionassignments`
--

INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 69),
(2, 1, 50),
(141, 1, 48),
(142, 1, 49),
(149, 1, 51),
(1, 2, 70),
(149, 2, 52),
(1, 3, 71),
(149, 3, 53),
(1, 4, 72),
(149, 4, 54),
(1, 5, 73),
(149, 5, 55),
(1, 6, 74),
(149, 6, 56),
(1, 7, 75),
(149, 7, 57),
(1, 8, 77),
(149, 8, 59),
(1, 9, 78),
(149, 9, 60),
(1, 10, 79),
(149, 10, 61),
(1, 11, 80),
(149, 11, 62),
(1, 12, 81),
(149, 12, 63),
(1, 13, 82),
(149, 13, 64),
(1, 14, 83),
(149, 14, 65),
(1, 15, 84),
(149, 15, 66),
(1, 16, 85),
(149, 16, 67),
(1, 17, 86),
(149, 17, 68),
(1, 18, 76),
(149, 18, 58);

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpagetypeaccesslist`
--

CREATE TABLE `pagepermissionpagetypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpagetypeaccesslistcustom`
--

CREATE TABLE `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpropertyaccesslist`
--

CREATE TABLE `pagepermissionpropertyaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionpropertyattributeaccesslistcustom`
--

CREATE TABLE `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionthemeaccesslist`
--

CREATE TABLE `pagepermissionthemeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagepermissionthemeaccesslistcustom`
--

CREATE TABLE `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteTreeID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`cID`, `siteTreeID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 1, 5, 0, 1, 1, 1, '2017-02-01 18:12:54', '2017-02-01 18:12:54', 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 11, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 11, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 3, 2, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/view.php', 0, NULL, 0, 1, 1, 4, 2, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/entries.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 3, 5, 2, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 1, 0, 25, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms/legacy.php', 0, NULL, 0, 1, 0, 0, 26, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 25, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 25, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 6, 2, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 30, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 31, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 30, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 33, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 33, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 33, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 33, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 33, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 33, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 30, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 40, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 30, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 30, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 30, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 7, 2, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 45, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 8, 2, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 47, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 48, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 9, 2, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 52, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 52, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 52, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 52, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 13, 10, 2, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 8, 0, 58, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 59, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 59, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 59, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 59, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 59, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 5, 59, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 59, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/attributes.php', 0, NULL, 0, 1, 0, 7, 59, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/view.php', 0, NULL, 0, 1, 2, 1, 58, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities.php', 0, NULL, 0, 1, 5, 0, 68, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/attributes.php', 0, NULL, 0, 1, 0, 0, 69, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/associations.php', 0, NULL, 0, 1, 0, 1, 69, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/forms.php', 0, NULL, 0, 1, 0, 2, 69, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/customize_search.php', 0, NULL, 0, 1, 0, 3, 69, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/order_entries.php', 0, NULL, 0, 1, 0, 4, 69, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entries.php', 0, NULL, 0, 1, 0, 1, 68, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 2, 58, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 76, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 76, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 76, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 76, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 3, 58, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 81, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 81, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 81, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 81, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 81, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 5, 4, 58, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 0, 87, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 1, 87, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 0, 2, 87, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/image_uploading.php', 0, NULL, 0, 1, 0, 3, 87, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 4, 87, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 5, 58, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 93, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 93, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 93, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/query_log.php', 0, NULL, 0, 1, 0, 3, 93, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 9, 6, 58, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 98, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 98, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 98, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 98, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/workflows.php', 0, NULL, 0, 1, 0, 4, 98, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 0, 5, 98, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 6, 98, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 7, 98, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 8, 98, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 6, 7, 58, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 108, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 108, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 2, 108, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 108, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/global_password_reset.php', 0, NULL, 0, 1, 0, 4, 108, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/notification.php', 0, NULL, 0, 1, 0, 5, 108, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 8, 58, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 115, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 116, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 115, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 9, 58, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 119, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 119, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 119, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 119, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 10, 58, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 124, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 124, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 124, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 127, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 11, 58, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 129, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 129, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 129, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 129, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 129, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 12, 58, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 135, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 135, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/welcome.php', 0, NULL, 0, 1, 1, 0, 2, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 138, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 141, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 142, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(143, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
(144, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 143, 0, 0, -1, '0', 0, 1),
(145, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 143, 0, 0, -1, '0', 0, 1),
(146, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages.php', 0, NULL, 0, 1, 0, 2, 143, 0, 0, -1, '0', 0, 1),
(147, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(148, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(149, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 149, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(150, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 8, 0, 0, 0, 0, -1, '0', 0, 1),
(151, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(152, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/desktop.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(153, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 153, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(154, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 150, 0, 0, -1, '0', 0, 1),
(155, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 150, 0, 0, -1, '0', 0, 1),
(156, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 150, 0, 0, -1, '0', 0, 1),
(157, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 150, 0, 0, -1, '0', 0, 1),
(158, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 150, 0, 0, -1, '0', 0, 1),
(159, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 150, 0, 0, -1, '0', 0, 1),
(160, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 150, 0, 0, -1, '0', 0, 1),
(161, 1, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 150, 0, 0, -1, '0', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pagesearchindex`
--

CREATE TABLE `pagesearchindex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagesearchindex`
--

INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(139, '', 'Waiting for Me', '', '/dashboard/welcome/me', '2017-02-01 13:56:57', '2017-02-01 13:57:24', NULL, 0),
(1, '', 'Home', '', NULL, '2017-02-01 13:54:42', '2017-02-01 13:57:37', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagetemplates`
--

CREATE TABLE `pagetemplates` (
  `pTemplateID` int(11) NOT NULL,
  `pTemplateHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetemplates`
--

INSERT INTO `pagetemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'desktop', '', 'Desktop', 1, 0),
(3, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(4, 'full', 'full.png', 'Full', 0, 0),
(5, 'accueil', 'full.png', 'Accueil', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagethemecustomstyles`
--

CREATE TABLE `pagethemecustomstyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagethemes`
--

CREATE TABLE `pagethemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagethemes`
--

INSERT INTO `pagethemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'monpremiertheme', '', '', 0, 0),
(3, 'factorian', 'Factorian', 'Theme de test', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypecomposercontroltypes`
--

CREATE TABLE `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypecomposercontroltypes`
--

INSERT INTO `pagetypecomposercontroltypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Property', 0),
(2, 'collection_attribute', 'Custom Attribute', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypecomposerformlayoutsetcontrols`
--

CREATE TABLE `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypecomposerformlayoutsetcontrols`
--

INSERT INTO `pagetypecomposerformlayoutsetcontrols` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":12:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";N;s:33:"\0*\0ptComposerControlIconFormatter";O:48:"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter":1:{s:7:"\0*\0icon";s:9:"file-text";}s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":12:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";N;s:33:"\0*\0ptComposerControlIconFormatter";O:48:"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter":1:{s:7:"\0*\0icon";s:4:"font";}s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":12:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";N;s:33:"\0*\0ptComposerControlIconFormatter";O:48:"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter":1:{s:7:"\0*\0icon";s:9:"file-text";}s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":12:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";N;s:33:"\0*\0ptComposerControlIconFormatter";O:48:"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter":1:{s:7:"\0*\0icon";s:8:"list-alt";}s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":12:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";N;s:33:"\0*\0ptComposerControlIconFormatter";O:48:"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter":1:{s:7:"\0*\0icon";s:8:"download";}s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":15:{s:7:"\0*\0btID";i:14;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:13:"\0*\0controller";N;s:30:"\0*\0ptComposerControlIdentifier";i:14;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:49:"/concrete5-8.1.0/concrete/blocks/content/icon.png";s:33:"\0*\0ptComposerControlIconFormatter";N;s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 0, 'Body', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypecomposerformlayoutsets`
--

CREATE TABLE `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypecomposerformlayoutsets`
--

INSERT INTO `pagetypecomposerformlayoutsets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 5, 'Basics', '', 0),
(2, 5, 'Content', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypecomposeroutputblocks`
--

CREATE TABLE `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagetypecomposeroutputcontrols`
--

CREATE TABLE `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypecomposeroutputcontrols`
--

INSERT INTO `pagetypecomposeroutputcontrols` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 4, 5, 6),
(2, 5, 5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypepagetemplatedefaultpages`
--

CREATE TABLE `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypepagetemplatedefaultpages`
--

INSERT INTO `pagetypepagetemplatedefaultpages` (`pTemplateID`, `ptID`, `cID`) VALUES
(4, 5, 153);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypepagetemplates`
--

CREATE TABLE `pagetypepagetemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pagetypepermissionassignments`
--

CREATE TABLE `pagetypepermissionassignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypepermissionassignments`
--

INSERT INTO `pagetypepermissionassignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 60, 9),
(2, 60, 9),
(3, 60, 9),
(4, 60, 9),
(5, 60, 9),
(1, 61, 9),
(2, 61, 9),
(3, 61, 9),
(4, 61, 9),
(5, 61, 9),
(1, 62, 9),
(2, 62, 9),
(3, 62, 9),
(4, 62, 9),
(5, 62, 9),
(1, 63, 9),
(2, 63, 9),
(3, 63, 9),
(4, 63, 9),
(5, 63, 9),
(1, 64, 31),
(2, 64, 32),
(3, 64, 33),
(4, 64, 34),
(5, 64, 36);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypepublishtargettypes`
--

CREATE TABLE `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypepublishtargettypes`
--

INSERT INTO `pagetypepublishtargettypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagetypes`
--

CREATE TABLE `pagetypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  `siteTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pagetypes`
--

INSERT INTO `pagetypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`, `siteTypeID`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(3, 'Desktop', 'core_desktop', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(4, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(5, 'Page', 'page', 3, 4, 'A', 0, 1, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":6:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pageworkflowprogress`
--

CREATE TABLE `pageworkflowprogress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccess`
--

CREATE TABLE `permissionaccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccess`
--

INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentities`
--

CREATE TABLE `permissionaccessentities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccessentities`
--

INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 2),
(3, 5),
(4, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitygroups`
--

CREATE TABLE `permissionaccessentitygroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccessentitygroups`
--

INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitygroupsets`
--

CREATE TABLE `permissionaccessentitygroupsets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitytypecategories`
--

CREATE TABLE `permissionaccessentitytypecategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccessentitytypecategories`
--

INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(5, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(1, 21),
(2, 21),
(3, 21),
(4, 21),
(7, 21),
(1, 22),
(2, 22),
(3, 22),
(4, 22),
(7, 22),
(1, 23),
(2, 23),
(4, 23);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentitytypes`
--

CREATE TABLE `permissionaccessentitytypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccessentitytypes`
--

INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessentityusers`
--

CREATE TABLE `permissionaccessentityusers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccessentityusers`
--

INSERT INTO `permissionaccessentityusers` (`peID`, `uID`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccesslist`
--

CREATE TABLE `permissionaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionaccesslist`
--

INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(27, 2, 0, 10),
(28, 1, 0, 10),
(28, 2, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 3, 0, 10),
(32, 3, 0, 10),
(33, 3, 0, 10),
(34, 3, 0, 10),
(35, 1, 0, 10),
(36, 3, 0, 10),
(37, 2, 0, 10),
(38, 1, 0, 10),
(38, 2, 0, 10),
(39, 1, 0, 10),
(40, 1, 0, 10),
(41, 1, 0, 10),
(42, 1, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 2, 0, 10),
(49, 2, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10),
(69, 2, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 1, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 1, 0, 10),
(89, 1, 0, 10),
(90, 1, 0, 10),
(91, 1, 0, 10),
(92, 2, 0, 10),
(93, 2, 0, 10),
(94, 1, 0, 10),
(94, 5, 0, 10),
(95, 1, 0, 10),
(95, 5, 0, 10),
(96, 1, 0, 10),
(96, 6, 0, 10),
(97, 1, 0, 10),
(98, 1, 0, 10),
(99, 1, 0, 10),
(100, 1, 0, 10),
(100, 7, 0, 10);

-- --------------------------------------------------------

--
-- Structure de la table `permissionaccessworkflows`
--

CREATE TABLE `permissionaccessworkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissionassignments`
--

CREATE TABLE `permissionassignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionassignments`
--

INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
(1, 19),
(2, 20),
(3, 75),
(4, 76),
(5, 77),
(6, 79),
(7, 80),
(8, 81),
(100, 82),
(9, 92),
(10, 94),
(11, 95),
(12, 96),
(13, 97),
(14, 98),
(15, 99),
(16, 100),
(17, 101),
(18, 102),
(19, 103),
(20, 104),
(21, 105),
(22, 106),
(29, 107),
(30, 108);

-- --------------------------------------------------------

--
-- Structure de la table `permissiondurationobjects`
--

CREATE TABLE `permissiondurationobjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissionkeycategories`
--

CREATE TABLE `permissionkeycategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionkeycategories`
--

INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_folder', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'notification', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL),
(15, 'page_type', NULL),
(16, 'gathering', NULL),
(17, 'group_tree_node', NULL),
(18, 'express_tree_node', NULL),
(19, 'category_tree_node', NULL),
(20, 'topic_tree_node', NULL),
(21, 'conversation', NULL),
(22, 'conversation_message', NULL),
(23, 'multilingual_section', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permissionkeys`
--

CREATE TABLE `permissionkeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `permissionkeys`
--

INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_folder_file', 'View Files', 0, 0, 'View files within folder in the site.', 5, 0),
(40, 'search_file_folder', 'Search File Folder', 0, 0, 'See this file folder in the file manager', 5, 0),
(41, 'edit_file_folder', 'Edit File Folder', 0, 0, 'Edit a file folder.', 5, 0),
(42, 'edit_file_folder_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
(43, 'edit_file_folder_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in folder.', 5, 0),
(44, 'copy_file_folder_files', 'Copy File', 0, 0, 'Can copy files in file folder.', 5, 0),
(45, 'edit_file_folder_permissions', 'Edit File Access', 0, 0, 'Can edit access to file folder.', 5, 0),
(46, 'delete_file_folder', 'Delete File Set', 0, 0, 'Can delete file folder.', 5, 0),
(47, 'delete_file_folder_files', 'Delete File', 0, 0, 'Can delete files in folder.', 5, 0),
(48, 'add_file', 'Add File', 0, 1, 'Can add files to folder.', 5, 0),
(49, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(50, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(51, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
(52, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(53, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(54, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(55, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(56, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(57, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(58, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(59, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(60, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 15, 0),
(61, 'edit_page_type', 'Edit Page Type', 0, 0, '', 15, 0),
(62, 'delete_page_type', 'Delete Page Type', 0, 0, '', 15, 0),
(63, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 15, 0),
(64, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 15, 0),
(65, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 20, 0),
(66, 'view_category_tree_node', 'View Category Tree Node', 0, 0, '', 19, 0),
(67, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 21, 0),
(68, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 21, 0),
(69, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 21, 0),
(70, 'delete_conversation_message', 'Delete Message', 0, 0, '', 21, 0),
(71, 'edit_conversation_message', 'Edit Message', 0, 0, '', 21, 0),
(72, 'rate_conversation_message', 'Rate Message', 0, 0, '', 21, 0),
(73, 'flag_conversation_message', 'Flag Message', 0, 0, '', 21, 0),
(74, 'approve_conversation_message', 'Approve Message', 0, 0, '', 21, 0),
(75, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(76, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(77, 'activate_user', 'Activate/Deactivate User', 1, 0, NULL, 4, 0),
(78, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(79, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(80, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(81, 'delete_user', 'Delete User', 1, 0, NULL, 4, 0),
(82, 'notify_in_notification_center', 'Notify in Notification Center', 0, 1, 'Controls who receives updates in the notification center.', 11, 0),
(83, 'view_express_entries', 'View Entries', 0, 0, NULL, 18, 0),
(84, 'add_express_entries', 'Add Entry', 0, 0, NULL, 18, 0),
(85, 'edit_express_entries', 'Edit Entry', 0, 0, NULL, 18, 0),
(86, 'delete_express_entries', 'Delete Entry', 0, 0, NULL, 18, 0),
(87, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 17, 0),
(88, 'edit_group', 'Edit Group', 0, 0, NULL, 17, 0),
(89, 'assign_group', 'Assign Group', 0, 0, NULL, 17, 0),
(90, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 17, 0),
(91, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 17, 0),
(92, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(93, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(94, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(95, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(96, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(97, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(98, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(99, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(100, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(101, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(102, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(103, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(104, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(105, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(106, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(107, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(108, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 16, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pilecontents`
--

CREATE TABLE `pilecontents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `piles`
--

CREATE TABLE `piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `piles`
--

INSERT INTO `piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2017-02-01 12:59:32', NULL, 'READY');

-- --------------------------------------------------------

--
-- Structure de la table `privatemessagenotifications`
--

CREATE TABLE `privatemessagenotifications` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `queuemessages`
--

CREATE TABLE `queuemessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `queuepageduplicationrelations`
--

CREATE TABLE `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `queues`
--

CREATE TABLE `queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `savedfilesearchqueries`
--

CREATE TABLE `savedfilesearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `savedpagesearchqueries`
--

CREATE TABLE `savedpagesearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `savedusersearchqueries`
--

CREATE TABLE `savedusersearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) UNSIGNED NOT NULL,
  `sessionLifeTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `siblingpagerelations`
--

CREATE TABLE `siblingpagerelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `signuprequests`
--

CREATE TABLE `signuprequests` (
  `id` int(11) NOT NULL,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `siteattributekeys`
--

CREATE TABLE `siteattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `siteattributevalues`
--

CREATE TABLE `siteattributevalues` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sitelocales`
--

CREATE TABLE `sitelocales` (
  `siteLocaleID` int(10) UNSIGNED NOT NULL,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sitelocales`
--

INSERT INTO `sitelocales` (`siteLocaleID`, `msIsDefault`, `msLanguage`, `msCountry`, `msNumPlurals`, `msPluralRule`, `msPluralCases`, `siteID`, `siteTreeID`) VALUES
(1, 1, 'en', 'US', 2, '(n != 1)', 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sites`
--

INSERT INTO `sites` (`siteID`, `pThemeID`, `siteIsDefault`, `siteHandle`, `siteTypeID`) VALUES
(1, 3, 1, 'default', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sitesearchindexattributes`
--

CREATE TABLE `sitesearchindexattributes` (
  `siteID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sitetrees`
--

CREATE TABLE `sitetrees` (
  `siteTreeID` int(10) UNSIGNED NOT NULL,
  `siteHomePageID` int(10) UNSIGNED NOT NULL,
  `treeType` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sitetrees`
--

INSERT INTO `sitetrees` (`siteTreeID`, `siteHomePageID`, `treeType`) VALUES
(1, 1, 'sitetree');

-- --------------------------------------------------------

--
-- Structure de la table `sitetreetrees`
--

CREATE TABLE `sitetreetrees` (
  `siteLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sitetreetrees`
--

INSERT INTO `sitetreetrees` (`siteLocaleID`, `siteTreeID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sitetypes`
--

CREATE TABLE `sitetypes` (
  `siteTypeID` int(10) UNSIGNED NOT NULL,
  `siteTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sitetypes`
--

INSERT INTO `sitetypes` (`siteTypeID`, `siteTypeHandle`, `siteTypeName`, `siteTypeThemeID`, `siteTypeHomePageTemplateID`, `pkgID`) VALUES
(1, 'default', 'Default Site Type', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stacks`
--

CREATE TABLE `stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteTreeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stacks`
--

INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`, `siteTreeID`) VALUES
(1, 'Header Site Title', 20, 154, 0, 1),
(2, 'Header Navigation', 20, 155, 0, 1),
(3, 'Footer Legal', 20, 156, 0, 1),
(4, 'Footer Navigation', 20, 157, 0, 1),
(5, 'Footer Contact', 20, 158, 0, 1),
(6, 'Header Search', 20, 159, 0, 1),
(7, 'Footer Site Title', 20, 160, 0, 1),
(8, 'Footer Social', 20, 161, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `stackusagerecord`
--

CREATE TABLE `stackusagerecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stylecustomizercustomcssrecords`
--

CREATE TABLE `stylecustomizercustomcssrecords` (
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stylecustomizerinlinestylepresets`
--

CREATE TABLE `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stylecustomizerinlinestylesets`
--

CREATE TABLE `stylecustomizerinlinestylesets` (
  `issID` int(11) NOT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stylecustomizerinlinestylesets`
--

INSERT INTO `stylecustomizerinlinestylesets` (`issID`, `customClass`, `customID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderColor`, `borderStyle`, `borderWidth`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1, 'concrete5-org-stories', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `stylecustomizervaluelists`
--

CREATE TABLE `stylecustomizervaluelists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stylecustomizervalues`
--

CREATE TABLE `stylecustomizervalues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `systemantispamlibraries`
--

CREATE TABLE `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `systemcaptchalibraries`
--

CREATE TABLE `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `systemcaptchalibraries`
--

INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `systemcontenteditorsnippets`
--

CREATE TABLE `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `systemcontenteditorsnippets`
--

INSERT INTO `systemcontenteditorsnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `systemdatabasemigrations`
--

CREATE TABLE `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `systemdatabasemigrations`
--

INSERT INTO `systemdatabasemigrations` (`version`) VALUES
('20140919000000'),
('20140930000000'),
('20141017000000'),
('20141024000000'),
('20141113000000'),
('20141219000000'),
('20150109000000'),
('20150504000000'),
('20150515000000'),
('20150610000000'),
('20150612000000'),
('20150615000000'),
('20150616000000'),
('20150619000000'),
('20150622000000'),
('20150623000000'),
('20150713000000'),
('20150731000000'),
('20151221000000'),
('20160107000000'),
('20160213000000'),
('20160314000000'),
('20160412000000'),
('20160615000000'),
('20160725000000'),
('20161109000000'),
('20161203000000'),
('20161208000000'),
('20161216000000'),
('20161216100000'),
('20170118000000'),
('20170123000000');

-- --------------------------------------------------------

--
-- Structure de la table `systemdatabasequerylog`
--

CREATE TABLE `systemdatabasequerylog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `topictrees`
--

CREATE TABLE `topictrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `treefilenodes`
--

CREATE TABLE `treefilenodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treefilenodes`
--

INSERT INTO `treefilenodes` (`treeNodeID`, `fID`) VALUES
(8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `treegroupnodes`
--

CREATE TABLE `treegroupnodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treegroupnodes`
--

INSERT INTO `treegroupnodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `treenodepermissionassignments`
--

CREATE TABLE `treenodepermissionassignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treenodepermissionassignments`
--

INSERT INTO `treenodepermissionassignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(7, 39, 38),
(7, 40, 39),
(7, 41, 40),
(7, 42, 41),
(7, 43, 42),
(7, 44, 43),
(7, 45, 44),
(7, 46, 46),
(7, 47, 45),
(7, 48, 47),
(7, 66, 35),
(5, 83, 28),
(6, 83, 23),
(5, 84, 24),
(6, 84, 27),
(5, 85, 25),
(6, 85, 25),
(5, 86, 26),
(6, 86, 26),
(1, 87, 87),
(1, 88, 88),
(1, 89, 89),
(1, 90, 90),
(1, 91, 91);

-- --------------------------------------------------------

--
-- Structure de la table `treenodes`
--

CREATE TABLE `treenodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeParentID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treenodes`
--

INSERT INTO `treenodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeName`, `dateModified`, `dateCreated`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, '', '2017-02-01 13:54:24', '2017-02-01 13:54:24', 1, 1),
(2, 1, 1, 1, 0, '', '2017-02-01 13:54:24', '2017-02-01 13:54:24', 0, 1),
(3, 1, 1, 1, 1, '', '2017-02-01 13:54:24', '2017-02-01 13:54:24', 0, 1),
(4, 1, 1, 1, 2, '', '2017-02-01 13:54:24', '2017-02-01 13:54:24', 0, 1),
(5, 3, 2, 0, 0, '', '2017-02-01 13:54:40', '2017-02-01 13:54:40', 1, 5),
(6, 3, 2, 5, 0, 'Forms', '2017-02-01 13:54:41', '2017-02-01 13:54:41', 1, 6),
(7, 7, 3, 0, 0, '', '2017-02-01 13:57:34', '2017-02-01 13:57:34', 1, 7),
(8, 6, 3, 7, 0, '', '2017-02-01 18:14:45', '2017-02-01 18:14:45', 0, 7);

-- --------------------------------------------------------

--
-- Structure de la table `treenodetypes`
--

CREATE TABLE `treenodetypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treenodetypes`
--

INSERT INTO `treenodetypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'category', 0),
(3, 'express_entry_category', 0),
(4, 'express_entry_results', 0),
(5, 'topic', 0),
(6, 'file', 0),
(7, 'file_folder', 0),
(8, 'search_preset', 0);

-- --------------------------------------------------------

--
-- Structure de la table `trees`
--

CREATE TABLE `trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `trees`
--

INSERT INTO `trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2017-02-01 13:54:24', 1),
(2, 2, '2017-02-01 13:54:41', 5),
(3, 4, '2017-02-01 13:57:34', 7);

-- --------------------------------------------------------

--
-- Structure de la table `treesearchquerynodes`
--

CREATE TABLE `treesearchquerynodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `savedSearchID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `treetypes`
--

CREATE TABLE `treetypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `treetypes`
--

INSERT INTO `treetypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'express_entry_results', 0),
(3, 'topic', 0),
(4, 'file_manager', 0);

-- --------------------------------------------------------

--
-- Structure de la table `userattributekeys`
--

CREATE TABLE `userattributekeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `userattributekeys`
--

INSERT INTO `userattributekeys` (`uakProfileDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `uakMemberListDisplay`, `akID`) VALUES
(0, 1, 0, 1, 0, 0, 14),
(0, 1, 0, 1, 0, 0, 15),
(0, 0, 0, 0, 0, 0, 18);

-- --------------------------------------------------------

--
-- Structure de la table `userattributevalues`
--

CREATE TABLE `userattributevalues` (
  `uID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userbannedips`
--

CREATE TABLE `userbannedips` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `usergroups`
--

CREATE TABLE `usergroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissioneditpropertyaccesslist`
--

CREATE TABLE `userpermissioneditpropertyaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissioneditpropertyattributeaccesslistcustom`
--

CREATE TABLE `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionviewattributeaccesslist`
--

CREATE TABLE `userpermissionviewattributeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userpermissionviewattributeaccesslistcustom`
--

CREATE TABLE `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userpointactions`
--

CREATE TABLE `userpointactions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `userpointactions`
--

INSERT INTO `userpointactions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `userpointhistory`
--

CREATE TABLE `userpointhistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userprivatemessages`
--

CREATE TABLE `userprivatemessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userprivatemessagesto`
--

CREATE TABLE `userprivatemessagesto` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) UNSIGNED DEFAULT '0',
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsFullRecord`, `uIsValidated`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uLastIP`, `uTimezone`, `uDefaultLanguage`, `uIsPasswordReset`) VALUES
(1, 'admin', 'thomas_delattre@hotmail.fr', '$2a$12$tlo9Lf/Yv8j4IAkfiI87qOonfrYpUha3xvMG9I7H2ilWUWgupQVRi', 1, 1, 1, '2017-02-01 13:54:25', '2017-02-01 13:54:25', 0, 1485970973, 1485953665, 0, 1, 0, '7f000001', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `usersearchindexattributes`
--

CREATE TABLE `usersearchindexattributes` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `usersignupnotifications`
--

CREATE TABLE `usersignupnotifications` (
  `usID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `usersignups`
--

CREATE TABLE `usersignups` (
  `usID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `uservalidationhashes`
--

CREATE TABLE `uservalidationhashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userworkflowprogress`
--

CREATE TABLE `userworkflowprogress` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogress`
--

CREATE TABLE `workflowprogress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogresscategories`
--

CREATE TABLE `workflowprogresscategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `workflowprogresscategories`
--

INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogresshistory`
--

CREATE TABLE `workflowprogresshistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflowprogressnotifications`
--

CREATE TABLE `workflowprogressnotifications` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflowrequestobjects`
--

CREATE TABLE `workflowrequestobjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflows`
--

CREATE TABLE `workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `workflowtypes`
--

CREATE TABLE `workflowtypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `workflowtypes`
--

INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `arealayoutcolumns`
--
ALTER TABLE `arealayoutcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Index pour la table `arealayoutcustomcolumns`
--
ALTER TABLE `arealayoutcustomcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Index pour la table `arealayoutpresets`
--
ALTER TABLE `arealayoutpresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Index pour la table `arealayouts`
--
ALTER TABLE `arealayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Index pour la table `arealayoutsusingpresets`
--
ALTER TABLE `arealayoutsusingpresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Index pour la table `arealayoutthemegridcolumns`
--
ALTER TABLE `arealayoutthemegridcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Index pour la table `areapermissionassignments`
--
ALTER TABLE `areapermissionassignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Index pour la table `areapermissionblocktypeaccesslist`
--
ALTER TABLE `areapermissionblocktypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `areapermissionblocktypeaccesslistcustom`
--
ALTER TABLE `areapermissionblocktypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Index pour la table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Index pour la table `ataddress`
--
ALTER TABLE `ataddress`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `ataddresssettings`
--
ALTER TABLE `ataddresssettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `atboolean`
--
ALTER TABLE `atboolean`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atbooleansettings`
--
ALTER TABLE `atbooleansettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `atdatetime`
--
ALTER TABLE `atdatetime`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atdatetimesettings`
--
ALTER TABLE `atdatetimesettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `atdefault`
--
ALTER TABLE `atdefault`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atemptysettings`
--
ALTER TABLE `atemptysettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `atexpress`
--
ALTER TABLE `atexpress`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atexpressselectedentries`
--
ALTER TABLE `atexpressselectedentries`
  ADD PRIMARY KEY (`avID`,`exEntryID`),
  ADD KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  ADD KEY `IDX_C9D404BB6DCB6296` (`exEntryID`);

--
-- Index pour la table `atexpresssettings`
--
ALTER TABLE `atexpresssettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`);

--
-- Index pour la table `atfile`
--
ALTER TABLE `atfile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_73D17D61E3111F45` (`fID`);

--
-- Index pour la table `atfilesettings`
--
ALTER TABLE `atfilesettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `atnumber`
--
ALTER TABLE `atnumber`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atselect`
--
ALTER TABLE `atselect`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `IDX_10743709A2A82A5D` (`avID`);

--
-- Index pour la table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  ADD PRIMARY KEY (`avTreeTopicNodeID`),
  ADD KEY `IDX_E42A7D5BA2A82A5D` (`avID`);

--
-- Index pour la table `atselectoptionlists`
--
ALTER TABLE `atselectoptionlists`
  ADD PRIMARY KEY (`avSelectOptionListID`);

--
-- Index pour la table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  ADD PRIMARY KEY (`avSelectOptionID`),
  ADD KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`);

--
-- Index pour la table `atselectoptionsselected`
--
ALTER TABLE `atselectoptionsselected`
  ADD PRIMARY KEY (`avID`,`avSelectOptionID`),
  ADD KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  ADD KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`);

--
-- Index pour la table `atselectsettings`
--
ALTER TABLE `atselectsettings`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`);

--
-- Index pour la table `atsociallinks`
--
ALTER TABLE `atsociallinks`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `attextareasettings`
--
ALTER TABLE `attextareasettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `attextsettings`
--
ALTER TABLE `attextsettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `attopic`
--
ALTER TABLE `attopic`
  ADD PRIMARY KEY (`avID`);

--
-- Index pour la table `attopicsettings`
--
ALTER TABLE `attopicsettings`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  ADD KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`);

--
-- Index pour la table `attributekeys`
--
ALTER TABLE `attributekeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_DCA32C62A12CFE33` (`atID`),
  ADD KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `attributesetkeys`
--
ALTER TABLE `attributesetkeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `IDX_222F72D8B6561A7E` (`akID`),
  ADD KEY `IDX_222F72D8A463E8B6` (`asID`);

--
-- Index pour la table `attributesets`
--
ALTER TABLE `attributesets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `attributetypecategories`
--
ALTER TABLE `attributetypecategories`
  ADD PRIMARY KEY (`akCategoryID`,`atID`),
  ADD KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  ADD KEY `IDX_49A9CABEA12CFE33` (`atID`);

--
-- Index pour la table `attributetypes`
--
ALTER TABLE `attributetypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  ADD KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Index pour la table `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_DCCE7864B6561A7E` (`akID`);

--
-- Index pour la table `authenticationtypes`
--
ALTER TABLE `authenticationtypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `authtypeconcretecookiemap`
--
ALTER TABLE `authtypeconcretecookiemap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `bannedwords`
--
ALTER TABLE `bannedwords`
  ADD PRIMARY KEY (`bwID`);

--
-- Index pour la table `basicworkflowpermissionassignments`
--
ALTER TABLE `basicworkflowpermissionassignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Index pour la table `basicworkflowprogressdata`
--
ALTER TABLE `basicworkflowprogressdata`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Index pour la table `blockfeatureassignments`
--
ALTER TABLE `blockfeatureassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Index pour la table `blockpermissionassignments`
--
ALTER TABLE `blockpermissionassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Index pour la table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `blocktypepermissionblocktypeaccesslist`
--
ALTER TABLE `blocktypepermissionblocktypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `blocktypepermissionblocktypeaccesslistcustom`
--
ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Index pour la table `blocktypes`
--
ALTER TABLE `blocktypes`
  ADD PRIMARY KEY (`btID`);

--
-- Index pour la table `blocktypesetblocktypes`
--
ALTER TABLE `blocktypesetblocktypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Index pour la table `blocktypesets`
--
ALTER TABLE `blocktypesets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `btcontentfile`
--
ALTER TABLE `btcontentfile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Index pour la table `btcontentimage`
--
ALTER TABLE `btcontentimage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Index pour la table `btcontentlocal`
--
ALTER TABLE `btcontentlocal`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btcorearealayout`
--
ALTER TABLE `btcorearealayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Index pour la table `btcoreconversation`
--
ALTER TABLE `btcoreconversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Index pour la table `btcorepagetypecomposercontroloutput`
--
ALTER TABLE `btcorepagetypecomposercontroloutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Index pour la table `btcorescrapbookdisplay`
--
ALTER TABLE `btcorescrapbookdisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Index pour la table `btcorestackdisplay`
--
ALTER TABLE `btcorestackdisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Index pour la table `btdesktopnewsflowlatest`
--
ALTER TABLE `btdesktopnewsflowlatest`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btdesktopsiteactivity`
--
ALTER TABLE `btdesktopsiteactivity`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btexpressentrydetail`
--
ALTER TABLE `btexpressentrydetail`
  ADD PRIMARY KEY (`bID`,`exEntityID`,`exSpecificEntryID`,`exFormID`);

--
-- Index pour la table `btexpressentrylist`
--
ALTER TABLE `btexpressentrylist`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btexpressform`
--
ALTER TABLE `btexpressform`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btexternalform`
--
ALTER TABLE `btexternalform`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btfaq`
--
ALTER TABLE `btfaq`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btfaqentries`
--
ALTER TABLE `btfaqentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Index pour la table `btfeature`
--
ALTER TABLE `btfeature`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btform`
--
ALTER TABLE `btform`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Index pour la table `btformanswers`
--
ALTER TABLE `btformanswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Index pour la table `btformanswerset`
--
ALTER TABLE `btformanswerset`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `btformquestions`
--
ALTER TABLE `btformquestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Index pour la table `btgooglemap`
--
ALTER TABLE `btgooglemap`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btimageslider`
--
ALTER TABLE `btimageslider`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btimagesliderentries`
--
ALTER TABLE `btimagesliderentries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `btnavigation`
--
ALTER TABLE `btnavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btnextprevious`
--
ALTER TABLE `btnextprevious`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btpageattributedisplay`
--
ALTER TABLE `btpageattributedisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btpagelist`
--
ALTER TABLE `btpagelist`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Index pour la table `btpagetitle`
--
ALTER TABLE `btpagetitle`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btrssdisplay`
--
ALTER TABLE `btrssdisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btsearch`
--
ALTER TABLE `btsearch`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btsharethispage`
--
ALTER TABLE `btsharethispage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Index pour la table `btsociallinks`
--
ALTER TABLE `btsociallinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Index pour la table `btsurvey`
--
ALTER TABLE `btsurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btsurveyoptions`
--
ALTER TABLE `btsurveyoptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Index pour la table `btsurveyresults`
--
ALTER TABLE `btsurveyresults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `btswitchlanguage`
--
ALTER TABLE `btswitchlanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `bttags`
--
ALTER TABLE `bttags`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `bttestimonial`
--
ALTER TABLE `bttestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `bttopiclist`
--
ALTER TABLE `bttopiclist`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btvideo`
--
ALTER TABLE `btvideo`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `btyoutube`
--
ALTER TABLE `btyoutube`
  ADD PRIMARY KEY (`bID`);

--
-- Index pour la table `collectionattributekeys`
--
ALTER TABLE `collectionattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `collectionattributevalues`
--
ALTER TABLE `collectionattributevalues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `IDX_BB9995FCB6561A7E` (`akID`),
  ADD KEY `IDX_BB9995FCA2A82A5D` (`avID`);

--
-- Index pour la table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Index pour la table `collectionsearchindexattributes`
--
ALTER TABLE `collectionsearchindexattributes`
  ADD PRIMARY KEY (`cID`);

--
-- Index pour la table `collectionversionareastyles`
--
ALTER TABLE `collectionversionareastyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Index pour la table `collectionversionblocks`
--
ALTER TABLE `collectionversionblocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `cbRelationID` (`cbRelationID`);

--
-- Index pour la table `collectionversionblockscachesettings`
--
ALTER TABLE `collectionversionblockscachesettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Index pour la table `collectionversionblocksoutputcache`
--
ALTER TABLE `collectionversionblocksoutputcache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Index pour la table `collectionversionblockstyles`
--
ALTER TABLE `collectionversionblockstyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Index pour la table `collectionversionfeatureassignments`
--
ALTER TABLE `collectionversionfeatureassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Index pour la table `collectionversionrelatededits`
--
ALTER TABLE `collectionversionrelatededits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Index pour la table `collectionversions`
--
ALTER TABLE `collectionversions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Index pour la table `collectionversionthemecustomstyles`
--
ALTER TABLE `collectionversionthemecustomstyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Index pour la table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Index pour la table `configstore`
--
ALTER TABLE `configstore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Index pour la table `conversationdiscussions`
--
ALTER TABLE `conversationdiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Index pour la table `conversationeditors`
--
ALTER TABLE `conversationeditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Index pour la table `conversationfeaturedetailassignments`
--
ALTER TABLE `conversationfeaturedetailassignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Index pour la table `conversationflaggedmessages`
--
ALTER TABLE `conversationflaggedmessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Index pour la table `conversationflaggedmessagetypes`
--
ALTER TABLE `conversationflaggedmessagetypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Index pour la table `conversationmessageattachments`
--
ALTER TABLE `conversationmessageattachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Index pour la table `conversationmessagenotifications`
--
ALTER TABLE `conversationmessagenotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Index pour la table `conversationmessageratings`
--
ALTER TABLE `conversationmessageratings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `conversationmessages`
--
ALTER TABLE `conversationmessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `conversationpermissionaddmessageaccesslist`
--
ALTER TABLE `conversationpermissionaddmessageaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `conversationpermissionassignments`
--
ALTER TABLE `conversationpermissionassignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Index pour la table `conversationratingtypes`
--
ALTER TABLE `conversationratingtypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Index pour la table `conversationsubscriptions`
--
ALTER TABLE `conversationsubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `downloadstatistics`
--
ALTER TABLE `downloadstatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `expressattributekeys`
--
ALTER TABLE `expressattributekeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_8C881F181257D5D` (`entity_id`);

--
-- Index pour la table `expressentities`
--
ALTER TABLE `expressentities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  ADD UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  ADD KEY `IDX_BC772AA6CE45CBB0` (`pkgID`);

--
-- Index pour la table `expressentityassociations`
--
ALTER TABLE `expressentityassociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  ADD KEY `IDX_98A0F796B5910F71` (`target_entity_id`);

--
-- Index pour la table `expressentityassociationselectedentries`
--
ALTER TABLE `expressentityassociationselectedentries`
  ADD PRIMARY KEY (`id`,`exSelectedEntryID`),
  ADD KEY `IDX_1F9C570CBF396750` (`id`),
  ADD KEY `IDX_1F9C570CC7B1F65C` (`exSelectedEntryID`);

--
-- Index pour la table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  ADD PRIMARY KEY (`exEntryID`),
  ADD KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`);

--
-- Index pour la table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  ADD KEY `IDX_25B3A082EFB9C8A5` (`association_id`);

--
-- Index pour la table `expressentityentryattributevalues`
--
ALTER TABLE `expressentityentryattributevalues`
  ADD PRIMARY KEY (`exEntryID`,`akID`),
  ADD KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  ADD KEY `IDX_6DB64154B6561A7E` (`akID`),
  ADD KEY `IDX_6DB64154A2A82A5D` (`avID`);

--
-- Index pour la table `expressformfieldsetassociationcontrols`
--
ALTER TABLE `expressformfieldsetassociationcontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`);

--
-- Index pour la table `expressformfieldsetattributekeycontrols`
--
ALTER TABLE `expressformfieldsetattributekeycontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8481F9D1B6561A7E` (`akID`);

--
-- Index pour la table `expressformfieldsetcontrols`
--
ALTER TABLE `expressformfieldsetcontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E42868A43ABF811A` (`field_set_id`);

--
-- Index pour la table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A33BBBEC5FF69B7D` (`form_id`);

--
-- Index pour la table `expressformfieldsettextcontrols`
--
ALTER TABLE `expressformfieldsettextcontrols`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expressforms`
--
ALTER TABLE `expressforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D09031A81257D5D` (`entity_id`);

--
-- Index pour la table `featureassignments`
--
ALTER TABLE `featureassignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Index pour la table `featurecategories`
--
ALTER TABLE `featurecategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Index pour la table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Index pour la table `fileattributekeys`
--
ALTER TABLE `fileattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `fileattributevalues`
--
ALTER TABLE `fileattributevalues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  ADD KEY `IDX_BBECEAA4A2A82A5D` (`avID`);

--
-- Index pour la table `fileimagethumbnailpaths`
--
ALTER TABLE `fileimagethumbnailpaths`
  ADD UNIQUE KEY `thumbnailPathID` (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`);

--
-- Index pour la table `fileimagethumbnailtypes`
--
ALTER TABLE `fileimagethumbnailtypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Index pour la table `filepermissionassignments`
--
ALTER TABLE `filepermissionassignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Index pour la table `filepermissionfiletypeaccesslist`
--
ALTER TABLE `filepermissionfiletypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `filepermissionfiletypeaccesslistcustom`
--
ALTER TABLE `filepermissionfiletypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `filepermissionfiletypes`
--
ALTER TABLE `filepermissionfiletypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Index pour la table `filesearchindexattributes`
--
ALTER TABLE `filesearchindexattributes`
  ADD PRIMARY KEY (`fID`);

--
-- Index pour la table `filesetfiles`
--
ALTER TABLE `filesetfiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Index pour la table `filesets`
--
ALTER TABLE `filesets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Index pour la table `filesetsavedsearches`
--
ALTER TABLE `filesetsavedsearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Index pour la table `filestoragelocations`
--
ALTER TABLE `filestoragelocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Index pour la table `filestoragelocationtypes`
--
ALTER TABLE `filestoragelocationtypes`
  ADD PRIMARY KEY (`fslTypeID`);

--
-- Index pour la table `fileusagerecord`
--
ALTER TABLE `fileusagerecord`
  ADD PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Index pour la table `fileversionlog`
--
ALTER TABLE `fileversionlog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Index pour la table `fileversions`
--
ALTER TABLE `fileversions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `IDX_D7B5A13AE3111F45` (`fID`),
  ADD KEY `fvFilename` (`fvFilename`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`);

--
-- Index pour la table `gapage`
--
ALTER TABLE `gapage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Index pour la table `gatheringconfigureddatasources`
--
ALTER TABLE `gatheringconfigureddatasources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Index pour la table `gatheringdatasources`
--
ALTER TABLE `gatheringdatasources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `gatheringitemfeatureassignments`
--
ALTER TABLE `gatheringitemfeatureassignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Index pour la table `gatheringitems`
--
ALTER TABLE `gatheringitems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Index pour la table `gatheringitemselectedtemplates`
--
ALTER TABLE `gatheringitemselectedtemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Index pour la table `gatheringitemtemplatefeatures`
--
ALTER TABLE `gatheringitemtemplatefeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Index pour la table `gatheringitemtemplates`
--
ALTER TABLE `gatheringitemtemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `gatheringitemtemplatetypes`
--
ALTER TABLE `gatheringitemtemplatetypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `gatheringpermissionassignments`
--
ALTER TABLE `gatheringpermissionassignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Index pour la table `gatherings`
--
ALTER TABLE `gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Index pour la table `groupsetgroups`
--
ALTER TABLE `groupsetgroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Index pour la table `groupsets`
--
ALTER TABLE `groupsets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Index pour la table `jobsetjobs`
--
ALTER TABLE `jobsetjobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Index pour la table `jobsets`
--
ALTER TABLE `jobsets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Index pour la table `jobslog`
--
ALTER TABLE `jobslog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Index pour la table `legacyattributekeys`
--
ALTER TABLE `legacyattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `mailimporters`
--
ALTER TABLE `mailimporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Index pour la table `mailvalidationhashes`
--
ALTER TABLE `mailvalidationhashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Index pour la table `multilingualpagerelations`
--
ALTER TABLE `multilingualpagerelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Index pour la table `multilingualtranslations`
--
ALTER TABLE `multilingualtranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Index pour la table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  ADD PRIMARY KEY (`naID`),
  ADD KEY `IDX_E11C7408FD71026C` (`uID`),
  ADD KEY `IDX_E11C7408ED024EFD` (`nID`);

--
-- Index pour la table `notificationpermissionsubscriptionlist`
--
ALTER TABLE `notificationpermissionsubscriptionlist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `notificationpermissionsubscriptionlistcustom`
--
ALTER TABLE `notificationpermissionsubscriptionlistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  ADD KEY `peID` (`peID`),
  ADD KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`nID`);

--
-- Index pour la table `oauthusermap`
--
ALTER TABLE `oauthusermap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`);

--
-- Index pour la table `pagefeeds`
--
ALTER TABLE `pagefeeds`
  ADD PRIMARY KEY (`pfID`);

--
-- Index pour la table `pagepaths`
--
ALTER TABLE `pagepaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `cPath` (`cPath`(255));

--
-- Index pour la table `pagepermissionassignments`
--
ALTER TABLE `pagepermissionassignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Index pour la table `pagepermissionpagetypeaccesslist`
--
ALTER TABLE `pagepermissionpagetypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `pagepermissionpagetypeaccesslistcustom`
--
ALTER TABLE `pagepermissionpagetypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Index pour la table `pagepermissionpropertyaccesslist`
--
ALTER TABLE `pagepermissionpropertyaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `pagepermissionpropertyattributeaccesslistcustom`
--
ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Index pour la table `pagepermissionthemeaccesslist`
--
ALTER TABLE `pagepermissionthemeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `pagepermissionthemeaccesslistcustom`
--
ALTER TABLE `pagepermissionthemeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `siteTreeID` (`siteTreeID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Index pour la table `pagesearchindex`
--
ALTER TABLE `pagesearchindex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Index pour la table `pagetemplates`
--
ALTER TABLE `pagetemplates`
  ADD PRIMARY KEY (`pTemplateID`);

--
-- Index pour la table `pagethemecustomstyles`
--
ALTER TABLE `pagethemecustomstyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Index pour la table `pagethemes`
--
ALTER TABLE `pagethemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `pagetypecomposercontroltypes`
--
ALTER TABLE `pagetypecomposercontroltypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `pagetypecomposerformlayoutsetcontrols`
--
ALTER TABLE `pagetypecomposerformlayoutsetcontrols`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Index pour la table `pagetypecomposerformlayoutsets`
--
ALTER TABLE `pagetypecomposerformlayoutsets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Index pour la table `pagetypecomposeroutputblocks`
--
ALTER TABLE `pagetypecomposeroutputblocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Index pour la table `pagetypecomposeroutputcontrols`
--
ALTER TABLE `pagetypecomposeroutputcontrols`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Index pour la table `pagetypepagetemplatedefaultpages`
--
ALTER TABLE `pagetypepagetemplatedefaultpages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Index pour la table `pagetypepagetemplates`
--
ALTER TABLE `pagetypepagetemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Index pour la table `pagetypepermissionassignments`
--
ALTER TABLE `pagetypepermissionassignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Index pour la table `pagetypepublishtargettypes`
--
ALTER TABLE `pagetypepublishtargettypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `pagetypes`
--
ALTER TABLE `pagetypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `siteTypeID` (`siteTypeID`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Index pour la table `pageworkflowprogress`
--
ALTER TABLE `pageworkflowprogress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Index pour la table `permissionaccess`
--
ALTER TABLE `permissionaccess`
  ADD PRIMARY KEY (`paID`);

--
-- Index pour la table `permissionaccessentities`
--
ALTER TABLE `permissionaccessentities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Index pour la table `permissionaccessentitygroups`
--
ALTER TABLE `permissionaccessentitygroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Index pour la table `permissionaccessentitygroupsets`
--
ALTER TABLE `permissionaccessentitygroupsets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Index pour la table `permissionaccessentitytypecategories`
--
ALTER TABLE `permissionaccessentitytypecategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Index pour la table `permissionaccessentitytypes`
--
ALTER TABLE `permissionaccessentitytypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `permissionaccessentityusers`
--
ALTER TABLE `permissionaccessentityusers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Index pour la table `permissionaccesslist`
--
ALTER TABLE `permissionaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Index pour la table `permissionaccessworkflows`
--
ALTER TABLE `permissionaccessworkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Index pour la table `permissionassignments`
--
ALTER TABLE `permissionassignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Index pour la table `permissiondurationobjects`
--
ALTER TABLE `permissiondurationobjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Index pour la table `permissionkeycategories`
--
ALTER TABLE `permissionkeycategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `permissionkeys`
--
ALTER TABLE `permissionkeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `pilecontents`
--
ALTER TABLE `pilecontents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Index pour la table `piles`
--
ALTER TABLE `piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Index pour la table `privatemessagenotifications`
--
ALTER TABLE `privatemessagenotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Index pour la table `queuemessages`
--
ALTER TABLE `queuemessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Index pour la table `queuepageduplicationrelations`
--
ALTER TABLE `queuepageduplicationrelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Index pour la table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Index pour la table `savedfilesearchqueries`
--
ALTER TABLE `savedfilesearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `savedpagesearchqueries`
--
ALTER TABLE `savedpagesearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `savedusersearchqueries`
--
ALTER TABLE `savedusersearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Index pour la table `siblingpagerelations`
--
ALTER TABLE `siblingpagerelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Index pour la table `signuprequests`
--
ALTER TABLE `signuprequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipFrom` (`ipFrom`(32));

--
-- Index pour la table `siteattributekeys`
--
ALTER TABLE `siteattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `siteattributevalues`
--
ALTER TABLE `siteattributevalues`
  ADD PRIMARY KEY (`siteID`,`akID`),
  ADD KEY `IDX_67658AF7521D8435` (`siteID`),
  ADD KEY `IDX_67658AF7B6561A7E` (`akID`),
  ADD KEY `IDX_67658AF7A2A82A5D` (`avID`);

--
-- Index pour la table `sitelocales`
--
ALTER TABLE `sitelocales`
  ADD PRIMARY KEY (`siteLocaleID`),
  ADD UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  ADD KEY `IDX_2527AB2C521D8435` (`siteID`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`siteID`),
  ADD UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  ADD KEY `IDX_7DC18567E9548DF7` (`siteTypeID`);

--
-- Index pour la table `sitesearchindexattributes`
--
ALTER TABLE `sitesearchindexattributes`
  ADD PRIMARY KEY (`siteID`);

--
-- Index pour la table `sitetrees`
--
ALTER TABLE `sitetrees`
  ADD PRIMARY KEY (`siteTreeID`);

--
-- Index pour la table `sitetreetrees`
--
ALTER TABLE `sitetreetrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`);

--
-- Index pour la table `sitetypes`
--
ALTER TABLE `sitetypes`
  ADD PRIMARY KEY (`siteTypeID`),
  ADD UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  ADD UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  ADD KEY `IDX_7CBFE975CE45CBB0` (`pkgID`);

--
-- Index pour la table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`slID`),
  ADD KEY `IDX_84EBA2B4521D8435` (`siteID`);

--
-- Index pour la table `stacks`
--
ALTER TABLE `stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Index pour la table `stackusagerecord`
--
ALTER TABLE `stackusagerecord`
  ADD PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Index pour la table `stylecustomizercustomcssrecords`
--
ALTER TABLE `stylecustomizercustomcssrecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Index pour la table `stylecustomizerinlinestylepresets`
--
ALTER TABLE `stylecustomizerinlinestylepresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Index pour la table `stylecustomizerinlinestylesets`
--
ALTER TABLE `stylecustomizerinlinestylesets`
  ADD PRIMARY KEY (`issID`);

--
-- Index pour la table `stylecustomizervaluelists`
--
ALTER TABLE `stylecustomizervaluelists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Index pour la table `stylecustomizervalues`
--
ALTER TABLE `stylecustomizervalues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Index pour la table `systemantispamlibraries`
--
ALTER TABLE `systemantispamlibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `systemcaptchalibraries`
--
ALTER TABLE `systemcaptchalibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `systemcontenteditorsnippets`
--
ALTER TABLE `systemcontenteditorsnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `systemdatabasemigrations`
--
ALTER TABLE `systemdatabasemigrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `systemdatabasequerylog`
--
ALTER TABLE `systemdatabasequerylog`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `topictrees`
--
ALTER TABLE `topictrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Index pour la table `treefilenodes`
--
ALTER TABLE `treefilenodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fID` (`fID`);

--
-- Index pour la table `treegroupnodes`
--
ALTER TABLE `treegroupnodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Index pour la table `treenodepermissionassignments`
--
ALTER TABLE `treenodepermissionassignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Index pour la table `treenodes`
--
ALTER TABLE `treenodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Index pour la table `treenodetypes`
--
ALTER TABLE `treenodetypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `trees`
--
ALTER TABLE `trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Index pour la table `treesearchquerynodes`
--
ALTER TABLE `treesearchquerynodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `savedSearchID` (`savedSearchID`);

--
-- Index pour la table `treetypes`
--
ALTER TABLE `treetypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `userattributekeys`
--
ALTER TABLE `userattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Index pour la table `userattributevalues`
--
ALTER TABLE `userattributevalues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `IDX_4DB68CA6FD71026C` (`uID`),
  ADD KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  ADD KEY `IDX_4DB68CA6A2A82A5D` (`avID`);

--
-- Index pour la table `userbannedips`
--
ALTER TABLE `userbannedips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32));

--
-- Index pour la table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Index pour la table `userpermissioneditpropertyaccesslist`
--
ALTER TABLE `userpermissioneditpropertyaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Index pour la table `userpermissioneditpropertyattributeaccesslistcustom`
--
ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Index pour la table `userpermissionviewattributeaccesslist`
--
ALTER TABLE `userpermissionviewattributeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Index pour la table `userpermissionviewattributeaccesslistcustom`
--
ALTER TABLE `userpermissionviewattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Index pour la table `userpointactions`
--
ALTER TABLE `userpointactions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Index pour la table `userpointhistory`
--
ALTER TABLE `userpointhistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Index pour la table `userprivatemessages`
--
ALTER TABLE `userprivatemessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Index pour la table `userprivatemessagesto`
--
ALTER TABLE `userprivatemessagesto`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Index pour la table `usersearchindexattributes`
--
ALTER TABLE `usersearchindexattributes`
  ADD PRIMARY KEY (`uID`);

--
-- Index pour la table `usersignupnotifications`
--
ALTER TABLE `usersignupnotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_7FB1DF5B7B18287E` (`usID`);

--
-- Index pour la table `usersignups`
--
ALTER TABLE `usersignups`
  ADD PRIMARY KEY (`usID`),
  ADD UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  ADD KEY `IDX_FEB5D909D3564642` (`createdBy`);

--
-- Index pour la table `uservalidationhashes`
--
ALTER TABLE `uservalidationhashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Index pour la table `userworkflowprogress`
--
ALTER TABLE `userworkflowprogress`
  ADD PRIMARY KEY (`uID`,`wpID`);

--
-- Index pour la table `workflowprogress`
--
ALTER TABLE `workflowprogress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Index pour la table `workflowprogresscategories`
--
ALTER TABLE `workflowprogresscategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `workflowprogresshistory`
--
ALTER TABLE `workflowprogresshistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Index pour la table `workflowprogressnotifications`
--
ALTER TABLE `workflowprogressnotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Index pour la table `workflowrequestobjects`
--
ALTER TABLE `workflowrequestobjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Index pour la table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Index pour la table `workflowtypes`
--
ALTER TABLE `workflowtypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `arealayoutcolumns`
--
ALTER TABLE `arealayoutcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `arealayoutcustomcolumns`
--
ALTER TABLE `arealayoutcustomcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `arealayoutpresets`
--
ALTER TABLE `arealayoutpresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `arealayouts`
--
ALTER TABLE `arealayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `arealayoutthemegridcolumns`
--
ALTER TABLE `arealayoutthemegridcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `areas`
--
ALTER TABLE `areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  MODIFY `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `atselectoptionlists`
--
ALTER TABLE `atselectoptionlists`
  MODIFY `avSelectOptionListID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  MODIFY `avSelectOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `attributekeys`
--
ALTER TABLE `attributekeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `attributesets`
--
ALTER TABLE `attributesets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `attributetypes`
--
ALTER TABLE `attributetypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `attributevalues`
--
ALTER TABLE `attributevalues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT pour la table `authenticationtypes`
--
ALTER TABLE `authenticationtypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `authtypeconcretecookiemap`
--
ALTER TABLE `authtypeconcretecookiemap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bannedwords`
--
ALTER TABLE `bannedwords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `blocktypes`
--
ALTER TABLE `blocktypes`
  MODIFY `btID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `blocktypesets`
--
ALTER TABLE `blocktypesets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `btfaqentries`
--
ALTER TABLE `btfaqentries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btformanswers`
--
ALTER TABLE `btformanswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btformanswerset`
--
ALTER TABLE `btformanswerset`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btformquestions`
--
ALTER TABLE `btformquestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btimagesliderentries`
--
ALTER TABLE `btimagesliderentries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btsharethispage`
--
ALTER TABLE `btsharethispage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btsociallinks`
--
ALTER TABLE `btsociallinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btsurveyoptions`
--
ALTER TABLE `btsurveyoptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `btsurveyresults`
--
ALTER TABLE `btsurveyresults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `collections`
--
ALTER TABLE `collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT pour la table `conversationdiscussions`
--
ALTER TABLE `conversationdiscussions`
  MODIFY `cnvDiscussionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `conversationeditors`
--
ALTER TABLE `conversationeditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `conversationflaggedmessagetypes`
--
ALTER TABLE `conversationflaggedmessagetypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `conversationmessageattachments`
--
ALTER TABLE `conversationmessageattachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `conversationmessageratings`
--
ALTER TABLE `conversationmessageratings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `conversationmessages`
--
ALTER TABLE `conversationmessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `conversationratingtypes`
--
ALTER TABLE `conversationratingtypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `downloadstatistics`
--
ALTER TABLE `downloadstatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  MODIFY `exEntryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `featureassignments`
--
ALTER TABLE `featureassignments`
  MODIFY `faID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `featurecategories`
--
ALTER TABLE `featurecategories`
  MODIFY `fcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `features`
--
ALTER TABLE `features`
  MODIFY `feID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `fileimagethumbnailtypes`
--
ALTER TABLE `fileimagethumbnailtypes`
  MODIFY `ftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `filesetfiles`
--
ALTER TABLE `filesetfiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `filesets`
--
ALTER TABLE `filesets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `filestoragelocations`
--
ALTER TABLE `filestoragelocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `filestoragelocationtypes`
--
ALTER TABLE `filestoragelocationtypes`
  MODIFY `fslTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `fileversionlog`
--
ALTER TABLE `fileversionlog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gatheringconfigureddatasources`
--
ALTER TABLE `gatheringconfigureddatasources`
  MODIFY `gcsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gatheringdatasources`
--
ALTER TABLE `gatheringdatasources`
  MODIFY `gasID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `gatheringitemfeatureassignments`
--
ALTER TABLE `gatheringitemfeatureassignments`
  MODIFY `gafaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gatheringitems`
--
ALTER TABLE `gatheringitems`
  MODIFY `gaiID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gatheringitemtemplatefeatures`
--
ALTER TABLE `gatheringitemtemplatefeatures`
  MODIFY `gfeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `gatheringitemtemplates`
--
ALTER TABLE `gatheringitemtemplates`
  MODIFY `gatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `gatheringitemtemplatetypes`
--
ALTER TABLE `gatheringitemtemplatetypes`
  MODIFY `gatTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `gatherings`
--
ALTER TABLE `gatherings`
  MODIFY `gaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `groupsets`
--
ALTER TABLE `groupsets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `jobsets`
--
ALTER TABLE `jobsets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `jobslog`
--
ALTER TABLE `jobslog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mailimporters`
--
ALTER TABLE `mailimporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `mailvalidationhashes`
--
ALTER TABLE `mailvalidationhashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `multilingualtranslations`
--
ALTER TABLE `multilingualtranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  MODIFY `naID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `nID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pagefeeds`
--
ALTER TABLE `pagefeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pagepaths`
--
ALTER TABLE `pagepaths`
  MODIFY `ppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT pour la table `pagetemplates`
--
ALTER TABLE `pagetemplates`
  MODIFY `pTemplateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `pagethemes`
--
ALTER TABLE `pagethemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pagetypecomposercontroltypes`
--
ALTER TABLE `pagetypecomposercontroltypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pagetypecomposerformlayoutsetcontrols`
--
ALTER TABLE `pagetypecomposerformlayoutsetcontrols`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `pagetypecomposerformlayoutsets`
--
ALTER TABLE `pagetypecomposerformlayoutsets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pagetypecomposeroutputblocks`
--
ALTER TABLE `pagetypecomposeroutputblocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pagetypecomposeroutputcontrols`
--
ALTER TABLE `pagetypecomposeroutputcontrols`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pagetypepublishtargettypes`
--
ALTER TABLE `pagetypepublishtargettypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pagetypes`
--
ALTER TABLE `pagetypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `permissionaccess`
--
ALTER TABLE `permissionaccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `permissionaccessentities`
--
ALTER TABLE `permissionaccessentities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `permissionaccessentitygroups`
--
ALTER TABLE `permissionaccessentitygroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `permissionaccessentitytypes`
--
ALTER TABLE `permissionaccessentitytypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `permissiondurationobjects`
--
ALTER TABLE `permissiondurationobjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `permissionkeycategories`
--
ALTER TABLE `permissionkeycategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `permissionkeys`
--
ALTER TABLE `permissionkeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT pour la table `pilecontents`
--
ALTER TABLE `pilecontents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `piles`
--
ALTER TABLE `piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `queuemessages`
--
ALTER TABLE `queuemessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `queues`
--
ALTER TABLE `queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `savedfilesearchqueries`
--
ALTER TABLE `savedfilesearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `savedpagesearchqueries`
--
ALTER TABLE `savedpagesearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `savedusersearchqueries`
--
ALTER TABLE `savedusersearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `signuprequests`
--
ALTER TABLE `signuprequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sitelocales`
--
ALTER TABLE `sitelocales`
  MODIFY `siteLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `siteID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sitetrees`
--
ALTER TABLE `sitetrees`
  MODIFY `siteTreeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sitetypes`
--
ALTER TABLE `sitetypes`
  MODIFY `siteTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `slID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stacks`
--
ALTER TABLE `stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `stylecustomizercustomcssrecords`
--
ALTER TABLE `stylecustomizercustomcssrecords`
  MODIFY `sccRecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stylecustomizerinlinestylepresets`
--
ALTER TABLE `stylecustomizerinlinestylepresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stylecustomizerinlinestylesets`
--
ALTER TABLE `stylecustomizerinlinestylesets`
  MODIFY `issID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `stylecustomizervaluelists`
--
ALTER TABLE `stylecustomizervaluelists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stylecustomizervalues`
--
ALTER TABLE `stylecustomizervalues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `systemdatabasequerylog`
--
ALTER TABLE `systemdatabasequerylog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `treefilenodes`
--
ALTER TABLE `treefilenodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `treegroupnodes`
--
ALTER TABLE `treegroupnodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `treenodes`
--
ALTER TABLE `treenodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `treenodetypes`
--
ALTER TABLE `treenodetypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `trees`
--
ALTER TABLE `trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `treesearchquerynodes`
--
ALTER TABLE `treesearchquerynodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `treetypes`
--
ALTER TABLE `treetypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `userbannedips`
--
ALTER TABLE `userbannedips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `userpointactions`
--
ALTER TABLE `userpointactions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `userpointhistory`
--
ALTER TABLE `userpointhistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `userprivatemessages`
--
ALTER TABLE `userprivatemessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `usersignups`
--
ALTER TABLE `usersignups`
  MODIFY `usID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `uservalidationhashes`
--
ALTER TABLE `uservalidationhashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `workflowprogress`
--
ALTER TABLE `workflowprogress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `workflowprogresscategories`
--
ALTER TABLE `workflowprogresscategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `workflowprogresshistory`
--
ALTER TABLE `workflowprogresshistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `workflowrequestobjects`
--
ALTER TABLE `workflowrequestobjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `workflowtypes`
--
ALTER TABLE `workflowtypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ataddress`
--
ALTER TABLE `ataddress`
  ADD CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `ataddresssettings`
--
ALTER TABLE `ataddresssettings`
  ADD CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `atboolean`
--
ALTER TABLE `atboolean`
  ADD CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atbooleansettings`
--
ALTER TABLE `atbooleansettings`
  ADD CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `atdatetime`
--
ALTER TABLE `atdatetime`
  ADD CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atdatetimesettings`
--
ALTER TABLE `atdatetimesettings`
  ADD CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `atdefault`
--
ALTER TABLE `atdefault`
  ADD CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atemptysettings`
--
ALTER TABLE `atemptysettings`
  ADD CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `atexpress`
--
ALTER TABLE `atexpress`
  ADD CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atexpressselectedentries`
--
ALTER TABLE `atexpressselectedentries`
  ADD CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atexpress` (`avID`);

--
-- Contraintes pour la table `atexpresssettings`
--
ALTER TABLE `atexpresssettings`
  ADD CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `expressentities` (`id`);

--
-- Contraintes pour la table `atfile`
--
ALTER TABLE `atfile`
  ADD CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`);

--
-- Contraintes pour la table `atfilesettings`
--
ALTER TABLE `atfilesettings`
  ADD CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `atnumber`
--
ALTER TABLE `atnumber`
  ADD CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atselect`
--
ALTER TABLE `atselect`
  ADD CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  ADD CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atsociallinks` (`avID`);

--
-- Contraintes pour la table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  ADD CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attopic` (`avID`);

--
-- Contraintes pour la table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  ADD CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`);

--
-- Contraintes pour la table `atselectoptionsselected`
--
ALTER TABLE `atselectoptionsselected`
  ADD CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atselect` (`avID`),
  ADD CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atselectoptions` (`avSelectOptionID`);

--
-- Contraintes pour la table `atselectsettings`
--
ALTER TABLE `atselectsettings`
  ADD CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`);

--
-- Contraintes pour la table `atsociallinks`
--
ALTER TABLE `atsociallinks`
  ADD CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `attextareasettings`
--
ALTER TABLE `attextareasettings`
  ADD CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `attextsettings`
--
ALTER TABLE `attextsettings`
  ADD CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `attopic`
--
ALTER TABLE `attopic`
  ADD CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`);

--
-- Contraintes pour la table `attopicsettings`
--
ALTER TABLE `attopicsettings`
  ADD CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  ADD CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `attributekeys`
--
ALTER TABLE `attributekeys`
  ADD CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  ADD CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `attributesetkeys`
--
ALTER TABLE `attributesetkeys`
  ADD CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `attributesets` (`asID`),
  ADD CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `attributesets`
--
ALTER TABLE `attributesets`
  ADD CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `attributetypecategories`
--
ALTER TABLE `attributetypecategories`
  ADD CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  ADD CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`);

--
-- Contraintes pour la table `attributetypes`
--
ALTER TABLE `attributetypes`
  ADD CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `collectionattributekeys`
--
ALTER TABLE `collectionattributekeys`
  ADD CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `collectionattributevalues`
--
ALTER TABLE `collectionattributevalues`
  ADD CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `conversationmessagenotifications`
--
ALTER TABLE `conversationmessagenotifications`
  ADD CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `expressattributekeys`
--
ALTER TABLE `expressattributekeys`
  ADD CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`),
  ADD CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `expressentities`
--
ALTER TABLE `expressentities`
  ADD CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `expressforms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `expressforms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `expressentityassociations`
--
ALTER TABLE `expressentityassociations`
  ADD CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `expressentities` (`id`),
  ADD CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `expressentities` (`id`);

--
-- Contraintes pour la table `expressentityassociationselectedentries`
--
ALTER TABLE `expressentityassociationselectedentries`
  ADD CONSTRAINT `FK_1F9C570CBF396750` FOREIGN KEY (`id`) REFERENCES `expressentityentryassociations` (`id`),
  ADD CONSTRAINT `FK_1F9C570CC7B1F65C` FOREIGN KEY (`exSelectedEntryID`) REFERENCES `expressentityentries` (`exEntryID`);

--
-- Contraintes pour la table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  ADD CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `expressentities` (`id`);

--
-- Contraintes pour la table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  ADD CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`);

--
-- Contraintes pour la table `expressentityentryattributevalues`
--
ALTER TABLE `expressentityentryattributevalues`
  ADD CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `expressformfieldsetassociationcontrols`
--
ALTER TABLE `expressformfieldsetassociationcontrols`
  ADD CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`);

--
-- Contraintes pour la table `expressformfieldsetattributekeycontrols`
--
ALTER TABLE `expressformfieldsetattributekeycontrols`
  ADD CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `expressformfieldsetcontrols`
--
ALTER TABLE `expressformfieldsetcontrols`
  ADD CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `expressformfieldsets` (`id`);

--
-- Contraintes pour la table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  ADD CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `expressforms` (`id`);

--
-- Contraintes pour la table `expressformfieldsettextcontrols`
--
ALTER TABLE `expressformfieldsettextcontrols`
  ADD CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `expressforms`
--
ALTER TABLE `expressforms`
  ADD CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`);

--
-- Contraintes pour la table `fileattributekeys`
--
ALTER TABLE `fileattributekeys`
  ADD CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fileattributevalues`
--
ALTER TABLE `fileattributevalues`
  ADD CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `filestoragelocations` (`fslID`),
  ADD CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Contraintes pour la table `fileversions`
--
ALTER TABLE `fileversions`
  ADD CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`);

--
-- Contraintes pour la table `legacyattributekeys`
--
ALTER TABLE `legacyattributekeys`
  ADD CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  ADD CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`),
  ADD CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Contraintes pour la table `privatemessagenotifications`
--
ALTER TABLE `privatemessagenotifications`
  ADD CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `queuemessages`
--
ALTER TABLE `queuemessages`
  ADD CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `siteattributekeys`
--
ALTER TABLE `siteattributekeys`
  ADD CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `siteattributevalues`
--
ALTER TABLE `siteattributevalues`
  ADD CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  ADD CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Contraintes pour la table `sitelocales`
--
ALTER TABLE `sitelocales`
  ADD CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  ADD CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetreetrees` (`siteTreeID`);

--
-- Contraintes pour la table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `sitetypes` (`siteTypeID`);

--
-- Contraintes pour la table `sitetreetrees`
--
ALTER TABLE `sitetreetrees`
  ADD CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `sitelocales` (`siteLocaleID`),
  ADD CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sitetypes`
--
ALTER TABLE `sitetypes`
  ADD CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Contraintes pour la table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`);

--
-- Contraintes pour la table `userattributekeys`
--
ALTER TABLE `userattributekeys`
  ADD CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `userattributevalues`
--
ALTER TABLE `userattributevalues`
  ADD CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Contraintes pour la table `usersignupnotifications`
--
ALTER TABLE `usersignupnotifications`
  ADD CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `usersignups` (`usID`),
  ADD CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `usersignups`
--
ALTER TABLE `usersignups`
  ADD CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `users` (`uID`),
  ADD CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Contraintes pour la table `workflowprogressnotifications`
--
ALTER TABLE `workflowprogressnotifications`
  ADD CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;
--
-- Base de données :  `micro_blog`
--
CREATE DATABASE IF NOT EXISTS `micro_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `micro_blog`;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `date` int(100) NOT NULL,
  `id_utilisateurs` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `date`, `id_utilisateurs`) VALUES
(104, 'Salut', 1486234783, 12),
(103, 'zzzzz', 1485883286, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `sid` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mdp`, `pseudo`, `sid`) VALUES
(1, '', '', 'thomas_delattre@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Gadhena', '6a172a11353e6c04df64ccbac182346e'),
(2, '', '', 'thomas@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Delattre Thomas', 'd4ba00cd3951cd7a42bb0e058066fd43'),
(3, 'Delattre', 'Thomas', 'truman.harry@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Elthari', '91e711b862becabf22681e1447369847'),
(4, 'Zacharie', 'Essombe', 'zac@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'ZE07', '9713ba24f2398e572f5908c32774a499'),
(5, 'Delattre', 't', '', 'd41d8cd98f00b204e9800998ecf8427e', '', NULL),
(6, 'Mathias', 'Anais', 'anais@hotmail.fr', 'b6edd10559b20cb0a3ddaeb15e5267cc', 'anais.mathias', '677f44d7b2988070981ca1d9abe1bf2b'),
(7, 'Mathias', 'zacharie', 'mathis.zacharie@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Maza', NULL),
(8, 'Mathias', 'zacharie', 'mathis.zachariee@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Mazaa', NULL),
(9, 'Mathias', 'zacharie', 'mathis.zacharieee@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Mazaaa', NULL),
(10, 'Mathias', 'zacharie', 'mathis.zacharieeee@hotmail.fr', 'ab4f63f9ac65152575886860dde480a1', 'Mazaaaa', NULL),
(11, 'Mathias', 'Delattre', 'truman.harry@hotmail.fraa', '47bce5c74f589f4867dbd57e9ca9f808', 'ZE07aa', NULL),
(12, 'Lecerf', 'Margaux', 'MPRoach.l@gmail.com', 'd19dcf59d773c8b24bb7bf55830c1a67', 'MPRoach', 'd69202bcf850934b19bbf631d8ac2272');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateurs` (`id_utilisateurs`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;--
-- Base de données :  `snproject`
--
CREATE DATABASE IF NOT EXISTS `snproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `snproject`;

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
(1, 1);

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
(1, 'Micro blog', 1, 2);

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
(1, 'PHP', 'Elaboration d\'un micro blog en php', 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idE` int(11) NOT NULL,
  `nom` char(60) DEFAULT NULL,
  `prenom` char(60) DEFAULT NULL,
  `login` char(80) DEFAULT NULL,
  `mdp` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`idE`, `nom`, `prenom`, `login`, `mdp`) VALUES
(1, 'Delattre', 'Thomas', NULL, NULL);

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
('vvvv', '2017-02-14', 1, 1);

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
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
--
-- Base de données :  `snprojectdim`
--
CREATE DATABASE IF NOT EXISTS `snprojectdim` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `snprojectdim`;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `idC` int(11) NOT NULL,
  `libelle` varchar(80) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `idC` int(11) NOT NULL,
  `libelle` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idE` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `login` char(20) NOT NULL,
  `mdp` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `idEval` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `idN` int(11) NOT NULL,
  `note` char(2) NOT NULL,
  `coef` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `idP` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `nomEta` varchar(120) NOT NULL,
  `login` varchar(20) NOT NULL,
  `mdp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idE`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`idEval`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`idN`);

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
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `idN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
