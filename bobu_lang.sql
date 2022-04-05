-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 05:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bobu_lang`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `able_create` tinyint(1) DEFAULT NULL,
  `able_delete` tinyint(1) DEFAULT NULL,
  `able_edit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `username`, `password`, `able_create`, `able_delete`, `able_edit`) VALUES
(1, 'root', '1234', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_adjectives`
--

CREATE TABLE `t_adjectives` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_adjectives`
--

INSERT INTO `t_adjectives` (`id`, `word`, `translation`) VALUES
(1, 'rich', 'bōlđi'),
(2, 'poor', 'bólđinon'),
(3, 'good', 'kená'),
(4, 'cool', 'kená'),
(5, 'bad', 'dorkó'),
(6, 'lucky', 'ukřa'),
(7, 'unlucky', 'ukřanon'),
(8, 'fast', 'fron'),
(9, 'slow', 'bléon'),
(10, 'wise', 'avalla'),
(11, 'clever', 'avalla'),
(12, 'smart', 'avalla'),
(13, 'intelligent', 'avalla'),
(14, 'stupid', 'dendō'),
(15, 'idiot', 'dendō'),
(16, 'foolish', 'dendō'),
(17, 'lazy', 'gérw'),
(18, 'hard-working', 'geřal'),
(20, 'new', 'wena'),
(21, 'happy', 'ukřa');

-- --------------------------------------------------------

--
-- Table structure for table `t_nouns`
--

CREATE TABLE `t_nouns` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_nouns`
--

INSERT INTO `t_nouns` (`id`, `word`, `translation`) VALUES
(1, 'hamster', 'mik'),
(2, 'dog', 'bárt'),
(3, 'horse', 'rosso'),
(4, 'rabbit', 'kochará'),
(5, 'bunny', 'kochará'),
(6, 'kot', 'mronō'),
(7, 'school', 'kuwarw'),
(8, 'human', 'đéno'),
(9, 'people', 'đéno\'mo'),
(10, 'luck', 'ukřanium'),
(11, 'ground', 'gránádo');

-- --------------------------------------------------------

--
-- Table structure for table `t_open_q`
--

CREATE TABLE `t_open_q` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_open_q`
--

INSERT INTO `t_open_q` (`id`, `word`, `translation`) VALUES
(1, 'what', 'nani'),
(2, 'why', 'nare'),
(3, 'where', 'wértó'),
(4, 'when', 'kerdy'),
(5, 'so what', 'peto ni'),
(6, 'for what', 'peto ni'),
(7, 'which', 'chérto'),
(8, 'how much', 'hanō'),
(9, 'how many', 'hanō'),
(10, 'how', 'haft');

-- --------------------------------------------------------

--
-- Table structure for table `t_other`
--

CREATE TABLE `t_other` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_other`
--

INSERT INTO `t_other` (`id`, `word`, `translation`) VALUES
(1, 'and', 'it\'re'),
(2, 'or', 'it\'olo'),
(3, 'but', 'demo'),
(4, 'in', 'ins'),
(5, 'on', 'īrná'),
(6, 'to', 'té'),
(7, 'next', 'xen\'oi'),
(8, 'next to', 'orne'),
(9, 'under', 'granedi');

-- --------------------------------------------------------

--
-- Table structure for table `t_persons`
--

CREATE TABLE `t_persons` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_persons`
--

INSERT INTO `t_persons` (`id`, `word`, `translation`) VALUES
(1, 'I', 'Chérn'),
(2, 'You', 'Rurnt'),
(3, 'He', 'Herņon'),
(4, 'She', 'Herņea'),
(5, 'It', 'Herów'),
(6, 'We', 'Ru\'hery'),
(7, 'You', 'Ru\'nerk'),
(8, 'They', 'Ru\'tekra');

-- --------------------------------------------------------

--
-- Table structure for table `t_verbs`
--

CREATE TABLE `t_verbs` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_verbs`
--

INSERT INTO `t_verbs` (`id`, `word`, `translation`) VALUES
(7, 'like', 'evēanta'),
(8, 'ride', 'exrēcomo'),
(9, 'read', 'wigetō'),
(10, 'love', 'bemiliē'),
(11, 'hate', 'kontrokē'),
(12, 'eat', 'miarám'),
(13, 'drink', 'chluvá'),
(14, 'sleep', 'spat\'tere'),
(15, 'name', 'navemo'),
(16, 'learn', 'uráne'),
(17, 'think', 'mevemo'),
(18, 'want', 'chentō'),
(19, 'buy', 'bařko'),
(20, 'have', 'hérd'),
(21, 'call', 'callten'),
(22, 'create', 'néwórt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_adjectives`
--
ALTER TABLE `t_adjectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nouns`
--
ALTER TABLE `t_nouns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_open_q`
--
ALTER TABLE `t_open_q`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_other`
--
ALTER TABLE `t_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_persons`
--
ALTER TABLE `t_persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_verbs`
--
ALTER TABLE `t_verbs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_adjectives`
--
ALTER TABLE `t_adjectives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `t_nouns`
--
ALTER TABLE `t_nouns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_open_q`
--
ALTER TABLE `t_open_q`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_other`
--
ALTER TABLE `t_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_persons`
--
ALTER TABLE `t_persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_verbs`
--
ALTER TABLE `t_verbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
