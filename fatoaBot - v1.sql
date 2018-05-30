-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 05:11 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

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
(7518078, 'احمد1', 'صيام', 'هل يجوز الصيام فى مكة', NULL),
(189077012, 'احمد1', 'النكاح', 'هل يجوز عقد النكاح إذا كانت البنت في فترة الدورة الشهرية ؟.', NULL),
(215533875, NULL, 'صيام', 'هل يجوز الصيام فى مكة', NULL),
(242081392, 'احمد1', 'صيام', 'متي يكون الصيام', NULL),
(296664810, 'احمد1', 'صلاه', 'متي يكون الصلاه', NULL);

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
  `ch10` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ch_id`),
  KEY `ch_id` (`ch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`ch_id`, `mychoices`, `ch1`, `ch2`, `ch3`, `ch4`, `ch5`, `ch6`, `ch7`, `ch8`, `ch9`, `ch10`) VALUES
(1, 'اختر الشيوخ الاتيه ', 'احمد1', '', '', '', '', '', '', '', '', ''),
(2, 'اختر احد الاقسام الاتيه', 'صيام', 'زكاه', 'صلاه', 'حج', 'الوضوء', 'توحيد', 'فقه', 'سيره', 'الطلاق', 'النكاح');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` text COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `dept`, `question`, `answer`) VALUES
(1, 'صيام', 'متي يكون الصيام', 'الاحد'),
(2, 'صلاه', 'متي يكون الصلاه', 'الخميس'),
(3, 'صيام', 'متى لا يكون الصيام', 'سبت'),
(4, 'صيام', 'هل يجوز الصيام فى مكة', 'على ما اعتقد نعم'),
(5, 'سيره', 'ما هي السيره', 'تجريبي 1'),
(6, 'سيره', 'تجربه 2 السيره', 'يسره تجريبي 2'),
(7, 'النكاح', 'ما حكم النكاح', 'مستحب'),
(8, 'النكاح', 'هل يجوز عقد النكاح إذا كانت البنت في فترة الدورة الشهرية ؟. ', 'الحمد لله \r\nالأصل في ذلك الجواز ولم يأت بالمنع منه كتاب ولا سنة ولا إجماع ولا قول صاحب ولا قياس صحيح . \r\nولا أعلم أحداً من أهل العلم حرّم ذلك أو كرهه . غير أن بعض الفقهاء يكره زفَّ المرأة لزوجها \r\nوقت الحيض لئلا يواقعها في ذلك فيبوء بالإثم .وقد يلتبس على العامة حكم هذه المسألة بحكم الطلاق \r\nفي الحيض ، وليس بينهما جامع . \r\nفالعقد على الحائض جائز اتفاقاً وطلاق الحائض المدخول بها حرام اتفاقاً . ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
