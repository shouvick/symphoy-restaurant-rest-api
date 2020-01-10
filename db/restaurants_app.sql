-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 10:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurants_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `p_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(34) CHARACTER SET utf8 DEFAULT NULL,
  `branch` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `housenumber` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `postcode` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `latitude` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(31) CHARACTER SET utf8 DEFAULT NULL,
  `open` varchar(21) CHARACTER SET utf8 DEFAULT NULL,
  `bestMatch` int(11) DEFAULT NULL,
  `newestScore` int(11) DEFAULT NULL,
  `ratingAverage` int(11) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `averageProductPrice` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `deliveryCosts` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `minimumOrderAmount` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`p_id`, `id`, `name`, `branch`, `phone`, `email`, `logo`, `address`, `housenumber`, `postcode`, `city`, `latitude`, `longitude`, `url`, `open`, `bestMatch`, `newestScore`, `ratingAverage`, `popularity`, `averageProductPrice`, `deliveryCosts`, `minimumOrderAmount`) VALUES
(1, 98001223, 'La Gondolina', NULL, '641079539', 'info@lagondolina.nl', '/nl/3/logo.png', 'Karperweg', '3 hs', '1075LA', 'Amsterdam', '52.3486912', '4.8570568', 'lagondolina', '2', 218, 1685, 9, 91, '10.93', '6.57', '6.57'),
(2, 98001224, 'Adnamics', NULL, '0251 20 30 00', 'martin.limburg@adnamics.nl', '/nl/P/logo.png', 'Oranjestraat', '2', '8888AA', 'Teststad', '52.022375', '4.2183701', 'bluesky', '1', 392, 2404, 0, 9, '25', '1.28', '1.28'),
(3, 98001225, 'The Nightshop', NULL, NULL, 'private-email@takeaway.com', '/nl/R/logo.png', 'Lasondersingel', '94', '7514BV', 'Enschede', '52.2275177', '6.8947028', 'thenightshopenschede', '2', 242, 1731, 4, 66, '18.75', '6.69', '6.69'),
(4, 98001226, 'Papa', 'Wattstraat', '079-3434252', NULL, '/nl/N1/logo.png', 'Wattstraat', '26h', '2723RC', 'Zoetermeer', '52.0596183', '4.525853', 'pizzeriagrillroompapaoud', '1', 138, 517, 0, 68, '25', '9.64', '9.64'),
(5, 98001227, 'Brasserie Meerzicht', NULL, '079-3512957', 'info@brasseriemeerzicht.nl', '/nl/51/logo.png', 'Middelwaard', '86', '2716CW', 'Zoetermeer', '52.056007', '4.469133', 'brasseriemeerzicht', '2', 274, 1589, 9, 133, 'NULL', '8.14', '8.14'),
(6, 98001228, 'Brasserie Meerzicht voor Bedrijven', NULL, NULL, NULL, 'zoetermeer_meerzicht.jpg', 'Middelwaard', '86', '2716CW', 'Zoetermeer', '52.0561139', '4.4688796', 'brasseriemeerzichtvoorbedrijven', '2', 314, 2833, 0, 84, '25', '1.76', '1.76'),
(7, 98001229, 'Pizza Bella Napoli', NULL, '079-3169221', 'Kurmandj2@hotmail.com', '/nl/1N/logo.png', 'Edisonstraat', '11F', '2723RS', 'Zoetermeer', '52.0634196', '4.5232861', 'pizzabellanapolizoetermeer', '2', 169, 618, 8, 48, '10.56', '4.4', '4.40'),
(8, 98001230, 'Ridderhof', NULL, '0172-436417', NULL, '/nl/ON/logo.png', 'Ridderhof', '36', '2402EN', 'Alphen aan den Rijn', '52.1438442', '4.674677', 'ridderhofalphenaandenrijn', '0', 120, 946, 0, 54, '25', '6.73', '6.73'),
(9, 98001231, 'Nan King', NULL, '030-2733149', NULL, '/nl/7N/logo.png', 'Bollenhofsestraat', '142', '3572VT', 'Utrecht', '52.0988885', '5.1353035', 'nanking', '2', 177, 2072, 0, 99, '25', '0.43', '0.43'),
(10, 98001232, 'Sushi Kings', NULL, '020-6706009', 'ko@sushikings.nl', '/nl/03/logo.png', 'Cornelis Krusemanstraat', '53-55', '1075NG', 'Amsterdam', '52.3505333', '4.8601842', 'sushikings', '0', 175, 1559, 9, 124, 'NULL', '1.98', '1.98'),
(11, 98001233, 'Pizza Dispensary', NULL, '012-3456789', NULL, '/nl/33/logo.png', 'Street', '12', '1234AB', 'City', '52.364642', '5.576405', 'lacasetta', '1', 233, 1437, 0, 5, '25', '8.61', '8.61'),
(12, 98001234, 'Valentino', 'Utrecht', '030-2936768', 'pizzavalentino@live.nl', '/nl/P3/logo.png', 'Jan Pieterszoon Coenstraat', '82a', '3531EX', 'Utrecht', '52.0925068', '5.0968962', 'pizzeriavalentinoutrecht', '2', 318, 1008, 9, 72, '13.8', '7.13', '7.13'),
(13, 98001235, 'Pizzalijn', 'Den Haag', '070-3654838', 'info@depizzalijn.nl', '/nl/R3/logo.png', 'Newtonstraat', '35', '2562KC', 'Den Haag', '52.076858', '4.286602', 'pizzalijndenhaagdenhaag', '1', 273, 2046, 5, 99, '12.74', '9.81', '9.81'),
(14, 98001236, 'Picobello', 'De Meern', '684211778', 'adham555555@hotmail.com', '/nl/NO/logo.png', 'Damzicht', '18 B', '3454PS', 'De Meern', '52.0760575', '5.047988', 'piramidedemeern', '0', 202, 2748, 4, 81, '8.19', '7.68', '7.68'),
(15, 98001237, 'Classic Pizza', 'Rotterdam', '010-4655080', 'reza-rezai@live.nl', '/nl/5O/logo.png', 'Schieweg', '92a', '3038BB', 'Rotterdam', '51.93246', '4.4662701', 'classicpizzarotterdam-1', '2', 159, 313, 8, 136, '12.85', '8.98', '8.98'),
(16, 98001238, 'India Paradise', NULL, '010-4121465', 'restaurantindiaparadise@hotmail.com', '/nl/QO/logo.png', 'Admiraal De Ruyterweg', '20', '3031AC', 'Rotterdam', '51.927509', '4.48743', 'indiaparadise', '0', 253, 2440, 8, 77, 'NULL', '1.84', '1.84'),
(17, 98001239, 'Roti All-inn', NULL, '030-2990099', 'rotiallin@kpnmail.nl', '/nl/15/logo.png', 'J P Coenstraat', '14', '3531ET', 'Utrecht', '52.0895292', '5.0980555', 'rotiallin', '0', 166, 1945, 6, 84, 'NULL', '2.28', '2.28'),
(18, 98001240, 'Signore Pizza', NULL, '010-2200114', 'signorepizza@outlook.com', '/nl/O5/logo.png', 'Rietdekkerweg', '131', '3068GW', 'Rotterdam', '51.965296', '4.5717836', 'signorepizza', '2', 299, 2175, 7, 91, '12.37', '5.9', '5.90'),
(19, 98001241, 'Bella Pronto', NULL, '053-4805860', 'thomas.bouwels@takeaway.com', '/nl/75/logo.png', 'Hengelosestraat', '705', '7521PA', 'Enschedeeeeeee', '52.234827', '6.8588192', 'bellaprontoenschede', '2', 282, 1123, 0, 5, '25', '2.64', '2.64'),
(20, 98001243, 'Ontbijtservice Beschuitje', NULL, '036-5366086', NULL, '/nl/3P/logo.png', 'Simon van Collemstraat', '2', '1325NB', 'Almere', '52.3674608', '5.2393517', 'ontbijtservicebeschuitje', '0', 160, 2468, 0, 74, '25', '5.5', '5.50'),
(21, 98001244, 'Shoarma Samara', NULL, '070-3961694', 'sinan90tg@gmail.com', '/nl/PP/logo.png', 'Goeverneurlaan', '680', '2523CS', 'Den Haag', '52.0560764', '4.3152675', 'shoarmasamara', '0', 284, 70, 9, 37, '7.36', '9.59', '9.59'),
(22, 98001245, 'Bajwa II', NULL, '070-3901654', NULL, '/nl/RP/logo.png', 'Van Musschenbroekstraat', '259', '2522AN', '\'S Gravenhage', '52.061385', '4.3280063', 'eethuisbajwaii', '0', 164, 1480, 0, 121, '25', '1.45', '1.45'),
(23, 98001246, 'Roti Mahal', 'Den Haag', '070-3106480', NULL, '/nl/N7/logo.png', 'Balistraat', '3', '2585XK', 'Den Haag', '52.089412', '4.310478', 'rotimahal', '1', 232, 1463, 0, 14, '25', '8.48', '8.48'),
(24, 98001247, 'Carmil', NULL, '070-3806262', 'carmil@live.nl', '/nl/57/logo.png', 'Piet Heinstraat', '29', '2518CB', 'Den Haag', '52.0823611', '4.299808', 'carmildenhaag', '0', 377, 1460, 8, 97, 'NULL', '8.06', '8.06'),
(25, 98001248, 'Angelo\'s Pizza', NULL, '010-4844411', 'info@angelospizza.nl', '/nl/Q7/logo.png', 'Hilledijk', '289b', '3074GD', 'Rotterdam', '51.8978842', '4.509788', 'angelospizzaservice', '2', 100, 1945, 9, 32, '8.44', '4.88', '4.88'),
(26, 98001249, 'Classic Pizza', 'Delft', '015-3801899', NULL, '/nl/1Q/logo.png', NULL, NULL, NULL, 'Delft', 'NULL', 'NULL', 'classicpizzadelft', '0', 137, 496, 0, 64, '25', '0.2', '0.20'),
(27, 98001250, 'Bel Pizza', 'Den Haag', '070-3640123', 'info@delekkerstepizza.nl', '/nl/OQ/logo.png', 'Weimarstraat', '47', '2562GP', 'Den Haag', '52.077602', '4.284614', 'belpizzadenhaag', '2', 123, 1104, 6, 88, '12.64', '6.36', '6.36'),
(28, 98001251, 'India Glory', NULL, '070-3858661', 'lak2010@live.nl', '/nl/7Q/logo.png', '2e Louise de Colignystraat', '24', '2595SR', 'Den Haag', '52.0817361', '4.3380984', 'restaurantindiaglory', '2', 257, 151, 7, 98, 'NULL', '1.21', '1.21'),
(29, 98001252, 'Picasso Express', NULL, '010-4665219', NULL, '/nl/0R/logo.png', 'Noordplein', '113', '3038SR', 'Rotterdam', '51.9309215', '4.4843316', 'picassoexpress', '0', 342, 1736, 5, 67, '8.21', '6.96', '6.96'),
(30, 98001253, 'Karnak', 'Leyweg', '070-3299222', 'dabobasha@hotmail.com', '/nl/3R/logo.png', 'Leyweg', '523C', '2545GD ', 'Den Haag', '52.0508272', '4.2728937', 'karnakdenhaag', '1', 168, 1789, 8, 42, 'NULL', '1.2', '1.20'),
(31, 98001254, 'Sien Sien', NULL, '010-4861700', 'nouvsien@gmail.com', '/nl/PR/logo.png', 'Beijerlandselaan', '145a', '3074EE', 'Rotterdam', '51.895017', '4.509924', 'nouveausiensienrotterdam', '1', 203, 2436, 8, 1, 'NULL', '5.12', '5.12'),
(32, 98001255, 'Montana', 'Rotterdam', '010-4220078', 'bestellen@montanapizzeria.nl', '/nl/RR/logo.png', 'Peppelweg', '68a', '3053GN', 'Rotterdam', '51.959243', '4.47391', 'montanarotterdam', '1', 117, 1340, 9, 6, '9.91', '1.98', '1.98'),
(33, 98001256, 'Dalia', NULL, '053-4355737', NULL, '/nl/N01/logo.png', 'Haaksbergerstraat', '346', '7513EJ', 'Enschede', '52.2118185', '6.88012', 'daliaenschede', '2', 172, 1777, 0, 33, '25', '4.57', '4.57'),
(34, 98001257, 'Rick\'s Lunchservice', NULL, '030-2440225', NULL, '/nl/501/logo.png', 'Manitobadreef', '5', '3565CH', 'Utrecht', '52.1286692', '5.0839427', 'rickslunchservice', '1', 110, 474, 0, 100, '25', '6.92', '6.92'),
(35, 98001258, 'Rick\'s Ontbijtservice', NULL, '030-2440225', NULL, '/nl/Q01/logo.png', 'Manitobadreef', '5', '3565CH', 'Utrecht', '52.1286692', '5.0839427', 'ricksontbijtservice', '2', 219, 1057, 0, 82, '25', '0.87', '0.87'),
(36, 98001259, 'Porto Ercole', 'Pieter Calandlaan', '020-4106200', 'portoercolebv@gmail.com', '/nl/111/logo.png', 'Pieter Calandlaan', '126', '1068NR', 'Amsterdam', '52.3549019', '4.810979', 'portoercolepietercalandlaan', '2', 357, 567, 7, 53, '7.47', '3.61', '3.61'),
(37, 98001260, 'Porto Ercole', 'Weteringstraat', '020-4287444', NULL, '/nl/O11/logo.png', 'Nieuwe Weteringstraat', '47', '1017ZX', 'Amsterdam', '52.3607417', '4.889544', 'portoercoleweteringstraat', '0', 110, 1557, 5, 70, '7.97', '5.44', '5.44'),
(38, 98001261, 'Rotibode', NULL, '070-3235680', 'rotibode10@gmail.com', '/nl/711/logo.png', 'Escamplaan', '1', '2547GA', 'Den Haag', '52.065433', '4.279027', 'rotibodedenhaag', '2', 302, 2743, 7, 80, 'NULL', '6.39', '6.39'),
(39, 98001262, 'Pizza Pita Center', NULL, '030/ 227 18 66', NULL, '/nl/0N1/logo.png', NULL, NULL, NULL, 'Utrecht', 'NULL', 'NULL', 'pizzapitacenter', '2', 135, 2291, 0, 66, '25', '5.62', '5.62'),
(40, 98001263, 'Surakarta Express', NULL, '071-5123524', 'bartdeboer@planet.nl', '/nl/3N1/logo.png', 'Noordeinde', '51', '2311CB', 'Leiden', '52.1602292', '4.4844306', 'surakartaexpress', '2', 208, 3001, 8, 134, 'NULL', '8.94', '8.94'),
(41, 98001264, 'Porto Griek', 'Pieter Calandlaan', '020-4106200', NULL, '/nl/PN1/logo.png', 'Pieter Calandlaan', '126', '1068NR', 'Amsterdam', '52.354878', '4.810882', 'portogriekpietercalandlaan', '1', 339, 1483, 6, 9, 'NULL', '7.86', '7.86'),
(42, 98001265, 'Porto Ercole & Grieks', NULL, '020-4287444', 'uzunal@live.nl', '/nl/RN1/logo.png', 'Pieter Vlamingstraat', '11', '1093AA', 'Amsterdam', '52.3648701', '4.9259498', 'portogriekweteringstraat', '2', 110, 1936, 6, 15, '7.97', '2.47', '2.47'),
(43, 98001266, 'Sien Fat', NULL, '070-3646575', 'zhang2118@msn.com', '/nl/N31/logo.png', 'Weimarstraat', '50', '2562GZ', 'Den Haag', '52.077642', '4.284692', 'sienfat', '1', 294, 1409, 9, 58, 'NULL', '8.78', '8.78'),
(44, 98001267, 'Mister Pizza', 'Hengelo', '074-2909909', NULL, '/nl/531/logo.png', 'Mozartlaan', '21-23', '7557DK', 'Hengelo', '52.2691779', '6.8158882', 'misterpizza', '1', 253, 2872, 0, 35, '25', '6.48', '6.48'),
(45, 98001268, 'Jerryl', NULL, '020-6167700', 'harman_singh@live.nl', '/nl/Q31/logo.png', 'Nieuwezijdsvoorburgwal', '34', '1012SB', 'Amsterdam', '52.3768742', '4.8942352', 'jerrylamsterdam', '0', 365, 1426, 8, 105, 'NULL', '6.08', '6.08'),
(46, 98001269, 'Lekker', NULL, '070-3993583', NULL, '/nl/1O1/logo.png', 'Pasteurstraat', '199', '2522RJ', 'Den Haag', '52.060189', '4.331463', 'lekkerdenhaag', '0', 219, 2070, 5, 35, 'NULL', '0.98', '0.98'),
(47, 98001270, 'Metropool', NULL, '010-2183628', NULL, '/nl/OO1/logo.png', 'Peppelweg', '68a', '3053GN', 'Rotterdam', '51.959243', '4.47391', 'metropoolrotterdam', '0', 387, 1174, 6, 9, '10.34', '6.65', '6.65'),
(48, 98001271, 'Indiase en Surinaamse Bezorglijn', NULL, '020-6837140', NULL, '/nl/7O1/logo.png', 'Jan van Galenstraat', '204', '1056CK', 'Amsterdam', '52.372587', '4.8473813', 'indiaseensurinaamsebezorglijn', '0', 278, 1498, 0, 105, '25', '0.34', '0.34'),
(49, 98001272, 'Pizza Pronto', 'Rotterdam', '010-4782626', NULL, '/nl/051/logo.png', 'Vierambachtsstraat', '65a', '3022AE', 'Rotterdam', '51.9166549', '4.4506826', 'pizzaprontorotterdam', '0', 387, 2293, 0, 139, '25', '1.72', '1.72'),
(50, 98001273, 'American Chicken Fried Fantastic', NULL, '020-6426233', NULL, '/nl/351/logo.png', NULL, NULL, NULL, 'Amsterdam', 'NULL', 'NULL', 'americanchickenfriedfantastic', '1', 100, 2809, 0, 99, '25', '7.59', '7.59'),
(51, 98001274, 'Il Mare2', NULL, '010-4849431', NULL, '/nl/P51/logo.png', 'Nassaukade', '36c', '3071JL', 'Rotterdam', '51.912604', '4.4997102', 'ilmare2', '1', 276, 1199, 0, 32, '25', '2.82', '2.82'),
(52, 98001275, 'Pizza Tonno', NULL, '020-6185877', NULL, '/nl/R51/logo.png', 'Jan van Galenstraat', '202-204', '1056ck', 'Amsterdam', '52.3725777', '4.8475527', 'pizzatonno', '2', 344, 1184, 0, 77, '25', '1.32', '1.32'),
(53, 98001276, 'Kirolos', NULL, '030-6018178', 'amirf2002@yahoo.com', '/nl/NP1/logo.png', 'Handelskade', '26', '3434BB', 'Nieuwegein', '52.0104178', '5.0944334', 'kirolosnieuwegein', '1', 245, 617, 6, 83, '10.32', '8.13', '8.13'),
(54, 98001277, 'Asian Cuisine', NULL, '010-4527757', NULL, '/nl/5P1/logo.png', 'Goudse Rijweg', '48', '3061DE', 'Rotterdam', '51.928669', '4.4987209', 'asiancuisine', '0', 176, 2139, 0, 118, '25', '6.72', '6.72'),
(55, 98001278, 'Broodje Gesmeerd', 'Zwarte Woud', '030-2801293', 'info@broodjegesmeerd.nl', '/nl/QP1/logo.png', 'Zwarte Woud', '232', '3524SL', 'Utrecht', '52.0628827', '5.1428522', 'broodjegesmeerd', '2', 312, 301, 9, 54, 'NULL', '9.19', '9.19'),
(56, 98001279, 'Pizza Grandi', 'Nieuwegein', '030-6048200', 'claessen@jacsoft.nl', '/nl/171/logo.png', 'Walnootgaarde', '44b', '3436JC', 'Nieuwegein', '52.0360568', '5.0711816', 'pizzagrandinieuwegein', '1', 240, 2449, 8, 98, '9.06', '5.79', '5.79'),
(57, 98001280, 'Pizza Boy Amsterdam', NULL, '020-4888888', 'a.ozaydinli@outlook.com', '/nl/O71/logo.png', 'Spaarndammerstraat', '62', '1013SZ', 'Amsterdam', '52.3879592', '4.8807286', 'pizzaboyamsterdam', '2', 196, 107, 9, 29, '15.58', '1.39', '1.39'),
(58, 98001281, 'La Rosa', 'Hoofddorp', '023-5554426', 'rahim.mn@gmail.com', '/nl/771/logo.png', 'Tussenweg', '41', '2132CS', 'Hoofddorp', '52.3036054', '4.6954293', 'larosa', '2', 335, 940, 7, 28, '8.76', '9.57', '9.57'),
(59, 98001282, 'Shalom', 'Maassluis', '010-5925045', NULL, '/nl/0Q1/logo.png', 'Haven', '14', '3143BB', 'Maassluis', '51.9206863', '4.2522663', 'shoarmashalom', '0', 267, 2164, 0, 136, '25', '3.71', '3.71'),
(60, 98001283, 'Maxima', 'Amsterdam', '020-6341837', NULL, '/nl/3Q1/logo.png', 'Papaverhoek', '31', '1032JZ', 'Amsterdam', '52.3934384', '4.9119071', 'maximaoud', '1', 184, 597, 0, 20, '25', '9.85', '9.85'),
(61, 98001284, 'Luxor', 'Rotterdam', '010-4807219', 'twana.luxor@live.nl', '/nl/PQ1/logo.png', 'Dorpsweg', '150a', '3083LK', 'Rotterdam', '51.886277', '4.471924', 'luxorrotterdam', '0', 117, 58, 8, 135, 'NULL', '8.14', '8.14'),
(62, 98001285, 'Chinees Catering', NULL, '030-2321889', NULL, '/nl/RQ1/logo.png', 'Wittevrouwenstraat', '17', '3512CS', 'Utrecht', '52.094962', '5.12541', 'chineescateringutrecht', '1', 285, 2100, 9, 94, 'NULL', '1.12', '1.12'),
(63, 98001286, 'Haven Indah', NULL, '010-5920626', 'info@havenindah.nl', '/nl/NR1/logo.png', 'Haven', '12', '3143BB', 'Maassluis', '51.9207705', '4.2523644', 'havenindah', '0', 214, 2267, 0, 92, '25', '1.21', '1.21'),
(64, 98001287, 'Manli', NULL, '020-4713010', NULL, '/nl/5R1/logo.png', 'Hobbemakade', '72', '1071XM', 'Amsterdam', '52.3535653', '4.8862572', 'manliamsterdam', '2', 162, 1842, 0, 64, '25', '2.67', '2.67'),
(65, 98001288, 'Quick Pizza', 'Vlaardingen', '010-2489898', NULL, '/nl/QR1/logo.png', 'Mathenesserweg', '139 A', '3027HN', 'Rotterdam', '51.9143936', '4.4369529', 'quickpizzavlaardingen', '0', 194, 1827, 0, 13, '25', '9.73', '9.73'),
(66, 98001289, 'Hans Kuijpers Broodjes', NULL, '020-6961381', NULL, '/nl/10N/logo.png', 'Holendrechtplein', '6', '1106LN', 'Amsterdam', '52.300268', '4.9635499', 'hansenlindakuijpers', '1', 353, 1072, 0, 35, '25', '0.67', '0.67'),
(67, 98001290, 'Qi Lin', NULL, '0174-643336', NULL, '/nl/O0N/logo.png', 'Perzikenstraat', '29', '2671RA', 'Naaldwijk', '51.9884673', '4.210696', 'qilin', '0', 384, 1050, 0, 132, '25', '4.15', '4.15'),
(68, 98001291, 'Salernitana', NULL, '020-6131130', NULL, '/nl/70N/logo.png', 'Van Moerkerkenstraat', '65', '1064kc', 'Amsterdam', '52.3784459', '4.8132679', 'salernitanaamsterdam', '1', 187, 889, 7, 88, '8.32', '8.73', '8.73'),
(69, 98001292, 'Het Geveltje', NULL, '030-6031653', 'hongyin1988@hotmail.com', '/nl/01N/logo.png', 'Herenstraat', '19', '3431CV', 'Nieuwegein', '52.0374622', '5.0948002', 'cafetariadegriek', '0', 255, 1295, 9, 87, 'NULL', '1.23', '1.23'),
(70, 98001293, 'Deep Indian Lijn', NULL, '206134548', 's.saroya@hotmail.com', '/nl/31N/logo.png', 'Van Moerkerkenstraat', '65', '1064KC', 'Amsterdam', '52.3784459', '4.8132679', 'deepindian', '1', 227, 650, 9, 119, 'NULL', '9.96', '9.96'),
(71, 98001294, 'Pain de Luxe', NULL, '010-4611842', NULL, '/nl/P1N/logo.png', 'Peppelweg', '168a', '3053GX', 'Rotterdam', '51.9606567', '4.4680105', 'paindeluxe', '1', 194, 1659, 0, 120, '25', '6.13', '6.13'),
(72, 98001295, 'La Gondola', '\'s-Gravenzande', '0174-418686', 'lagondola@live.nl', '/nl/R1N/logo.png', 'Langestraat', '100', '2691BJ', '\'s-Gravenzande', '52.001494', '4.1621494', 'lagondola', '1', 242, 739, 6, 118, '10.19', '0.74', '0.74'),
(73, 98001296, 'Khorat Top Thai', 'Amsterdam', '206831297', 'b.terpstra3@chello.nl', '/nl/NNN/logo.png', 'Tweede Constantijn Huygensstraat', '64', '1054CW', 'Amsterdam', '52.3626697', '4.8734686', 'khorattopthaiamsterdam', '0', 314, 2776, 8, 70, 'NULL', '5.35', '5.35'),
(74, 98001297, 'La Capanna', 'Amsterdam', '621120355', 'la-campanna06@outlook.com', '/nl/5NN/logo.png', 'Eerste Helmersstraat', '251', '1054DX', 'Amsterdam', '52.3609851', '4.8653034', 'lacapanna', '1', 242, 1957, 7, 122, '9.32', '4.5', '4.50'),
(75, 98001298, 'Catering Nieuwegein', NULL, '030-2437074', NULL, '/nl/QNN/logo.png', 'Rijnhuizenstraat', '1a', '3431CN', 'Nieuwegein', '52.0370068', '5.0924578', 'cateringnieuwegein', '0', 181, 2755, 0, 114, '25', '6.48', '6.48'),
(76, 98001299, 'Neetu Dhaba', NULL, '020-6124100', 'dhaba@live.com', '/nl/13N/logo.png', 'Overtoom', '482', '1054JZ', 'Amsterdam', '52.359145', '4.860618', 'neetudadhaba', '0', 132, 917, 9, 27, 'NULL', '8.9', '8.90'),
(77, 98001300, 'Parbo', 'Amsterdam', '020-6201398', NULL, '/nl/O3N/logo.png', 'Oudezijds Voorburgwal', '64', '1012GE', 'Amsterdam', '52.3746544', '4.8989851', 'parboamsterdam', '0', 263, 1987, 0, 99, '25', '5.08', '5.08'),
(78, 98001301, 'Pizza Stella', NULL, '079-3168876', NULL, '/nl/73N/logo.png', 'Edisonstraat', '13F', '2723RS', 'Zoetermeer', '52.0632832', '4.52307', 'pizzastella', '1', 318, 1826, 8, 126, '11.75', '8.69', '8.69'),
(79, 98001302, 'The Nighttest', NULL, '053-4307449', NULL, 'images/chains/nl/thuisbezorgdnl/logo.png', 'Lasondersingel', '94', '7514BV', 'Niemandsland', '52.227629', '6.8947505', 'thenighttest', '1', 249, 824, 0, 129, '25', '8.24', '8.24'),
(80, 98001303, 'Savannah Corner', NULL, '030-2410361', NULL, '/nl/3ON/logo.png', 'Savannahweg', '11', '3542AW', 'Utrecht', '52.1173797', '5.0435146', 'savannahcorner', '1', 376, 306, 0, 109, '25', '5.1', '5.10'),
(81, 98001304, 'A la Minute', NULL, '010-2733959', NULL, '/nl/PON/logo.png', NULL, NULL, NULL, 'Rotterdam', 'NULL', 'NULL', 'alaminute', '1', 277, 2656, 0, 95, '25', '0.8', '0.80'),
(82, 98001305, 'Herzilya (oud)', NULL, '123456789', 'anjagroepkra@gmail.com', '/nl/RON/logo.png', 'Hoogstraat', '146', '3111HN', 'Schiedam', '51.9159846', '4.3976237', 'herzilyaschiedam', '1', 353, 1711, 7, 45, '8.37', '8.69', '8.69'),
(83, 98001306, 'Jeruzalem', 'Delft', '015-2124141', 'zico64@hotmail.com', '/nl/N5N/logo.png', 'Choorstraat', '31', '2611JE', 'Delft', '52.0130556', '4.3580824', 'jeruzalemdelftdelft', '2', 132, 401, 8, 49, 'NULL', '1.05', '1.05'),
(84, 98001307, 'Golden Pauw', NULL, '206188857', NULL, '/nl/55N/logo.png', 'Jan Evertsenstraat', '11', '1057BL', 'Amsterdam', '52.3712854', '4.8582848', 'goldenpauw', '0', 191, 2273, 8, 127, 'NULL', '9.19', '9.19'),
(85, 98001308, 'Il Ponte', 'Heemstedestraat', '020-6693430', 'm.elhalhouli@hotmail.com', '/nl/Q5N/logo.png', 'Heemstedestraat', '66', '1058NP', 'Amsterdam', '52.35162', '4.846174', 'ilponteheemstedestraat', '0', 236, 788, 9, 140, '10.47', '2.8', '2.80'),
(86, 98001309, 'Kerklaan Express', 'Amsterdam', '020-4214939', NULL, '/nl/1PN/logo.png', 'Plantage Muidergracht', '69', '1018TM', 'Amsterdam', '52.365563', '4.910839', 'kerklaanexpressamsterdam', '2', 315, 2648, 7, 35, 'NULL', '6.44', '6.44'),
(87, 98001310, 'Acacia', NULL, '015-2628502', 'grillroomacacia@hotmail.com', '/nl/OPN/logo.png', 'Papsouwselaan', '448', '2624EP', 'Delft', '51.9992058', '4.3542289', 'acaciadelft', '1', 117, 1879, 8, 141, 'NULL', '3.81', '3.81'),
(88, 98001311, 'Steakhouse Pizzeria De Nijl', NULL, '030-6090200', 'a.nazeer2@hotmail.com', '/nl/7PN/logo.png', 'Herenstraat', '42', '3431CW', 'Nieuwegein', '52.0364804', '5.0940207', 'denijlnieuwegein', '2', 222, 1488, 7, 36, '8.94', '9.71', '9.71'),
(89, 98001312, 'Toko Oen', NULL, '015-2125665', NULL, '/nl/07N/logo.png', 'Van der Lelijstraat', '5a', '2614EC', 'Delft', '52.0092792', '4.3382508', 'tokooen', '2', 384, 1623, 0, 126, '25', '7.16', '7.16'),
(90, 98001313, 'Hot Food Line', NULL, '020-6709301', NULL, '/nl/37N/logo.png', 'Tolstraat', '200', '1074VN', 'Amsterdam', '52.3530638', '4.9074755', 'hotfoodline', '1', 245, 1873, 0, 97, '25', '6.65', '6.65'),
(91, 98001314, 'Jeruzalem', 'Enschede', '053-4326356', 'eetcafejeruzalem@gmail.com', '/nl/P7N/logo.png', 'Maanstraat', '153/155', '7521WG', 'Enschede', '52.229594', '6.8583802', 'grillroomjeruzalemenschede', '1', 374, 1376, 9, 80, '8.19', '1.77', '1.77'),
(92, 98001315, 'Della Casa', 'Maassluis', '010-5926991', NULL, '/nl/R7N/logo.png', 'Keucheniusstraat', '2', '3144EN', 'Maassluis', '51.9199725', '4.2500122', 'dellacasa', '0', 393, 2813, 9, 111, '9.28', '8.92', '8.92'),
(93, 98001316, 'De Rijsttafel', 'Delft', '015-2855111', 'anke_wang@hotmail.com', '/nl/NQN/logo.png', 'Minervaweg', '4', '2624BZ ', 'Delft', '51.996735', '4.355781', 'derijsttafeldelft', '2', 183, 2066, 9, 89, 'NULL', '9.3', '9.30'),
(94, 98001317, 'Piramiden of Gold', NULL, '152124141', NULL, '/nl/5QN/logo.png', 'Brabantse Turfmarkt', '19', '2611CL', 'Delft', '52.0094015', '4.3610341', 'piramidenofgold', '2', 351, 1260, 6, 85, 'NULL', '9.76', '9.76'),
(95, 98001318, 'Toko Oen Minicatering', NULL, '015-2125665', NULL, '/nl/QQN/logo.png', 'Van der Lelijstraat', '5a', '2614EC', 'Delft', '52.0092792', '4.3382508', 'tokooenminicatering', '1', 172, 1347, 0, 75, '25', '0.87', '0.87'),
(96, 98001319, 'Boston Specials', NULL, '079-3163696', 'Javerdonk@ziggo.nl', '/nl/1RN/logo.png', 'Wattstraat', '9D', '2723PZ', 'Zoetermeer', '52.0615489', '4.5255825', 'bostonspecials', '0', 201, 555, 8, 134, '16.79', '5.09', '5.09'),
(97, 98001320, 'Pizza Line', NULL, '020-6709301', NULL, '/nl/ORN/logo.png', NULL, NULL, NULL, 'Amsterdam', 'NULL', 'NULL', 'pizzaline', '2', 105, 818, 0, 43, '25', '2.84', '2.84'),
(98, 98001321, 'La Scala', 'Stoepemaheerd', '050-5411677', 'kamillahdo@hotmail.com', '/nl/7RN/logo.png', 'Stoepemaheerd', '42-2', '9737TM', 'Groningen', '53.2458407', '6.5865341', 'lascalagroningen', '1', 199, 2224, 8, 104, '10.03', '8.92', '8.92'),
(99, 98001322, 'The Time', NULL, '020-6709301', NULL, '/nl/003/logo.png', 'Tolstraat', '200', '1074VN', 'Amsterdam', '52.3530638', '4.9074755', 'thetime', '0', 167, 1026, 0, 2, '25', '6.09', '6.09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
