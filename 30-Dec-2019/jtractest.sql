-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 10:11 AM
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
-- Database: `jtractest`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `param` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`param`, `value`) VALUES
('session.timeout', '6000');

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
  `cus_tim_03` datetime DEFAULT NULL,
  `cus_text_01` varchar(255) DEFAULT NULL,
  `cus_text_02` varchar(255) DEFAULT NULL,
  `cus_text_03` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `version`, `type`, `item_id`, `actual_effort`, `attachment_id`, `comment`, `time_stamp`, `logged_by`, `assigned_to`, `summary`, `detail`, `status`, `severity`, `priority`, `cus_dbl_01`, `cus_dbl_02`, `cus_dbl_03`, `cus_int_01`, `cus_int_02`, `cus_int_03`, `cus_int_04`, `cus_int_05`, `cus_int_06`, `cus_int_07`, `cus_int_08`, `cus_int_09`, `cus_int_10`, `cus_str_01`, `cus_str_02`, `cus_str_03`, `cus_str_04`, `cus_str_05`, `cus_tim_01`, `cus_tim_02`, `cus_tim_03`, `cus_text_01`, `cus_text_02`, `cus_text_03`) VALUES
(1, 0, NULL, 1, NULL, NULL, NULL, '2018-08-08 14:46:13', 1, 1, 'Read \"DA Vinci Code\" novel and collect words, phrases', 'Read \"DA Vinci Code\" novel and collect words, phrases', 1, 3, 3, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, NULL, 1, NULL, NULL, 'Plan to do this task.\r\nSchedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.', '2018-08-08 14:53:41', 1, 1, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not learn new words.', 'Schedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.', 'I will learn new words, phrases. I will gain confidence and self satisfaction.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, 2, NULL, NULL, NULL, '2018-08-08 15:03:50', 1, 1, 'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"', 'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"', 1, 2, 3, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'Listen video and then make notes. Do some test program exercise', 'I will know about EJB and be able to answer EJB Interview questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, 2, NULL, NULL, 'Plan to do this task\r\nListen video and then make notes.\r\nDo some test program exercise', '2018-08-08 15:04:27', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, NULL, 3, NULL, NULL, NULL, '2018-08-09 14:24:20', 1, 1, 'How to edit values of one item in a list/array, in javascript.', 'Scenario :- I have list of all categories and in that category, there are several questions. If I am reading one question, using given \"Read\" button, the \"last read on\" date should be updated post successful read response from database.\r\n\r\nHence post read button click the last read on date should be updated.', 1, 5, 4, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The list will not show actual last read on date.', '1) check on google \"How to edit a particular value in a given javascript array/list?\"', '1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, NULL, 3, NULL, NULL, 'Changing category and sub-category.', '2018-08-09 14:54:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, NULL, 4, NULL, NULL, NULL, '2018-08-09 14:59:17', 1, 1, 'Add Read button and its functionality in Questions, in category list page.', '1. Add \"Read\" button in front end\r\n2. Add read_on column and add read_history table.\r\n3. Add service to update read_on for given column and add its reading history', 1, 2, 3, NULL, NULL, NULL, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to track how many question I have read a particular day.', 'Add column, read history table and service code', 'Question learning and reading history will be traceable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, NULL, 5, NULL, NULL, NULL, '2018-08-10 21:17:38', 1, 1, 'Create one page for :- Show Plan for given id', 'Create one page for :- Show Plan for given id\r\n1. Create view page for show plan, its steps and sub-steps\r\n2. create controller for above view', 1, 3, 4, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to execute and track big projects.', 'Create view and controller for the requirement using angularjs and REST', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, NULL, 6, NULL, NULL, NULL, '2018-08-10 22:15:18', 1, 1, 'Change Test Tomcat port from 8888 to 9999', 'Change Test Tomcat port from 8888 to 9999\r\n1. Change port to 9999 in server.xml\r\n2. Change other ports accordingly, change 10th place number to \'9\' , for uniformity.\r\n3. Take sanity check , by running both test and pro servers.', 1, 2, 1, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not able to do prod and development works simultaneously', 'Change Test Tomcat port from 8888 to 9999 - detail plan description', 'I will able to do prod and development works simultaneously', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, NULL, 6, NULL, NULL, 'port is changed in server.xml. Sanity check is yet to be done.', '2018-08-10 22:16:18', 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, NULL, 7, NULL, NULL, NULL, '2018-08-10 22:47:35', 1, 1, 'Topic to be searched with its unique string name', 'Topic to be searched with its unique string name\r\n1) Associate one unique name with each topic.\r\n2) Search unique string and then find id in table for that topic.\r\n3) return found searched topic, else send error response', 1, 3, 4, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1) id not reliable, if data copied to some other db. 2) db migration will not reliable without unique string', 'Plan shared in description', '1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, NULL, 8, NULL, NULL, NULL, '2018-08-10 23:09:00', 1, 1, 'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"', 'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"\r\n\r\nPlan - Daily 30 minutes', 1, 2, 4, NULL, NULL, NULL, 5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'Plan - Daily 30 minutes', 'I will know about Spring Data and be able to answer Spring Data Interview questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 0, NULL, 9, NULL, NULL, NULL, '2018-08-10 23:23:08', 1, 1, 'Study video and pdf for project planning', 'Study video and pdf for project planning', 1, 2, 4, NULL, NULL, NULL, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'It is now requirement for my TL position', 'steps to be identified', 'would be able to answer TL level questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 0, NULL, 10, NULL, NULL, NULL, '2018-08-10 23:26:36', 1, 1, 'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"', 'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"\r\n\r\nPlan : \r\n1) 60 minutes in a week, 3 splits; 20 mins each', 1, 3, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'to be decided', 'steps to be identified', 'will learn spring boot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, NULL, 11, NULL, NULL, NULL, '2018-08-10 23:39:24', 1, 1, 'Take daily backup of Jtrac Database in evening', '1. Take daily backup of Jtrac Database in evening @11 PM\r\n2. Push it to google drive', 1, 2, 2, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I might loose data', 'steps to be identified', 'I will be in safer side in case of any data-system falure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, NULL, 3, NULL, NULL, 'Searched on google. It seems very good question. Till the time I found below results\r\n1 \"How to change value of object which is inside an array using JavaScript or jQuery?\"\r\n2. \"https://stackoverflow.com/questions/4689856/how-to-change-value-of-object-which-is-inside-an-array-using-javascript-or-jquer\"', '2018-08-10 23:48:56', 1, 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, NULL, 12, NULL, NULL, NULL, '2018-08-11 09:20:31', 1, 1, 'Add unique string id for topic/view/group same for Category /Questions', 'Add unique string id for topic/view/group\r\nsame for Category /Questions', 1, 2, 2, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'i will not able to port data from one db to another', 'steps to be identified', 'i will able to port data from one db to another', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, NULL, 12, NULL, NULL, 'Important so that data can be exported and imported with minimal change\r\n\r\nIt is important as my tagging to different topics groups relation and export/import is being delayed and impacted due to this.\r\n\r\nIt is also important so that I could divide and manage my long term tasks into small 20 minutes each day goals. Also I could export, import, port and save my data from one system to another system.\r\n\r\nThis is required\r\n1. when moving an update in a topic\r\n2. check for updated date, and show difference between existing value and newly coming value same as windows copy file', '2018-08-11 09:21:04', 1, 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 0, NULL, 13, NULL, NULL, NULL, '2018-08-12 10:34:07', 1, 1, 'MongoDB - Project Fields to Return from Query', 'return only selected fields', 1, 3, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not learn how to send particular fields', 'steps to be identified', 'I will learn how to send particular fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 0, NULL, 13, NULL, NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>My tasks</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>target date</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Identify current routine</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>18-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Identify unuseful tasks</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>22-aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Replace unuseful steps with new fruitful steps</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>28-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<em><strong>Follow new routine</strong></em></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<em><strong>31-Aug-2018</strong></em></pre>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2018-08-12 11:07:37', 1, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not learn how to send particular fields', 'steps to be identified', 'I will learn how to send particular fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 0, NULL, 14, NULL, NULL, NULL, '2018-08-12 14:31:45', 1, 1, 'Topic Management :- Logging message to make proper', '<p>Topic Management :- Logging message to make proper</p>\r\n\r\n<ol>\r\n	<li>Currently all messages are only related with Zetta coching , it should be make accordingly.</li>\r\n</ol>', 1, 3, 4, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'It would be difficult to analyse the logs and provide resolution in case of any issue', 'steps to be identified', 'Log analysis and resolution provide would be easy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 0, NULL, 15, NULL, NULL, NULL, '2018-08-12 14:36:23', 1, 1, 'Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application', '<p>Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application</p>\r\n\r\n<ol>\r\n	<li>Collate all application pages in one application and make it one application.</li>\r\n</ol>', 1, 3, 3, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Without this application collate would be difficult', 'steps to be identified', 'It would be easy to manage development of all application in one-go', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 0, NULL, 16, NULL, NULL, NULL, '2018-08-12 15:01:55', 1, 1, 'Identify new projects created in office laptop and commit them on GitHub', '<p>Identify new projects created in office laptop and commit them on GitHub</p>\r\n\r\n<ol>\r\n	<li>Identify new projects created in office laptop</li>\r\n	<li>Identify any update done in existing projects.</li>\r\n	<li>commit them on GitHub</li>\r\n</ol>', 1, 2, 1, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I may loose any update done in case of job change or system crash', 'steps to be identified', 'I would be in safe position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 0, NULL, 17, NULL, NULL, NULL, '2018-08-12 15:10:00', 1, 1, 'Create one page, where all scheduled tasks can be entered.', '<p>Create one page, where all scheduled tasks can be entered.</p>', 1, 2, 2, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to execute and track big projects.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 0, NULL, 17, NULL, NULL, '<ol>\r\n	<li>Take backup of mysql dbs, postgresql dbs, mongodbs and push them on google drive.</li>\r\n</ol>', '2018-08-12 15:12:45', 1, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to execute and track big projects.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 0, NULL, 6, NULL, NULL, '<p>POC for&nbsp;<strong>topic-management</strong> and&nbsp;<strong>word-meaning-gui&nbsp;</strong>is done and positive.</p>\r\n\r\n<p>POC for some other application is pending</p>', '2018-08-12 15:15:41', 1, 1, NULL, NULL, 3, 2, 1, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not able to do prod and development works simultaneously', 'Change Test Tomcat port from 8888 to 9999 - detail plan description', 'I will able to do prod and development works simultaneously', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 0, NULL, 16, NULL, NULL, '<p>2 projects identified and commited</p>\r\n\r\n<ul>\r\n	<li><strong>spring-boot-jdbc-example</strong> -&nbsp;https://github.com/premendrakumar/spring-boot-jdbc-example</li>\r\n	<li><strong>word-meaning-mongodb-services</strong>&nbsp;-&nbsp;https://github.com/premendrakumar/word-meaning-mongodb-services</li>\r\n</ul>', '2018-08-12 17:41:24', 1, 1, NULL, NULL, 2, 2, 1, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I may loose any update done in case of job change or system crash', 'steps to be identified', 'I would be in safe position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 0, NULL, 11, NULL, NULL, 'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening', '2018-08-12 17:50:03', 1, NULL, 'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening', '<p>1. Take daily backup of Jtrac Database in evening @11 PM 2. Push it to google drive</p>', NULL, 2, 2, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I might loose data', 'steps to be identified', 'I will be in safer side in case of any data-system falure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 0, NULL, 11, NULL, NULL, NULL, '2018-08-12 17:52:03', 1, 1, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I might loose data', 'steps to be identified', 'I will be in safer side in case of any data-system falure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 0, NULL, 11, NULL, NULL, NULL, '2018-08-12 17:54:07', 1, 1, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I might loose data', 'steps to be identified', 'I will be in safer side in case of any data-system falure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 0, NULL, 18, NULL, NULL, NULL, '2018-08-12 19:52:44', 1, 1, 'MP3Player2.5 :- Developments and Enhancements', NULL, 1, 2, 2, NULL, NULL, NULL, 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This project pending from last 7 years', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 0, NULL, 18, NULL, NULL, '1. Separate the view code to the player running code. --- seems ok ,\r\n	 * checking for any discrepency and suitable action will take place if found\r\n	 * something wrong\r\n	 * \r\n	 * 2. Save the playlist in xml format and try to encrypt it and run with the\r\n	 * given saved file.\r\n	 * \r\n	 * 3. make some attractive GUI\r\n	 * \r\n	 * 4. highlight the currently playing song\r\n	 * \r\n	 * 5. some keyEventListeners to display the songs of currently playing songs\r\n	 * {similar functionality as that exists in notepad++}', '2018-08-12 19:58:43', 1, 1, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This project pending from last 7 years', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 0, NULL, 18, NULL, NULL, 'One alternative way found for making one music player .\r\n\r\nThis is to use javafx MediaPlayer class.', '2018-08-12 22:18:28', 1, 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 0, NULL, 19, NULL, NULL, NULL, '2018-08-15 14:22:40', 1, 1, 'Neo4j - Learning', 'Neo4j - Learning', 1, 3, 2, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 0, NULL, 19, NULL, NULL, 'Downloaded server. Studying...', '2018-08-15 14:25:27', 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 0, NULL, 19, NULL, NULL, 'Learnt basic CQL syntax to create node and create relationship.\r\n\r\nCreated basic \"Person\" node and establised \"FATHER_OF\" AND \"WIFE_OF\" AND \"HUSBAND_OF\" relationship.\r\n\r\nPlanning to create one application where new node and few relations created. And basis of one relationship established, other relations get auto-calculated.', '2018-08-15 22:46:01', 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 0, NULL, 11, NULL, NULL, 'DB Backup to be taken as earliest. Also make some process/program to automate db backup process.', '2018-08-15 23:37:50', 1, 1, NULL, NULL, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 0, NULL, 20, NULL, NULL, NULL, '2018-08-15 23:40:44', 1, 1, 'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"', 'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"', 1, 2, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 0, NULL, 21, NULL, NULL, NULL, '2018-08-16 06:23:41', 1, 1, 'My Oaths - I will do gym', 'My Oaths - I will do gym', 1, 1, 1, NULL, NULL, NULL, 7, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to get peace in life', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 0, NULL, 22, NULL, NULL, NULL, '2018-08-16 06:27:07', 1, 1, 'My Oaths - I will prepare for Interview', 'My Oaths - I will prepare for Interview\r\n1. I will remember 10 interview questions daily.\r\n2. I will learn 10 english words daily.\r\n3. I will practice programming skills 3 times in week.\r\n4. I will learn management books 2 times in week.', 1, 1, 1, NULL, NULL, NULL, 7, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to get peace in life', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 0, NULL, 23, NULL, NULL, NULL, '2018-08-16 10:00:19', 1, 1, 'Study \"Java Exception Discussion Questions and Answers\" \"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"', 'Study \"Java Exception Discussion Questions and Answers\" \r\n\r\n\"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"', 1, 2, 2, NULL, NULL, NULL, 7, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 0, NULL, 24, NULL, NULL, NULL, '2018-08-19 15:05:00', 1, 1, 'Topic Management :- Make single page, to create all categories, and questions and their answers.', 'Topic Management :- Make single page, to create all categories, and questions and their answers.\r\n1. Show all categories in left side.\r\n2. on selection, show the selected question and all its answers. \r\n3. Every category, question and answer must have to be created, updated, deleted from same page.\r\n4. one up and down button to alter sequence of question within category.\r\n5. Drag and drop feature to change category for a question.\r\n6. In future, drag and drop feature for category to make it sub-category of another one , w.r.to a given view.', 1, 2, 3, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This project pending from last 5 years', 'few steps given in description. rest of steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `cus_tim_03` datetime DEFAULT NULL,
  `cus_text_01` varchar(255) DEFAULT NULL,
  `cus_text_02` varchar(255) DEFAULT NULL,
  `cus_text_03` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `version`, `type`, `parent_id`, `space_id`, `sequence_num`, `time_stamp`, `planned_effort`, `logged_by`, `assigned_to`, `summary`, `detail`, `status`, `severity`, `priority`, `cus_dbl_01`, `cus_dbl_02`, `cus_dbl_03`, `cus_int_01`, `cus_int_02`, `cus_int_03`, `cus_int_04`, `cus_int_05`, `cus_int_06`, `cus_int_07`, `cus_int_08`, `cus_int_09`, `cus_int_10`, `cus_str_01`, `cus_str_02`, `cus_str_03`, `cus_str_04`, `cus_str_05`, `cus_tim_01`, `cus_tim_02`, `cus_tim_03`, `cus_text_01`, `cus_text_02`, `cus_text_03`) VALUES
(1, 2, NULL, NULL, 1, 1, '2018-08-08 14:46:13', NULL, 1, 1, 'Read \"DA Vinci Code\" novel and collect words, phrases', 'Read \"DA Vinci Code\" novel and collect words, phrases', 2, 2, 2, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not learn new words.', 'Schedule daily 20 minutes to read book, collect tough words, tough phrases and my doubts.', 'I will learn new words, phrases. I will gain confidence and self satisfaction.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, 1, 2, '2018-08-08 15:03:50', NULL, 1, 1, 'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"', 'Listen and Learn \"Working with EJB3 (EJB Tutorial Part 1).mp4\"', 1, 2, 3, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'Listen video and then make notes. Do some test program exercise', 'I will know about EJB and be able to answer EJB Interview questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, 1, 3, '2018-08-09 14:24:20', NULL, 1, 1, 'How to edit values of one item in a list/array, in javascript.', 'Scenario :- I have list of all categories and in that category, there are several questions. If I am reading one question, using given \"Read\" button, the \"last read on\" date should be updated post successful read response from database.\r\n\r\nHence post read button click the last read on date should be updated.', 2, 5, 4, NULL, NULL, NULL, 5, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The list will not show actual last read on date.', '1) check on google \"How to edit a particular value in a given javascript array/list?\"', '1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, NULL, NULL, 1, 4, '2018-08-09 14:59:17', NULL, 1, 1, 'Add Read button and its functionality in Questions, in category list page.', '1. Add \"Read\" button in front end\r\n2. Add read_on column and add read_history table.\r\n3. Add service to update read_on for given column and add its reading history', 1, 2, 3, NULL, NULL, NULL, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to track how many question I have read a particular day.', 'Add column, read history table and service code', 'Question learning and reading history will be traceable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, 1, 5, '2018-08-10 21:17:38', NULL, 1, 1, 'Create one page for :- Show Plan for given id', 'Create one page for :- Show Plan for given id\r\n1. Create view page for show plan, its steps and sub-steps\r\n2. create controller for above view', 1, 3, 4, NULL, NULL, NULL, 4, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to execute and track big projects.', 'Create view and controller for the requirement using angularjs and REST', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, NULL, NULL, 1, 6, '2018-08-10 22:15:18', NULL, 1, 1, 'Change Test Tomcat port from 8888 to 9999', 'Change Test Tomcat port from 8888 to 9999\r\n1. Change port to 9999 in server.xml\r\n2. Change other ports accordingly, change 10th place number to \'9\' , for uniformity.\r\n3. Take sanity check , by running both test and pro servers.', 3, 2, 1, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not able to do prod and development works simultaneously', 'Change Test Tomcat port from 8888 to 9999 - detail plan description', 'I will able to do prod and development works simultaneously', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, 1, 7, '2018-08-10 22:47:35', NULL, 1, 1, 'Topic to be searched with its unique string name', 'Topic to be searched with its unique string name\r\n1) Associate one unique name with each topic.\r\n2) Search unique string and then find id in table for that topic.\r\n3) return found searched topic, else send error response', 1, 3, 4, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1) id not reliable, if data copied to some other db. 2) db migration will not reliable without unique string', 'Plan shared in description', '1) New learning in javascript. 2) Same concept can be used in other project, to show updated values in single page without refresh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, NULL, NULL, 1, 8, '2018-08-10 23:09:00', NULL, 1, 1, 'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"', 'Read \"Spring Data - Modern Data Access for Enterprise Java .pdf\"\r\n\r\nPlan - Daily 30 minutes', 1, 2, 4, NULL, NULL, NULL, 5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'Plan - Daily 30 minutes', 'I will know about Spring Data and be able to answer Spring Data Interview questions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, 1, 9, '2018-08-10 23:23:08', NULL, 1, 1, 'Study video and pdf for project planning', 'Study video and pdf for project planning', 1, 2, 4, NULL, NULL, NULL, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'It is now requirement for my TL position', 'steps to be identified', 'would be able to answer TL level questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, 1, 10, '2018-08-10 23:26:36', NULL, 1, 1, 'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"', 'read all steps in \"https://github.com/in28minutes/SpringBootForBeginners\"\r\n\r\nPlan : \r\n1) 60 minutes in a week, 3 splits; 20 mins each', 1, 3, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'to be decided', 'steps to be identified', 'will learn spring boot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 5, NULL, NULL, 1, 11, '2018-08-10 23:39:24', NULL, 1, 1, 'Take daily backup of Interview Mgmt, Topic Mgmt, Word Meaning, Jtrac Database in evening', '<p>1. Take daily backup of Jtrac Database in evening @11 PM 2. Push it to google drive</p>', 2, 1, 1, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I might loose data', 'steps to be identified', 'I will be in safer side in case of any data-system falure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, NULL, NULL, 1, 12, '2018-08-11 09:20:31', NULL, 1, 1, 'Add unique string id for topic/view/group same for Category /Questions', 'Add unique string id for topic/view/group\r\nsame for Category /Questions', 2, 2, 2, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'i will not able to port data from one db to another', 'steps to be identified', 'i will able to port data from one db to another', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, NULL, NULL, 1, 13, '2018-08-12 10:34:07', NULL, 1, 1, 'MongoDB - Project Fields to Return from Query', 'return only selected fields', 1, 3, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not learn how to send particular fields', 'steps to be identified', 'I will learn how to send particular fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, NULL, NULL, 1, 14, '2018-08-12 14:31:45', NULL, 1, 1, 'Topic Management :- Logging message to make proper', '<p>Topic Management :- Logging message to make proper</p>\r\n\r\n<ol>\r\n	<li>Currently all messages are only related with Zetta coching , it should be make accordingly.</li>\r\n</ol>', 1, 3, 4, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'It would be difficult to analyse the logs and provide resolution in case of any issue', 'steps to be identified', 'Log analysis and resolution provide would be easy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, NULL, NULL, 1, 15, '2018-08-12 14:36:23', NULL, 1, 1, 'Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application', '<p>Collate all view pages of Topic Management, Interview Management, Word meaning UI to one view application</p>\r\n\r\n<ol>\r\n	<li>Collate all application pages in one application and make it one application.</li>\r\n</ol>', 1, 3, 3, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Without this application collate would be difficult', 'steps to be identified', 'It would be easy to manage development of all application in one-go', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2, NULL, NULL, 1, 16, '2018-08-12 15:01:55', NULL, 1, 1, 'Identify new projects created in office laptop and commit them on GitHub', '<p>Identify new projects created in office laptop and commit them on GitHub</p>\r\n\r\n<ol>\r\n	<li>Identify new projects created in office laptop</li>\r\n	<li>Identify any update done in existing projects.</li>\r\n	<li>commit them on GitHub</li>\r\n</ol>', 2, 2, 1, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I may loose any update done in case of job change or system crash', 'steps to be identified', 'I would be in safe position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2, NULL, NULL, 1, 17, '2018-08-12 15:10:00', NULL, 1, 1, 'Create one page, where all scheduled tasks can be entered.', '<p>Create one page, where all scheduled tasks can be entered.</p>', 1, 2, 2, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to execute and track big projects.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 3, NULL, NULL, 1, 18, '2018-08-12 19:52:44', NULL, 1, 1, 'MP3Player2.5 :- Developments and Enhancements', NULL, 2, 2, 2, NULL, NULL, NULL, 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This project pending from last 7 years', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 3, NULL, NULL, 1, 19, '2018-08-15 14:22:40', NULL, 1, 1, 'Neo4j - Learning', 'Neo4j - Learning', 3, 3, 2, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, 1, 20, '2018-08-15 23:40:44', NULL, 1, 1, 'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"', 'Neo4j - Learning - Read \"https://neo4j.com/docs/pdf/neo4j-developer-manual-3.4-java.pdf\"', 1, 2, 4, NULL, NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, 1, 21, '2018-08-16 06:23:41', NULL, 1, 1, 'My Oaths - I will do gym', 'My Oaths - I will do gym', 1, 1, 1, NULL, NULL, NULL, 7, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to get peace in life', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, NULL, NULL, 1, 22, '2018-08-16 06:27:07', NULL, 1, 1, 'My Oaths - I will prepare for Interview', 'My Oaths - I will prepare for Interview\r\n1. I will remember 10 interview questions daily.\r\n2. I will learn 10 english words daily.\r\n3. I will practice programming skills 3 times in week.\r\n4. I will learn management books 2 times in week.', 1, 1, 1, NULL, NULL, NULL, 7, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to get peace in life', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, 1, 23, '2018-08-16 10:00:19', NULL, 1, 1, 'Study \"Java Exception Discussion Questions and Answers\" \"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"', 'Study \"Java Exception Discussion Questions and Answers\" \r\n\r\n\"http://127.0.0.1:8888/interview-mgmt-gui/#/categories/19\"', 1, 2, 2, NULL, NULL, NULL, 7, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I will not be able to answer in interview.', 'steps to be identified', 'I will feel peace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, NULL, NULL, 1, 24, '2018-08-19 15:05:00', NULL, 1, 1, 'Topic Management :- Make single page, to create all categories, and questions and their answers.', 'Topic Management :- Make single page, to create all categories, and questions and their answers.\r\n1. Show all categories in left side.\r\n2. on selection, show the selected question and all its answers. \r\n3. Every category, question and answer must have to be created, updated, deleted from same page.\r\n4. one up and down button to alter sequence of question within category.\r\n5. Drag and drop feature to change category for a question.\r\n6. In future, drag and drop feature for category to make it sub-category of another one , w.r.to a given view.', 1, 2, 3, NULL, NULL, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This project pending from last 5 years', 'few steps given in description. rest of steps to be identified', 'I can perform big projects and track its progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_items`
--

CREATE TABLE `item_items` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `related_item_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_tags`
--

CREATE TABLE `item_tags` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_users`
--

CREATE TABLE `item_users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `version`, `type`, `name`, `description`, `parent_id`, `xml_string`) VALUES
(1, 25, NULL, NULL, NULL, NULL, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<metadata><fields><field name=\"severity\" label=\"Severity\" optional=\"true\"><option value=\"1\">Fatal</option><option value=\"2\">Major</option><option value=\"3\">Minor</option><option value=\"4\">Trivial</option><option value=\"5\">Suggestion</option></field><field name=\"priority\" label=\"Priority\" optional=\"true\"><option value=\"1\">Highest</option><option value=\"2\">High</option><option value=\"3\">Medium</option><option value=\"4\">Low</option><option value=\"5\">Lowest</option></field><field name=\"cusInt01\" label=\"Category\" optional=\"true\"><option value=\"1\">My Wishes</option><option value=\"2\">My Duties</option><option value=\"7\">My Oaths</option><option value=\"4\">Application Enhancements/Bug Fixes</option><option value=\"5\">Research and Development</option><option value=\"6\">Scheduling Jobs/Tasks</option><option value=\"3\">Uncategorised</option></field><field name=\"cusInt02\" label=\"Sub Category\" optional=\"true\"><option value=\"1\">Learning &lt;- My Wishes</option><option value=\"2\">Body Building &lt;- My Wishes</option><option value=\"3\">Interview Preparation &lt;- My Wishes</option><option value=\"4\">Home &lt;- My Duties</option><option value=\"5\">Office &lt;- My Duties</option><option value=\"6\">Self &lt;- My Duties</option><option value=\"15\">Daily Routine &lt;- My Oaths</option><option value=\"16\">Monthly Routine &lt;- My Oaths</option><option value=\"17\">Long Term Routine &lt;- My Oaths</option><option value=\"8\">Interview Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"9\">Topic Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"12\">Plan Track Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"13\">Word Meaning Management &lt;- Application Enhancements/Bug Fixes</option><option value=\"14\">MP3Player2.5 &lt;- Application Enhancements/Bug Fixes</option><option value=\"10\">Java &lt;- Research and Development</option><option value=\"11\">JavaScript &lt;- Research and Development</option><option value=\"7\">Uncategorised</option></field><field name=\"cusStr01\" label=\"What If I do not do this?\" optional=\"true\"/><field name=\"cusStr02\" label=\"What will be plan to do this?\" optional=\"true\"/><field name=\"cusStr03\" label=\"What is benefit for doing this task?\" optional=\"true\"/><field-order><field name=\"severity\"/><field name=\"priority\"/><field name=\"cusInt01\"/><field name=\"cusInt02\"/><field name=\"cusStr01\"/><field name=\"cusStr02\"/><field name=\"cusStr03\"/></field-order></fields><roles><role name=\"DEFAULT\"><state status=\"0\"><transition status=\"1\"/><field name=\"priority\" mask=\"3\"/><field name=\"cusStr02\" mask=\"3\"/><field name=\"cusStr01\" mask=\"3\"/><field name=\"cusInt02\" mask=\"3\"/><field name=\"cusStr03\" mask=\"3\"/><field name=\"severity\" mask=\"3\"/><field name=\"cusInt01\" mask=\"3\"/></state><state status=\"1\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"2\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"99\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"99\"/><transition status=\"3\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state><state status=\"3\"><transition status=\"1\"/><transition status=\"2\"/><transition status=\"3\"/><transition status=\"99\"/><field name=\"priority\" mask=\"2\"/><field name=\"cusStr02\" mask=\"2\"/><field name=\"cusStr01\" mask=\"2\"/><field name=\"cusInt02\" mask=\"2\"/><field name=\"cusStr03\" mask=\"2\"/><field name=\"severity\" mask=\"2\"/><field name=\"cusInt01\" mask=\"2\"/></state></role></roles><states><state status=\"0\" label=\"New\"/><state status=\"1\" label=\"Open\"/><state status=\"2\" label=\"Work-In-Progress\"/><state status=\"3\" label=\"On-Hold\"/><state status=\"99\" label=\"Closed\"/></states></metadata>');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spaces`
--

INSERT INTO `spaces` (`id`, `version`, `type`, `prefix_code`, `name`, `description`, `guest_allowed`, `metadata_id`) VALUES
(1, 0, NULL, 'TASKS', 'TASKS', 'TASKS', b'1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_sequence`
--

CREATE TABLE `space_sequence` (
  `id` bigint(20) NOT NULL,
  `next_seq_num` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space_sequence`
--

INSERT INTO `space_sequence` (`id`, `next_seq_num`) VALUES
(1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `storedsearch`
--

CREATE TABLE `storedsearch` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_space_roles`
--

INSERT INTO `user_space_roles` (`id`, `user_id`, `space_id`, `role_key`) VALUES
(1, 1, NULL, 'ROLE_ADMIN'),
(2, 1, 1, 'DEFAULT');

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
-- Indexes for table `storedsearch`
--
ALTER TABLE `storedsearch`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storedsearch`
--
ALTER TABLE `storedsearch`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_space_roles`
--
ALTER TABLE `user_space_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
