-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2014 at 08:36 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ccsfif`
--
CREATE DATABASE IF NOT EXISTS `ccsfif` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ccsfif`;

-- --------------------------------------------------------

--
-- Table structure for table `academic_bg`
--

DROP TABLE IF EXISTS `academic_bg`;
CREATE TABLE IF NOT EXISTS `academic_bg` (
  `FID` int(5) DEFAULT NULL,
  `DEGREE_EARNED` varchar(45) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `DEGREE_TITLE` varchar(45) DEFAULT NULL,
  `AREA_SPEC` varchar(45) DEFAULT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `UNITS_EARNED` int(3) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` int(5) DEFAULT NULL,
  `INSTITUTION_NAME` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `FID` int(5) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `community_service`
--

DROP TABLE IF EXISTS `community_service`;
CREATE TABLE IF NOT EXISTS `community_service` (
  `FID` int(5) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `ORGANIZATION` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ORG_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_service`
--

INSERT INTO `community_service` (`FID`, `CS_TYPE`, `ORGANIZATION`, `DESCRIPTION`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `ORG_ID`) VALUES
(63932, 'Others', 'FEU - East Asia College', 'Tree Planting in Quezon', 'Mountain in Rizal Quezon', '2011-10-21', '2011-10-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
CREATE TABLE IF NOT EXISTS `degree` (
  `DEGREE_ID` varchar(5) NOT NULL,
  `DEGREE_TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DEGREE_ID`, `DEGREE_TITLE`) VALUES
('D1111', 'Master of Science in Computer Science'),
('D1112', 'Master of Science in Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_code` varchar(15) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_code`, `dept_name`) VALUES
('CT', 'Computer Technology'),
('IS', 'Information System'),
('IT', 'Information Technology'),
('ST', 'SoftwareTechnology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `FID` int(5) NOT NULL,
  `FFNAME` varchar(25) NOT NULL,
  `FLNAME` varchar(25) NOT NULL,
  `FMNAME` varchar(25) NOT NULL,
  `COLLEGE` varchar(45) NOT NULL,
  `DEPT` varchar(45) NOT NULL,
  `CLASSIFICATION` varchar(25) NOT NULL,
  `RANK` varchar(45) NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `FFNAME`, `FLNAME`, `FMNAME`, `COLLEGE`, `DEPT`, `CLASSIFICATION`, `RANK`) VALUES
(63932, 'Geanne Ross', 'Franco', 'Lunar', 'College of Computer Studies', 'Computer Technology', 'Full Time', 'Asst. Professorial 2');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `INSTITUTION_ID` varchar(5) NOT NULL,
  `INSTITUTION_NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) NOT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `LOCATION`) VALUES
('I1111', 'De La Salle University', 'Taft Ave., Manila');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `ORG_ID` varchar(5) NOT NULL,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_LOCATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`ORG_ID`, `ORG_NAME`, `ORG_LOCATION`) VALUES
('O1111', 'Philippines Society of Information Technology Educators (PSITE)', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `professional_acty`
--

DROP TABLE IF EXISTS `professional_acty`;
CREATE TABLE IF NOT EXISTS `professional_acty` (
  `FID` int(5) DEFAULT NULL,
  `ORGANIZATION` varchar(100) DEFAULT NULL,
  `LEADERSHIP_TYPE` varchar(100) DEFAULT NULL,
  `POSITION` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ORG_ID` int(5) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_exp`
--

DROP TABLE IF EXISTS `professional_exp`;
CREATE TABLE IF NOT EXISTS `professional_exp` (
  `FID` int(5) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `FID` int(5) DEFAULT NULL,
  `PROJECT_TITLE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` int(5) DEFAULT NULL,
  `ORG_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `published_paper`
--

DROP TABLE IF EXISTS `published_paper`;
CREATE TABLE IF NOT EXISTS `published_paper` (
  `FID` int(5) DEFAULT NULL,
  `PAPER_TYPE` varchar(100) DEFAULT NULL,
  `PAPER_TITLE` varchar(100) DEFAULT NULL,
  `JOURNAL_NAME` varchar(100) DEFAULT NULL,
  `PUBLISHER` varchar(100) DEFAULT NULL,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `VOLUME_NO` int(5) DEFAULT NULL,
  `ISSUE_NO` varchar(25) DEFAULT NULL,
  `PAGES` varchar(20) DEFAULT NULL,
  `PLACE_PUBLICATION` varchar(45) DEFAULT NULL,
  `DATE_PUBLICATION` date DEFAULT NULL,
  `ISSUING_COUNTRY` varchar(45) DEFAULT NULL,
  `EDITORS` varchar(100) DEFAULT NULL,
  `PUBLISHED_IN` varchar(100) DEFAULT NULL,
  `VENUE_PERFORMANCE` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `rank_code` varchar(25) NOT NULL,
  `rank_title` varchar(35) NOT NULL,
  PRIMARY KEY (`rank_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_code`, `rank_title`) VALUES
('L1', 'Lecturer 1'),
('L2', 'Lecturer 2'),
('L3', 'Asst. Professor 1'),
('L4', 'Asst. Professor 2');

-- --------------------------------------------------------

--
-- Table structure for table `special_training`
--

DROP TABLE IF EXISTS `special_training`;
CREATE TABLE IF NOT EXISTS `special_training` (
  `FID` int(5) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` int(5) DEFAULT NULL,
  `ORG_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--

DROP TABLE IF EXISTS `teaching_experience`;
CREATE TABLE IF NOT EXISTS `teaching_experience` (
  `FID` int(5) DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  `LEVEL` varchar(30) DEFAULT NULL,
  `NO_YEARS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `POSITION` varchar(25) DEFAULT NULL,
  `INSTITUTION_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `Unit_Code` varchar(20) NOT NULL,
  `Unit_Title` varchar(75) NOT NULL,
  PRIMARY KEY (`Unit_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`Unit_Code`, `Unit_Title`) VALUES
('AVCAS', 'Office of the Associate Vice Chancellor for Academic Affairs'),
('CCS', 'College of Computer Studies'),
('CED', 'College of Education'),
('CLA', 'College of Liberal Arts'),
('CoB', 'College of Business'),
('COE', 'College of Engineering'),
('COL', 'College of Law'),
('COS', 'College of Science'),
('EVPERI', 'Executive Vice President for External Relations and Internallization'),
('OPC', 'Office of the President and Chancellor'),
('SoE', 'School of Economics'),
('STA', 'Student Affairs'),
('VCLMAR', 'Office of the Vice Chancellor for Lasallian Mission and Alumni Relations'),
('VCR', 'Office of the Associate Vice Chancellor for Research');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
