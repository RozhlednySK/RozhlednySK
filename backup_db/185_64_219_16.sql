-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 185.64.219.16:3306
-- Vytvořeno: Ned 29. pro 2019, 12:59
-- Verze serveru: 5.6.44-86.0
-- Verze PHP: 5.6.40

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
CREATE DATABASE IF NOT EXISTS `ohrazenice.k8801` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ohrazenice.k8801`;

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
(1, '2019-09-06', '16:30:00', '17:30:00', 0, NULL),
(2, '2019-09-13', '16:30:00', '17:30:00', 0, NULL),
(3, '2019-09-20', '16:30:00', '17:30:00', 0, NULL),
(4, '2019-09-27', '16:30:00', '17:30:00', 0, NULL),
(5, '2019-10-04', '16:30:00', '17:30:00', 0, NULL),
(6, '2019-10-11', '16:30:00', '17:30:00', 0, NULL),
(7, '2019-10-18', '16:30:00', '17:30:00', 0, NULL),
(8, '2019-10-25', '16:30:00', '17:30:00', 0, NULL),
(9, '2019-11-01', '16:30:00', '17:30:00', 0, NULL),
(10, '2019-11-08', '16:30:00', '17:30:00', 0, NULL),
(11, '2019-11-15', '16:30:00', '17:30:00', 0, NULL),
(12, '2019-11-22', '16:30:00', '17:30:00', 0, NULL),
(13, '2019-11-29', '16:30:00', '17:30:00', 0, NULL),
(14, '2019-12-06', '16:30:00', '17:30:00', 0, NULL),
(15, '2019-12-13', '16:30:00', '17:30:00', 0, NULL),
(16, '2019-12-20', '16:30:00', '17:30:00', 0, NULL),
(17, '2019-12-27', '16:30:00', '17:30:00', 1, 'Musíme se domluvit se správcem, jestli nás tam pustí.');

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
(1, 'Petr', 'Černohorský', '', '', NULL),
(2, 'Radek', 'Valík', '', '', NULL),
(3, 'Lukáš', 'Hazuka', '', '', NULL),
(4, 'Ondra', 'Brunclík', '', '', NULL),
(5, 'Milan', 'Novák', '', '', NULL),
(6, 'Honza', 'Müller', '', '', 'Admin'),
(7, 'Kuba', 'Bok', '', '', NULL),
(8, 'David', 'Jindříšek', '', '', NULL),
(9, 'Jan', 'Kotajny', '', '', NULL),
(10, 'Martin', 'Plíšek', '', '', NULL),
(11, 'Marek', 'Rolinčin', '', '', NULL),
(12, 'Martin', 'Pětioký', '', '', NULL),
(13, 'Pavel', 'Ryšavý', '', '', NULL),
(14, 'Jakub', 'Müller', '', '', NULL),
(15, 'Pepa', 'Němec', '', '', NULL),
(16, 'David', 'Žemlička', '', '', NULL),
(17, 'Honza', 'Štěpánek', '', '', NULL),
(18, 'Milan', 'Němec', NULL, NULL, NULL),
(19, 'Vitalij', NULL, NULL, NULL, NULL),
(20, 'Návštěvník 1', NULL, NULL, NULL, NULL),
(21, 'Návštěvník 2', NULL, NULL, NULL, NULL),
(22, 'Návštěvník 3', NULL, NULL, NULL, NULL),
(23, 'Návštěvník 4', NULL, NULL, NULL, NULL);

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
(1, 1, 1, 0, NULL, NULL),
(2, 1, 2, 0, NULL, NULL),
(3, 1, 3, 0, NULL, NULL),
(4, 1, 4, 0, NULL, NULL),
(5, 1, 5, 0, NULL, NULL),
(6, 1, 6, 0, NULL, NULL),
(7, 1, 7, 0, NULL, NULL),
(8, 1, 8, 0, NULL, NULL),
(9, 1, 9, 0, NULL, NULL),
(10, 1, 10, 0, NULL, NULL),
(11, 1, 11, 0, NULL, NULL),
(12, 1, 12, 0, NULL, NULL),
(13, 1, 13, 0, NULL, NULL),
(14, 1, 14, 0, NULL, NULL),
(15, 1, 15, 0, NULL, NULL),
(16, 1, 16, 0, NULL, NULL),
(17, 1, 17, 0, NULL, NULL),
(18, 2, 1, 2, NULL, NULL),
(19, 2, 2, 1, NULL, NULL),
(20, 2, 3, 2, NULL, NULL),
(21, 2, 4, 2, NULL, NULL),
(22, 2, 5, 1, NULL, NULL),
(23, 2, 6, 1, NULL, NULL),
(24, 2, 7, 1, NULL, NULL),
(25, 2, 8, 1, NULL, NULL),
(26, 2, 9, 1, NULL, NULL),
(27, 2, 10, 1, NULL, NULL),
(28, 2, 11, 1, NULL, NULL),
(29, 2, 12, 1, NULL, NULL),
(30, 2, 13, 2, NULL, NULL),
(31, 2, 14, 2, NULL, NULL),
(32, 2, 15, 2, NULL, NULL),
(33, 2, 16, 1, NULL, NULL),
(34, 2, 17, 2, NULL, NULL),
(35, 3, 1, 1, NULL, NULL),
(36, 3, 2, 1, NULL, NULL),
(37, 3, 3, 1, NULL, NULL),
(38, 3, 4, 2, NULL, NULL),
(39, 3, 5, 1, NULL, NULL),
(40, 3, 6, 1, NULL, NULL),
(41, 3, 7, 1, NULL, NULL),
(42, 3, 8, 2, NULL, NULL),
(43, 3, 9, 2, NULL, NULL),
(44, 3, 10, 2, NULL, NULL),
(45, 3, 11, 2, NULL, NULL),
(46, 3, 12, 2, NULL, NULL),
(47, 3, 13, 2, NULL, NULL),
(48, 3, 14, 2, NULL, NULL),
(49, 3, 15, 2, NULL, NULL),
(50, 3, 16, 2, NULL, NULL),
(51, 3, 17, 2, NULL, NULL),
(52, 4, 1, 2, NULL, NULL),
(53, 4, 2, 1, NULL, NULL),
(54, 4, 3, 2, NULL, NULL),
(55, 4, 4, 2, NULL, NULL),
(56, 4, 5, 0, NULL, NULL),
(57, 4, 6, 0, NULL, NULL),
(58, 4, 7, 0, NULL, NULL),
(59, 4, 8, 0, NULL, NULL),
(60, 4, 9, 0, NULL, NULL),
(61, 4, 10, 0, NULL, NULL),
(62, 4, 11, 0, NULL, NULL),
(63, 4, 12, 1, NULL, NULL),
(64, 4, 13, 0, NULL, NULL),
(65, 4, 14, 0, NULL, NULL),
(66, 4, 15, 0, NULL, NULL),
(67, 4, 16, 0, NULL, NULL),
(68, 4, 17, 0, NULL, NULL),
(69, 5, 1, 1, NULL, NULL),
(70, 5, 2, 1, NULL, NULL),
(71, 5, 3, 1, NULL, NULL),
(72, 5, 4, 1, NULL, NULL),
(73, 5, 5, 2, NULL, NULL),
(74, 5, 6, 1, NULL, NULL),
(75, 5, 7, 1, NULL, NULL),
(76, 5, 8, 1, NULL, NULL),
(77, 5, 9, 1, NULL, NULL),
(78, 5, 10, 1, NULL, NULL),
(79, 5, 11, 1, NULL, NULL),
(80, 5, 12, 1, NULL, NULL),
(81, 5, 13, 1, NULL, NULL),
(82, 5, 14, 1, NULL, NULL),
(83, 5, 15, 1, NULL, NULL),
(84, 5, 16, 1, NULL, NULL),
(85, 5, 17, 1, NULL, NULL),
(86, 6, 1, 1, NULL, NULL),
(87, 6, 2, 1, NULL, NULL),
(88, 6, 3, 1, NULL, NULL),
(89, 6, 4, 1, NULL, NULL),
(90, 6, 5, 1, NULL, NULL),
(91, 6, 6, 1, NULL, NULL),
(92, 6, 7, 1, NULL, NULL),
(93, 6, 8, 1, NULL, NULL),
(94, 6, 9, 1, NULL, NULL),
(95, 6, 10, 1, NULL, NULL),
(96, 6, 11, 1, NULL, NULL),
(97, 6, 12, 1, NULL, NULL),
(98, 6, 13, 1, NULL, NULL),
(99, 6, 14, 1, NULL, NULL),
(100, 6, 15, 1, NULL, NULL),
(101, 6, 16, 1, NULL, NULL),
(102, 6, 17, 1, NULL, NULL),
(103, 7, 1, 1, NULL, NULL),
(104, 7, 2, 2, NULL, NULL),
(105, 7, 3, 1, NULL, NULL),
(106, 7, 4, 1, NULL, NULL),
(107, 7, 5, 1, NULL, NULL),
(108, 7, 6, 1, NULL, NULL),
(109, 7, 7, 1, NULL, NULL),
(110, 7, 8, 2, NULL, NULL),
(111, 7, 9, 0, NULL, NULL),
(112, 7, 10, 1, NULL, NULL),
(113, 7, 11, 1, NULL, NULL),
(114, 7, 12, 1, NULL, NULL),
(115, 7, 13, 2, NULL, NULL),
(116, 7, 14, 1, NULL, NULL),
(117, 7, 15, 1, NULL, NULL),
(118, 7, 16, 1, NULL, NULL),
(119, 7, 17, 2, NULL, NULL),
(120, 8, 1, 2, NULL, NULL),
(121, 8, 2, 0, NULL, NULL),
(122, 8, 3, 1, NULL, NULL),
(123, 8, 4, 1, NULL, NULL),
(124, 8, 5, 2, NULL, NULL),
(125, 8, 6, 1, NULL, NULL),
(126, 8, 7, 2, NULL, NULL),
(127, 8, 8, 1, NULL, NULL),
(128, 8, 9, 1, NULL, NULL),
(129, 8, 10, 1, NULL, NULL),
(130, 8, 11, 1, NULL, NULL),
(131, 8, 12, 2, NULL, NULL),
(132, 8, 13, 2, NULL, NULL),
(133, 8, 14, 1, NULL, NULL),
(134, 8, 15, 1, NULL, NULL),
(135, 8, 16, 1, NULL, NULL),
(136, 8, 17, 1, NULL, NULL),
(137, 9, 1, 1, NULL, NULL),
(138, 9, 2, 1, NULL, NULL),
(139, 9, 3, 2, NULL, NULL),
(140, 9, 4, 2, NULL, NULL),
(141, 9, 5, 2, NULL, NULL),
(142, 9, 6, 2, NULL, NULL),
(143, 9, 7, 1, NULL, NULL),
(144, 9, 8, 1, NULL, NULL),
(145, 9, 9, 1, NULL, NULL),
(146, 9, 10, 1, NULL, NULL),
(147, 9, 11, 1, NULL, NULL),
(148, 9, 12, 0, NULL, NULL),
(149, 9, 13, 2, NULL, NULL),
(150, 9, 14, 2, NULL, NULL),
(151, 9, 15, 1, NULL, NULL),
(152, 9, 16, 0, NULL, NULL),
(153, 9, 17, 2, NULL, NULL),
(154, 10, 1, 2, NULL, NULL),
(155, 10, 2, 0, NULL, NULL),
(156, 10, 3, 2, NULL, NULL),
(157, 10, 4, 2, NULL, NULL),
(158, 10, 5, 0, NULL, NULL),
(159, 10, 6, 2, NULL, NULL),
(160, 10, 7, 2, NULL, NULL),
(161, 10, 8, 2, NULL, NULL),
(162, 10, 9, 2, NULL, NULL),
(163, 10, 10, 2, NULL, NULL),
(164, 10, 11, 0, NULL, NULL),
(165, 10, 12, 2, NULL, NULL),
(166, 10, 13, 0, NULL, NULL),
(167, 10, 14, 2, NULL, NULL),
(168, 10, 15, 2, NULL, NULL),
(169, 10, 16, 0, NULL, NULL),
(170, 10, 17, 0, NULL, NULL),
(171, 11, 1, 1, NULL, NULL),
(172, 11, 2, 1, NULL, NULL),
(173, 11, 3, 1, NULL, NULL),
(174, 11, 4, 1, NULL, NULL),
(175, 11, 5, 1, NULL, NULL),
(176, 11, 6, 1, NULL, NULL),
(177, 11, 7, 2, NULL, NULL),
(178, 11, 8, 1, NULL, NULL),
(179, 11, 9, 1, NULL, NULL),
(180, 11, 10, 2, NULL, NULL),
(181, 11, 11, 1, NULL, NULL),
(182, 11, 12, 1, NULL, NULL),
(183, 11, 13, 1, NULL, NULL),
(184, 11, 14, 1, NULL, NULL),
(185, 11, 15, 1, NULL, NULL),
(186, 11, 16, 1, NULL, NULL),
(187, 11, 17, 2, NULL, NULL),
(188, 12, 1, 0, NULL, NULL),
(189, 12, 2, 2, NULL, NULL),
(190, 12, 3, 2, NULL, NULL),
(191, 12, 4, 1, NULL, NULL),
(192, 12, 5, 2, NULL, NULL),
(193, 12, 6, 2, NULL, NULL),
(194, 12, 7, 2, NULL, NULL),
(195, 12, 8, 2, NULL, NULL),
(196, 12, 9, 2, NULL, NULL),
(197, 12, 10, 2, NULL, NULL),
(198, 12, 11, 2, NULL, NULL),
(199, 12, 12, 0, NULL, NULL),
(200, 12, 13, 2, NULL, NULL),
(201, 12, 14, 0, NULL, NULL),
(202, 12, 15, 2, NULL, NULL),
(203, 12, 16, 1, NULL, NULL),
(204, 12, 17, 1, NULL, NULL),
(205, 13, 1, 0, NULL, NULL),
(206, 13, 2, 1, NULL, NULL),
(207, 13, 3, 2, NULL, NULL),
(208, 13, 4, 1, NULL, NULL),
(209, 13, 5, 1, NULL, NULL),
(210, 13, 6, 1, NULL, NULL),
(211, 13, 7, 1, NULL, NULL),
(212, 13, 8, 1, NULL, NULL),
(213, 13, 9, 1, NULL, NULL),
(214, 13, 10, 1, NULL, NULL),
(215, 13, 11, 2, NULL, NULL),
(216, 13, 12, 1, NULL, NULL),
(217, 13, 13, 1, NULL, NULL),
(218, 13, 14, 1, NULL, NULL),
(219, 13, 15, 2, NULL, NULL),
(220, 13, 16, 1, NULL, NULL),
(221, 13, 17, 1, NULL, NULL),
(222, 14, 1, 0, NULL, NULL),
(223, 14, 2, 0, NULL, NULL),
(224, 14, 3, 0, NULL, NULL),
(225, 14, 4, 1, NULL, NULL),
(226, 14, 5, 0, NULL, NULL),
(227, 14, 6, 0, NULL, NULL),
(228, 14, 7, 1, NULL, NULL),
(229, 14, 8, 2, NULL, NULL),
(230, 14, 9, 1, NULL, NULL),
(231, 14, 10, 0, NULL, NULL),
(232, 14, 11, 0, NULL, NULL),
(233, 14, 12, 1, NULL, NULL),
(234, 14, 13, 1, NULL, NULL),
(235, 14, 14, 1, NULL, NULL),
(236, 14, 15, 2, NULL, NULL),
(237, 14, 16, 1, NULL, NULL),
(238, 14, 17, 1, NULL, NULL),
(239, 15, 1, 2, NULL, NULL),
(240, 15, 2, 2, NULL, NULL),
(241, 15, 3, 0, NULL, NULL),
(242, 15, 4, 0, NULL, NULL),
(243, 15, 5, 0, NULL, NULL),
(244, 15, 6, 1, NULL, NULL),
(245, 15, 7, 1, NULL, NULL),
(246, 15, 8, 2, NULL, NULL),
(247, 15, 9, 0, NULL, NULL),
(248, 15, 10, 2, NULL, NULL),
(249, 15, 11, 0, NULL, NULL),
(250, 15, 12, 2, NULL, NULL),
(251, 15, 13, 1, NULL, NULL),
(252, 15, 14, 0, NULL, NULL),
(253, 15, 15, 1, NULL, NULL),
(254, 15, 16, 2, NULL, NULL),
(255, 15, 17, 2, NULL, NULL),
(256, 16, 1, 0, NULL, NULL),
(257, 16, 2, 1, NULL, NULL),
(258, 16, 3, 1, NULL, NULL),
(259, 16, 4, 1, NULL, NULL),
(260, 16, 5, 2, NULL, NULL),
(261, 16, 6, 2, NULL, NULL),
(262, 16, 7, 1, NULL, NULL),
(263, 16, 8, 0, NULL, NULL),
(264, 16, 9, 1, NULL, NULL),
(265, 16, 10, 1, NULL, NULL),
(266, 16, 11, 1, NULL, NULL),
(267, 16, 12, 1, NULL, NULL),
(268, 16, 13, 1, NULL, NULL),
(269, 16, 14, 1, NULL, NULL),
(270, 16, 15, 1, NULL, NULL),
(271, 16, 16, 2, NULL, NULL),
(272, 16, 17, 0, NULL, NULL),
(273, 17, 1, 0, NULL, NULL),
(274, 17, 2, 1, NULL, NULL),
(275, 17, 3, 2, NULL, NULL),
(276, 17, 4, 1, NULL, NULL),
(277, 17, 5, 2, NULL, NULL),
(278, 17, 6, 2, NULL, NULL),
(279, 17, 7, 2, NULL, NULL),
(280, 17, 8, 2, NULL, NULL),
(281, 17, 9, 1, NULL, NULL),
(282, 17, 10, 2, NULL, NULL),
(283, 17, 11, 2, NULL, NULL),
(284, 17, 12, 2, NULL, NULL),
(285, 17, 13, 2, NULL, NULL),
(286, 17, 14, 1, NULL, NULL),
(287, 17, 15, 2, NULL, NULL),
(288, 17, 16, 1, NULL, NULL),
(289, 17, 17, 2, NULL, NULL),
(290, 18, 1, 1, NULL, NULL),
(291, 18, 2, 1, NULL, NULL),
(292, 18, 3, 2, NULL, NULL),
(293, 18, 4, 2, NULL, NULL),
(294, 18, 5, 2, NULL, NULL),
(295, 18, 6, 1, NULL, NULL),
(296, 18, 7, 1, NULL, NULL),
(297, 18, 8, 1, NULL, NULL),
(298, 18, 9, 1, NULL, NULL),
(299, 18, 10, 1, NULL, NULL),
(300, 18, 11, 2, NULL, NULL),
(301, 18, 12, 2, NULL, NULL),
(302, 18, 13, 1, NULL, NULL),
(303, 18, 14, 1, NULL, NULL),
(304, 18, 15, 1, NULL, NULL),
(305, 18, 16, 1, NULL, NULL),
(306, 18, 17, 0, NULL, NULL),
(307, 19, 1, 1, NULL, NULL),
(308, 19, 2, 0, NULL, NULL),
(309, 19, 3, 1, NULL, NULL),
(310, 19, 4, 0, NULL, NULL),
(311, 19, 5, 1, NULL, NULL),
(312, 19, 6, 0, NULL, NULL),
(313, 19, 7, 0, NULL, NULL),
(314, 19, 8, 0, NULL, NULL),
(315, 19, 9, 0, NULL, NULL),
(316, 19, 10, 0, NULL, NULL),
(317, 19, 11, 1, NULL, NULL),
(318, 19, 12, 0, NULL, NULL),
(319, 19, 13, 1, NULL, NULL),
(320, 19, 14, 0, NULL, NULL),
(321, 19, 15, 2, NULL, NULL),
(322, 19, 16, 1, NULL, NULL),
(323, 19, 17, 2, NULL, NULL),
(324, 20, 1, 1, NULL, NULL),
(325, 20, 2, 1, NULL, NULL),
(326, 20, 3, 0, NULL, NULL),
(327, 20, 4, 0, NULL, NULL),
(328, 20, 5, 0, NULL, NULL),
(329, 20, 6, 1, NULL, NULL),
(330, 20, 7, 0, NULL, NULL),
(331, 20, 8, 1, NULL, NULL),
(332, 20, 9, 0, NULL, NULL),
(333, 20, 10, 0, NULL, NULL),
(334, 20, 11, 0, NULL, NULL),
(335, 20, 12, 1, NULL, NULL),
(336, 20, 13, 1, NULL, NULL),
(337, 20, 14, 1, NULL, NULL),
(338, 20, 15, 0, NULL, NULL),
(339, 20, 16, 1, NULL, NULL),
(340, 20, 17, 1, NULL, NULL),
(341, 21, 1, 0, NULL, NULL),
(342, 21, 2, 0, NULL, NULL),
(343, 21, 3, 0, NULL, NULL),
(344, 21, 4, 0, NULL, NULL),
(345, 21, 5, 0, NULL, NULL),
(346, 21, 6, 0, NULL, NULL),
(347, 21, 7, 0, NULL, NULL),
(348, 21, 8, 0, NULL, NULL),
(349, 21, 9, 0, NULL, NULL),
(350, 21, 10, 0, NULL, NULL),
(351, 21, 11, 0, NULL, NULL),
(352, 21, 12, 0, NULL, NULL),
(353, 21, 13, 0, NULL, NULL),
(354, 21, 14, 0, NULL, NULL),
(355, 21, 15, 0, NULL, NULL),
(356, 21, 16, 0, NULL, NULL),
(357, 21, 17, 1, NULL, NULL),
(358, 22, 1, 0, NULL, NULL),
(359, 22, 2, 0, NULL, NULL),
(360, 22, 3, 0, NULL, NULL),
(361, 22, 4, 0, NULL, NULL),
(362, 22, 5, 0, NULL, NULL),
(363, 22, 6, 0, NULL, NULL),
(364, 22, 7, 0, NULL, NULL),
(365, 22, 8, 0, NULL, NULL),
(366, 22, 9, 0, NULL, NULL),
(367, 22, 10, 0, NULL, NULL),
(368, 22, 11, 0, NULL, NULL),
(369, 22, 12, 0, NULL, NULL),
(370, 22, 13, 0, NULL, NULL),
(371, 22, 14, 0, NULL, NULL),
(372, 22, 15, 0, NULL, NULL),
(373, 22, 16, 0, NULL, NULL),
(374, 22, 17, 0, NULL, NULL),
(375, 23, 1, 0, NULL, NULL),
(376, 23, 2, 0, NULL, NULL),
(377, 23, 3, 0, NULL, NULL),
(378, 23, 4, 0, NULL, NULL),
(379, 23, 5, 0, NULL, NULL),
(380, 23, 6, 0, NULL, NULL),
(381, 23, 7, 0, NULL, NULL),
(382, 23, 8, 0, NULL, NULL),
(383, 23, 9, 0, NULL, NULL),
(384, 23, 10, 0, NULL, NULL),
(385, 23, 11, 0, NULL, NULL),
(386, 23, 12, 0, NULL, NULL),
(387, 23, 13, 0, NULL, NULL),
(388, 23, 14, 0, NULL, NULL),
(389, 23, 15, 0, NULL, NULL),
(390, 23, 16, 0, NULL, NULL),
(391, 23, 17, 0, NULL, NULL);

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
(56, 0, '2019-12-27', 1, 17, 9);

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
