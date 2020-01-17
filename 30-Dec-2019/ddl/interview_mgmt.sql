-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 02:13 PM
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
-- Database: `interview_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_category`
--

CREATE TABLE `t_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for categories';

-- --------------------------------------------------------

--
-- Table structure for table `t_catg_ques`
--

CREATE TABLE `t_catg_ques` (
  `ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `ques` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for questions';

-- --------------------------------------------------------

--
-- Table structure for table `t_catg_ques_ans`
--

CREATE TABLE `t_catg_ques_ans` (
  `ans_id` int(11) NOT NULL,
  `linked_ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updation_date` datetime NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 1,
  `last_read_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table containing data for answers';

-- --------------------------------------------------------

--
-- Table structure for table `t_catg_ques_read_history`
--

CREATE TABLE `t_catg_ques_read_history` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `linked_cat_id` int(11) NOT NULL,
  `last_read_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `t_catg_ques_read_history`
--
ALTER TABLE `t_catg_ques_read_history`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
