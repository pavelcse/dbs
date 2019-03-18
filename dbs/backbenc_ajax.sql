-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2019 at 12:16 PM
-- Server version: 10.0.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backbenc_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refresh`
--

CREATE TABLE `tbl_refresh` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_refresh`
--

INSERT INTO `tbl_refresh` (`id`, `body`) VALUES
(1, 'ur'),
(2, 'fhjf'),
(3, 'pavel'),
(4, 'sdgsd'),
(5, 'fcdsf'),
(6, 'pavel'),
(7, 'rasel'),
(8, 'rasel'),
(9, 'rasel'),
(10, 'aaaa'),
(11, 'pavel'),
(12, 'kgjg'),
(13, 'dfhdf'),
(14, 'ttttt'),
(15, 'dfdsfd'),
(16, 'uuuuuuu'),
(17, 'rasel'),
(18, 'pavel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_save`
--

CREATE TABLE `tbl_save` (
  `contentid` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_save`
--

INSERT INTO `tbl_save` (`contentid`, `content`, `status`) VALUES
(1, 'hi, my name is rasel. i am trying to coding hare. thanks...', 'draft'),
(2, '', 'draft'),
(3, '', 'draft'),
(4, '', 'draft'),
(5, '', 'draft'),
(6, '', 'draft'),
(7, '', 'draft'),
(8, '', 'draft'),
(9, '', 'draft'),
(10, '', 'draft'),
(11, '', 'draft'),
(12, '', 'draft'),
(13, '', 'draft'),
(14, '', 'draft'),
(15, '', 'draft'),
(16, '', 'draft'),
(17, '', 'draft'),
(18, '', 'draft'),
(19, '', 'draft'),
(20, '', 'draft'),
(21, '', 'draft'),
(22, '', 'draft'),
(23, '', 'draft'),
(24, '', 'draft'),
(25, '', 'draft'),
(26, '', 'draft'),
(27, '', 'draft'),
(28, '', 'draft'),
(29, '', 'draft'),
(30, '', 'draft'),
(31, '', 'draft'),
(32, '', 'draft'),
(33, '', 'draft'),
(34, 'aaaaaaaaaaaaaaaaaaaaaaaaa', 'draft'),
(35, '', 'draft'),
(36, '', 'draft'),
(37, '', 'draft'),
(38, '', 'draft'),
(39, '', 'draft'),
(40, '', 'draft'),
(41, '', 'draft'),
(42, '', 'draft'),
(43, '', 'draft'),
(44, '', 'draft'),
(45, '', 'draft'),
(46, '', 'draft'),
(47, '', 'draft'),
(48, '', 'draft'),
(49, '', 'draft'),
(50, '', 'draft'),
(51, '', 'draft'),
(52, '', 'draft'),
(53, '', 'draft'),
(54, '', 'draft'),
(55, '', 'draft'),
(56, '', 'draft'),
(57, '', 'draft'),
(58, '', 'draft'),
(59, '', 'draft'),
(60, '', 'draft'),
(61, '', 'draft'),
(62, '', 'draft'),
(63, '', 'draft'),
(64, '', 'draft'),
(65, '', 'draft'),
(66, '', 'draft'),
(67, '', 'draft'),
(68, '', 'draft'),
(69, '', 'draft'),
(70, '', 'draft'),
(71, '', 'draft'),
(72, '', 'draft'),
(73, '', 'draft'),
(74, '', 'draft'),
(75, '', 'draft'),
(76, '', 'draft'),
(77, '', 'draft'),
(78, '', 'draft'),
(79, '', 'draft'),
(80, '', 'draft'),
(81, '', 'draft'),
(82, '', 'draft'),
(83, '', 'draft'),
(84, '', 'draft'),
(85, '', 'draft'),
(86, '', 'draft'),
(87, '', 'draft'),
(88, '', 'draft'),
(89, '', 'draft'),
(90, '', 'draft'),
(91, '', 'draft'),
(92, '', 'draft'),
(93, '', 'draft'),
(94, '', 'draft'),
(95, '', 'draft'),
(96, '', 'draft'),
(97, '', 'draft'),
(98, '', 'draft'),
(99, '', 'draft'),
(100, '', 'draft'),
(101, '', 'draft'),
(102, '', 'draft'),
(103, '', 'draft'),
(104, '', 'draft'),
(105, '', 'draft'),
(106, '', 'draft'),
(107, '', 'draft'),
(108, '', 'draft'),
(109, '', 'draft'),
(110, '', 'draft'),
(111, '', 'draft'),
(112, '', 'draft'),
(113, '', 'draft'),
(114, '', 'draft'),
(115, '', 'draft'),
(116, '', 'draft'),
(117, '', 'draft'),
(118, '', 'draft'),
(119, '', 'draft'),
(120, '', 'draft'),
(121, '', 'draft'),
(122, '', 'draft'),
(123, '', 'draft'),
(124, '', 'draft'),
(125, '', 'draft'),
(126, '', 'draft'),
(127, '', 'draft'),
(128, '', 'draft'),
(129, '', 'draft'),
(130, '', 'draft'),
(131, '', 'draft'),
(132, '', 'draft'),
(133, '', 'draft'),
(134, '', 'draft'),
(135, '', 'draft'),
(136, '', 'draft'),
(137, '', 'draft'),
(138, '', 'draft'),
(139, '', 'draft'),
(140, '', 'draft'),
(141, '', 'draft'),
(142, '', 'draft'),
(143, '', 'draft'),
(144, '', 'draft'),
(145, '', 'draft'),
(146, '', 'draft'),
(147, '', 'draft'),
(148, '', 'draft'),
(149, '', 'draft'),
(150, '', 'draft'),
(151, '', 'draft'),
(152, '', 'draft'),
(153, '', 'draft'),
(154, '', 'draft'),
(155, '', 'draft'),
(156, '', 'draft'),
(157, '', 'draft'),
(158, '', 'draft'),
(159, '', 'draft'),
(160, '', 'draft'),
(161, '', 'draft'),
(162, '', 'draft'),
(163, '', 'draft'),
(164, '', 'draft'),
(165, '', 'draft'),
(166, '', 'draft'),
(167, '', 'draft'),
(168, '', 'draft'),
(169, '', 'draft'),
(170, '', 'draft'),
(171, '', 'draft'),
(172, '', 'draft'),
(173, '', 'draft'),
(174, '', 'draft'),
(175, '', 'draft'),
(176, '', 'draft'),
(177, '', 'draft'),
(178, '', 'draft'),
(179, '', 'draft'),
(180, '', 'draft'),
(181, '', 'draft'),
(182, '', 'draft'),
(183, '', 'draft'),
(184, '', 'draft'),
(185, '', 'draft'),
(186, '', 'draft'),
(187, '', 'draft'),
(188, '', 'draft'),
(189, '', 'draft'),
(190, '', 'draft'),
(191, '', 'draft'),
(192, '', 'draft'),
(193, '', 'draft'),
(194, '', 'draft'),
(195, '', 'draft'),
(196, '', 'draft'),
(197, '', 'draft'),
(198, '', 'draft'),
(199, '', 'draft'),
(200, '', 'draft'),
(201, '', 'draft'),
(202, '', 'draft'),
(203, '', 'draft'),
(204, '', 'draft'),
(205, '', 'draft'),
(206, '', 'draft'),
(207, '', 'draft'),
(208, '', 'draft'),
(209, '', 'draft'),
(210, '', 'draft'),
(211, '', 'draft'),
(212, '', 'draft'),
(213, '', 'draft'),
(214, '', 'draft'),
(215, '', 'draft'),
(216, '', 'draft'),
(217, '', 'draft'),
(218, '', 'draft'),
(219, '', 'draft'),
(220, '', 'draft'),
(221, '', 'draft'),
(222, '', 'draft'),
(223, '', 'draft'),
(224, '', 'draft'),
(225, '', 'draft'),
(226, '', 'draft'),
(227, '', 'draft'),
(228, '', 'draft'),
(229, '', 'draft'),
(230, '', 'draft'),
(231, '', 'draft'),
(232, '', 'draft'),
(233, '', 'draft'),
(234, '', 'draft'),
(235, '', 'draft'),
(236, '', 'draft'),
(237, '', 'draft'),
(238, '', 'draft'),
(239, '', 'draft'),
(240, '', 'draft'),
(241, '', 'draft'),
(242, '', 'draft'),
(243, '', 'draft'),
(244, '', 'draft'),
(245, '', 'draft'),
(246, '', 'draft'),
(247, '', 'draft'),
(248, '', 'draft'),
(249, '', 'draft'),
(250, '', 'draft'),
(251, '', 'draft'),
(252, '', 'draft'),
(253, '', 'draft'),
(254, '', 'draft'),
(255, '', 'draft'),
(256, '', 'draft'),
(257, '', 'draft'),
(258, '', 'draft'),
(259, '', 'draft'),
(260, '', 'draft'),
(261, '', 'draft'),
(262, '', 'draft'),
(263, '', 'draft'),
(264, '', 'draft'),
(265, '', 'draft'),
(266, '', 'draft'),
(267, '', 'draft'),
(268, '', 'draft'),
(269, '', 'draft'),
(270, '', 'draft'),
(271, '', 'draft'),
(272, '', 'draft'),
(273, '', 'draft'),
(274, '', 'draft'),
(275, '', 'draft'),
(276, '', 'draft'),
(277, '', 'draft'),
(278, '', 'draft'),
(279, '', 'draft'),
(280, '', 'draft'),
(281, '', 'draft'),
(282, '', 'draft'),
(283, '', 'draft'),
(284, '', 'draft'),
(285, '', 'draft'),
(286, '', 'draft'),
(287, '', 'draft'),
(288, '', 'draft'),
(289, '', 'draft'),
(290, '', 'draft'),
(291, '', 'draft'),
(292, '', 'draft'),
(293, '', 'draft'),
(294, '', 'draft'),
(295, '', 'draft'),
(296, '', 'draft'),
(297, '', 'draft'),
(298, '', 'draft'),
(299, '', 'draft'),
(300, '', 'draft'),
(301, '', 'draft'),
(302, '', 'draft'),
(303, '', 'draft'),
(304, '', 'draft'),
(305, '', 'draft'),
(306, '', 'draft'),
(307, '', 'draft'),
(308, '', 'draft'),
(309, '', 'draft'),
(310, '', 'draft'),
(311, '', 'draft'),
(312, '', 'draft'),
(313, '', 'draft'),
(314, '', 'draft'),
(315, '', 'draft'),
(316, '', 'draft'),
(317, '', 'draft'),
(318, '', 'draft'),
(319, '', 'draft'),
(320, '', 'draft'),
(321, '', 'draft'),
(322, '', 'draft'),
(323, '', 'draft'),
(324, '', 'draft'),
(325, '', 'draft'),
(326, '', 'draft'),
(327, '', 'draft'),
(328, '', 'draft'),
(329, '', 'draft'),
(330, '', 'draft'),
(331, '', 'draft'),
(332, '', 'draft'),
(333, '', 'draft'),
(334, '', 'draft'),
(335, '', 'draft'),
(336, '', 'draft'),
(337, '', 'draft'),
(338, '', 'draft'),
(339, '', 'draft'),
(340, '', 'draft'),
(341, '', 'draft'),
(342, '', 'draft'),
(343, '', 'draft'),
(344, '', 'draft'),
(345, '', 'draft'),
(346, '', 'draft'),
(347, '', 'draft'),
(348, '', 'draft'),
(349, '', 'draft'),
(350, '', 'draft'),
(351, '', 'draft'),
(352, '', 'draft'),
(353, '', 'draft'),
(354, '', 'draft'),
(355, '', 'draft'),
(356, '', 'draft'),
(357, '', 'draft'),
(358, '', 'draft'),
(359, '', 'draft'),
(360, '', 'draft'),
(361, '', 'draft'),
(362, '', 'draft'),
(363, '', 'draft'),
(364, '', 'draft'),
(365, '', 'draft'),
(366, '', 'draft'),
(367, '', 'draft'),
(368, '', 'draft'),
(369, '', 'draft'),
(370, '', 'draft'),
(371, '', 'draft'),
(372, '', 'draft'),
(373, '', 'draft'),
(374, '', 'draft'),
(375, '', 'draft'),
(376, '', 'draft'),
(377, '', 'draft'),
(378, '', 'draft'),
(379, '', 'draft'),
(380, '', 'draft'),
(381, '', 'draft'),
(382, '', 'draft'),
(383, '', 'draft'),
(384, '', 'draft'),
(385, '', 'draft'),
(386, '', 'draft'),
(387, '', 'draft'),
(388, '', 'draft'),
(389, '', 'draft'),
(390, '', 'draft'),
(391, '', 'draft'),
(392, '', 'draft'),
(393, '', 'draft'),
(394, '', 'draft'),
(395, '', 'draft'),
(396, '', 'draft'),
(397, '', 'draft'),
(398, '', 'draft'),
(399, '', 'draft'),
(400, '', 'draft'),
(401, '', 'draft'),
(402, '', 'draft'),
(403, '', 'draft'),
(404, '', 'draft'),
(405, '', 'draft'),
(406, '', 'draft'),
(407, '', 'draft'),
(408, '', 'draft'),
(409, '', 'draft'),
(410, '', 'draft'),
(411, '', 'draft'),
(412, '', 'draft'),
(413, '', 'draft'),
(414, '', 'draft'),
(415, '', 'draft'),
(416, '', 'draft'),
(417, '', 'draft'),
(418, '', 'draft'),
(419, '', 'draft'),
(420, '', 'draft'),
(421, '', 'draft'),
(422, '', 'draft'),
(423, '', 'draft'),
(424, '', 'draft'),
(425, '', 'draft'),
(426, '', 'draft'),
(427, '', 'draft'),
(428, '', 'draft'),
(429, '', 'draft'),
(430, '', 'draft'),
(431, '', 'draft'),
(432, '', 'draft'),
(433, '', 'draft'),
(434, '', 'draft'),
(435, '', 'draft'),
(436, '', 'draft'),
(437, '', 'draft'),
(438, '', 'draft'),
(439, '', 'draft'),
(440, '', 'draft'),
(441, '', 'draft'),
(442, '', 'draft'),
(443, '', 'draft'),
(444, '', 'draft'),
(445, '', 'draft'),
(446, '', 'draft'),
(447, '', 'draft'),
(448, '', 'draft'),
(449, '', 'draft'),
(450, '', 'draft'),
(451, '', 'draft'),
(452, '', 'draft'),
(453, '', 'draft'),
(454, '', 'draft'),
(455, '', 'draft'),
(456, '', 'draft'),
(457, '', 'draft'),
(458, '', 'draft'),
(459, '', 'draft'),
(460, '', 'draft'),
(461, '', 'draft'),
(462, '', 'draft'),
(463, '', 'draft'),
(464, '', 'draft'),
(465, '', 'draft'),
(466, '', 'draft'),
(467, '', 'draft'),
(468, '', 'draft'),
(469, '', 'draft'),
(470, '', 'draft'),
(471, '', 'draft'),
(472, '', 'draft'),
(473, '', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_search`
--

CREATE TABLE `tbl_search` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_search`
--

INSERT INTO `tbl_search` (`id`, `name`, `username`, `email`) VALUES
(1, 'Pavel Parvej', 'pavel_cse', 'pavel@gmail.com'),
(2, 'Rasel Munshi', 'rasel_msc', 'rasel@yahoo.com'),
(3, 'Sujan Mian', 'sujon_bba', 'sujon@gmail.com'),
(4, 'Khalekuzzaman Moni', 'moni_007', 'moni@yahoo.com'),
(5, 'Tofazzel Hossain', 'raju_cse', 'raju@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `skillid` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`skillid`, `skill`) VALUES
(1, 'Basic PHP'),
(2, 'OOP PHP'),
(3, 'PHP Framework'),
(4, 'HTML 5'),
(5, 'CSS 3'),
(6, 'BootStrap'),
(7, 'JQuery'),
(8, 'JavaScript'),
(9, 'AngularJS'),
(10, 'NodeJS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_username`
--

CREATE TABLE `tbl_username` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_username`
--

INSERT INTO `tbl_username` (`userid`, `username`) VALUES
(1, 'pavel_cse'),
(2, 'parvej_cse'),
(3, 'pavel007'),
(4, 'parvej007'),
(5, 'mepavel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_refresh`
--
ALTER TABLE `tbl_refresh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_save`
--
ALTER TABLE `tbl_save`
  ADD PRIMARY KEY (`contentid`);

--
-- Indexes for table `tbl_search`
--
ALTER TABLE `tbl_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`skillid`);

--
-- Indexes for table `tbl_username`
--
ALTER TABLE `tbl_username`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_refresh`
--
ALTER TABLE `tbl_refresh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_save`
--
ALTER TABLE `tbl_save`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `tbl_search`
--
ALTER TABLE `tbl_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `skillid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_username`
--
ALTER TABLE `tbl_username`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
