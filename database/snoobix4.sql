-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2022 at 11:34 PM
-- Server version: 5.7.21
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snoobix4`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_status`
--

DROP TABLE IF EXISTS `active_status`;
CREATE TABLE IF NOT EXISTS `active_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` varchar(5) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_status`
--

INSERT INTO `active_status` (`id`, `is_active`, `active`, `recdate`) VALUES
(1, 'Yes', '1', '2022-03-09 13:54:32'),
(2, 'No', '1', '2022-03-09 13:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_title` varchar(500) DEFAULT NULL,
  `blog_contents` text,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_image`, `blog_title`, `blog_contents`, `recdate`, `active`) VALUES
(1, '1T0ABJoOBsPmFtimIgZgSz5txLkJaGRyansC5vfN.jpg', 'Buying a used car? Keep an eye on these things before you do', '<p>Buying used cars is an art. It can become extra tricky if they are old used cars. There are many things that can go wrong when you buy a pre-used car. Some people prefer used car dealerships, some preferring buying from individuals. There are some disadvantages of buying a used car from the dealer, like hidden costs, as well as from private sellers, like the shady history of the car. Just keep in mind the chances of Murphy&rsquo;s law when buying something, anything, from a stranger.</p>\r\n\r\n<p>It is all about what to look for and what to ask when buying a second-hand car. Here are some things to know when buying a used car from a private seller or a car dealer in Pakistan. You can call it your second hand car checklist, if you will.</p>\r\n\r\n<h3>Engine</h3>\r\n\r\n<p>There are a handful of things that need to be checked engine-wise before buying your used car. Make sure there is no smoke of any kind. Smoke depending upon the colour can mean something minor like bad fuel mixture to something extreme like needing a complete engine rebuild. Also, listen for odd noise. There should not be any odd and out of the ordinary sounds.</p>\r\n\r\n<p>Also, see if there is any OBD code. New cars are pretty clever and can tell you in detail if there is any nasty hidden surprise for you AFTER you have bought the car. OBD scanning is especially useful for hybrid vehicles and cars with DCT.</p>\r\n\r\n<p>Transmission is also part of this thing. For manual check if the clutch is good or slipping. For newer cars with clever dual clutch transmissions like Honda Vezel, get an expert to thoroughly check it since replacing a DCT&rsquo;s clutch is a massive cost.</p>', '2022-04-09 16:12:35', '1'),
(2, 'uploads/eAsGwRMegr8qfn8dgFHh0THanITynymvzMwIRmgl.jpg', 'this is test blog CDEF', '<p>t has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', '2022-04-28 00:41:17', '1'),
(12, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:46:36', '1'),
(11, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:40:49', '1'),
(10, NULL, 'Create Your Ultimate Income', '<p>&nbsp;gsg sdfg&nbsp;</p>\r\n', '2022-04-28 01:39:42', '1'),
(9, 'estERAfzD3gRrIlzAoMdlt7faqL6QIXqJ81QO199.png', 'this is test blog', '<p>ghj fdgh</p>\r\n', '2022-04-28 01:12:35', '1'),
(13, NULL, 'this is test blog', '<p>s gsdfg sdfg</p>\r\n', '2022-04-28 01:47:17', '1'),
(14, NULL, 'this is test blog', '<p>s gsdfg sdfg</p>\r\n', '2022-04-28 01:47:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `message` text,
  `reply_message` text,
  `reply_date` date DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `full_name`, `email_address`, `message`, `reply_message`, `reply_date`, `recdate`, `active`) VALUES
(1, 'Nadeem Iqbal', 'itspingo@yahoo.com', 'adf sdfg ', NULL, NULL, '2022-04-06 21:20:53', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dznr_modules`
--

DROP TABLE IF EXISTS `dznr_modules`;
CREATE TABLE IF NOT EXISTS `dznr_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL,
  `parent_module` varchar(100) DEFAULT '0',
  `module_folder` varchar(50) DEFAULT NULL,
  `module_type` varchar(100) DEFAULT 'application',
  `module_descr` text,
  `module_icon` varchar(50) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `controller_file` varchar(50) DEFAULT NULL,
  `view_file` varchar(50) DEFAULT NULL,
  `filter` varchar(500) DEFAULT NULL,
  `is_hidden` varchar(5) NOT NULL DEFAULT 'N',
  `active` varchar(5) NOT NULL DEFAULT '1',
  `user_id` varchar(10) DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dznr_modules`
--

INSERT INTO `dznr_modules` (`id`, `module_name`, `parent_module`, `module_folder`, `module_type`, `module_descr`, `module_icon`, `table_name`, `controller_file`, `view_file`, `filter`, `is_hidden`, `active`, `user_id`, `recdate`) VALUES
(1, 'Contact Us', '0', NULL, 'application', NULL, 'fa fa-list', 'contactus', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 18:14:24'),
(2, 'FAQs', '0', NULL, 'application', NULL, 'fa fa-list', 'faqs', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 18:57:07'),
(3, 'Blogs', '0', NULL, 'application', NULL, 'fa fa-list', 'blogs', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-09 19:11:50'),
(35, 'Menu', '0', NULL, 'application', NULL, NULL, '', NULL, NULL, NULL, 'N', '1', NULL, '2022-03-29 06:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `dznr_module_fields`
--

DROP TABLE IF EXISTS `dznr_module_fields`;
CREATE TABLE IF NOT EXISTS `dznr_module_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dznr_moduleid` varchar(5) DEFAULT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `field_name` varchar(200) DEFAULT NULL,
  `placeholder` varchar(200) DEFAULT NULL,
  `field_type` varchar(100) DEFAULT NULL,
  `isrequired` varchar(5) DEFAULT NULL,
  `display_seq` int(11) DEFAULT '0',
  `default_value` varchar(200) DEFAULT NULL,
  `range_min` int(11) DEFAULT NULL,
  `range_max` int(11) DEFAULT NULL,
  `list_type` varchar(200) DEFAULT NULL,
  `input_length` int(11) DEFAULT '255',
  `staticlist` text,
  `listmodulename` varchar(200) DEFAULT NULL,
  `listmoduleitem` varchar(200) DEFAULT NULL,
  `onlistpag` varchar(5) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `userid` varchar(10) DEFAULT NULL,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dznr_module_fields`
--

INSERT INTO `dznr_module_fields` (`id`, `dznr_moduleid`, `field_label`, `field_name`, `placeholder`, `field_type`, `isrequired`, `display_seq`, `default_value`, `range_min`, `range_max`, `list_type`, `input_length`, `staticlist`, `listmodulename`, `listmoduleitem`, `onlistpag`, `active`, `userid`, `recdate`) VALUES
(1, '1', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:14:25'),
(2, '1', 'FULL NAME', 'full_name', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:14:25'),
(3, '1', 'EMAIL ADDRESS', 'email_address', NULL, 'email_input', 'Y', 3, NULL, NULL, NULL, NULL, 200, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:14:25'),
(4, '1', 'MESSAGE', 'message', NULL, 'text_area', 'Y', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 18:14:25'),
(5, '1', 'REPLY MESSAGE', 'reply_message', NULL, 'text_area', 'N', 5, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 18:14:25'),
(6, '1', 'REPLY DATE', 'reply_date', NULL, 'date_input', 'N', 6, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:14:25'),
(7, '1', 'RECDATE', 'recdate', NULL, 'hidden_input', 'N', 7, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 18:14:25'),
(8, '1', 'ACTIVE', 'active', NULL, 'hidden_input', 'N', 8, NULL, NULL, NULL, NULL, 5, NULL, '', '', '', '1', NULL, '2022-03-09 18:14:25'),
(9, '2', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:57:07'),
(10, '2', 'QUESTION', 'question', NULL, 'text_input', 'Y', 2, NULL, NULL, NULL, NULL, 500, NULL, '', '', 'Y', '1', NULL, '2022-03-09 18:57:07'),
(11, '2', 'ANSWER', 'answer', NULL, 'text_area', 'Y', 3, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 18:57:07'),
(12, '2', 'RECDATE', 'recdate', NULL, 'hidden_input', 'N', 4, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 18:57:07'),
(13, '2', 'ACTIVE', 'active', NULL, 'list_single', 'N', 5, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2022-03-09 18:57:07'),
(14, '3', 'ID', 'id', NULL, 'hidden_input', 'N', 1, NULL, NULL, NULL, NULL, 0, NULL, '', '', 'Y', '1', NULL, '2022-03-09 19:11:50'),
(15, '3', 'BLOG IMAGE', 'blog_image', NULL, 'single_image', 'N', 2, NULL, NULL, NULL, NULL, 100, NULL, '', '', '', '1', NULL, '2022-03-09 19:11:50'),
(16, '3', 'BLOG TITLE', 'blog_title', NULL, 'text_input', 'Y', 3, NULL, NULL, NULL, NULL, 500, NULL, '', '', 'Y', '1', NULL, '2022-03-09 19:11:50'),
(17, '3', 'BLOG CONTENTS', 'blog_contents', NULL, 'text_editor', 'Y', 4, NULL, NULL, NULL, NULL, 65535, NULL, '', '', '', '1', NULL, '2022-03-09 19:11:50'),
(18, '3', 'RECDATE', 'recdate', NULL, 'date_time', 'N', 5, NULL, NULL, NULL, NULL, 0, NULL, '', '', '', '1', NULL, '2022-03-09 19:11:51'),
(19, '3', 'ACTIVE', 'active', NULL, 'list_single', 'N', 6, NULL, NULL, NULL, NULL, 5, NULL, 'active_status', 'is_active', 'Y', '1', NULL, '2022-03-09 19:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `answer` text,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `recdate`, `active`) VALUES
(1, 'How to start bidding?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:09', '1'),
(2, 'Security Deposit / Bidding Power', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:31', '1'),
(3, 'Delivery time to the destination port', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:01:50', '1'),
(4, 'How to register to bid in an auction?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:07', '1'),
(5, 'How will I know if my bid was successful?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:21', '1'),
(6, 'What happens if I bid on the wrong lot?', 'All successful bidders can confirm their winning bid by checking the “Sbidu”. In addition, all successful bidders will receive an email notifying them of their winning bid after the auction closes.', '2022-04-09 12:02:39', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_modules`
--

DROP TABLE IF EXISTS `sys_modules`;
CREATE TABLE IF NOT EXISTS `sys_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(500) NOT NULL,
  `ctrl_name` varchar(100) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `module_icon` varchar(50) NOT NULL DEFAULT 'far fa-circle',
  `sort_order` int(5) NOT NULL DEFAULT '1',
  `parent` varchar(10) DEFAULT NULL,
  `active` varchar(5) NOT NULL DEFAULT '1',
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_modules`
--

INSERT INTO `sys_modules` (`id`, `module_name`, `ctrl_name`, `table_name`, `module_icon`, `sort_order`, `parent`, `active`, `recdate`) VALUES
(20, 'Dashboard', '#', NULL, 'far fa-circle', 1, '0', '1', '2020-08-25 15:37:11'),
(28, 'Users', 'Users', NULL, 'far fa-circle', 1, NULL, '1', '2020-08-25 15:37:11'),
(39, 'Countries', 'countries', NULL, 'far fa-circle', 1, NULL, 'N', '2020-08-25 15:37:11'),
(43, 'Roles', 'Users/roles', NULL, 'far fa-circle', 1, NULL, '1', '2020-08-25 15:37:11'),
(44, 'Code Generator', 'code_generator', NULL, 'far fa-circle', 1, NULL, '1', '2020-08-25 15:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '$2y$10$dMJDxLYobp2vdFFFyxvJtu1GfevRjIgXKGW/fI3PYSKtVAeWkC.WS', NULL, '2022-03-09 08:19:50', '2022-03-09 08:19:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
