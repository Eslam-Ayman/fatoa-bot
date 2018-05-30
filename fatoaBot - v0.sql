-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 05:07 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fatoaBot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `ch_id` int(11) NOT NULL,
  `man` text COLLATE utf8_unicode_ci,
  `dept` text COLLATE utf8_unicode_ci,
  `question` text COLLATE utf8_unicode_ci,
  `last` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`ch_id`, `man`, `dept`, `question`, `last`) VALUES
(7518078, 'احمد1', 'صيام', 'هل يجوز عقد النكاح إذا كانت البنت في فترة الدورة الشهرية ؟.', NULL),
(242081392, 'احمد1', 'صيام', 'متي يكون الصيام', 'اختر احد الاقسام الاتيه'),
(296664810, 'احمد4', 'حج', 'متي يكون الصيام', 'احمد1');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE IF NOT EXISTS `choices` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `mychoices` text COLLATE utf8_unicode_ci NOT NULL,
  `ch1` text COLLATE utf8_unicode_ci NOT NULL,
  `ch2` text COLLATE utf8_unicode_ci NOT NULL,
  `ch3` text COLLATE utf8_unicode_ci NOT NULL,
  `ch4` text COLLATE utf8_unicode_ci NOT NULL,
  `ch5` text COLLATE utf8_unicode_ci NOT NULL,
  `ch6` text COLLATE utf8_unicode_ci NOT NULL,
  `ch7` text COLLATE utf8_unicode_ci NOT NULL,
  `ch8` text COLLATE utf8_unicode_ci NOT NULL,
  `ch9` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ch_id`),
  KEY `ch_id` (`ch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`ch_id`, `mychoices`, `ch1`, `ch2`, `ch3`, `ch4`, `ch5`, `ch6`, `ch7`, `ch8`, `ch9`) VALUES
(1, 'اختر الشيوخ الاتيه ', 'احمد1', 'احمد2', 'احمد3', 'احمد4', '', '', '', '', 'احمد5'),
(2, 'اختر احد الاقسام الاتيه', 'صيام', 'زكاه', 'صلاه', 'حج', 'الوضوء', 'توحيد', 'فقه', 'سيره', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` text COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `ahmed1` text COLLATE utf8_unicode_ci NOT NULL,
  `ahmed2` text COLLATE utf8_unicode_ci NOT NULL,
  `ahmed3` text COLLATE utf8_unicode_ci NOT NULL,
  `ahmed4` text COLLATE utf8_unicode_ci NOT NULL,
  `ahmed5` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `dept`, `question`, `ahmed1`, `ahmed2`, `ahmed3`, `ahmed4`, `ahmed5`) VALUES
(1, 'صيام', 'متي يكون الصيام', 'الاحد', 'الاثنين', 'اثلاثاء', 'الاربعاء', 'صيام احمد5'),
(2, 'صلاه', 'متي يكون الصلاه', 'الخميس', 'الجمعه', 'الاتنين', 'الثلاثاء', 'صلاه احمد5'),
(3, 'صيام', 'متى لا يكون الصيام', 'سبت', 'حد', 'اثنين', 'ثلاثاء', 'متي صيام احمد 5'),
(4, 'صيام', 'هل يجوز الصيام فى مكة', 'على ما اعتقد نعم', 'على ما عاتدق اكيد', 'طبعا اها', 'يابنى اكيد دى ام الدنيا', 'الصيام في مكه  احمد 5'),
(5, 'سيره', 'ما هي السيره', 'تجريبي 1', 'تجريبي 4', 'تجريبي 3', 'تجريبي2', 'سيره احمد 5'),
(6, 'سيره', 'تجربه 2 السيره', 'يسره تجريبي 2', 'يسره تجريبي 2', 'يسره تجريبي 2', 'يسره تجريبي 2', 'تجريبي سيره احمد 5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
