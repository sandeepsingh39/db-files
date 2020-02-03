-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 02:34 PM
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
-- Database: `interview-mgmt-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_last_modified` datetime NOT NULL,
  `date_last_read` datetime NOT NULL,
  `rating` int(11) NOT NULL,
  `question_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `catgory_name` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_last_modified` datetime NOT NULL,
  `date_last_read` datetime NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_question`
--

CREATE TABLE `category_question` (
  `cat_id` bigint(20) NOT NULL,
  `ques_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_last_modified` datetime NOT NULL,
  `date_last_read` datetime NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `ques_id` bigint(20) NOT NULL,
  `answer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3erw1a3t0r78st8ty27x6v3g1` (`question_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_question`
--
ALTER TABLE `category_question`
  ADD PRIMARY KEY (`cat_id`,`ques_id`),
  ADD UNIQUE KEY `UK_3k0ytimujcwf3vatkw0lnlmhv` (`ques_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKctl6tuf74n8cufkb3ulj6b3fc` (`category_id`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`ques_id`,`answer_id`),
  ADD UNIQUE KEY `UK_pp3ml2kmf8vlgciq2vewu4xea` (`answer_id`);

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FK3erw1a3t0r78st8ty27x6v3g1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `category_question`
--
ALTER TABLE `category_question`
  ADD CONSTRAINT `FKc56ojxtoe7srybkauaphxxk72` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FKptqus860thx23i3oncorp3263` FOREIGN KEY (`ques_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKctl6tuf74n8cufkb3ulj6b3fc` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD CONSTRAINT `FK594sx9gu86frfp1hmr2kwcbra` FOREIGN KEY (`ques_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `FKp9k9xpevu9mxxqg98nhdtsaj6` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
