-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 oct. 2021 à 23:12
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rentsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `apartment`
--

CREATE TABLE `apartment` (
  `apartmentNumber` int(11) NOT NULL,
  `apartmentBuildingId` int(11) NOT NULL,
  `apartmentNumberRooms` double DEFAULT NULL,
  `apartmentRentPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apartment`
--

INSERT INTO `apartment` (`apartmentNumber`, `apartmentBuildingId`, `apartmentNumberRooms`, `apartmentRentPrice`) VALUES
(3, 100, 6, NULL),
(5, 26, 3, 334),
(6, 5, 3.5, 550),
(8, 46, 5, 800),
(17, 50, 7, 560),
(20, 10, 5, 657.0300000000001),
(21, 4, 1, 760.95),
(22, 92, 8, 654),
(24, 59, 5, 789),
(26, 9, 1, 350),
(33, 61, 8, 456),
(42, 8, 2, 780),
(52, 108, 7, 900),
(56, 60, 1, 987),
(57, 13, 6, 766),
(60, 73, 2, 650),
(62, 107, 2, 1200),
(64, 111, 2, 1300),
(86, 39, 6, 450),
(86, 109, 2, 650),
(87, 99, 3, 2400),
(90, 70, 5, 456),
(91, 104, 8, 765),
(95, 34, 6, 456),
(114, 9, 6, 678),
(116, 36, 6, 877),
(117, 106, 8, 999),
(126, 59, 5, 876),
(127, 93, 1, 777),
(134, 25, 8, 1350),
(148, 24, 3, 777),
(148, 34, 3, 433),
(152, 23, 3, 789),
(164, 22, 4, 900),
(165, 45, 2, 899),
(166, 102, 7, 760),
(179, 14, 5, 545),
(179, 98, 3, 550),
(182, 56, 5, 670),
(183, 85, 7, 678),
(187, 6, 3, 650),
(192, 42, 1, 450),
(192, 82, 2, 780),
(201, 76, 4, 990),
(209, 66, 4, 999),
(210, 106, 2, 3500),
(216, 93, 5, 543),
(218, 87, 5, 678),
(231, 14, 6, 999),
(232, 93, 2, 780),
(238, 1, 7, 1089.0000000000002),
(238, 71, 5, 765),
(244, 63, 7, 444),
(246, 46, 6, 555),
(249, 59, 5, 666),
(257, 50, 8, 777),
(260, 16, 7, 888),
(260, 39, 4, 999),
(262, 32, 8, 1345),
(278, 48, 1, 1345),
(294, 70, 6, 3444),
(295, 44, 2, 1500),
(301, 3, 4, 1452.0000000000002),
(302, 10, 2, 1694.0000000000005),
(302, 16, 3, 1222),
(315, 18, 7, 555),
(316, 82, 6, 322),
(320, 64, 6, 780),
(322, 89, 2, 900),
(332, 88, 3, 800),
(340, 62, 8, 900),
(341, 40, 4, 600),
(348, 65, 4, 700),
(357, 39, 1, 500),
(359, 96, 3, 460),
(366, 19, 5, 900),
(376, 111, 4, 800),
(381, 8, 3, 1000),
(382, 89, 6, 4000),
(387, 45, 2, 780),
(387, 82, 3, 905),
(395, 87, 5, 655),
(397, 15, 6, 755),
(398, 33, 5, 855),
(405, 37, 1, 955),
(413, 53, 8, 1055),
(414, 97, 1, 350),
(415, 33, 7, 355),
(419, 11, 5, 655),
(422, 96, 7, 620),
(428, 57, 7, 670),
(438, 80, 5, 790),
(440, 91, 4, 980),
(447, 6, 4, 780),
(465, 13, 6, 950),
(466, 88, 5, 650),
(487, 109, 5, 450),
(490, 19, 5, 670),
(490, 20, 6, 670),
(497, 3, 3, 810.7000000000002),
(500, 27, 3, 890),
(500, 65, 2, 890);

-- --------------------------------------------------------

--
-- Structure de la table `apartmentservice`
--

CREATE TABLE `apartmentservice` (
  `apartmentServiceApartmentNumber` int(11) NOT NULL,
  `apartmentServiceBuildingId` int(11) NOT NULL,
  `apartmentServiceServiceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `building`
--

CREATE TABLE `building` (
  `buildingId` int(11) NOT NULL,
  `buildingAddress` varchar(45) NOT NULL,
  `buildingZipCode` varchar(7) DEFAULT NULL,
  `buildingCityId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `building`
--

INSERT INTO `building` (`buildingId`, `buildingAddress`, `buildingZipCode`, `buildingCityId`) VALUES
(1, '2525, Av de jardins', 'H2H2H2', 1),
(2, '1010, Av  Ste Catherine s', 'M2Z3P2', 1),
(3, '456, Av des Souvenirs', 'L3V1T4', 1),
(4, '123, Av de la Salle', 'H13 4V6', 2),
(5, '9888, 24 Avenue', 'ZFG H1H', 3),
(6, '1001, Av President Kenned', 'H5Y HY7', 3),
(7, '30, Rue Sheerbroke', 'Y6T 878', 2),
(8, '40, Rue Maisonneuve', 'U6Y 767', 3),
(9, '876, Hochelaga', 'U76 HHH', 3),
(10, 'Autoroute 40', 'YT7 879', 1),
(11, 'Rue Mason', '876876', NULL),
(12, 'P.O. Box 696, 3634 Adipiscing Rd.', '417536', 101),
(13, '601-716 Nisi. Street', 'XO6 8DZ', 11),
(14, '184-6182 In St.', '19989', 34),
(15, '848-1013 Eros Road', '29077', 87),
(16, 'Ap #575-7788 Nulla Ave', '54025', 48),
(17, 'Ap #228-2268 Lacus. St.', 'V6J 9IK', 21),
(18, '407-1610 Vestibulum Street', '1641', 13),
(19, 'P.O. Box 798, 5716 Velit Rd.', '4196', 3),
(20, 'P.O. Box 951, 8061 Donec Street', '92703', 31),
(21, 'P.O. Box 907, 240 Est St.', '29762', 38),
(22, '7984 Luctus St.', '2342', 18),
(23, '843-871 Felis Road', '31413', 50),
(24, 'Ap #397-3609 Varius St.', '71496', 79),
(25, 'Ap #454-8486 Faucibus Rd.', '1071', 7),
(26, 'Ap #851-4156 Interdum Road', '564040', 76),
(27, '235-6258 At, Av.', 'Z3 2GK', 24),
(28, 'P.O. Box 320, 7020 Maecenas St.', 'ZS5C 9M', 30),
(29, 'P.O. Box 149, 7911 Elementum Ave', '907908', 76),
(30, 'Ap #129-3465 Nec Rd.', '81749', 12),
(31, '513-2509 Iaculis Street', '83-935', 63),
(32, '7515 Nibh. Avenue', '4735', 60),
(33, 'Ap #508-4893 Nonummy Road', '036945', 17),
(34, 'Ap #952-3166 Lacus. Av.', '68106-8', 37),
(35, '9291 Lacus. Rd.', '9756', 2),
(36, '725-947 Elit Ave', '354069', 37),
(37, '1678 Convallis, Rd.', '862090', 57),
(38, 'P.O. Box 969, 1208 Arcu. Street', '20511', 25),
(39, '7182 Sem Rd.', '07873', 75),
(40, 'Ap #910-836 Integer St.', '13874', 23),
(41, 'P.O. Box 885, 7979 Donec St.', '16892', 67),
(42, '3433 Ipsum Street', '09081', 49),
(43, '607-6257 Feugiat Rd.', '2902', 52),
(44, '104-1800 Mus. Road', '2371', 96),
(45, '400-1243 Diam Road', '90726-8', 73),
(46, 'Ap #876-6885 Mauris, Rd.', '213178', 38),
(47, 'P.O. Box 674, 1611 Ante. Road', '552008', 26),
(48, 'P.O. Box 218, 1025 At, Ave', '090884', 37),
(49, '3961 Maecenas Ave', '2893AH', 51),
(50, '267-9095 Convallis Avenue', '05889', 48),
(51, '701-4505 Enim. Av.', '20467', 13),
(52, '764-6119 Mauris Rd.', '31218', 48),
(53, 'P.O. Box 896, 1739 Neque. Av.', '713949', 82),
(54, '9247 Morbi Rd.', '90633', 71),
(55, '650 Vestibulum, Ave', 'T2A 3B6', 54),
(56, '8138 Semper, Rd.', '79814', 43),
(57, 'P.O. Box 843, 2560 Lacinia Rd.', '67942', 61),
(58, 'Ap #257-922 Semper Rd.', '9063', 17),
(59, 'Ap #256-8966 Congue, Av.', '97424-9', 94),
(60, '2081 Vivamus Rd.', '80902', 77),
(61, '187-3922 Purus St.', '09882', 11),
(62, '4802 Elit. St.', '646041', 66),
(63, 'P.O. Box 356, 6030 Ridiculus Road', '27050', 34),
(64, '3558 Eget Ave', '2665', 23),
(65, '109-753 Nec Rd.', '91043', 52),
(66, '2832 Eget, Rd.', '362882', 71),
(67, '7281 Ultricies Avenue', '1247', 79),
(68, 'Ap #223-4005 Eu Ave', 'DA3 7JZ', 63),
(69, '178-496 Ligula. Av.', '12838-0', 68),
(70, '753-2090 Ac Road', '03-238', 93),
(71, 'Ap #587-4280 Mauris St.', '740279', 20),
(72, '371-5440 Et Av.', '1770VH', 66),
(73, 'Ap #842-2309 Et Avenue', '0842AO', 20),
(74, 'Ap #950-5369 Tempor Road', '04507-8', 30),
(75, 'Ap #393-2173 At St.', '20801', 39),
(76, 'P.O. Box 358, 4726 Habitant Rd.', 'Y5N 2T2', 84),
(77, '2560 Lectus Av.', '4959', 68),
(78, 'Ap #286-187 Urna, Rd.', '2600', 11),
(79, 'P.O. Box 715, 6863 Sit Av.', '10485', 36),
(80, 'P.O. Box 554, 1283 Metus Road', '61058', 23),
(81, 'Ap #799-9929 Duis St.', '97-413', 71),
(82, '6884 Mi Rd.', '3151TC', 90),
(83, '509-7484 Sed St.', '40917', 62),
(84, '214-6530 Duis Street', 'Z9X 8IP', 23),
(85, '783-7344 Leo Avenue', '81247-9', 11),
(86, '7336 Fermentum Rd.', '72933', 89),
(87, '739-1420 Egestas. St.', '80446', 92),
(88, '3246 Arcu Ave', '99730', 47),
(89, '360-8570 Donec St.', '5839', 8),
(90, '551-6702 Adipiscing Av.', '90707', 2),
(91, '591-195 Lobortis, Street', '3012', 32),
(92, 'P.O. Box 818, 8100 Nec Ave', '2226', 53),
(93, 'P.O. Box 247, 3383 Convallis St.', '9411', 77),
(94, 'P.O. Box 894, 5646 Cras Road', '31046', 98),
(95, '957-4097 Nulla Avenue', '0128LP', 47),
(96, '2218 Non, Av.', '835747', 58),
(97, '392-3947 Purus, Rd.', '1503', 34),
(98, 'P.O. Box 641, 9005 Curabitur Ave', 'Z14 5IR', 13),
(99, 'Ap #618-7729 Eu Rd.', '799158', 17),
(100, '284-9585 Lacus. Street', '41429', 1),
(101, 'P.O. Box 175, 3991 Lectus, Rd.', '142241', 50),
(102, '115-1944 Purus. Road', '7432', 103),
(103, '9103 Velit Rd.', '65957', 92),
(104, 'Ap #504-390 Cursus Street', '055339', 22),
(105, 'P.O. Box 280, 5645 In, St.', '04928', 99),
(106, 'P.O. Box 380, 4768 Libero Road', '73597', 100),
(107, '1602 Natoque Ave', '71515', 26),
(108, '4561 Nec, Street', '8813', 95),
(109, '5221 Penatibus Street', '3516', 91),
(110, 'Ap #471-8884 Varius Ave', '57351', 90),
(111, '496-855 Ultricies Avenue', '28308', 70);

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `cityName` varchar(30) NOT NULL,
  `cityPopulation` double DEFAULT NULL,
  `cityCountryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`cityId`, `cityName`, `cityPopulation`, `cityCountryId`) VALUES
(1, 'Montreal', 4000000, 1),
(2, 'Quebec', NULL, 1),
(3, 'Laval', NULL, 1),
(4, 'New York', 971983, 2),
(5, 'Miami', 1708334, 2),
(6, 'Duluth', 2705198, NULL),
(7, 'Giardinello', 2517053, NULL),
(8, 'Halisahar', 2858949, NULL),
(9, 'Halifax', 856438, NULL),
(10, 'Verdun', 2619858, NULL),
(11, 'Liévin', 376070, NULL),
(12, 'Gorinchem', 209329, NULL),
(13, 'Afsnee', 706231, NULL),
(14, 'Ramsel', 405738, NULL),
(15, 'Lampertheim', 1367060, NULL),
(16, 'Castel Maggiore', 2410216, NULL),
(17, 'Saint-Pierre', 2791093, NULL),
(18, 'Fogo', 1124394, NULL),
(19, 'Konya', 1432706, NULL),
(20, 'Gavorrano', 1924448, NULL),
(21, 'Bikaner', 727161, NULL),
(22, 'Andernach', 637134, NULL),
(23, 'Maasmechelen', 1013816, NULL),
(24, 'Priero', 2429951, NULL),
(25, 'Shillong', 1781448, NULL),
(26, 'Tay', 600048, NULL),
(27, 'Beez', 590070, NULL),
(28, 'Wachtebeke', 53959, NULL),
(29, 'Cabrero', 116072, NULL),
(30, 'Verrayes', 266435, NULL),
(31, 'Quilleco', 1728757, NULL),
(32, 'Guadalajara', 594595, NULL),
(33, 'Borås', 251480, NULL),
(34, 'Stamford', 317404, NULL),
(35, 'Cabrero', 2775408, NULL),
(36, 'LaSalle', 2158120, NULL),
(37, 'Dolembreux', 1349164, NULL),
(38, 'Vito d\'Asio', 809086, NULL),
(39, 'Bozeman', 873836, NULL),
(40, 'Mollem', 2969715, NULL),
(41, 'Fernie', 2373430, NULL),
(42, 'Langford', 859580, NULL),
(43, 'Ludwigshafen', 1122925, NULL),
(44, 'Sainte-Flavie', 1033564, NULL),
(45, 'Marabá', 2246835, NULL),
(46, 'Cape Breton Island', 118602, NULL),
(47, 'Darmstadt', 2553603, NULL),
(48, 'Río Ibáñez', 2364799, NULL),
(49, 'Soissons', 1863020, NULL),
(50, 'São José dos Pinhais', 1378456, NULL),
(51, 'Rotheux-RimiŽre', 1301687, NULL),
(52, 'Hualaihué', 578704, NULL),
(53, 'Castellana Sicula', 1825781, NULL),
(54, 'Hualaihué', 1124394, NULL),
(55, 'Gboko', 1728738, NULL),
(56, 'Gistel', 2902824, NULL),
(57, 'Ourense', 314801, NULL),
(58, 'Kufstein', 1668257, NULL),
(59, 'Canterbury', 1835137, NULL),
(60, 'Niterói', 2670264, NULL),
(61, 'Turriaco', 2011593, NULL),
(62, 'Swan', 1994084, NULL),
(63, 'Casina', 1168765, NULL),
(64, 'Hartford', 2187063, NULL),
(65, 'Lacombe', 2195737, NULL),
(66, 'Akhisar', 2125690, NULL),
(67, 'Breda', 2290969, NULL),
(68, 'Toledo', 1542900, NULL),
(69, 'Canora', 2989055, NULL),
(70, 'Penticton', 1412872, NULL),
(71, 'San Chirico Nuovo', 1150008, NULL),
(72, 'Lloydminster', 2851155, NULL),
(73, 'Altach', 1077180, NULL),
(74, 'Sousa', 2887834, NULL),
(75, 'Ludwigshafen', 1419841, NULL),
(76, 'Renca', 504094, NULL),
(77, 'Firozabad', 848462, NULL),
(78, 'Daussoulx', 573850, NULL),
(79, 'Ammanford', 1167021, NULL),
(80, 'Markham', 1582127, NULL),
(81, 'Montague', 1024732, NULL),
(82, 'Roccanova', 802868, NULL),
(83, 'Bracknell', 1629080, NULL),
(84, 'Tortel', 880994, NULL),
(85, 'Fort Saskatchewan', 1590137, NULL),
(86, 'Bhatpara', 1916260, NULL),
(87, 'Port Alice', 2358596, NULL),
(88, 'Goslar', 2948933, NULL),
(89, 'Tredegar', 12588, NULL),
(90, 'Guildford', 2502075, NULL),
(91, 'Vitrolles', 2610283, NULL),
(92, 'Murcia', 1929981, NULL),
(93, 'La Thuile', 2151638, NULL),
(94, 'Boorsem', 2115638, NULL),
(95, 'Zwickau', 2719525, NULL),
(96, 'Villarrica', 902717, NULL),
(97, 'Tuglie', 867601, NULL),
(98, 'Coleville Lake', 2582782, NULL),
(99, 'La Valle/Wengen', 1486118, NULL),
(100, 'Gressoney-Saint-Jean', 2737696, NULL),
(101, 'Northumberland', 783247, NULL),
(102, 'Schaarbeek', 1096129, NULL),
(103, 'Priolo Gargallo', 1316082, NULL),
(107, 'Rabat', 150000, 2),
(108, 'Kenitra', 800000, 2),
(110, 'Jadida', 35000, 2),
(131, 'Marrakech', 850000, 2),
(134, 'yokohama', 6000000, 3),
(140, 'oujda', 2630000, 2),
(144, 'Casablanca', 1000000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `contract`
--

CREATE TABLE `contract` (
  `contractId` int(11) NOT NULL,
  `contractStartDate` datetime NOT NULL,
  `contractEndDate` datetime DEFAULT NULL,
  `contractRentPrice` double NOT NULL,
  `contracTenantId` int(11) NOT NULL,
  `contracApartmentNumber` int(11) NOT NULL,
  `contracApartmentBuildingId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contract`
--

INSERT INTO `contract` (`contractId`, `contractStartDate`, `contractEndDate`, `contractRentPrice`, `contracTenantId`, `contracApartmentNumber`, `contracApartmentBuildingId`) VALUES
(1, '2016-10-01 00:00:00', '2017-10-01 00:00:00', 600, 18, 152, 23),
(2, '2015-11-01 00:00:00', '2016-11-01 00:00:00', 700, 21, 164, 22),
(3, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 800, 2, 3, 100),
(4, '2016-05-01 00:00:00', '2017-05-01 00:00:00', 800, 4, 5, 26),
(5, '2016-10-01 00:00:00', '2017-10-01 00:00:00', 600, 55, 6, 5),
(6, '2015-11-01 00:00:00', '2016-11-01 00:00:00', 700, 67, 17, 50),
(7, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 800, 29, 21, 4),
(8, '2016-05-01 00:00:00', '2017-05-01 00:00:00', 900, 41, 22, 92),
(9, '2017-01-01 00:00:00', '2018-01-01 00:00:00', 1000, 78, 87, 99),
(10, '2016-12-01 00:00:00', '2017-12-01 00:00:00', 1200, 87, 90, 70),
(11, '2016-02-01 00:00:00', '2017-02-01 00:00:00', 780, 98, 359, 96);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `countryName` varchar(90) NOT NULL,
  `countryAbbreviation` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`countryId`, `countryName`, `countryAbbreviation`) VALUES
(1, 'Canada', 'CAN'),
(2, 'Maroc', 'MAR'),
(3, 'Japan', 'JAP');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `serviceId` int(11) NOT NULL,
  `serviceName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`serviceId`, `serviceName`) VALUES
(1, 'Internet and tv'),
(2, 'Garage'),
(3, 'Heating');

-- --------------------------------------------------------

--
-- Structure de la table `tenant`
--

CREATE TABLE `tenant` (
  `tenantId` int(11) NOT NULL,
  `tenantName` varchar(45) NOT NULL,
  `tenantPhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tenant`
--

INSERT INTO `tenant` (`tenantId`, `tenantName`, `tenantPhone`) VALUES
(1, 'Tara Bradford', '(301) 889-0786'),
(2, 'Mufutau Becker', '(642) 878-4327'),
(3, 'Jackson Leach', '(870) 397-4670'),
(4, 'Felicia Michael', '(455) 934-1625'),
(5, 'Yuli Reynolds', '(405) 730-7424'),
(6, 'Zelenia Jensen', '(827) 409-1660'),
(7, 'Chloe Kerr', '(534) 373-0377'),
(8, 'Miriam Quinn', '(767) 557-6661'),
(9, 'Malik Simon', '(693) 288-3747'),
(10, 'Dana Jefferson', '(320) 802-7671'),
(11, 'Jeanette Clemons', '(382) 396-2857'),
(12, 'Lee Cannon', '(609) 571-8654'),
(13, 'Marcia Diaz', '(868) 115-2677'),
(14, 'Caryn Poole', '(318) 886-7236'),
(15, 'Cleo Sykes', '(784) 634-3894'),
(16, 'Wylie Tyler', '(626) 415-0494'),
(17, 'Kelly Potts', '(504) 378-4079'),
(18, 'Ivan Hansen', '(865) 999-2560'),
(20, 'Orlando Mckenzie', '(295) 513-9984'),
(21, 'Fredericka Alston', '(827) 355-1902'),
(22, 'Chaney Lamb', '(333) 220-3977'),
(23, 'Kevyn York', '(152) 979-3071'),
(24, 'Shay Nichols', '(712) 551-6150'),
(25, 'Burke Britt', '(304) 570-4087'),
(26, 'Rhonda Shaffer', '(124) 801-4468'),
(27, 'Rogan Knowles', '(505) 225-1335'),
(28, 'Xerxes Roberts', '(235) 592-7093'),
(29, 'Felicia Matthews', '(107) 115-0682'),
(30, 'Jacqueline Kirby', '(822) 685-8497'),
(31, 'Kay Barker', '(211) 833-9161'),
(32, 'Zeph Rowe', '(325) 492-8209'),
(33, 'Andrew Randolph', '(223) 673-3922'),
(34, 'Erasmus Mathews', '(748) 422-7466'),
(35, 'Lawrence Velasquez', '(277) 690-4967'),
(36, 'Aretha Battle', '(292) 169-6672'),
(37, 'Chancellor Russell', '(242) 207-4864'),
(38, 'Yvonne Barrett', '(904) 452-6351'),
(39, 'Clarke Lara', '(950) 588-4946'),
(40, 'Fatima Bennett', '(134) 275-6848'),
(41, 'Jerry Benjamin', '(816) 726-1288'),
(42, 'Chiquita Bridges', '(540) 356-8999'),
(43, 'Rama Owens', '(374) 843-3086'),
(44, 'Tarik Roman', '(827) 225-0800'),
(45, 'Chastity Gutierrez', '(915) 408-4740'),
(46, 'Sopoline Cannon', '(773) 697-2883'),
(47, 'Fatima Hebert', '(555) 995-8840'),
(48, 'George Cunningham', '(174) 144-8208'),
(49, 'Shana Baker', '(626) 554-7081'),
(50, 'Gareth Powers', '(937) 458-0212'),
(51, 'Katell Ingram', '(476) 636-5382'),
(52, 'Declan Wilcox', '(366) 669-4737'),
(53, 'Beau Tillman', '(429) 311-7609'),
(54, 'Vivian Tucker', '(894) 422-9712'),
(55, 'Slade Jones', '(645) 536-9049'),
(56, 'Alexander Dudley', '(211) 795-4121'),
(57, 'Donovan Peters', '(751) 771-2230'),
(58, 'Kuame Cochran', '(424) 352-3193'),
(59, 'Gage Wagner', '(423) 206-5393'),
(60, 'Dara Craig', '(103) 634-4831'),
(61, 'Victor Stanton', '(546) 177-8148'),
(62, 'Aristotle Hatfield', '(712) 202-7342'),
(63, 'Peter Perkins', '(470) 695-3962'),
(64, 'Roth Ayers', '(810) 517-9308'),
(65, 'Elmo Holloway', '(540) 462-5476'),
(66, 'Aline Wilson', '(769) 345-1992'),
(67, 'Wynter Parrish', '(191) 711-1521'),
(68, 'Eaton Bauer', '(846) 920-7497'),
(69, 'Baxter Becker', '(898) 753-6378'),
(70, 'Daphne Estrada', '(737) 381-3385'),
(71, 'Laurel Hinton', '(108) 749-7666'),
(72, 'Quin Frye', '(663) 701-2437'),
(73, 'Alexander Dudley', '(372) 710-2853'),
(74, 'Wyoming Olsen', '(866) 163-6104'),
(75, 'Austin Mendez', '(292) 775-5979'),
(76, 'Gretchen Graham', '(449) 864-4135'),
(77, 'Naomi Raymond', '(895) 895-9817'),
(78, 'Michelle Carroll', '(413) 450-1054'),
(79, 'Celeste Dillon', '(523) 262-6036'),
(80, 'Hayes Hood', '(348) 164-5156'),
(81, 'Amber Haynes', '(443) 867-9798'),
(82, 'Dai Rivas', '(828) 921-2007'),
(83, 'Melodie Crawford', '(570) 892-1777'),
(84, 'Wynne Woodward', '(482) 893-2854'),
(85, 'Dahlia Gilliam', '(728) 316-4702'),
(86, 'Virginia Chen', '(263) 477-9782'),
(87, 'Caesar Newton', '(848) 144-1957'),
(88, 'India Roberts', '(266) 773-3128'),
(89, 'Unity Hill', '(695) 894-4457'),
(90, 'Harlan Gilmore', '(848) 361-3825'),
(91, 'Noelani Hayes', '(578) 719-9093'),
(92, 'Evangeline Cole', '(382) 528-8512'),
(93, 'Imelda Noble', '(197) 797-0270'),
(94, 'Rebecca Mcfarland', '(930) 886-0692'),
(95, 'Kaden Poole', '(454) 934-3973'),
(96, 'Ina Graham', '(747) 203-9592'),
(97, 'Vera Jenkins', '(892) 704-4840'),
(98, 'Tasha Hurley', '(226) 990-4195'),
(99, 'Ainsley Gallegos', '(957) 991-7038'),
(100, 'Elliott Keith', '(526) 238-3139');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `userCityId` int(11) NOT NULL,
  `userPrivilegeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `name`, `email`, `birthday`, `userCityId`, `userPrivilegeId`) VALUES
(1, 'paul@gmail.com', '$2a$08$ISpfIIrQFJ.tffkqO2eaAeFcoLjgr2C7rVcFsq1MGiKAfdwp63hLS', 'Paul', 'paul@gmail.com', '2010-10-10 00:00:00', 1, 1),
(2, 'mvs@gmail.com', '$2a$08$hv9WDMSuTdwmLV8ncj8IKuo6hEDXWPGF/UV18UnZIhUP1wtPbG8Wy', 'Marcos Sanches', 'mvs@gmail.com', '1900-10-10 00:00:00', 2, 1),
(3, 'simon@gmail.com', '$2a$08$qeg70oU8aDC.bDRRDLSQ3eJf.iT49uRwJKfRLSe3rJ9GBUOC1qZR6', 'Simon', 'simon@gmail.com', '2010-10-10 00:00:00', 2, 1),
(6, 'janet@gmail.com', '$2a$08$Bn6kM9jLDRfOvsR0IgzXGOCxr6bnLhr5t4scWxFkiUtOYl4atLZFS', 'Janet', 'janet@gmail.com', '2010-10-10 00:00:00', 2, 2),
(54, 'sara@gmail.com', '$2y$10$8yO5avCUwKxTLIL6OeY0deAnsqKrW2Qe89Pax6bDbU.LbGzKEQYCy', 'Sara', 'sara@gmail.com', '1988-02-02 00:00:00', 144, NULL),
(63, 'tp4@gmail.com', '$2y$10$5An/FbpNM92o.zsGHjqHBeTKvC2X4fNYHiQ/B7.LKbMHnhkBmgmpG', 'tp4', 'tp42@gmail.com', '1221-12-12 00:00:00', 144, NULL),
(65, 'mustafa@gmail.com', '$2y$10$Ng3cJvdBYk1vQnErv2mYFegzpsL.Eh9nQnqg6D0XAKhEqRRMninx2', 'mustafa', 'mustafa@gmail.com', '1972-02-02 00:00:00', 144, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apartmentNumber`,`apartmentBuildingId`),
  ADD KEY `fk_Apartment_Building1_idx` (`apartmentBuildingId`);

--
-- Index pour la table `apartmentservice`
--
ALTER TABLE `apartmentservice`
  ADD PRIMARY KEY (`apartmentServiceApartmentNumber`,`apartmentServiceBuildingId`,`apartmentServiceServiceId`),
  ADD KEY `fk_Apartment_has_Service_Service1_idx` (`apartmentServiceServiceId`),
  ADD KEY `fk_Apartment_has_Service_Apartment1_idx` (`apartmentServiceApartmentNumber`,`apartmentServiceBuildingId`);

--
-- Index pour la table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`buildingId`),
  ADD KEY `fk_Building_City_idx` (`buildingCityId`);

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityId`),
  ADD KEY `fk_City_country1_idx` (`cityCountryId`);

--
-- Index pour la table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contractId`),
  ADD KEY `fk_Contract_Tenant1_idx` (`contracTenantId`),
  ADD KEY `fk_Contract_Apartment1_idx` (`contracApartmentNumber`,`contracApartmentBuildingId`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryId`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceId`);

--
-- Index pour la table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenantId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `fk_user_City1_idx` (`userCityId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `building`
--
ALTER TABLE `building`
  MODIFY `buildingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `contract`
--
ALTER TABLE `contract`
  MODIFY `contractId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `serviceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apartment`
--
ALTER TABLE `apartment`
  ADD CONSTRAINT `fk_Apartment_Building1` FOREIGN KEY (`apartmentBuildingId`) REFERENCES `building` (`buildingId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `apartmentservice`
--
ALTER TABLE `apartmentservice`
  ADD CONSTRAINT `fk_Apartment_has_Service_Apartment1` FOREIGN KEY (`apartmentServiceApartmentNumber`,`apartmentServiceBuildingId`) REFERENCES `apartment` (`apartmentNumber`, `apartmentBuildingId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Apartment_has_Service_Service1` FOREIGN KEY (`apartmentServiceServiceId`) REFERENCES `service` (`serviceId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `fk_Building_City` FOREIGN KEY (`buildingCityId`) REFERENCES `city` (`cityId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_City_country1` FOREIGN KEY (`cityCountryId`) REFERENCES `country` (`countryId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `fk_Contract_Apartment1` FOREIGN KEY (`contracApartmentNumber`,`contracApartmentBuildingId`) REFERENCES `apartment` (`apartmentNumber`, `apartmentBuildingId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Contract_Tenant1` FOREIGN KEY (`contracTenantId`) REFERENCES `tenant` (`tenantId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_City1` FOREIGN KEY (`userCityId`) REFERENCES `city` (`cityId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
