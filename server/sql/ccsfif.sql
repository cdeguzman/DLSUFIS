-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2014 at 05:08 PM
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
-- Table structure for table `awards`
--
-- Creation: Jan 21, 2014 at 06:59 AM
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `FID` int(5) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `awards`:
--   `FID`
--       `faculty` -> `FID`
--

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`FID`, `AWARD_TITLE`, `AWARD_BODY`, `AWARD_DATE`) VALUES
(97063932, 'Valedictorian', 'DES', '2012-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `community_service`
--
-- Creation: Jan 21, 2014 at 07:43 AM
--

DROP TABLE IF EXISTS `community_service`;
CREATE TABLE IF NOT EXISTS `community_service` (
  `FID` int(5) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `COMMITTEE` varchar(45) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `GOV_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `community_service`:
--   `FID`
--       `faculty` -> `FID`
--   `GOV_ID`
--       `gov_agencies` -> `GOV_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `community_service`
--

INSERT INTO `community_service` (`FID`, `CS_TYPE`, `DESCRIPTION`, `COMMITTEE`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `ORG_ID`, `GOV_ID`) VALUES
(97063932, 'Others', 'Tree Planting in Quezon', NULL, 'Mountain in Rizal Quezon', '2011-10-21', '2011-10-21', 'O1111', NULL),
(97063932, 'DLSU', 'Microsoft Ambassador', 'CCS', NULL, '2014-03-02', '2014-03-03', '0', NULL),
(97063932, 'ProfOrg', 'Sample CS in Prof Org', NULL, 'Calamba Laguna', '2014-02-02', '2014-02-03', 'O1112', NULL),
(97063932, 'Government', 'Tree Planting sa Manila', NULL, 'Manila', '2014-01-01', '2014-01-02', NULL, 'G1111');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--
-- Creation: Jan 21, 2014 at 07:58 AM
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
('D1112', 'Master of Science in Information Technology'),
('D1113', 'Doctor of Philosophy in Computer Science'),
('D1114', 'Doctor of Technology');

-- --------------------------------------------------------

--
-- Table structure for table `degree_earned`
--
-- Creation: Jan 20, 2014 at 09:16 AM
--

DROP TABLE IF EXISTS `degree_earned`;
CREATE TABLE IF NOT EXISTS `degree_earned` (
  `FID` int(8) DEFAULT NULL,
  `DEGREE_EARNED` varchar(45) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `DEGREE_TITLE` varchar(45) DEFAULT NULL,
  `AREA_SPEC` varchar(45) DEFAULT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` int(5) DEFAULT NULL,
  `INSTITUTION_NAME` varchar(45) DEFAULT NULL,
  `SO_Num` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `degree_earned`:
--   `DEGREE_ID`
--       `degree` -> `DEGREE_ID`
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--

--
-- Dumping data for table `degree_earned`
--

INSERT INTO `degree_earned` (`FID`, `DEGREE_EARNED`, `DEGREE_ID`, `DEGREE_TITLE`, `AREA_SPEC`, `LOCATION`, `YEAR_OBTAINED`, `INSTITUTION_ID`, `INSTITUTION_NAME`, `SO_Num`) VALUES
(97063932, 'Master''s Degree', 'D1112', 'Master of Science in Information Technology', NULL, 'Santiago City, Isabela', 2004, NULL, 'University of La Salette', 'ULS-80-464106-019 S.2004');

-- --------------------------------------------------------

--
-- Table structure for table `degree_pursue`
--
-- Creation: Mar 11, 2014 at 03:55 AM
--

DROP TABLE IF EXISTS `degree_pursue`;
CREATE TABLE IF NOT EXISTS `degree_pursue` (
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `DEGREE_STAGES` varchar(45) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `degree_pursue`:
--   `DEGREE_ID`
--       `degree` -> `DEGREE_ID`
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--

--
-- Dumping data for table `degree_pursue`
--

INSERT INTO `degree_pursue` (`FID`, `DEGREE_ID`, `INSTITUTION_ID`, `DEGREE_STAGES`, `EARNED_UNITS`, `START_DATE`, `END_DATE`) VALUES
(97063932, 'D1114', 'I1115', 'Academic Courses', 33, '2009-06-01', '2012-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--
-- Creation: Jan 23, 2014 at 09:39 AM
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
-- Creation: Jan 20, 2014 at 09:10 AM
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `FID` int(8) NOT NULL,
  `password` varchar(15) NOT NULL,
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
-- RELATIONS FOR TABLE `faculty`:
--   `COLLEGE`
--       `unit` -> `Unit_Code`
--   `DEPT`
--       `department` -> `dept_code`
--   `RANK`
--       `rank` -> `rank_code`
--

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `password`, `FFNAME`, `FLNAME`, `FMNAME`, `COLLEGE`, `DEPT`, `CLASSIFICATION`, `RANK`) VALUES
(97063932, 'geanne', 'Geanne Ross', 'Franco', 'Lunar', 'CCS', 'CT', 'Full Time', 'AP2');

-- --------------------------------------------------------

--
-- Table structure for table `gov_agencies`
--
-- Creation: Mar 12, 2014 at 01:38 PM
--

DROP TABLE IF EXISTS `gov_agencies`;
CREATE TABLE IF NOT EXISTS `gov_agencies` (
  `GOV_ID` varchar(5) NOT NULL,
  `AGENCY_NAME` varchar(100) DEFAULT NULL,
  `AGENCY_LOCATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GOV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gov_agencies`
--

INSERT INTO `gov_agencies` (`GOV_ID`, `AGENCY_NAME`, `AGENCY_LOCATION`) VALUES
('G1111', 'Social Security System', 'Manila'),
('G1112', 'Department of Social Welfare Development', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--
-- Creation: Jan 20, 2014 at 09:17 AM
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `INSTITUTION_ID` varchar(5) NOT NULL,
  `INSTITUTION_NAME` varchar(45) NOT NULL,
  `INSTITUTION_TYPE` varchar(25) DEFAULT NULL,
  `LOCATION` varchar(45) NOT NULL,
  `country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `INSTITUTION_TYPE`, `LOCATION`, `country`) VALUES
('I1111', 'De La Salle University', 'Academe', 'Taft Ave., Manila', 'Philippines'),
('I1112', 'Ateneo De Manila University', 'Academe', 'Loyola Heights, Quezon City', 'Philippines'),
('I1113', 'University of the Philippines, Diliman', 'Academe', 'Diliman Quezon City', 'Philippines'),
('I1114', 'University of the Philippines, Los Banos', 'Academe', 'Los Banos Laguna', 'Philippines'),
('I1115', 'Technological University of the Philippines', 'Academe', 'Manila', 'Philippines'),
('I1116', 'University of Santo Tomas', 'Academe', 'Manila', 'Philippines'),
('I1117', 'FEU - East Asia College', 'Academe', 'Morayta, Manila', 'Philippines'),
('I1118', 'Colegio de San Juan de Letran', 'Academe', 'Intramuros, Manila', 'Philippines'),
('I1119', 'Hospitality Staff Philippines, Inc.', 'Industry', 'Makati City', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--
-- Creation: Jan 21, 2014 at 06:48 AM
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `ORG_ID` varchar(5) NOT NULL,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_ACRONYM` varchar(25) DEFAULT NULL,
  `ORG_LOCATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`ORG_ID`, `ORG_NAME`, `ORG_ACRONYM`, `ORG_LOCATION`) VALUES
('O1111', 'Philippines Society of Information Technology Educators', 'PSITE', 'Manila'),
('O1112', 'Institute of Electronics and Communications Engineers of the Philippines', 'IECEP', 'National Capital Region'),
('O1113', 'Philippine Computing Organization Alliance', 'PCOA', 'DLSU Manila'),
('O1114', 'Computing Society of the Philippines', 'CSP', 'Manila'),
('O1115', 'Association for Computing Machinery', 'ACM', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `professional_acty`
--
-- Creation: Jan 21, 2014 at 07:02 AM
--

DROP TABLE IF EXISTS `professional_acty`;
CREATE TABLE IF NOT EXISTS `professional_acty` (
  `FID` int(5) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `professional_acty`:
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `professional_acty`
--

INSERT INTO `professional_acty` (`FID`, `DESIGNATION`, `ORG_ID`, `START_DATE`, `END_DATE`) VALUES
(97063932, 'Member', 'O1111', '2009-04-22', '2010-04-22'),
(97063932, 'Business Manager', 'O1111', '2010-04-22', '2010-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `professional_exp`
--
-- Creation: Jan 20, 2014 at 09:46 AM
--

DROP TABLE IF EXISTS `professional_exp`;
CREATE TABLE IF NOT EXISTS `professional_exp` (
  `FID` int(5) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `professional_exp`:
--   `FID`
--       `faculty` -> `FID`
--

--
-- Dumping data for table `professional_exp`
--

INSERT INTO `professional_exp` (`FID`, `LICENSURE_TITLE`, `YEAR_PASSED`, `LICENSE_NO`, `DATE_VALIDITY`) VALUES
(97063932, 'n/a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professional_prac`
--
-- Creation: Mar 11, 2014 at 05:17 AM
--

DROP TABLE IF EXISTS `professional_prac`;
CREATE TABLE IF NOT EXISTS `professional_prac` (
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `professional_prac`:
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `professional_prac`
--

INSERT INTO `professional_prac` (`FID`, `WORK_NATURE`, `INSTITUTION_ID`, `ORG_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`) VALUES
(97063932, 'Web Developer', 'I1119', 'NULL', 1, '2006-05-01', '2007-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--
-- Creation: Jan 21, 2014 at 07:10 AM
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `FID` int(5) DEFAULT NULL,
  `PAPER_TYPE` varchar(100) DEFAULT NULL,
  `PAPER_TITLE` varchar(250) DEFAULT NULL,
  `WORK_TITLE` varchar(100) DEFAULT NULL,
  `CONF_TITLE` varchar(100) DEFAULT NULL,
  `SEMINAR_TITLE` varchar(100) DEFAULT NULL,
  `JOURNAL_NAME` varchar(100) DEFAULT NULL,
  `PUBLISHER` varchar(100) DEFAULT NULL,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `VOLUME_NO` int(5) DEFAULT NULL,
  `ISSUE_NO` varchar(25) DEFAULT NULL,
  `PATENT_NO` varchar(30) DEFAULT NULL,
  `PAGES` varchar(20) DEFAULT NULL,
  `PUBLICATION_TYPE` varchar(45) DEFAULT NULL,
  `OUTPUT_TYPE` varchar(45) DEFAULT NULL,
  `PLACE_PUBLICATION` varchar(45) DEFAULT NULL,
  `DATE_PUBLICATION` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ISSUING_COUNTRY` varchar(45) DEFAULT NULL,
  `EDITORS` varchar(100) DEFAULT NULL,
  `PUBLISHED_IN` varchar(100) DEFAULT NULL,
  `VENUE_PERFORMANCE` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `publication`:
--   `FID`
--       `faculty` -> `FID`
--

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`FID`, `PAPER_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL_NAME`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`) VALUES
(97063932, 'Journal', 'The Proposed Computer Engineering Curriculum for the YLFI - EAC: A Response Towards GLobal Competitiveness', NULL, NULL, NULL, 'The CET Review', NULL, NULL, 1, 'ISSN 1908-6121', NULL, '1-12', 'ISI', NULL, NULL, '2008-07-10', NULL, NULL, NULL, NULL, NULL, NULL),
(97063932, 'Prototype', 'PROTOTYPE PROTOTYPE PROTOTYPE ', NULL, NULL, NULL, 'PROTOTYPE JOURNAL', NULL, 'Franco', 1, 'Issue101', NULL, '1-5', NULL, NULL, NULL, '2014-03-10', NULL, NULL, NULL, NULL, NULL, NULL),
(97063932, 'Patent', 'Sample Patent 000001', NULL, NULL, NULL, NULL, NULL, 'Franco', NULL, NULL, 'Patent11111', NULL, NULL, NULL, NULL, '2014-02-03', NULL, 'Philippines', NULL, NULL, NULL, NULL),
(97063932, 'Book', 'Sample Title of a Book ', NULL, NULL, NULL, NULL, 'Sample Publisher of a Book', NULL, NULL, 'Bookissue101', NULL, NULL, NULL, NULL, 'Manila', '2014-02-01', NULL, NULL, NULL, NULL, NULL, NULL),
(97063932, 'Textbook', 'Sample title of a textbook', NULL, NULL, NULL, NULL, 'Sample Publisher of a text book', NULL, NULL, 'TextbookIssue111', NULL, NULL, NULL, NULL, 'Manila', '2014-03-03', NULL, NULL, NULL, NULL, NULL, NULL),
(97063932, 'Chapter', 'Sample Chapter in an Edited Book', 'Sample Work Title of an Edited Book', NULL, NULL, NULL, 'Sample Publisher of the Chapter', NULL, NULL, 'IssueChapter111', NULL, '14', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, 'Editor1 Editor2', NULL, NULL, NULL),
(97063932, 'Conference', 'Sample Conference Title', NULL, 'Sample of a conference proceedings', NULL, NULL, 'PublisherSample', NULL, NULL, NULL, NULL, '5-15', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, NULL, NULL, NULL),
(97063932, 'OtherPublished', 'Sample Play Title', NULL, NULL, NULL, NULL, 'Publisher1111', NULL, NULL, NULL, NULL, '12', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, 'Cultural Center of the Philippines', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--
-- Creation: Jan 23, 2014 at 09:54 AM
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
('AP1', 'Asst. Professor 1'),
('AP2', 'Asst. Professor 2'),
('L1', 'Lecturer 1'),
('L2', 'Lecturer 2');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--
-- Creation: Jan 21, 2014 at 06:52 AM
--

DROP TABLE IF EXISTS `research`;
CREATE TABLE IF NOT EXISTS `research` (
  `FID` int(5) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FUNDING_AGENCY` varchar(100) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `research`:
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FUNDING_AGENCY`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(97063932, 'Dynamic Web Site for Evangelion Foundation, Inc.', 'Funded', 'External', 'FEU-EAC/EFI', 'Php', '30000.25', '2012-06-01', '2013-04-17'),
(97063932, 'Research Sample 2', 'Funded', 'Internal', 'Sample Funding Agency', 'Php', '12565.35', '2013-03-03', '2013-12-03'),
(97063932, 'Research Grant Sample', 'Grants', NULL, 'DLSU', NULL, NULL, '2014-03-03', '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `special_training`
--
-- Creation: Jan 20, 2014 at 09:28 AM
--

DROP TABLE IF EXISTS `special_training`;
CREATE TABLE IF NOT EXISTS `special_training` (
  `FID` int(5) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `special_training`:
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `special_training`
--

INSERT INTO `special_training` (`FID`, `TRAINING_TITLE`, `VENUE`, `START_DATE`, `END_DATE`, `INSTITUTION_ID`, `ORG_ID`) VALUES
(97063932, 'IBM DB2 Fundamental of Database', 'DLSU', '2012-12-22', '2013-01-05', 'I1111', NULL),
(97063932, 'Strengthen Your Research Profile', 'National University', '2010-03-01', '2010-03-01', NULL, 'O1111');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--
-- Creation: Jan 20, 2014 at 09:32 AM
--

DROP TABLE IF EXISTS `teaching_experience`;
CREATE TABLE IF NOT EXISTS `teaching_experience` (
  `FID` int(5) DEFAULT NULL,
  `LEVEL` varchar(30) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `NO_YEARS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `POSITION` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `teaching_experience`:
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--

--
-- Dumping data for table `teaching_experience`
--

INSERT INTO `teaching_experience` (`FID`, `LEVEL`, `INSTITUTION_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`, `POSITION`) VALUES
(97063932, 'Tertiary', 'I1117', 3, '2009-05-22', '2013-06-15', 'Full-Time Faculty'),
(97063932, 'Tertiary', 'I1111', 1, '2013-01-06', '0000-00-00', 'Full-Time Faculty'),
(97063932, 'Tertiary', 'I1118', 1, '2008-06-01', '2009-04-13', 'Full-Time Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--
-- Creation: Jan 23, 2014 at 08:52 AM
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
