-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-taskgg.alwaysdata.net
-- Generation Time: Dec 08, 2023 at 09:27 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskgg_tournoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cantine`
--

CREATE TABLE `cantine` (
  `nomRes` varchar(50) NOT NULL,
  `adresseRes` text DEFAULT NULL,
  `nombre_de_place` int(11) DEFAULT NULL,
  `nombres_de_services` int(11) DEFAULT NULL,
  `coordonées` text DEFAULT NULL,
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cantine`
--

INSERT INTO `cantine` (`nomRes`, `adresseRes`, `nombre_de_place`, `nombres_de_services`, `coordonées`, `typeService`) VALUES
('Cantine Jean Moulin ', '6 Rue Jean Moulin, 12100 Millau', 50, 1, '44.098993124079, 3.073876109495', 'service_restauration'),
('Food snipe', '59 Rue du Tir, 62400 Béthune', 20, 1, '50.53085620862, 2.635362764702', 'service_restauration'),
('La cantine de Lacroix', ' 127 bis Rue Lacroix, 59100 Roubaix', 40, 1, '50.69720500647, 3.183470965914', 'service_restauration');

-- --------------------------------------------------------

--
-- Table structure for table `citoyenne`
--

CREATE TABLE `citoyenne` (
  `nomC` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citoyenne`
--

INSERT INTO `citoyenne` (`nomC`, `prenom`, `adresse`, `datenaissance`, `telephone`, `email`) VALUES
('Curry', 'Steph', '157 place de la pierre, 12100 Millau', '1989-05-15', 685462933, 'steph.curry@gmail.com'),
('Durant', 'Kevin', '88 Allée paul claudel, 59300 Valenciennes', '2000-10-01', 784585943, 'kevin.durant@gmail.com'),
('Goden', 'Marie', '157 place de la pierre, 12100 Millau', '1989-01-15', 68545233, 'marie.goden@gmail.com'),
('Henry', 'David', '26 Rue Charrue, 59100 Roubaix', '2002-11-03', 694030343, 'david.henry@gmail.com'),
('Kyrie', 'Irving', '7 place des ecrins, 59300 Valenciennes', '1989-08-15', 784565933, 'kyrie.irving@gmail.com'),
('Tompson', 'Klay', '177 La corière, 12100 Millau', '1989-08-15', 784566678, 'klay.tompson@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `classe`
--

CREATE TABLE `classe` (
  `classe` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classe`
--

INSERT INTO `classe` (`classe`, `adresse`) VALUES
('CE1-A', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CE1-B', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CE2-A', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CE2-B', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CE2-C', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CP-A', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CP-B', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CP-C', '106 Rue d\'Inkermann, 59100 Roubaix'),
('CE1-1', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE1-2', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE1-3', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE2-1', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE2-2', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE2-3', '128 bis Rue Lacroix, 59100 Roubaix'),
('CE2-4', '128 bis Rue Lacroix, 59100 Roubaix'),
('CP-1', '128 bis Rue Lacroix, 59100 Roubaix'),
('CP-2', '128 bis Rue Lacroix, 59100 Roubaix'),
('CP-3', '128 bis Rue Lacroix, 59100 Roubaix'),
('CM1-A', '58 Rue du Tir, 62400 Béthune'),
('CM1-B', '58 Rue du Tir, 62400 Béthune'),
('CM1-C', '58 Rue du Tir, 62400 Béthune'),
('CM1-D', '58 Rue du Tir, 62400 Béthune'),
('CM1-E', '58 Rue du Tir, 62400 Béthune'),
('CM1-F', '58 Rue du Tir, 62400 Béthune'),
('CM2-A', '58 Rue du Tir, 62400 Béthune'),
('CM2-B', '58 Rue du Tir, 62400 Béthune'),
('CM2-C', '58 Rue du Tir, 62400 Béthune'),
('CM2-D', '58 Rue du Tir, 62400 Béthune'),
('CM2-E', '58 Rue du Tir, 62400 Béthune'),
('CM1-1', '7 Rue Jean Moulin, 12100 Millau'),
('CM1-2', '7 Rue Jean Moulin, 12100 Millau'),
('CM1-3', '7 Rue Jean Moulin, 12100 Millau'),
('CM1-4', '7 Rue Jean Moulin, 12100 Millau'),
('CM1-5', '7 Rue Jean Moulin, 12100 Millau'),
('CM1-6', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-1', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-2', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-3', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-4', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-5', '7 Rue Jean Moulin, 12100 Millau'),
('CM2-6', '7 Rue Jean Moulin, 12100 Millau');

-- --------------------------------------------------------

--
-- Table structure for table `commune`
--

CREATE TABLE `commune` (
  `idC` varchar(50) NOT NULL,
  `code_postale` int(11) DEFAULT NULL,
  `nomCommune` varchar(50) DEFAULT NULL,
  `coordonneesC` text DEFAULT NULL,
  `codeINSEE` int(11) DEFAULT NULL,
  `adresse_mairie` text DEFAULT NULL,
  `nomDep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commune`
--

INSERT INTO `commune` (`idC`, `code_postale`, `nomCommune`, `coordonneesC`, `codeINSEE`, `adresse_mairie`, `nomDep`) VALUES
('1', 59100, 'Roubaix', '50.6916° N latitude et 3.1746° E longitude', 59512, 'Hôtel de Ville\r\nPlace du Général de Gaulle\r\n59100 Roubaix\r\nFrance', 'Nord'),
('2', 59300, 'Valenciennes', '50.357113° N latitude et 3.518332° E longitude', 59606, 'Place d\'Armes 90339, 59304 Valenciennes', 'Nord'),
('3', 59140, 'Dunkerque', '51.034368° N latitude et 2.376776° E longitude', 59183, 'Pl. Charles Valentin, 59140 Dunkerque', 'Nord'),
('4', 62400, 'Béthune', '50.531036° N latitude et 2.639260° E longitude', 62119, 'Pl. du 4 Septembre, 62400 Béthune', 'Pas-de-Calais'),
('5', 12100, 'Millau', '44.100575° N latitude et 3.077801° E longitude', 12145, 'Hôtel de Ville\r\nPlace Charles de Gaulle\r\n12100 Millau', 'Aveyron');

-- --------------------------------------------------------

--
-- Table structure for table `demande`
--

CREATE TABLE `demande` (
  `idD` varchar(50) NOT NULL,
  `dateDemande` date DEFAULT NULL,
  `message_optionnel` text DEFAULT NULL,
  `personne_a_la_demande` varchar(50) DEFAULT NULL,
  `liste_de_justificatifs` text DEFAULT NULL,
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demande`
--

INSERT INTO `demande` (`idD`, `dateDemande`, `message_optionnel`, `personne_a_la_demande`, `liste_de_justificatifs`, `typeService`) VALUES
('1', '2024-07-15', NULL, 'Moderne', '-Le livret de famille\r\n-Une carte d\'identité ou une copie d\'extrait d\'acte de naissance\r\n-Un justificatif de domicile\r\n-Un document attestant que l\'enfant a reçu les vaccinations obligatoires pour son âge', 'service_scolarité'),
('2', '2024-01-01', '', 'Bevon', NULL, 'service_restauration'),
('3', '2024-01-01', '', 'Moumouni', NULL, 'service_restauration'),
('4', '2024-01-01', '', 'Decuis', NULL, 'service_restauration'),
('5', '2024-01-01', '', 'Moderne', NULL, 'service_restauration'),
('6', '2023-12-08', NULL, 'Curry', NULL, 'Services_Union'),
('7', '2023-10-01', NULL, 'Henry', NULL, 'Services_Union'),
('8', '2024-01-23', NULL, 'Tompson', NULL, 'services_elections'),
('9', '2023-08-08', NULL, 'Kyrie', '-Le livret de famille\r\n-Une carte d\'identité ou une copie d\'extrait d\'acte de naissance\r\n-Un justificatif de domicile\r\n-Un document attestant que l\'enfant a reçu les vaccinations obligatoires pour son âge', 'service_scolarité');

-- --------------------------------------------------------

--
-- Table structure for table `Departemment`
--

CREATE TABLE `Departemment` (
  `nomDep` varchar(50) NOT NULL,
  `codeINSEE` int(11) DEFAULT NULL,
  `nomRegion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Departemment`
--

INSERT INTO `Departemment` (`nomDep`, `codeINSEE`, `nomRegion`) VALUES
('Ardèche', 7, 'Auvergne-Rhône-Alpes'),
('Aveyron', 12, 'Occitanie'),
('Ille-et-Vilaine', 35, 'Bretagne'),
('Nord', 59, 'Hauts-de-France'),
('Pas-de-Calais', 62, 'Hauts-de-France');

-- --------------------------------------------------------

--
-- Table structure for table `ecole`
--

CREATE TABLE `ecole` (
  `adresse` varchar(50) NOT NULL,
  `nombre_de_classes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ecole`
--

INSERT INTO `ecole` (`adresse`, `nombre_de_classes`) VALUES
('106 Rue d\'Inkermann, 59100 Roubaix', '8'),
('128 bis Rue Lacroix, 59100 Roubaix', '10'),
('58 Rue du Tir, 62400 Béthune', '11'),
('7 Rue Jean Moulin, 12100 Millau', '12');

-- --------------------------------------------------------

--
-- Table structure for table `effectuer`
--

CREATE TABLE `effectuer` (
  `idD` varchar(50) NOT NULL,
  `nomC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `effectuer`
--

INSERT INTO `effectuer` (`idD`, `nomC`) VALUES
('6', 'Curry'),
('7', 'Henry'),
('8', 'Tompson'),
('9', 'Kyrie');

-- --------------------------------------------------------

--
-- Table structure for table `enfant`
--

CREATE TABLE `enfant` (
  `nomE` varchar(50) NOT NULL,
  `prenomE` varchar(50) DEFAULT NULL,
  `typeService` varchar(50) NOT NULL,
  `nomRes` varchar(50) NOT NULL,
  `classe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enfant`
--

INSERT INTO `enfant` (`nomE`, `prenomE`, `typeService`, `nomRes`, `classe`) VALUES
('Bevon', 'Andy', 'service_scolarité', 'Food snipe', 'CM2-A'),
('Decuis', 'Gérard', 'service_scolarité', 'Cantine Jean Moulin ', 'CE1-1'),
('Leméne', 'Cédric', 'service_scolarité', 'Food snipe', 'CM1-A'),
('Moderne', 'Lowis', 'service_scolarité', 'Food snipe', 'CM2-A'),
('Leméne', 'Cédric', 'service_scolarité', 'Cantine Jean Moulin ', 'CM1-1');

-- --------------------------------------------------------

--
-- Table structure for table `est_changer`
--

CREATE TABLE `est_changer` (
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Gratuits`
--

CREATE TABLE `Gratuits` (
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Gratuits`
--

INSERT INTO `Gratuits` (`typeService`) VALUES
('services_elections'),
('Services_Union');

-- --------------------------------------------------------

--
-- Table structure for table `heberger`
--

CREATE TABLE `heberger` (
  `typeService` varchar(50) NOT NULL,
  `idL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE `historique` (
  `nomE` varchar(50) NOT NULL,
  `classe` varchar(50) NOT NULL,
  `ecole` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `justificatif`
--

CREATE TABLE `justificatif` (
  `type` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `fichier` text DEFAULT NULL,
  `idD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Lieux`
--

CREATE TABLE `Lieux` (
  `idL` varchar(50) NOT NULL,
  `nomL` varchar(50) DEFAULT NULL,
  `typeL` varchar(50) DEFAULT NULL,
  `coordonnéesL` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Payants`
--

CREATE TABLE `Payants` (
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payants`
--

INSERT INTO `Payants` (`typeService`) VALUES
('service_restauration'),
('service_scolarité');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `nomRes` varchar(50) NOT NULL,
  `nomE` varchar(50) NOT NULL,
  `nombre_de_jours_d_absence` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposer`
--

CREATE TABLE `proposer` (
  `idC` varchar(50) NOT NULL,
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proposer`
--

INSERT INTO `proposer` (`idC`, `typeService`) VALUES
('1', 'services_elections'),
('1', 'Services_Union'),
('1', 'service_scolarité '),
('2', 'Services_Union'),
('2', 'service_restauration'),
('3', 'services_elections'),
('4', 'Services_Union'),
('5', 'services_elections');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `nomRegion` varchar(50) NOT NULL,
  `codeINSEE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`nomRegion`, `codeINSEE`) VALUES
('Auvergne-Rhône-Alpes', 84),
('Bretagne', 53),
('Hauts-de-France', 32),
('Occitanie', 76);

-- --------------------------------------------------------

--
-- Table structure for table `renouveller`
--

CREATE TABLE `renouveller` (
  `typeService` varchar(50) NOT NULL,
  `nomE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `typeService` varchar(50) NOT NULL,
  `libellé` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `periode_d_ouverture` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`typeService`, `libellé`, `description`, `periode_d_ouverture`) VALUES
('services_elections', 'Service d\'élection', NULL, '2023-09-01 01:25:39'),
('Services_Union', 'Service Union', NULL, '2023-09-01 01:22:58'),
('service_restauration', 'Service de Restauration Scolaire', 'Le service restauration scolaire est utilisé pour la cantine. En général, des tarifs réduits sont\r\naccordés sur le prix des repas en fonction du quotient familial renseigné', '2024-07-08 14:33:42'),
('service_scolarité', 'Service Scolaire', 'Le service scolaire concerne l’inscription\r\nd’enfant à l’école. ', '2024-08-25 15:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `services_elections`
--

CREATE TABLE `services_elections` (
  `typeService` varchar(50) NOT NULL,
  `bureau_de_vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_etat_civil`
--

CREATE TABLE `services_etat_civil` (
  `typeService` varchar(50) NOT NULL,
  `type_document` text NOT NULL,
  `date_disposition` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_signalement`
--

CREATE TABLE `services_signalement` (
  `typeService` varchar(50) NOT NULL,
  `type_signalement` varchar(50) DEFAULT NULL,
  `lieu_` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Services_Union`
--

CREATE TABLE `Services_Union` (
  `typeService` varchar(50) NOT NULL,
  `typeU` varchar(50) DEFAULT NULL,
  `date_prevu` datetime DEFAULT NULL,
  `couple` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Services_Union`
--

INSERT INTO `Services_Union` (`typeService`, `typeU`, `date_prevu`, `couple`) VALUES
('Services_Union', 'Pacs', '2023-12-08 00:00:00', 'Goden');

-- --------------------------------------------------------

--
-- Table structure for table `service_restauration`
--

CREATE TABLE `service_restauration` (
  `typeService` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_restauration`
--

INSERT INTO `service_restauration` (`typeService`) VALUES
('service_restauration');

-- --------------------------------------------------------

--
-- Table structure for table `service_scolarité`
--

CREATE TABLE `service_scolarité` (
  `typeService` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `numero_telephone` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_scolarité`
--

INSERT INTO `service_scolarité` (`typeService`, `nom`, `numero_telephone`, `prenom`) VALUES
('service_scolarité', 'Moderne', '06845955', 'Lowis');

-- --------------------------------------------------------

--
-- Table structure for table `unir`
--

CREATE TABLE `unir` (
  `nomC` varchar(50) NOT NULL,
  `typeService` varchar(50) NOT NULL,
  `contrat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unir`
--

INSERT INTO `unir` (`nomC`, `typeService`, `contrat`) VALUES
('Curry', 'Services_Union', 'Pacs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cantine`
--
ALTER TABLE `cantine`
  ADD PRIMARY KEY (`nomRes`),
  ADD KEY `typeService` (`typeService`);

--
-- Indexes for table `citoyenne`
--
ALTER TABLE `citoyenne`
  ADD PRIMARY KEY (`nomC`);

--
-- Indexes for table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`classe`),
  ADD KEY `adresse` (`adresse`);

--
-- Indexes for table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`idC`),
  ADD UNIQUE KEY `code_postale` (`code_postale`),
  ADD KEY `nomDep` (`nomDep`);

--
-- Indexes for table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`idD`),
  ADD KEY `typeService` (`typeService`);

--
-- Indexes for table `Departemment`
--
ALTER TABLE `Departemment`
  ADD PRIMARY KEY (`nomDep`),
  ADD KEY `nomRegion` (`nomRegion`);

--
-- Indexes for table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`adresse`);

--
-- Indexes for table `effectuer`
--
ALTER TABLE `effectuer`
  ADD PRIMARY KEY (`idD`,`nomC`),
  ADD KEY `nomC` (`nomC`);

--
-- Indexes for table `enfant`
--
ALTER TABLE `enfant`
  ADD KEY `typeService` (`typeService`),
  ADD KEY `nomRes` (`nomRes`),
  ADD KEY `classe` (`classe`);

--
-- Indexes for table `est_changer`
--
ALTER TABLE `est_changer`
  ADD PRIMARY KEY (`adresse`);

--
-- Indexes for table `Gratuits`
--
ALTER TABLE `Gratuits`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `heberger`
--
ALTER TABLE `heberger`
  ADD PRIMARY KEY (`typeService`,`idL`),
  ADD KEY `idL` (`idL`);

--
-- Indexes for table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`nomE`,`classe`),
  ADD KEY `classe` (`classe`);

--
-- Indexes for table `justificatif`
--
ALTER TABLE `justificatif`
  ADD PRIMARY KEY (`type`),
  ADD KEY `idD` (`idD`);

--
-- Indexes for table `Lieux`
--
ALTER TABLE `Lieux`
  ADD PRIMARY KEY (`idL`);

--
-- Indexes for table `Payants`
--
ALTER TABLE `Payants`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`nomRes`,`nomE`),
  ADD KEY `nomE` (`nomE`);

--
-- Indexes for table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`idC`,`typeService`),
  ADD KEY `typeService` (`typeService`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`nomRegion`);

--
-- Indexes for table `renouveller`
--
ALTER TABLE `renouveller`
  ADD PRIMARY KEY (`typeService`,`nomE`),
  ADD KEY `nomE` (`nomE`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `services_elections`
--
ALTER TABLE `services_elections`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `services_etat_civil`
--
ALTER TABLE `services_etat_civil`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `services_signalement`
--
ALTER TABLE `services_signalement`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `Services_Union`
--
ALTER TABLE `Services_Union`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `service_restauration`
--
ALTER TABLE `service_restauration`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `service_scolarité`
--
ALTER TABLE `service_scolarité`
  ADD PRIMARY KEY (`typeService`);

--
-- Indexes for table `unir`
--
ALTER TABLE `unir`
  ADD PRIMARY KEY (`nomC`,`typeService`),
  ADD KEY `typeService` (`typeService`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cantine`
--
ALTER TABLE `cantine`
  ADD CONSTRAINT `cantine_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `service_restauration` (`typeService`);

--
-- Constraints for table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`adresse`) REFERENCES `ecole` (`adresse`);

--
-- Constraints for table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `commune_ibfk_1` FOREIGN KEY (`nomDep`) REFERENCES `Departemment` (`nomDep`);

--
-- Constraints for table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `services` (`typeService`);

--
-- Constraints for table `Departemment`
--
ALTER TABLE `Departemment`
  ADD CONSTRAINT `Departemment_ibfk_1` FOREIGN KEY (`nomRegion`) REFERENCES `region` (`nomRegion`);

--
-- Constraints for table `effectuer`
--
ALTER TABLE `effectuer`
  ADD CONSTRAINT `effectuer_ibfk_1` FOREIGN KEY (`idD`) REFERENCES `demande` (`idD`),
  ADD CONSTRAINT `effectuer_ibfk_2` FOREIGN KEY (`nomC`) REFERENCES `citoyenne` (`nomC`);

--
-- Constraints for table `enfant`
--
ALTER TABLE `enfant`
  ADD CONSTRAINT `enfant_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `service_scolarité` (`typeService`),
  ADD CONSTRAINT `enfant_ibfk_2` FOREIGN KEY (`nomRes`) REFERENCES `cantine` (`nomRes`),
  ADD CONSTRAINT `enfant_ibfk_3` FOREIGN KEY (`classe`) REFERENCES `classe` (`classe`);

--
-- Constraints for table `est_changer`
--
ALTER TABLE `est_changer`
  ADD CONSTRAINT `est_changer_ibfk_1` FOREIGN KEY (`adresse`) REFERENCES `ecole` (`adresse`);

--
-- Constraints for table `Gratuits`
--
ALTER TABLE `Gratuits`
  ADD CONSTRAINT `Gratuits_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `services` (`typeService`);

--
-- Constraints for table `heberger`
--
ALTER TABLE `heberger`
  ADD CONSTRAINT `heberger_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `services_signalement` (`typeService`),
  ADD CONSTRAINT `heberger_ibfk_2` FOREIGN KEY (`idL`) REFERENCES `Lieux` (`idL`);

--
-- Constraints for table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`nomE`) REFERENCES `enfant` (`nomE`),
  ADD CONSTRAINT `historique_ibfk_2` FOREIGN KEY (`classe`) REFERENCES `classe` (`classe`);

--
-- Constraints for table `justificatif`
--
ALTER TABLE `justificatif`
  ADD CONSTRAINT `justificatif_ibfk_1` FOREIGN KEY (`idD`) REFERENCES `demande` (`idD`);

--
-- Constraints for table `Payants`
--
ALTER TABLE `Payants`
  ADD CONSTRAINT `Payants_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `services` (`typeService`);

--
-- Constraints for table `periode`
--
ALTER TABLE `periode`
  ADD CONSTRAINT `periode_ibfk_1` FOREIGN KEY (`nomRes`) REFERENCES `cantine` (`nomRes`),
  ADD CONSTRAINT `periode_ibfk_2` FOREIGN KEY (`nomE`) REFERENCES `enfant` (`nomE`);

--
-- Constraints for table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `proposer_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `commune` (`idC`),
  ADD CONSTRAINT `proposer_ibfk_2` FOREIGN KEY (`typeService`) REFERENCES `services` (`typeService`);

--
-- Constraints for table `renouveller`
--
ALTER TABLE `renouveller`
  ADD CONSTRAINT `renouveller_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `service_scolarité` (`typeService`),
  ADD CONSTRAINT `renouveller_ibfk_2` FOREIGN KEY (`nomE`) REFERENCES `enfant` (`nomE`);

--
-- Constraints for table `services_elections`
--
ALTER TABLE `services_elections`
  ADD CONSTRAINT `services_elections_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Gratuits` (`typeService`);

--
-- Constraints for table `services_etat_civil`
--
ALTER TABLE `services_etat_civil`
  ADD CONSTRAINT `services_etat_civil_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Gratuits` (`typeService`);

--
-- Constraints for table `services_signalement`
--
ALTER TABLE `services_signalement`
  ADD CONSTRAINT `services_signalement_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Gratuits` (`typeService`);

--
-- Constraints for table `Services_Union`
--
ALTER TABLE `Services_Union`
  ADD CONSTRAINT `Services_Union_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Gratuits` (`typeService`);

--
-- Constraints for table `service_restauration`
--
ALTER TABLE `service_restauration`
  ADD CONSTRAINT `service_restauration_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Payants` (`typeService`);

--
-- Constraints for table `service_scolarité`
--
ALTER TABLE `service_scolarité`
  ADD CONSTRAINT `service_scolarité_ibfk_1` FOREIGN KEY (`typeService`) REFERENCES `Payants` (`typeService`);

--
-- Constraints for table `unir`
--
ALTER TABLE `unir`
  ADD CONSTRAINT `unir_ibfk_1` FOREIGN KEY (`nomC`) REFERENCES `citoyenne` (`nomC`),
  ADD CONSTRAINT `unir_ibfk_2` FOREIGN KEY (`typeService`) REFERENCES `Services_Union` (`typeService`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
