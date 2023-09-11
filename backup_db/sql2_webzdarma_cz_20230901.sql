-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: sql2.webzdarma.cz:3306
-- Vytvořeno: Pát 01. zář 2023, 23:44
-- Verze serveru: 5.6.51-91.0
-- Verze PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, '2023-01-06', '16:30:00', '17:30:00', 0, NULL),
(2, '2023-01-13', '16:30:00', '17:30:00', 0, NULL),
(3, '2023-01-20', '16:30:00', '17:30:00', 0, NULL),
(4, '2023-01-27', '16:30:00', '17:30:00', 0, NULL),
(5, '2023-02-03', '16:30:00', '17:30:00', 0, NULL),
(6, '2023-02-10', '16:30:00', '17:30:00', 0, NULL),
(7, '2023-02-17', '16:30:00', '17:30:00', 0, NULL),
(8, '2023-02-24', '16:30:00', '17:30:00', 0, NULL),
(9, '2023-03-03', '16:30:00', '17:30:00', 0, NULL),
(10, '2023-03-10', '16:30:00', '17:30:00', 0, NULL),
(11, '2023-03-17', '16:30:00', '17:30:00', 0, NULL),
(12, '2023-03-24', '16:30:00', '17:30:00', 0, NULL),
(13, '2023-03-31', '16:30:00', '17:30:00', 0, NULL),
(14, '2023-04-07', '16:30:00', '17:30:00', 1, 'Tak nějak počítám, že to asi nepůjdeme :)'),
(15, '2023-04-14', '16:30:00', '17:30:00', 0, NULL),
(16, '2023-04-21', '16:30:00', '17:30:00', 0, NULL),
(17, '2023-04-28', '16:30:00', '17:30:00', 0, ''),
(18, '2023-05-05', '16:30:00', '17:30:00', 0, NULL),
(19, '2023-05-12', '16:30:00', '17:30:00', 0, NULL),
(20, '2023-05-19', '16:30:00', '17:30:00', 0, NULL),
(21, '2023-05-26', '16:30:00', '17:30:00', 0, NULL),
(22, '2023-06-02', '16:30:00', '17:30:00', 0, NULL),
(23, '2023-06-09', '16:30:00', '17:30:00', 0, NULL),
(24, '2023-06-16', '16:30:00', '17:30:00', 0, NULL),
(25, '2023-06-23', '16:30:00', '17:30:00', 0, NULL),
(26, '2023-06-30', '16:30:00', '17:30:00', 0, NULL);

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
(4, 'Milan', 'Berger', '', '', NULL),
(5, 'Milan', 'Novák', '', '', NULL),
(6, 'Honza', 'Müller', '', '', 'Admin'),
(7, 'Kuba', 'Bok', '', '', NULL),
(8, 'Mates', 'Hazuka', '', '', NULL),
(9, 'Honza', 'Kotajny', '', '', NULL),
(10, 'Marek', 'Rolinčin', '', '', NULL),
(11, 'Kablas', '', '', '', NULL),
(12, 'Libor', 'Kalavský', '', '', NULL),
(13, 'Honza', 'Pitterle', '', '', NULL),
(14, 'Jakub', 'Müller', '', '', NULL),
(15, 'Pepa', 'Němec', '', '', NULL),
(16, 'Mára', 'Dvořák', '', '', NULL),
(17, 'Roman', 'Horčičák', '', '', NULL),
(18, 'Kuba', 'Němec', NULL, NULL, NULL),
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
(2, 1, 2, 0, NULL, NULL),
(3, 1, 3, 1, NULL, NULL),
(4, 1, 4, 1, NULL, NULL),
(5, 1, 5, 1, NULL, NULL),
(6, 1, 6, 2, NULL, NULL),
(7, 1, 7, 1, NULL, NULL),
(8, 1, 8, 1, NULL, NULL),
(9, 1, 9, 2, NULL, NULL),
(10, 1, 10, 2, NULL, NULL),
(11, 1, 11, 1, NULL, NULL),
(12, 1, 12, 1, NULL, NULL),
(13, 1, 13, 1, NULL, NULL),
(14, 1, 14, 1, NULL, NULL),
(15, 1, 15, 1, NULL, NULL),
(16, 1, 16, 1, NULL, NULL),
(17, 1, 17, 1, NULL, NULL),
(18, 1, 18, 1, NULL, NULL),
(19, 1, 19, 1, NULL, NULL),
(20, 1, 20, 2, NULL, NULL),
(21, 1, 21, 2, NULL, NULL),
(22, 1, 22, 2, NULL, NULL),
(23, 1, 23, 2, NULL, NULL),
(24, 1, 24, 0, NULL, NULL),
(25, 1, 25, 2, NULL, NULL),
(26, 1, 26, 2, NULL, NULL),
(27, 2, 1, 2, NULL, NULL),
(28, 2, 2, 0, NULL, NULL),
(29, 2, 3, 0, NULL, NULL),
(30, 2, 4, 0, NULL, NULL),
(31, 2, 5, 0, NULL, NULL),
(32, 2, 6, 0, NULL, NULL),
(33, 2, 7, 0, NULL, NULL),
(34, 2, 8, 0, NULL, NULL),
(35, 2, 9, 0, NULL, NULL),
(36, 2, 10, 0, NULL, NULL),
(37, 2, 11, 0, NULL, NULL),
(38, 2, 12, 0, NULL, NULL),
(39, 2, 13, 0, NULL, NULL),
(40, 2, 14, 0, NULL, NULL),
(41, 2, 15, 0, NULL, NULL),
(42, 2, 16, 0, NULL, NULL),
(43, 2, 17, 0, NULL, NULL),
(44, 2, 18, 0, NULL, NULL),
(45, 2, 19, 0, NULL, NULL),
(46, 2, 20, 0, NULL, NULL),
(47, 2, 21, 0, NULL, NULL),
(48, 2, 22, 0, NULL, NULL),
(49, 2, 23, 0, NULL, NULL),
(50, 2, 24, 0, NULL, NULL),
(51, 2, 25, 0, NULL, NULL),
(52, 2, 26, 0, NULL, NULL),
(53, 3, 1, 2, NULL, NULL),
(54, 3, 2, 1, NULL, NULL),
(55, 3, 3, 1, NULL, NULL),
(56, 3, 4, 1, NULL, NULL),
(57, 3, 5, 1, NULL, NULL),
(58, 3, 6, 2, NULL, NULL),
(59, 3, 7, 2, NULL, NULL),
(60, 3, 8, 1, NULL, NULL),
(61, 3, 9, 1, NULL, NULL),
(62, 3, 10, 1, NULL, NULL),
(63, 3, 11, 1, NULL, NULL),
(64, 3, 12, 1, NULL, NULL),
(65, 3, 13, 2, NULL, NULL),
(66, 3, 14, 1, NULL, NULL),
(67, 3, 15, 1, NULL, NULL),
(68, 3, 16, 1, NULL, NULL),
(69, 3, 17, 1, NULL, NULL),
(70, 3, 18, 1, NULL, NULL),
(71, 3, 19, 1, NULL, NULL),
(72, 3, 20, 1, NULL, NULL),
(73, 3, 21, 1, NULL, NULL),
(74, 3, 22, 0, NULL, NULL),
(75, 3, 23, 2, NULL, NULL),
(76, 3, 24, 1, NULL, NULL),
(77, 3, 25, 0, NULL, NULL),
(78, 3, 26, 2, NULL, NULL),
(79, 4, 1, 2, NULL, NULL),
(80, 4, 2, 0, NULL, NULL),
(81, 4, 3, 1, NULL, NULL),
(82, 4, 4, 1, NULL, NULL),
(83, 4, 5, 1, NULL, NULL),
(84, 4, 6, 0, NULL, NULL),
(85, 4, 7, 2, NULL, NULL),
(86, 4, 8, 1, NULL, NULL),
(87, 4, 9, 1, NULL, NULL),
(88, 4, 10, 1, NULL, NULL),
(89, 4, 11, 1, NULL, NULL),
(90, 4, 12, 2, NULL, NULL),
(91, 4, 13, 1, NULL, NULL),
(92, 4, 14, 2, NULL, NULL),
(93, 4, 15, 2, NULL, NULL),
(94, 4, 16, 1, NULL, NULL),
(95, 4, 17, 1, NULL, NULL),
(96, 4, 18, 2, NULL, NULL),
(97, 4, 19, 2, NULL, NULL),
(98, 4, 20, 1, NULL, NULL),
(99, 4, 21, 1, NULL, NULL),
(100, 4, 22, 1, NULL, NULL),
(101, 4, 23, 1, NULL, NULL),
(102, 4, 24, 1, NULL, NULL),
(103, 4, 25, 1, NULL, NULL),
(104, 4, 26, 1, NULL, NULL),
(105, 5, 1, 1, NULL, NULL),
(106, 5, 2, 1, NULL, NULL),
(107, 5, 3, 1, NULL, NULL),
(108, 5, 4, 1, NULL, NULL),
(109, 5, 5, 1, NULL, NULL),
(110, 5, 6, 1, NULL, NULL),
(111, 5, 7, 1, NULL, NULL),
(112, 5, 8, 1, NULL, NULL),
(113, 5, 9, 1, NULL, NULL),
(114, 5, 10, 1, NULL, NULL),
(115, 5, 11, 1, NULL, NULL),
(116, 5, 12, 2, NULL, NULL),
(117, 5, 13, 1, NULL, NULL),
(118, 5, 14, 2, NULL, NULL),
(119, 5, 15, 1, NULL, NULL),
(120, 5, 16, 1, NULL, NULL),
(121, 5, 17, 1, NULL, NULL),
(122, 5, 18, 1, NULL, NULL),
(123, 5, 19, 1, NULL, NULL),
(124, 5, 20, 1, NULL, NULL),
(125, 5, 21, 1, NULL, NULL),
(126, 5, 22, 1, NULL, NULL),
(127, 5, 23, 1, NULL, NULL),
(128, 5, 24, 1, NULL, NULL),
(129, 5, 25, 1, NULL, NULL),
(130, 5, 26, 2, NULL, NULL),
(131, 6, 1, 1, NULL, NULL),
(132, 6, 2, 1, NULL, NULL),
(133, 6, 3, 1, NULL, NULL),
(134, 6, 4, 2, NULL, NULL),
(135, 6, 5, 1, NULL, NULL),
(136, 6, 6, 2, NULL, NULL),
(137, 6, 7, 1, NULL, NULL),
(138, 6, 8, 1, NULL, NULL),
(139, 6, 9, 1, NULL, NULL),
(140, 6, 10, 1, NULL, NULL),
(141, 6, 11, 1, NULL, NULL),
(142, 6, 12, 1, NULL, NULL),
(143, 6, 13, 1, NULL, NULL),
(144, 6, 14, 1, NULL, NULL),
(145, 6, 15, 2, NULL, NULL),
(146, 6, 16, 1, NULL, NULL),
(147, 6, 17, 2, NULL, NULL),
(148, 6, 18, 2, NULL, NULL),
(149, 6, 19, 1, NULL, NULL),
(150, 6, 20, 2, NULL, NULL),
(151, 6, 21, 0, NULL, NULL),
(152, 6, 22, 1, NULL, NULL),
(153, 6, 23, 1, NULL, NULL),
(154, 6, 24, 1, NULL, NULL),
(155, 6, 25, 1, NULL, NULL),
(156, 6, 26, 2, NULL, NULL),
(157, 7, 1, 2, NULL, NULL),
(158, 7, 2, 2, NULL, NULL),
(159, 7, 3, 0, NULL, NULL),
(160, 7, 4, 2, NULL, NULL),
(161, 7, 5, 2, NULL, NULL),
(162, 7, 6, 2, NULL, NULL),
(163, 7, 7, 0, NULL, NULL),
(164, 7, 8, 2, NULL, NULL),
(165, 7, 9, 2, NULL, NULL),
(166, 7, 10, 2, NULL, NULL),
(167, 7, 11, 0, NULL, NULL),
(168, 7, 12, 0, NULL, NULL),
(169, 7, 13, 2, NULL, NULL),
(170, 7, 14, 0, NULL, NULL),
(171, 7, 15, 0, NULL, NULL),
(172, 7, 16, 0, NULL, NULL),
(173, 7, 17, 0, NULL, NULL),
(174, 7, 18, 1, NULL, NULL),
(175, 7, 19, 0, NULL, NULL),
(176, 7, 20, 2, NULL, NULL),
(177, 7, 21, 0, NULL, NULL),
(178, 7, 22, 1, NULL, NULL),
(179, 7, 23, 2, NULL, NULL),
(180, 7, 24, 2, NULL, NULL),
(181, 7, 25, 1, NULL, NULL),
(182, 7, 26, 0, NULL, NULL),
(183, 8, 1, 2, NULL, NULL),
(184, 8, 2, 1, NULL, NULL),
(185, 8, 3, 2, NULL, NULL),
(186, 8, 4, 2, NULL, NULL),
(187, 8, 5, 2, NULL, NULL),
(188, 8, 6, 2, NULL, NULL),
(189, 8, 7, 2, NULL, NULL),
(190, 8, 8, 2, NULL, NULL),
(191, 8, 9, 1, NULL, NULL),
(192, 8, 10, 1, NULL, NULL),
(193, 8, 11, 2, NULL, NULL),
(194, 8, 12, 2, NULL, NULL),
(195, 8, 13, 2, NULL, NULL),
(196, 8, 14, 2, NULL, NULL),
(197, 8, 15, 2, NULL, NULL),
(198, 8, 16, 2, NULL, NULL),
(199, 8, 17, 2, NULL, NULL),
(200, 8, 18, 2, NULL, NULL),
(201, 8, 19, 2, NULL, NULL),
(202, 8, 20, 2, NULL, NULL),
(203, 8, 21, 2, NULL, NULL),
(204, 8, 22, 2, NULL, NULL),
(205, 8, 23, 2, NULL, NULL),
(206, 8, 24, 2, NULL, NULL),
(207, 8, 25, 1, NULL, NULL),
(208, 8, 26, 2, NULL, NULL),
(209, 9, 1, 2, NULL, NULL),
(210, 9, 2, 2, NULL, NULL),
(211, 9, 3, 1, NULL, NULL),
(212, 9, 4, 1, NULL, NULL),
(213, 9, 5, 0, NULL, NULL),
(214, 9, 6, 2, NULL, NULL),
(215, 9, 7, 0, NULL, NULL),
(216, 9, 8, 1, NULL, NULL),
(217, 9, 9, 2, NULL, NULL),
(218, 9, 10, 0, NULL, NULL),
(219, 9, 11, 1, NULL, NULL),
(220, 9, 12, 1, NULL, NULL),
(221, 9, 13, 0, NULL, NULL),
(222, 9, 14, 2, NULL, NULL),
(223, 9, 15, 0, NULL, NULL),
(224, 9, 16, 2, NULL, NULL),
(225, 9, 17, 0, NULL, NULL),
(226, 9, 18, 2, NULL, NULL),
(227, 9, 19, 0, NULL, NULL),
(228, 9, 20, 0, NULL, NULL),
(229, 9, 21, 0, NULL, NULL),
(230, 9, 22, 0, NULL, NULL),
(231, 9, 23, 2, NULL, NULL),
(232, 9, 24, 1, NULL, NULL),
(233, 9, 25, 0, NULL, NULL),
(234, 9, 26, 0, NULL, NULL),
(235, 10, 1, 1, NULL, NULL),
(236, 10, 2, 1, NULL, NULL),
(237, 10, 3, 1, NULL, NULL),
(238, 10, 4, 1, NULL, NULL),
(239, 10, 5, 1, NULL, NULL),
(240, 10, 6, 1, NULL, NULL),
(241, 10, 7, 0, NULL, NULL),
(242, 10, 8, 2, NULL, NULL),
(243, 10, 9, 1, NULL, NULL),
(244, 10, 10, 2, NULL, NULL),
(245, 10, 11, 1, NULL, NULL),
(246, 10, 12, 1, NULL, NULL),
(247, 10, 13, 1, NULL, NULL),
(248, 10, 14, 2, NULL, NULL),
(249, 10, 15, 1, NULL, NULL),
(250, 10, 16, 1, NULL, NULL),
(251, 10, 17, 2, NULL, NULL),
(252, 10, 18, 1, NULL, NULL),
(253, 10, 19, 1, NULL, NULL),
(254, 10, 20, 1, NULL, NULL),
(255, 10, 21, 2, NULL, NULL),
(256, 10, 22, 2, NULL, NULL),
(257, 10, 23, 1, NULL, NULL),
(258, 10, 24, 1, NULL, NULL),
(259, 10, 25, 1, NULL, NULL),
(260, 10, 26, 0, NULL, NULL),
(261, 11, 1, 1, NULL, NULL),
(262, 11, 2, 1, NULL, NULL),
(263, 11, 3, 1, NULL, NULL),
(264, 11, 4, 2, NULL, NULL),
(265, 11, 5, 1, NULL, NULL),
(266, 11, 6, 2, NULL, NULL),
(267, 11, 7, 2, NULL, NULL),
(268, 11, 8, 0, NULL, NULL),
(269, 11, 9, 1, NULL, NULL),
(270, 11, 10, 1, NULL, NULL),
(271, 11, 11, 1, NULL, NULL),
(272, 11, 12, 1, NULL, NULL),
(273, 11, 13, 2, NULL, NULL),
(274, 11, 14, 1, NULL, NULL),
(275, 11, 15, 2, NULL, NULL),
(276, 11, 16, 2, NULL, NULL),
(277, 11, 17, 2, NULL, NULL),
(278, 11, 18, 2, NULL, NULL),
(279, 11, 19, 2, NULL, NULL),
(280, 11, 20, 2, NULL, NULL),
(281, 11, 21, 2, NULL, NULL),
(282, 11, 22, 2, NULL, NULL),
(283, 11, 23, 2, NULL, NULL),
(284, 11, 24, 2, NULL, NULL),
(285, 11, 25, 0, NULL, NULL),
(286, 11, 26, 0, NULL, NULL),
(287, 12, 1, 2, NULL, NULL),
(288, 12, 2, 1, NULL, NULL),
(289, 12, 3, 1, NULL, NULL),
(290, 12, 4, 1, NULL, NULL),
(291, 12, 5, 0, NULL, NULL),
(292, 12, 6, 1, NULL, NULL),
(293, 12, 7, 1, NULL, NULL),
(294, 12, 8, 2, NULL, NULL),
(295, 12, 9, 0, NULL, NULL),
(296, 12, 10, 1, NULL, NULL),
(297, 12, 11, 2, NULL, NULL),
(298, 12, 12, 1, NULL, NULL),
(299, 12, 13, 1, NULL, NULL),
(300, 12, 14, 2, NULL, NULL),
(301, 12, 15, 1, NULL, NULL),
(302, 12, 16, 2, NULL, NULL),
(303, 12, 17, 1, NULL, NULL),
(304, 12, 18, 2, NULL, NULL),
(305, 12, 19, 1, NULL, NULL),
(306, 12, 20, 1, NULL, NULL),
(307, 12, 21, 1, NULL, NULL),
(308, 12, 22, 1, NULL, NULL),
(309, 12, 23, 2, NULL, NULL),
(310, 12, 24, 1, NULL, NULL),
(311, 12, 25, 1, NULL, NULL),
(312, 12, 26, 2, NULL, NULL),
(313, 13, 1, 0, NULL, NULL),
(314, 13, 2, 1, NULL, NULL),
(315, 13, 3, 1, NULL, NULL),
(316, 13, 4, 1, NULL, NULL),
(317, 13, 5, 0, NULL, NULL),
(318, 13, 6, 2, NULL, NULL),
(319, 13, 7, 1, NULL, NULL),
(320, 13, 8, 1, NULL, NULL),
(321, 13, 9, 1, NULL, NULL),
(322, 13, 10, 1, NULL, NULL),
(323, 13, 11, 1, NULL, NULL),
(324, 13, 12, 2, NULL, NULL),
(325, 13, 13, 1, NULL, NULL),
(326, 13, 14, 1, NULL, NULL),
(327, 13, 15, 1, NULL, NULL),
(328, 13, 16, 2, NULL, NULL),
(329, 13, 17, 2, NULL, NULL),
(330, 13, 18, 2, NULL, NULL),
(331, 13, 19, 1, NULL, NULL),
(332, 13, 20, 2, NULL, NULL),
(333, 13, 21, 1, NULL, NULL),
(334, 13, 22, 1, NULL, NULL),
(335, 13, 23, 2, NULL, NULL),
(336, 13, 24, 2, NULL, NULL),
(337, 13, 25, 1, NULL, NULL),
(338, 13, 26, 0, NULL, NULL),
(339, 14, 1, 1, NULL, NULL),
(340, 14, 2, 2, NULL, NULL),
(341, 14, 3, 1, NULL, NULL),
(342, 14, 4, 1, NULL, NULL),
(343, 14, 5, 1, NULL, NULL),
(344, 14, 6, 1, NULL, NULL),
(345, 14, 7, 1, NULL, NULL),
(346, 14, 8, 2, NULL, NULL),
(347, 14, 9, 0, NULL, NULL),
(348, 14, 10, 2, NULL, NULL),
(349, 14, 11, 1, NULL, NULL),
(350, 14, 12, 1, NULL, NULL),
(351, 14, 13, 0, NULL, NULL),
(352, 14, 14, 1, NULL, NULL),
(353, 14, 15, 2, NULL, NULL),
(354, 14, 16, 1, NULL, NULL),
(355, 14, 17, 1, NULL, NULL),
(356, 14, 18, 2, NULL, NULL),
(357, 14, 19, 2, NULL, NULL),
(358, 14, 20, 1, NULL, NULL),
(359, 14, 21, 2, NULL, NULL),
(360, 14, 22, 1, NULL, NULL),
(361, 14, 23, 0, NULL, NULL),
(362, 14, 24, 2, NULL, NULL),
(363, 14, 25, 1, NULL, NULL),
(364, 14, 26, 0, NULL, NULL),
(365, 15, 1, 0, NULL, NULL),
(366, 15, 2, 1, NULL, NULL),
(367, 15, 3, 1, NULL, NULL),
(368, 15, 4, 1, NULL, NULL),
(369, 15, 5, 0, NULL, NULL),
(370, 15, 6, 1, NULL, NULL),
(371, 15, 7, 2, NULL, NULL),
(372, 15, 8, 1, NULL, NULL),
(373, 15, 9, 1, NULL, NULL),
(374, 15, 10, 1, NULL, NULL),
(375, 15, 11, 1, NULL, NULL),
(376, 15, 12, 1, NULL, NULL),
(377, 15, 13, 2, NULL, NULL),
(378, 15, 14, 2, NULL, NULL),
(379, 15, 15, 2, NULL, NULL),
(380, 15, 16, 1, NULL, NULL),
(381, 15, 17, 1, NULL, NULL),
(382, 15, 18, 2, NULL, NULL),
(383, 15, 19, 1, NULL, NULL),
(384, 15, 20, 1, NULL, NULL),
(385, 15, 21, 0, NULL, NULL),
(386, 15, 22, 1, NULL, NULL),
(387, 15, 23, 1, NULL, NULL),
(388, 15, 24, 2, NULL, NULL),
(389, 15, 25, 2, NULL, NULL),
(390, 15, 26, 2, NULL, NULL),
(391, 16, 1, 0, NULL, NULL),
(392, 16, 2, 2, NULL, NULL),
(393, 16, 3, 0, NULL, NULL),
(394, 16, 4, 1, NULL, NULL),
(395, 16, 5, 2, NULL, NULL),
(396, 16, 6, 1, NULL, NULL),
(397, 16, 7, 1, NULL, NULL),
(398, 16, 8, 1, NULL, NULL),
(399, 16, 9, 2, NULL, NULL),
(400, 16, 10, 1, NULL, NULL),
(401, 16, 11, 2, NULL, NULL),
(402, 16, 12, 2, NULL, NULL),
(403, 16, 13, 1, NULL, NULL),
(404, 16, 14, 2, NULL, NULL),
(405, 16, 15, 2, NULL, NULL),
(406, 16, 16, 2, NULL, NULL),
(407, 16, 17, 2, NULL, NULL),
(408, 16, 18, 0, NULL, NULL),
(409, 16, 19, 0, NULL, NULL),
(410, 16, 20, 2, NULL, NULL),
(411, 16, 21, 2, NULL, NULL),
(412, 16, 22, 2, NULL, NULL),
(413, 16, 23, 0, NULL, NULL),
(414, 16, 24, 1, NULL, NULL),
(415, 16, 25, 2, NULL, NULL),
(416, 16, 26, 0, NULL, NULL),
(417, 17, 1, 0, NULL, NULL),
(418, 17, 2, 0, NULL, NULL),
(419, 17, 3, 0, NULL, NULL),
(420, 17, 4, 2, NULL, NULL),
(421, 17, 5, 2, NULL, NULL),
(422, 17, 6, 1, NULL, NULL),
(423, 17, 7, 0, NULL, NULL),
(424, 17, 8, 0, NULL, NULL),
(425, 17, 9, 2, NULL, NULL),
(426, 17, 10, 2, NULL, NULL),
(427, 17, 11, 0, NULL, NULL),
(428, 17, 12, 2, NULL, NULL),
(429, 17, 13, 2, NULL, NULL),
(430, 17, 14, 1, NULL, NULL),
(431, 17, 15, 2, NULL, NULL),
(432, 17, 16, 2, NULL, NULL),
(433, 17, 17, 2, NULL, NULL),
(434, 17, 18, 2, NULL, NULL),
(435, 17, 19, 0, NULL, NULL),
(436, 17, 20, 1, NULL, NULL),
(437, 17, 21, 2, NULL, NULL),
(438, 17, 22, 2, NULL, NULL),
(439, 17, 23, 2, NULL, NULL),
(440, 17, 24, 1, NULL, NULL),
(441, 17, 25, 0, NULL, NULL),
(442, 17, 26, 0, NULL, NULL),
(443, 18, 1, 0, NULL, NULL),
(444, 18, 2, 0, NULL, NULL),
(445, 18, 3, 0, NULL, NULL),
(446, 18, 4, 0, NULL, NULL),
(447, 18, 5, 1, NULL, NULL),
(448, 18, 6, 1, NULL, NULL),
(449, 18, 7, 2, NULL, NULL),
(450, 18, 8, 0, NULL, NULL),
(451, 18, 9, 1, NULL, NULL),
(452, 18, 10, 2, NULL, NULL),
(453, 18, 11, 1, NULL, NULL),
(454, 18, 12, 1, NULL, NULL),
(455, 18, 13, 2, NULL, NULL),
(456, 18, 14, 2, NULL, NULL),
(457, 18, 15, 1, NULL, NULL),
(458, 18, 16, 1, NULL, NULL),
(459, 18, 17, 1, NULL, NULL),
(460, 18, 18, 2, NULL, NULL),
(461, 18, 19, 1, NULL, NULL),
(462, 18, 20, 2, NULL, NULL),
(463, 18, 21, 2, NULL, NULL),
(464, 18, 22, 2, NULL, NULL),
(465, 18, 23, 2, NULL, NULL),
(466, 18, 24, 1, NULL, NULL),
(467, 18, 25, 2, NULL, NULL),
(468, 18, 26, 2, NULL, NULL),
(469, 19, 1, 1, NULL, NULL),
(470, 19, 2, 1, NULL, NULL),
(471, 19, 3, 1, NULL, NULL),
(472, 19, 4, 1, NULL, NULL),
(473, 19, 5, 1, NULL, NULL),
(474, 19, 6, 1, NULL, NULL),
(475, 19, 7, 1, NULL, NULL),
(476, 19, 8, 1, NULL, NULL),
(477, 19, 9, 0, NULL, NULL),
(478, 19, 10, 1, NULL, NULL),
(479, 19, 11, 0, NULL, NULL),
(480, 19, 12, 1, NULL, NULL),
(481, 19, 13, 2, NULL, NULL),
(482, 19, 14, 1, NULL, NULL),
(483, 19, 15, 1, NULL, NULL),
(484, 19, 16, 0, NULL, NULL),
(485, 19, 17, 0, NULL, NULL),
(486, 19, 18, 0, NULL, NULL),
(487, 19, 19, 1, NULL, NULL),
(488, 19, 20, 1, NULL, NULL),
(489, 19, 21, 0, NULL, NULL),
(490, 19, 22, 0, NULL, NULL),
(491, 19, 23, 0, NULL, NULL),
(492, 19, 24, 0, NULL, NULL),
(493, 19, 25, 0, NULL, NULL),
(494, 19, 26, 0, NULL, NULL),
(495, 20, 1, 0, NULL, NULL),
(496, 20, 2, 1, NULL, NULL),
(497, 20, 3, 1, NULL, NULL),
(498, 20, 4, 1, NULL, NULL),
(499, 20, 5, 0, NULL, NULL),
(500, 20, 6, 0, NULL, NULL),
(501, 20, 7, 0, NULL, NULL),
(502, 20, 8, 1, NULL, NULL),
(503, 20, 9, 0, NULL, NULL),
(504, 20, 10, 0, NULL, NULL),
(505, 20, 11, 0, NULL, NULL),
(506, 20, 12, 0, NULL, NULL),
(507, 20, 13, 1, NULL, NULL),
(508, 20, 14, 1, NULL, NULL),
(509, 20, 15, 0, NULL, NULL),
(510, 20, 16, 0, NULL, NULL),
(511, 20, 17, 0, NULL, NULL),
(512, 20, 18, 0, NULL, NULL),
(513, 20, 19, 0, NULL, NULL),
(514, 20, 20, 0, NULL, NULL),
(515, 20, 21, 0, NULL, NULL),
(516, 20, 22, 0, NULL, NULL),
(517, 20, 23, 0, NULL, NULL),
(518, 20, 24, 0, NULL, NULL),
(519, 20, 25, 0, NULL, NULL),
(520, 20, 26, 0, NULL, NULL),
(521, 21, 1, 0, NULL, NULL),
(522, 21, 2, 0, NULL, NULL),
(523, 21, 3, 0, NULL, NULL),
(524, 21, 4, 0, NULL, NULL),
(525, 21, 5, 0, NULL, NULL),
(526, 21, 6, 0, NULL, NULL),
(527, 21, 7, 0, NULL, NULL),
(528, 21, 8, 0, NULL, NULL),
(529, 21, 9, 0, NULL, NULL),
(530, 21, 10, 0, NULL, NULL),
(531, 21, 11, 0, NULL, NULL),
(532, 21, 12, 0, NULL, NULL),
(533, 21, 13, 0, NULL, NULL),
(534, 21, 14, 1, NULL, NULL),
(535, 21, 15, 0, NULL, NULL),
(536, 21, 16, 0, NULL, NULL),
(537, 21, 17, 0, NULL, NULL),
(538, 21, 18, 0, NULL, NULL),
(539, 21, 19, 0, NULL, NULL),
(540, 21, 20, 0, NULL, NULL),
(541, 21, 21, 0, NULL, NULL),
(542, 21, 22, 0, NULL, NULL),
(543, 21, 23, 0, NULL, NULL),
(544, 21, 24, 0, NULL, NULL),
(545, 21, 25, 0, NULL, NULL),
(546, 21, 26, 0, NULL, NULL),
(547, 22, 1, 0, NULL, NULL),
(548, 22, 2, 0, NULL, NULL),
(549, 22, 3, 0, NULL, NULL),
(550, 22, 4, 0, NULL, NULL),
(551, 22, 5, 0, NULL, NULL),
(552, 22, 6, 0, NULL, NULL),
(553, 22, 7, 0, NULL, NULL),
(554, 22, 8, 0, NULL, NULL),
(555, 22, 9, 0, NULL, NULL),
(556, 22, 10, 0, NULL, NULL),
(557, 22, 11, 0, NULL, NULL),
(558, 22, 12, 0, NULL, NULL),
(559, 22, 13, 0, NULL, NULL),
(560, 22, 14, 0, NULL, NULL),
(561, 22, 15, 0, NULL, NULL),
(562, 22, 16, 0, NULL, NULL),
(563, 22, 17, 0, NULL, NULL),
(564, 22, 18, 0, NULL, NULL),
(565, 22, 19, 0, NULL, NULL),
(566, 22, 20, 0, NULL, NULL),
(567, 22, 21, 0, NULL, NULL),
(568, 22, 22, 0, NULL, NULL),
(569, 22, 23, 0, NULL, NULL),
(570, 22, 24, 0, NULL, NULL),
(571, 22, 25, 0, NULL, NULL),
(572, 22, 26, 0, NULL, NULL),
(573, 23, 1, 0, NULL, NULL),
(574, 23, 2, 0, NULL, NULL),
(575, 23, 3, 0, NULL, NULL),
(576, 23, 4, 0, NULL, NULL),
(577, 23, 5, 0, NULL, NULL),
(578, 23, 6, 0, NULL, NULL),
(579, 23, 7, 0, NULL, NULL),
(580, 23, 8, 0, NULL, NULL),
(581, 23, 9, 0, NULL, NULL),
(582, 23, 10, 0, NULL, NULL),
(583, 23, 11, 0, NULL, NULL),
(584, 23, 12, 0, NULL, NULL),
(585, 23, 13, 0, NULL, NULL),
(586, 23, 14, 0, NULL, NULL),
(587, 23, 15, 0, NULL, NULL),
(588, 23, 16, 0, NULL, NULL),
(589, 23, 17, 0, NULL, NULL),
(590, 23, 18, 0, NULL, NULL),
(591, 23, 19, 0, NULL, NULL),
(592, 23, 20, 0, NULL, NULL),
(593, 23, 21, 0, NULL, NULL),
(594, 23, 22, 0, NULL, NULL),
(595, 23, 23, 0, NULL, NULL),
(596, 23, 24, 0, NULL, NULL),
(597, 23, 25, 0, NULL, NULL),
(598, 23, 26, 0, NULL, NULL);

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
(94, 0, '2021-12-17', 1, 10, 9),
(95, 0, '2021-12-31', 2, 9, 16),
(96, 0, '2022-01-07', 2, 10, 16),
(97, 0, '2022-01-21', 1, 15, 11),
(98, 0, '2022-01-28', 2, 12, 13),
(99, 0, '2022-02-04', 1, 9, 8),
(100, 0, '2022-02-11', 2, 9, 11),
(101, 0, '2022-01-14', 1, 14, 7),
(102, 0, '2022-02-18', 2, 5, 16),
(103, 0, '2022-02-25', 1, 11, 7),
(104, 0, '2022-03-04', 1, 11, 8),
(105, 0, '2022-03-11', 1, 12, 7),
(106, 0, '2022-03-18', 1, 14, 9),
(107, 0, '2022-03-25', 2, 8, 12),
(108, 0, '2022-04-01', 1, 12, 10),
(109, 0, '2022-04-08', 1, 14, 13),
(110, 0, '2022-04-15', 2, 8, 10),
(111, 0, '2022-04-22', 1, 12, 9),
(112, 0, '2022-04-29', 2, 6, 10),
(113, 0, '2022-05-13', 2, 8, 11),
(114, 0, '2022-05-06', 2, 5, 8),
(115, 0, '2022-05-20', 2, 10, 13),
(116, 0, '2022-05-27', 2, 7, 11),
(117, 0, '2022-06-17', 1, 14, 7),
(118, 0, '2022-09-02', 1, 10, 8),
(119, 0, '2022-09-09', 2, 8, 14),
(120, 0, '2022-09-16', 2, 5, 15),
(121, 0, '2022-09-23', 1, 18, 10),
(122, 0, '2022-10-07', 1, 13, 6),
(123, 0, '2022-10-14', 2, 7, 16),
(124, 0, '2022-10-21', 0, 8, 8),
(125, 0, '2022-10-28', 1, 12, 6),
(126, 0, '2022-11-04', 1, 10, 8),
(127, 0, '2022-11-11', 2, 10, 13),
(128, 0, '2022-12-02', 2, 14, 15),
(129, 0, '2022-12-09', 2, 5, 11),
(130, 0, '2022-11-25', 0, 0, 0),
(131, 0, '2022-12-16', 2, 10, 12),
(132, 0, '2022-12-23', 1, 9, 8),
(133, 0, '2022-12-30', 1, 10, 7),
(134, 0, '2023-01-06', 1, 14, 10),
(135, 0, '2023-01-13', 1, 14, 9),
(136, 0, '2023-01-20', 1, 13, 11),
(137, 0, '2023-01-27', 2, 10, 14),
(138, 0, '2023-02-03', 1, 9, 7),
(139, 0, '2023-02-17', 2, 6, 14),
(140, 0, '2023-02-24', 2, 6, 16),
(141, 0, '2023-03-03', 1, 10, 8),
(142, 0, '2023-03-10', 1, 10, 9),
(143, 0, '2023-03-17', 1, 14, 12),
(144, 0, '2023-03-24', 2, 8, 11),
(145, 0, '2023-03-31', 0, 9, 9),
(146, 0, '2023-04-07', 1, 18, 7),
(147, 0, '2023-04-14', 2, 5, 10),
(148, 0, '2023-04-21', 2, 10, 16),
(149, 0, '2023-05-05', 0, 0, 0),
(150, 0, '2023-05-12', 0, 12, 12),
(151, 0, '2023-05-19', 1, 7, 6),
(152, 0, '2023-05-26', 0, 0, 0),
(153, 0, '2023-06-02', 1, 15, 11),
(154, 0, '2023-06-09', 0, 0, 0),
(155, 0, '2023-06-16', 1, 10, 8),
(156, 0, '2023-06-23', 2, 12, 15);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `c_attendance`
--
ALTER TABLE `c_attendance`
  ADD PRIMARY KEY (`c_att`);

--
-- Indexy pro tabulku `t_date`
--
ALTER TABLE `t_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `t_player`
--
ALTER TABLE `t_player`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `t_player_date`
--
ALTER TABLE `t_player_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_t_player_date_t_date` (`id_date`),
  ADD KEY `IXFK_t_player_date_t_player` (`id_player`);

--
-- Indexy pro tabulku `t_score`
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
