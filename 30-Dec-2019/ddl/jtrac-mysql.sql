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
-- Database: `jtrac-mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) NOT NULL,
  `previous_id` bigint(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_prefix` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `param` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) NOT NULL,
  `actual_effort` double DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `logged_by` bigint(20) NOT NULL,
  `assigned_to` bigint(20) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `cus_dbl_01` double DEFAULT NULL,
  `cus_dbl_02` double DEFAULT NULL,
  `cus_dbl_03` double DEFAULT NULL,
  `cus_int_01` int(11) DEFAULT NULL,
  `cus_int_02` int(11) DEFAULT NULL,
  `cus_int_03` int(11) DEFAULT NULL,
  `cus_int_04` int(11) DEFAULT NULL,
  `cus_int_05` int(11) DEFAULT NULL,
  `cus_int_06` int(11) DEFAULT NULL,
  `cus_int_07` int(11) DEFAULT NULL,
  `cus_int_08` int(11) DEFAULT NULL,
  `cus_int_09` int(11) DEFAULT NULL,
  `cus_int_10` int(11) DEFAULT NULL,
  `cus_str_01` varchar(255) DEFAULT NULL,
  `cus_str_02` varchar(255) DEFAULT NULL,
  `cus_str_03` varchar(255) DEFAULT NULL,
  `cus_str_04` varchar(255) DEFAULT NULL,
  `cus_str_05` varchar(255) DEFAULT NULL,
  `cus_tim_01` datetime DEFAULT NULL,
  `cus_tim_02` datetime DEFAULT NULL,
  `cus_tim_03` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `space_id` bigint(20) NOT NULL,
  `sequence_num` bigint(20) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `planned_effort` double DEFAULT NULL,
  `logged_by` bigint(20) NOT NULL,
  `assigned_to` bigint(20) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `cus_dbl_01` double DEFAULT NULL,
  `cus_dbl_02` double DEFAULT NULL,
  `cus_dbl_03` double DEFAULT NULL,
  `cus_int_01` int(11) DEFAULT NULL,
  `cus_int_02` int(11) DEFAULT NULL,
  `cus_int_03` int(11) DEFAULT NULL,
  `cus_int_04` int(11) DEFAULT NULL,
  `cus_int_05` int(11) DEFAULT NULL,
  `cus_int_06` int(11) DEFAULT NULL,
  `cus_int_07` int(11) DEFAULT NULL,
  `cus_int_08` int(11) DEFAULT NULL,
  `cus_int_09` int(11) DEFAULT NULL,
  `cus_int_10` int(11) DEFAULT NULL,
  `cus_str_01` varchar(255) DEFAULT NULL,
  `cus_str_02` varchar(255) DEFAULT NULL,
  `cus_str_03` varchar(255) DEFAULT NULL,
  `cus_str_04` varchar(255) DEFAULT NULL,
  `cus_str_05` varchar(255) DEFAULT NULL,
  `cus_tim_01` datetime DEFAULT NULL,
  `cus_tim_02` datetime DEFAULT NULL,
  `cus_tim_03` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_items`
--

CREATE TABLE `item_items` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `related_item_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_tags`
--

CREATE TABLE `item_tags` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_users`
--

CREATE TABLE `item_users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `xml_string` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spaces`
--

CREATE TABLE `spaces` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `prefix_code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `guest_allowed` bit(1) DEFAULT NULL,
  `metadata_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `space_sequence`
--

CREATE TABLE `space_sequence` (
  `id` bigint(20) NOT NULL,
  `next_seq_num` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `login_name` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `metadata_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_space_roles`
--

CREATE TABLE `user_space_roles` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `space_id` bigint(20) DEFAULT NULL,
  `role_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKD3F3CBB0B57E4540` (`item_id`),
  ADD KEY `FKD3F3CBB0761CC46C` (`previous_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`param`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK373FE494CD057065` (`logged_by`),
  ADD KEY `FK373FE494B57E4540` (`item_id`),
  ADD KEY `FK373FE494584066C0` (`attachment_id`),
  ADD KEY `FK373FE4949F34E6BD` (`assigned_to`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5FDE7C0CD057065` (`logged_by`),
  ADD KEY `FK5FDE7C0B2C23C49` (`parent_id`),
  ADD KEY `FK5FDE7C02EAA8854` (`space_id`),
  ADD KEY `FK5FDE7C09F34E6BD` (`assigned_to`);

--
-- Indexes for table `item_items`
--
ALTER TABLE `item_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8B19EB94B57E4540` (`item_id`),
  ADD KEY `FK8B19EB94AF302D2C` (`related_item_id`);

--
-- Indexes for table `item_tags`
--
ALTER TABLE `item_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK806065C5B57E4540` (`item_id`),
  ADD KEY `FK806065C5AC3A5E54` (`tag_id`);

--
-- Indexes for table `item_users`
--
ALTER TABLE `item_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8BC291DC2E9BEA40` (`user_id`),
  ADD KEY `FK8BC291DCB57E4540` (`item_id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE52D7B2FD9D39965` (`parent_id`);

--
-- Indexes for table `spaces`
--
ALTER TABLE `spaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix_code` (`prefix_code`),
  ADD KEY `FKCA95302D6205CC0` (`metadata_id`);

--
-- Indexes for table `space_sequence`
--
ALTER TABLE `space_sequence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5847EDAB4A0FA7B` (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_name` (`login_name`),
  ADD KEY `FK6A68E08FC0C04DB` (`parent`),
  ADD KEY `FK6A68E086205CC0` (`metadata_id`);

--
-- Indexes for table `user_space_roles`
--
ALTER TABLE `user_space_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK474D77D02E9BEA40` (`user_id`),
  ADD KEY `FK474D77D02EAA8854` (`space_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_items`
--
ALTER TABLE `item_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_tags`
--
ALTER TABLE `item_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_users`
--
ALTER TABLE `item_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_space_roles`
--
ALTER TABLE `user_space_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `FKD3F3CBB0761CC46C` FOREIGN KEY (`previous_id`) REFERENCES `attachments` (`id`),
  ADD CONSTRAINT `FKD3F3CBB0B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK373FE494584066C0` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`),
  ADD CONSTRAINT `FK373FE4949F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK373FE494B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `FK373FE494CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `FK5FDE7C02EAA8854` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`),
  ADD CONSTRAINT `FK5FDE7C09F34E6BD` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK5FDE7C0B2C23C49` FOREIGN KEY (`parent_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `FK5FDE7C0CD057065` FOREIGN KEY (`logged_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_items`
--
ALTER TABLE `item_items`
  ADD CONSTRAINT `FK8B19EB94AF302D2C` FOREIGN KEY (`related_item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `FK8B19EB94B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_tags`
--
ALTER TABLE `item_tags`
  ADD CONSTRAINT `FK806065C5AC3A5E54` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `FK806065C5B57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_users`
--
ALTER TABLE `item_users`
  ADD CONSTRAINT `FK8BC291DC2E9BEA40` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK8BC291DCB57E4540` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `metadata`
--
ALTER TABLE `metadata`
  ADD CONSTRAINT `FKE52D7B2FD9D39965` FOREIGN KEY (`parent_id`) REFERENCES `metadata` (`id`);

--
-- Constraints for table `spaces`
--
ALTER TABLE `spaces`
  ADD CONSTRAINT `FKCA95302D6205CC0` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`);

--
-- Constraints for table `space_sequence`
--
ALTER TABLE `space_sequence`
  ADD CONSTRAINT `FK5847EDAB4A0FA7B` FOREIGN KEY (`id`) REFERENCES `spaces` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK6A68E086205CC0` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`),
  ADD CONSTRAINT `FK6A68E08FC0C04DB` FOREIGN KEY (`parent`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_space_roles`
--
ALTER TABLE `user_space_roles`
  ADD CONSTRAINT `FK474D77D02E9BEA40` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK474D77D02EAA8854` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
