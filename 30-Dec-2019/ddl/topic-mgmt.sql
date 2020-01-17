-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 02:15 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topic-mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupviews`
--

CREATE TABLE `groupviews` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `viewid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `ID` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `isprivate` bit(1) NOT NULL,
  `rating` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp(),
  `uniquestrid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topicgroups`
--

CREATE TABLE `topicgroups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `topicid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topic_read_history`
--

CREATE TABLE `topic_read_history` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `last_read_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_group`
--

CREATE TABLE `t_group` (
  `ID` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `ID` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `viewtopics`
--

CREATE TABLE `viewtopics` (
  `id` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `viewid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groupviews`
--
ALTER TABLE `groupviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8bwk7loervun51id4x7v5qua2` (`viewid`,`groupid`),
  ADD KEY `FK_spu9g96ug3njkoyhwwubj0kam` (`groupid`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `topicgroups`
--
ALTER TABLE `topicgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_n61tvmdd3uuqk9fq6e4i16jy8` (`topicid`,`groupid`),
  ADD KEY `FK_cor9qh790ccydysg9yt8r1j1j` (`groupid`);

--
-- Indexes for table `topic_read_history`
--
ALTER TABLE `topic_read_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_group`
--
ALTER TABLE `t_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `viewtopics`
--
ALTER TABLE `viewtopics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_i9ni7awvi8fbvlafuj2jc3dgx` (`topicid`,`viewid`),
  ADD KEY `FK_sphfrhsmk86o709nlr10wdcj1` (`viewid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groupviews`
--
ALTER TABLE `groupviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topicgroups`
--
ALTER TABLE `topicgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic_read_history`
--
ALTER TABLE `topic_read_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_group`
--
ALTER TABLE `t_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viewtopics`
--
ALTER TABLE `viewtopics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groupviews`
--
ALTER TABLE `groupviews`
  ADD CONSTRAINT `FK_awjafickpxbaiu7qfntstkllu` FOREIGN KEY (`viewid`) REFERENCES `view` (`ID`),
  ADD CONSTRAINT `FK_spu9g96ug3njkoyhwwubj0kam` FOREIGN KEY (`groupid`) REFERENCES `t_group` (`ID`);

--
-- Constraints for table `topicgroups`
--
ALTER TABLE `topicgroups`
  ADD CONSTRAINT `FK_cor9qh790ccydysg9yt8r1j1j` FOREIGN KEY (`groupid`) REFERENCES `t_group` (`ID`),
  ADD CONSTRAINT `FK_fu3o7d7vrcdtyxo31l7nqvph` FOREIGN KEY (`topicid`) REFERENCES `topic` (`ID`);

--
-- Constraints for table `viewtopics`
--
ALTER TABLE `viewtopics`
  ADD CONSTRAINT `FK_d537vo4b5xtguo52p1mp931c3` FOREIGN KEY (`topicid`) REFERENCES `topic` (`ID`),
  ADD CONSTRAINT `FK_sphfrhsmk86o709nlr10wdcj1` FOREIGN KEY (`viewid`) REFERENCES `view` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
