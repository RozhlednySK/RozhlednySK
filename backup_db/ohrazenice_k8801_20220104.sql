-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: sql2.webzdarma.cz:3306
-- Vytvořeno: Úte 04. led 2022, 09:14
-- Verze serveru: 5.6.51-91.0
-- Verze PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `ohrazenice.k8801`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `c_attendance`
--

CREATE TABLE `c_attendance` (
  `c_att` smallint(6) NOT NULL,
  `desctription` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `c_attendance`
--

INSERT INTO `c_attendance` (`c_att`, `desctription`) VALUES
(1, 'ANO'),
(2, 'ANO'),
(3, '?');

-- --------------------------------------------------------

--
-- Struktura tabulky `t_date`
--

CREATE TABLE `t_date` (
  `id` int(11) NOT NULL DEFAULT '1',
  `date` date DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `holiday` tinyint(1) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `t_date`
--

INSERT INTO `t_date` (`id`, `date`, `time_start`, `time_end`, `holiday`, `comment`) VALUES
(1, '2021-09-03', '16:30:00', '17:30:00', 0, NULL),
(2, '2021-09-10', '16:30:00', '17:30:00', 0, NULL),
(3, '2021-09-17', '16:30:00', '17:30:00', 0, NULL),
(4, '2021-09-24', '16:30:00', '17:30:00', 0, NULL),
(5, '2021-10-01', '16:30:00', '17:30:00', 0, NULL),
(6, '2021-10-08', '16:30:00', '17:30:00', 0, NULL),
(7, '2021-10-15', '16:30:00', '17:30:00', 0, NULL),
(8, '2021-10-22', '16:30:00', '17:30:00', 0, NULL),
(9, '2021-10-29', '16:30:00', '17:30:00', 0, NULL),
(10, '2021-11-05', '16:30:00', '17:30:00', 0, NULL),
(11, '2021-11-12', '16:30:00', '17:30:00', 0, NULL),
(12, '2021-11-19', '16:30:00', '17:30:00', 0, NULL),
(13, '2021-11-26', '16:30:00', '17:30:00', 0, NULL),
(14, '2021-12-03', '16:30:00', '17:30:00', 0, NULL),
(15, '2021-12-10', '16:30:00', '17:30:00', 0, NULL),
(16, '2021-12-17', '16:30:00', '17:30:00', 0, NULL),
(17, '2021-12-24', '16:30:00', '17:30:00', 1, 'Tak nějak počítám, že to asi nepůjdeme :)'),
(18, '2021-12-31', '16:30:00', '17:30:00', 1, 'Musíme se domluvit se správcem, jestli nás tam pustí.');

-- --------------------------------------------------------

--
-- Struktura tabulky `t_player`
--

CREATE TABLE `t_player` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `t_player`
--

INSERT INTO `t_player` (`id`, `name`, `surname`, `email`, `telefon`, `comment`) VALUES
(1, 'Pavel', 'Ryšavý', '', '', NULL),
(2, 'Radek', 'Valík', '', '', NULL),
(3, 'Lukáš', 'Hazuka', '', '', NULL),
(4, 'Honza', 'Štěpánek', '', '', NULL),
(5, 'Milan', 'Novák', '', '', NULL),
(6, 'Honza', 'Müller', '', '', 'Admin'),
(7, 'Kuba', 'Bok', '', '', NULL),
(8, 'Mates', 'Hazuka', '', '', NULL),
(9, 'Honza', 'Kotajny', '', '', NULL),
(10, 'Marek', 'Rolinčin', '', '', NULL),
(11, 'David', 'Žemlička', '', '', NULL),
(12, 'Martin', 'Pětioký', '', '', NULL),
(13, 'Tomáš', 'Klátil', '', '', NULL),
(14, 'Jakub', 'Müller', '', '', NULL),
(15, 'Pepa', 'Němec', '', '', NULL),
(16, 'Mára', 'Dvořák', '', '', NULL),
(17, 'Ondra', 'Brunclík', '', '', NULL),
(18, 'Loyzeg', '', NULL, NULL, NULL),
(19, 'Návštěvník 1', NULL, NULL, NULL, NULL),
(20, 'Návštěvník 2', NULL, NULL, NULL, NULL),
(21, 'Návštěvník 3', NULL, NULL, NULL, NULL),
(22, 'Návštěvník 4', NULL, NULL, NULL, NULL),
(23, 'Návštěvník 5', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `t_player_date`
--

CREATE TABLE `t_player_date` (
  `id` int(11) NOT NULL,
  `id_player` int(11) DEFAULT NULL,
  `id_date` int(11) DEFAULT NULL,
  `c_att` smallint(6) DEFAULT NULL,
  `comment` text,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `t_player_date`
--

INSERT INTO `t_player_date` (`id`, `id_player`, `id_date`, `c_att`, `comment`, `date`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 1, NULL, NULL),
(3, 1, 3, 1, NULL, NULL),
(4, 1, 4, 1, NULL, NULL),
(5, 1, 5, 2, NULL, NULL),
(6, 1, 6, 1, NULL, NULL),
(7, 1, 7, 1, NULL, NULL),
(8, 1, 8, 1, NULL, NULL),
(9, 1, 9, 2, NULL, NULL),
(10, 1, 10, 1, NULL, NULL),
(11, 1, 11, 1, NULL, NULL),
(12, 1, 12, 1, NULL, NULL),
(13, 1, 13, 1, NULL, NULL),
(14, 1, 14, 1, NULL, NULL),
(15, 1, 15, 1, NULL, NULL),
(16, 1, 16, 2, NULL, NULL),
(17, 1, 17, 0, NULL, NULL),
(18, 1, 18, 1, NULL, NULL),
(19, 2, 1, 2, NULL, NULL),
(20, 2, 2, 2, NULL, NULL),
(21, 2, 3, 2, NULL, NULL),
(22, 2, 4, 1, NULL, NULL),
(23, 2, 5, 2, NULL, NULL),
(24, 2, 6, 2, NULL, NULL),
(25, 2, 7, 2, NULL, NULL),
(26, 2, 8, 1, NULL, NULL),
(27, 2, 9, 1, NULL, NULL),
(28, 2, 10, 1, NULL, NULL),
(29, 2, 11, 1, NULL, NULL),
(30, 2, 12, 1, NULL, NULL),
(31, 2, 13, 1, NULL, NULL),
(32, 2, 14, 1, NULL, NULL),
(33, 2, 15, 2, NULL, NULL),
(34, 2, 16, 1, NULL, NULL),
(35, 2, 17, 0, NULL, NULL),
(36, 2, 18, 1, NULL, NULL),
(37, 3, 1, 1, NULL, NULL),
(38, 3, 2, 1, NULL, NULL),
(39, 3, 3, 1, NULL, NULL),
(40, 3, 4, 2, NULL, NULL),
(41, 3, 5, 1, NULL, NULL),
(42, 3, 6, 1, NULL, NULL),
(43, 3, 7, 1, NULL, NULL),
(44, 3, 8, 2, NULL, NULL),
(45, 3, 9, 1, NULL, NULL),
(46, 3, 10, 2, NULL, NULL),
(47, 3, 11, 2, NULL, NULL),
(48, 3, 12, 2, NULL, NULL),
(49, 3, 13, 2, NULL, NULL),
(50, 3, 14, 2, NULL, NULL),
(51, 3, 15, 2, NULL, NULL),
(52, 3, 16, 1, NULL, NULL),
(53, 3, 17, 0, NULL, NULL),
(54, 3, 18, 1, NULL, NULL),
(55, 4, 1, 0, NULL, NULL),
(56, 4, 2, 1, NULL, NULL),
(57, 4, 3, 2, NULL, NULL),
(58, 4, 4, 1, NULL, NULL),
(59, 4, 5, 2, NULL, NULL),
(60, 4, 6, 1, NULL, NULL),
(61, 4, 7, 2, NULL, NULL),
(62, 4, 8, 2, NULL, NULL),
(63, 4, 9, 2, NULL, NULL),
(64, 4, 10, 2, NULL, NULL),
(65, 4, 11, 2, NULL, NULL),
(66, 4, 12, 1, NULL, NULL),
(67, 4, 13, 1, NULL, NULL),
(68, 4, 14, 1, NULL, NULL),
(69, 4, 15, 2, NULL, NULL),
(70, 4, 16, 2, NULL, NULL),
(71, 4, 17, 0, NULL, NULL),
(72, 4, 18, 2, NULL, NULL),
(73, 5, 1, 1, NULL, NULL),
(74, 5, 2, 1, NULL, NULL),
(75, 5, 3, 1, NULL, NULL),
(76, 5, 4, 1, NULL, NULL),
(77, 5, 5, 1, NULL, NULL),
(78, 5, 6, 2, NULL, NULL),
(79, 5, 7, 1, NULL, NULL),
(80, 5, 8, 0, NULL, NULL),
(81, 5, 9, 2, NULL, NULL),
(82, 5, 10, 1, NULL, NULL),
(83, 5, 11, 1, NULL, NULL),
(84, 5, 12, 1, NULL, NULL),
(85, 5, 13, 1, NULL, NULL),
(86, 5, 14, 1, NULL, NULL),
(87, 5, 15, 1, NULL, NULL),
(88, 5, 16, 1, NULL, NULL),
(89, 5, 17, 0, NULL, NULL),
(90, 5, 18, 1, NULL, NULL),
(91, 6, 1, 1, NULL, NULL),
(92, 6, 2, 2, NULL, NULL),
(93, 6, 3, 1, NULL, NULL),
(94, 6, 4, 1, NULL, NULL),
(95, 6, 5, 1, NULL, NULL),
(96, 6, 6, 1, NULL, NULL),
(97, 6, 7, 1, NULL, NULL),
(98, 6, 8, 1, NULL, NULL),
(99, 6, 9, 1, NULL, NULL),
(100, 6, 10, 2, NULL, NULL),
(101, 6, 11, 1, NULL, NULL),
(102, 6, 12, 1, NULL, NULL),
(103, 6, 13, 1, NULL, NULL),
(104, 6, 14, 1, NULL, NULL),
(105, 6, 15, 1, NULL, NULL),
(106, 6, 16, 0, NULL, NULL),
(107, 6, 17, 0, NULL, NULL),
(108, 6, 18, 1, NULL, NULL),
(109, 7, 1, 1, NULL, NULL),
(110, 7, 2, 2, NULL, NULL),
(111, 7, 3, 1, NULL, NULL),
(112, 7, 4, 1, NULL, NULL),
(113, 7, 5, 1, NULL, NULL),
(114, 7, 6, 1, NULL, NULL),
(115, 7, 7, 1, NULL, NULL),
(116, 7, 8, 2, NULL, NULL),
(117, 7, 9, 1, NULL, NULL),
(118, 7, 10, 1, NULL, NULL),
(119, 7, 11, 1, NULL, NULL),
(120, 7, 12, 2, NULL, NULL),
(121, 7, 13, 2, NULL, NULL),
(122, 7, 14, 0, NULL, NULL),
(123, 7, 15, 0, NULL, NULL),
(124, 7, 16, 2, NULL, NULL),
(125, 7, 17, 0, NULL, NULL),
(126, 7, 18, 1, NULL, NULL),
(127, 8, 1, 0, NULL, NULL),
(128, 8, 2, 0, NULL, NULL),
(129, 8, 3, 2, NULL, NULL),
(130, 8, 4, 2, NULL, NULL),
(131, 8, 5, 2, NULL, NULL),
(132, 8, 6, 2, NULL, NULL),
(133, 8, 7, 2, NULL, NULL),
(134, 8, 8, 1, NULL, NULL),
(135, 8, 9, 1, NULL, NULL),
(136, 8, 10, 2, NULL, NULL),
(137, 8, 11, 2, NULL, NULL),
(138, 8, 12, 2, NULL, NULL),
(139, 8, 13, 1, NULL, NULL),
(140, 8, 14, 1, NULL, NULL),
(141, 8, 15, 1, NULL, NULL),
(142, 8, 16, 1, NULL, NULL),
(143, 8, 17, 0, NULL, NULL),
(144, 8, 18, 1, NULL, NULL),
(145, 9, 1, 1, NULL, NULL),
(146, 9, 2, 2, NULL, NULL),
(147, 9, 3, 1, NULL, NULL),
(148, 9, 4, 2, NULL, NULL),
(149, 9, 5, 1, NULL, NULL),
(150, 9, 6, 2, NULL, NULL),
(151, 9, 7, 1, NULL, NULL),
(152, 9, 8, 1, NULL, NULL),
(153, 9, 9, 1, NULL, NULL),
(154, 9, 10, 1, NULL, NULL),
(155, 9, 11, 0, NULL, NULL),
(156, 9, 12, 1, NULL, NULL),
(157, 9, 13, 2, NULL, NULL),
(158, 9, 14, 2, NULL, NULL),
(159, 9, 15, 1, NULL, NULL),
(160, 9, 16, 0, NULL, NULL),
(161, 9, 17, 0, NULL, NULL),
(162, 9, 18, 2, NULL, NULL),
(163, 10, 1, 2, NULL, NULL),
(164, 10, 2, 0, NULL, NULL),
(165, 10, 3, 1, NULL, NULL),
(166, 10, 4, 2, NULL, NULL),
(167, 10, 5, 2, NULL, NULL),
(168, 10, 6, 1, NULL, NULL),
(169, 10, 7, 1, NULL, NULL),
(170, 10, 8, 1, NULL, NULL),
(171, 10, 9, 1, NULL, NULL),
(172, 10, 10, 2, NULL, NULL),
(173, 10, 11, 1, NULL, NULL),
(174, 10, 12, 1, NULL, NULL),
(175, 10, 13, 1, NULL, NULL),
(176, 10, 14, 1, NULL, NULL),
(177, 10, 15, 1, NULL, NULL),
(178, 10, 16, 1, NULL, NULL),
(179, 10, 17, 0, NULL, NULL),
(180, 10, 18, 2, NULL, NULL),
(181, 11, 1, 1, NULL, NULL),
(182, 11, 2, 2, NULL, NULL),
(183, 11, 3, 2, NULL, NULL),
(184, 11, 4, 2, NULL, NULL),
(185, 11, 5, 0, NULL, NULL),
(186, 11, 6, 0, NULL, NULL),
(187, 11, 7, 0, NULL, NULL),
(188, 11, 8, 0, NULL, NULL),
(189, 11, 9, 0, NULL, NULL),
(190, 11, 10, 2, NULL, NULL),
(191, 11, 11, 2, NULL, NULL),
(192, 11, 12, 0, NULL, NULL),
(193, 11, 13, 0, NULL, NULL),
(194, 11, 14, 0, NULL, NULL),
(195, 11, 15, 0, NULL, NULL),
(196, 11, 16, 0, NULL, NULL),
(197, 11, 17, 0, NULL, NULL),
(198, 11, 18, 0, NULL, NULL),
(199, 12, 1, 0, NULL, NULL),
(200, 12, 2, 0, NULL, NULL),
(201, 12, 3, 0, NULL, NULL),
(202, 12, 4, 0, NULL, NULL),
(203, 12, 5, 0, NULL, NULL),
(204, 12, 6, 0, NULL, NULL),
(205, 12, 7, 0, NULL, NULL),
(206, 12, 8, 0, NULL, NULL),
(207, 12, 9, 0, NULL, NULL),
(208, 12, 10, 0, NULL, NULL),
(209, 12, 11, 0, NULL, NULL),
(210, 12, 12, 0, NULL, NULL),
(211, 12, 13, 0, NULL, NULL),
(212, 12, 14, 1, NULL, NULL),
(213, 12, 15, 1, NULL, NULL),
(214, 12, 16, 0, NULL, NULL),
(215, 12, 17, 0, NULL, NULL),
(216, 12, 18, 1, NULL, NULL),
(217, 13, 1, 2, NULL, NULL),
(218, 13, 2, 1, NULL, NULL),
(219, 13, 3, 2, NULL, NULL),
(220, 13, 4, 1, NULL, NULL),
(221, 13, 5, 2, NULL, NULL),
(222, 13, 6, 2, NULL, NULL),
(223, 13, 7, 0, NULL, NULL),
(224, 13, 8, 2, NULL, NULL),
(225, 13, 9, 2, NULL, NULL),
(226, 13, 10, 1, NULL, NULL),
(227, 13, 11, 2, NULL, NULL),
(228, 13, 12, 1, NULL, NULL),
(229, 13, 13, 2, NULL, NULL),
(230, 13, 14, 1, NULL, NULL),
(231, 13, 15, 2, NULL, NULL),
(232, 13, 16, 1, NULL, NULL),
(233, 13, 17, 0, NULL, NULL),
(234, 13, 18, 2, NULL, NULL),
(235, 14, 1, 2, NULL, NULL),
(236, 14, 2, 1, NULL, NULL),
(237, 14, 3, 1, NULL, NULL),
(238, 14, 4, 1, NULL, NULL),
(239, 14, 5, 1, NULL, NULL),
(240, 14, 6, 1, NULL, NULL),
(241, 14, 7, 0, NULL, NULL),
(242, 14, 8, 1, NULL, NULL),
(243, 14, 9, 2, NULL, NULL),
(244, 14, 10, 1, NULL, NULL),
(245, 14, 11, 1, NULL, NULL),
(246, 14, 12, 1, NULL, NULL),
(247, 14, 13, 1, NULL, NULL),
(248, 14, 14, 1, NULL, NULL),
(249, 14, 15, 1, NULL, NULL),
(250, 14, 16, 1, NULL, NULL),
(251, 14, 17, 0, NULL, NULL),
(252, 14, 18, 2, NULL, NULL),
(253, 15, 1, 0, NULL, NULL),
(254, 15, 2, 1, NULL, NULL),
(255, 15, 3, 2, NULL, NULL),
(256, 15, 4, 0, NULL, NULL),
(257, 15, 5, 1, NULL, NULL),
(258, 15, 6, 0, NULL, NULL),
(259, 15, 7, 1, NULL, NULL),
(260, 15, 8, 2, NULL, NULL),
(261, 15, 9, 2, NULL, NULL),
(262, 15, 10, 2, NULL, NULL),
(263, 15, 11, 2, NULL, NULL),
(264, 15, 12, 2, NULL, NULL),
(265, 15, 13, 2, NULL, NULL),
(266, 15, 14, 0, NULL, NULL),
(267, 15, 15, 0, NULL, NULL),
(268, 15, 16, 0, NULL, NULL),
(269, 15, 17, 0, NULL, NULL),
(270, 15, 18, 1, NULL, NULL),
(271, 16, 1, 0, NULL, NULL),
(272, 16, 2, 0, NULL, NULL),
(273, 16, 3, 0, NULL, NULL),
(274, 16, 4, 0, NULL, NULL),
(275, 16, 5, 0, NULL, NULL),
(276, 16, 6, 0, NULL, NULL),
(277, 16, 7, 0, NULL, NULL),
(278, 16, 8, 0, NULL, NULL),
(279, 16, 9, 0, NULL, NULL),
(280, 16, 10, 0, NULL, NULL),
(281, 16, 11, 0, NULL, NULL),
(282, 16, 12, 0, NULL, NULL),
(283, 16, 13, 0, NULL, NULL),
(284, 16, 14, 0, NULL, NULL),
(285, 16, 15, 0, NULL, NULL),
(286, 16, 16, 0, NULL, NULL),
(287, 16, 17, 0, NULL, NULL),
(288, 16, 18, 1, NULL, NULL),
(289, 17, 1, 0, NULL, NULL),
(290, 17, 2, 0, NULL, NULL),
(291, 17, 3, 0, NULL, NULL),
(292, 17, 4, 0, NULL, NULL),
(293, 17, 5, 0, NULL, NULL),
(294, 17, 6, 0, NULL, NULL),
(295, 17, 7, 0, NULL, NULL),
(296, 17, 8, 0, NULL, NULL),
(297, 17, 9, 0, NULL, NULL),
(298, 17, 10, 0, NULL, NULL),
(299, 17, 11, 0, NULL, NULL),
(300, 17, 12, 0, NULL, NULL),
(301, 17, 13, 0, NULL, NULL),
(302, 17, 14, 0, NULL, NULL),
(303, 17, 15, 0, NULL, NULL),
(304, 17, 16, 0, NULL, NULL),
(305, 17, 17, 0, NULL, NULL),
(306, 17, 18, 0, NULL, NULL),
(307, 18, 1, 0, NULL, NULL),
(308, 18, 2, 0, NULL, NULL),
(309, 18, 3, 0, NULL, NULL),
(310, 18, 4, 0, NULL, NULL),
(311, 18, 5, 0, NULL, NULL),
(312, 18, 6, 0, NULL, NULL),
(313, 18, 7, 0, NULL, NULL),
(314, 18, 8, 0, NULL, NULL),
(315, 18, 9, 1, NULL, NULL),
(316, 18, 10, 0, NULL, NULL),
(317, 18, 11, 2, NULL, NULL),
(318, 18, 12, 0, NULL, NULL),
(319, 18, 13, 0, NULL, NULL),
(320, 18, 14, 2, NULL, NULL),
(321, 18, 15, 0, NULL, NULL),
(322, 18, 16, 0, NULL, NULL),
(323, 18, 17, 0, NULL, NULL),
(324, 18, 18, 0, NULL, NULL),
(325, 19, 1, 1, NULL, NULL),
(326, 19, 2, 1, NULL, NULL),
(327, 19, 3, 2, NULL, NULL),
(328, 19, 4, 1, NULL, NULL),
(329, 19, 5, 1, NULL, NULL),
(330, 19, 6, 1, NULL, NULL),
(331, 19, 7, 1, NULL, NULL),
(332, 19, 8, 1, NULL, NULL),
(333, 19, 9, 0, NULL, NULL),
(334, 19, 10, 1, NULL, NULL),
(335, 19, 11, 1, NULL, NULL),
(336, 19, 12, 0, NULL, NULL),
(337, 19, 13, 0, NULL, NULL),
(338, 19, 14, 0, NULL, NULL),
(339, 19, 15, 1, NULL, NULL),
(340, 19, 16, 0, NULL, NULL),
(341, 19, 17, 0, NULL, NULL),
(342, 19, 18, 1, NULL, NULL),
(343, 20, 1, 0, NULL, NULL),
(344, 20, 2, 0, NULL, NULL),
(345, 20, 3, 0, NULL, NULL),
(346, 20, 4, 0, NULL, NULL),
(347, 20, 5, 0, NULL, NULL),
(348, 20, 6, 0, NULL, NULL),
(349, 20, 7, 0, NULL, NULL),
(350, 20, 8, 0, NULL, NULL),
(351, 20, 9, 0, NULL, NULL),
(352, 20, 10, 0, NULL, NULL),
(353, 20, 11, 0, NULL, NULL),
(354, 20, 12, 0, NULL, NULL),
(355, 20, 13, 0, NULL, NULL),
(356, 20, 14, 0, NULL, NULL),
(357, 20, 15, 0, NULL, NULL),
(358, 20, 16, 0, NULL, NULL),
(359, 20, 17, 0, NULL, NULL),
(360, 20, 18, 1, NULL, NULL),
(361, 21, 1, 0, NULL, NULL),
(362, 21, 2, 0, NULL, NULL),
(363, 21, 3, 0, NULL, NULL),
(364, 21, 4, 0, NULL, NULL),
(365, 21, 5, 0, NULL, NULL),
(366, 21, 6, 0, NULL, NULL),
(367, 21, 7, 0, NULL, NULL),
(368, 21, 8, 0, NULL, NULL),
(369, 21, 9, 0, NULL, NULL),
(370, 21, 10, 0, NULL, NULL),
(371, 21, 11, 0, NULL, NULL),
(372, 21, 12, 0, NULL, NULL),
(373, 21, 13, 0, NULL, NULL),
(374, 21, 14, 0, NULL, NULL),
(375, 21, 15, 0, NULL, NULL),
(376, 21, 16, 0, NULL, NULL),
(377, 21, 17, 0, NULL, NULL),
(378, 21, 18, 1, NULL, NULL),
(379, 22, 1, 0, NULL, NULL),
(380, 22, 2, 0, NULL, NULL),
(381, 22, 3, 0, NULL, NULL),
(382, 22, 4, 0, NULL, NULL),
(383, 22, 5, 0, NULL, NULL),
(384, 22, 6, 0, NULL, NULL),
(385, 22, 7, 0, NULL, NULL),
(386, 22, 8, 0, NULL, NULL),
(387, 22, 9, 0, NULL, NULL),
(388, 22, 10, 0, NULL, NULL),
(389, 22, 11, 0, NULL, NULL),
(390, 22, 12, 0, NULL, NULL),
(391, 22, 13, 0, NULL, NULL),
(392, 22, 14, 0, NULL, NULL),
(393, 22, 15, 0, NULL, NULL),
(394, 22, 16, 0, NULL, NULL),
(395, 22, 17, 0, NULL, NULL),
(396, 22, 18, 0, NULL, NULL),
(397, 23, 1, 0, NULL, NULL),
(398, 23, 2, 0, NULL, NULL),
(399, 23, 3, 2, NULL, NULL),
(400, 23, 4, 0, NULL, NULL),
(401, 23, 5, 0, NULL, NULL),
(402, 23, 6, 0, NULL, NULL),
(403, 23, 7, 0, NULL, NULL),
(404, 23, 8, 0, NULL, NULL),
(405, 23, 9, 0, NULL, NULL),
(406, 23, 10, 0, NULL, NULL),
(407, 23, 11, 0, NULL, NULL),
(408, 23, 12, 0, NULL, NULL),
(409, 23, 13, 0, NULL, NULL),
(410, 23, 14, 0, NULL, NULL),
(411, 23, 15, 0, NULL, NULL),
(412, 23, 16, 0, NULL, NULL),
(413, 23, 17, 0, NULL, NULL),
(414, 23, 18, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `t_score`
--

CREATE TABLE `t_score` (
  `id` int(11) NOT NULL,
  `id_date` int(11) NOT NULL,
  `datum` date NOT NULL,
  `vysledek` int(11) NOT NULL,
  `ohrazenice` int(11) NOT NULL,
  `doubravice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `t_score`
--

INSERT INTO `t_score` (`id`, `id_date`, `datum`, `vysledek`, `ohrazenice`, `doubravice`) VALUES
(1, 0, '2018-09-07', 2, 10, 12),
(2, 0, '2018-10-05', 1, 15, 10),
(3, 0, '2018-10-12', 2, 8, 9),
(4, 0, '2018-10-19', 2, 11, 13),
(5, 0, '2018-10-26', 1, 22, 10),
(6, 0, '2018-11-02', 0, 14, 14),
(7, 0, '2018-11-09', 2, 8, 10),
(8, 0, '2018-11-16', 1, 13, 10),
(9, 0, '2018-11-23', 1, 14, 11),
(10, 0, '2018-11-30', 2, 8, 10),
(11, 0, '2018-12-07', 2, 7, 13),
(12, 0, '2018-12-14', 2, 9, 10),
(13, 0, '2018-12-21', 1, 15, 7),
(14, 0, '2019-01-04', 1, 16, 12),
(15, 0, '2019-01-11', 2, 13, 14),
(16, 0, '2019-01-18', 1, 14, 11),
(17, 0, '2019-01-25', 1, 15, 12),
(18, 0, '2019-02-01', 2, 9, 12),
(19, 0, '2019-02-08', 2, 10, 12),
(20, 0, '2018-09-21', 2, 14, 15),
(21, 0, '2019-02-15', 1, 10, 7),
(22, 0, '2019-02-22', 2, 9, 15),
(23, 0, '2019-03-01', 0, 12, 12),
(24, 0, '2019-03-08', 2, 6, 12),
(25, 0, '2019-03-15', 2, 6, 18),
(26, 0, '2019-03-22', 2, 4, 13),
(27, 0, '2019-03-29', 1, 10, 5),
(28, 0, '2019-04-05', 2, 7, 11),
(29, 0, '2019-04-12', 1, 19, 12),
(30, 0, '2019-04-19', 1, 19, 10),
(31, 0, '2019-04-26', 2, 9, 12),
(32, 0, '2019-05-03', 1, 13, 7),
(33, 0, '2019-05-10', 1, 12, 5),
(34, 0, '2019-05-17', 1, 11, 10),
(35, 0, '2019-05-24', 2, 8, 16),
(36, 0, '2019-05-31', 1, 18, 6),
(37, 0, '2019-06-07', 2, 8, 14),
(38, 0, '2019-09-06', 1, 14, 10),
(39, 0, '2019-06-14', 1, 11, 9),
(40, 0, '2019-06-21', 2, 8, 16),
(41, 0, '2019-09-13', 2, 8, 19),
(42, 0, '2019-09-20', 2, 7, 15),
(43, 0, '2019-09-27', 1, 15, 7),
(44, 0, '2019-10-04', 1, 8, 6),
(45, 0, '2019-10-11', 1, 9, 5),
(46, 0, '2019-10-18', 2, 12, 16),
(47, 0, '2019-10-25', 1, 15, 11),
(48, 0, '2019-11-01', 0, 13, 13),
(49, 0, '2019-11-08', 1, 12, 11),
(50, 0, '2019-11-15', 2, 12, 15),
(51, 0, '2019-11-22', 1, 17, 7),
(52, 0, '2019-11-29', 2, 8, 13),
(53, 0, '2019-12-06', 2, 6, 11),
(54, 0, '2019-12-13', 1, 15, 9),
(55, 0, '2019-12-20', 1, 16, 9),
(56, 0, '2019-12-27', 1, 17, 9),
(57, 0, '2020-01-03', 1, 10, 7),
(58, 0, '2020-01-10', 1, 9, 5),
(59, 0, '2020-01-17', 2, 8, 12),
(60, 0, '2020-01-24', 2, 10, 11),
(61, 0, '2020-01-31', 2, 9, 15),
(62, 0, '2020-02-07', 2, 6, 8),
(63, 0, '2020-02-14', 2, 4, 9),
(64, 0, '2020-02-21', 2, 12, 13),
(65, 0, '2020-02-28', 2, 6, 16),
(66, 0, '2020-03-07', 2, 7, 8),
(67, 0, '2020-05-15', 2, 12, 22),
(68, 0, '2020-05-22', 2, 13, 28),
(69, 0, '2020-05-29', 2, 8, 20),
(70, 0, '2020-06-05', 1, 11, 5),
(71, 0, '2020-06-12', 1, 13, 9),
(72, 0, '2020-06-19', 0, 10, 10),
(73, 0, '2020-06-26', 2, 6, 10),
(74, 0, '2020-09-04', 1, 10, 8),
(75, 0, '2020-09-11', 2, 12, 14),
(76, 0, '2020-09-18', 2, 14, 18),
(77, 0, '2020-09-25', 0, 0, 0),
(78, 0, '2020-10-02', 2, 6, 11),
(79, 0, '2021-09-03', 2, 4, 6),
(80, 0, '2021-09-10', 2, 8, 11),
(81, 0, '2021-09-17', 0, 12, 12),
(82, 0, '2021-09-24', 2, 12, 22),
(83, 0, '2021-10-01', 1, 10, 8),
(84, 0, '2021-10-08', 2, 11, 13),
(85, 0, '2021-10-15', 2, 8, 16),
(86, 0, '2021-10-22', 2, 9, 26),
(87, 0, '2021-10-29', 1, 13, 9),
(88, 0, '2021-11-05', 2, 15, 19),
(89, 0, '2021-11-12', 1, 12, 9),
(90, 0, '2021-11-19', 2, 10, 21),
(91, 0, '2021-11-26', 2, 12, 13),
(92, 0, '2021-12-03', 2, 6, 12),
(93, 0, '2021-12-10', 2, 1, 17),
(94, 0, '2021-12-17', 1, 10, 9);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `c_attendance`
--
ALTER TABLE `c_attendance`
  ADD PRIMARY KEY (`c_att`);

--
-- Klíče pro tabulku `t_date`
--
ALTER TABLE `t_date`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `t_player`
--
ALTER TABLE `t_player`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `t_player_date`
--
ALTER TABLE `t_player_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_t_player_date_t_date` (`id_date`),
  ADD KEY `IXFK_t_player_date_t_player` (`id_player`);

--
-- Klíče pro tabulku `t_score`
--
ALTER TABLE `t_score`
  ADD PRIMARY KEY (`id`);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `t_player_date`
--
ALTER TABLE `t_player_date`
  ADD CONSTRAINT `FK_t_player_date_t_date` FOREIGN KEY (`id_date`) REFERENCES `t_date` (`id`),
  ADD CONSTRAINT `FK_t_player_date_t_player` FOREIGN KEY (`id_player`) REFERENCES `t_player` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
