-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2020 at 02:45 PM
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

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `version`, `type`, `name`, `description`, `parent_id`, `xml_string`) VALUES
(1, 2, NULL, NULL, NULL, NULL, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Status\"><option value=\"1\">In-Progress</option><option value=\"2\">Open</option><option value=\"3\">Work-In-Progress</option><option value=\"4\">On-Hold</option><option value=\"5\">Done</option><option value=\"6\">Reopen</option></field><field name=\"priority\" label=\"Priority\"><option value=\"1\">Highest-1</option><option value=\"2\">High-2</option><option value=\"3\">Medium-3</option><option value=\"4\">Low-4</option><option value=\"5\">Lowest-5</option></field><field name=\"cusInt01\" label=\"Assignee\"><option value=\"1\">Self</option><option value=\"2\">B.Vaishya</option></field><field name=\"cusInt02\" label=\"AssignedTo\"><option value=\"1\">Self</option></field><field name=\"cusInt03\" label=\"TaskGroup\"><option value=\"1\">Self-Assigned</option><option value=\"2\">Code-Review-Release-Mgmt</option><option value=\"3\">Shubh-Web-BOR-Jar</option><option value=\"4\">Notic-KRA-KUA</option><option value=\"5\">Shubh-Web-Login-TR</option><option value=\"6\">Mandatory-Training</option><option value=\"7\">INET-Request</option><option value=\"8\">API-Testing</option><option value=\"9\">Notic-New-Requirement</option><option value=\"10\">Notic-Bug-Fix</option><option value=\"11\">KRA-SFTP-CODE-Configuration</option></field><field name=\"cusStr01\" label=\"TaskDescription\"/><field name=\"cusStr02\" label=\"History\"/><field name=\"cusStr03\" label=\"StepsOrRequirement\"/><field name=\"cusStr04\" label=\"Remarks\"/><field name=\"cusTim01\" label=\"TaskAssignedDate\"/><field-order><field name=\"cusTim01\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusInt03\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/><field name=\"severity\"/><field name=\"cusStr04\"/><field name=\"priority\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"3\"/><field name=\"cusInt03\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"priority\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"cusTim01\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"99\"/><field name=\"cusInt01\" mask=\"2\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"99\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"2\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"99\" label=\"Closed\"/></states></metadata>'),
(2, 2, NULL, NULL, NULL, NULL, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Status\"><option value=\"1\">In-Progress</option><option value=\"2\">Open</option><option value=\"3\">Work-In-Progress</option><option value=\"4\">On-Hold</option><option value=\"5\">Done</option><option value=\"6\">Reopen</option></field><field name=\"priority\" label=\"Priority\"><option value=\"1\">Highest-1</option><option value=\"2\">High-2</option><option value=\"3\">Medium-3</option><option value=\"4\">Low-4</option><option value=\"5\">Lowest-5</option></field><field name=\"cusInt01\" label=\"Assignee\"><option value=\"1\">Self</option><option value=\"2\">B. Prasad</option><option value=\"3\">V Gupta</option></field><field name=\"cusInt02\" label=\"AssignedTo\"><option value=\"1\">Self</option></field><field name=\"cusInt03\" label=\"TaskGroup\"><option value=\"1\">Self-Assigned</option><option value=\"2\">Code-Review-Release-Mgmt</option><option value=\"3\">Shubh-Web-BOR-Jar</option><option value=\"4\">Notic-KRA-KUA</option><option value=\"5\">Shubh-Web-Login-TR</option><option value=\"6\">Mandatory-Training</option><option value=\"7\">INET-Request</option><option value=\"8\">API-Testing</option><option value=\"9\">Notic-New-Requirement</option><option value=\"10\">Notic-Bug-Fix</option><option value=\"11\">KRA-SFTP-CODE-Configuration</option></field><field name=\"cusStr01\" label=\"TaskDescription\"/><field name=\"cusStr02\" label=\"History\"/><field name=\"cusStr03\" label=\"StepsOrRequirement\"/><field name=\"cusStr04\" label=\"Remarks\"/><field name=\"cusTim01\" label=\"TaskAssignedDate\"/><field-order><field name=\"cusTim01\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusInt03\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/><field name=\"severity\"/><field name=\"cusStr04\"/><field name=\"priority\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"3\"/><field name=\"cusInt03\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"priority\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"cusTim01\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"99\"/><field name=\"cusInt01\" mask=\"1\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state><state status=\"99\"><transition status=\"1\"/><field name=\"cusInt01\" mask=\"1\"/><field name=\"cusInt03\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"priority\" mask=\"2\"/><field name=\"severity\" mask=\"1\"/><field name=\"cusTim01\" mask=\"1\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusStr04\" mask=\"3\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr02\" mask=\"3\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"99\" label=\"Closed\"/></states></metadata>');

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

--
-- Dumping data for table `spaces`
--

INSERT INTO `spaces` (`id`, `version`, `type`, `prefix_code`, `name`, `description`, `guest_allowed`, `metadata_id`) VALUES
(1, 1, NULL, 'OTASK', 'OTASK', 'Ofc TASK', b'0', 1),
(2, 0, NULL, 'HTASK', 'HTASK', 'Hm Task', b'0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `space_sequence`
--

CREATE TABLE `space_sequence` (
  `id` bigint(20) NOT NULL,
  `next_seq_num` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `space_sequence`
--

INSERT INTO `space_sequence` (`id`, `next_seq_num`) VALUES
(1, 1),
(2, 1);

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `parent`, `login_name`, `name`, `password`, `email`, `locale`, `locked`, `metadata_id`) VALUES
(1, NULL, NULL, 'admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', NULL, b'0', NULL);

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
-- Dumping data for table `user_space_roles`
--

INSERT INTO `user_space_roles` (`id`, `user_id`, `space_id`, `role_key`) VALUES
(1, 1, NULL, 'ROLE_ADMIN'),
(2, 1, 1, 'DEFAULT'),
(3, 1, 2, 'DEFAULT');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_space_roles`
--
ALTER TABLE `user_space_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
