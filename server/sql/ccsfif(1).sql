-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2014 at 03:59 PM
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
-- Table structure for table `area_spec`
--
-- Creation: Apr 08, 2014 at 11:54 AM
--

DROP TABLE IF EXISTS `area_spec`;
CREATE TABLE IF NOT EXISTS `area_spec` (
  `AS_CODE` varchar(5) NOT NULL,
  `AS_TITLE` varchar(50) NOT NULL,
  PRIMARY KEY (`AS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_spec`
--

INSERT INTO `area_spec` (`AS_CODE`, `AS_TITLE`) VALUES
('AS000', 'N/A'),
('AS001', 'Signal Processing'),
('AS002', 'Artificial Intelligence'),
('AS003', 'Digital Forensics'),
('AS004', 'Big Data and Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--
-- Creation: Jan 21, 2014 at 06:59 AM
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `AWARD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`AWARD_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- RELATIONS FOR TABLE `awards`:
--   `FID`
--       `faculty` -> `FID`
--

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`AWARD_ID`, `FID`, `AWARD_TITLE`, `AWARD_BODY`, `AWARD_DATE`) VALUES
(1, 97063932, 'Valedictorian', 'DES', '2012-12-08'),
(2, 97063932, 'Masinop Award', 'Mabuhay Awards', '2014-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `community_service`
--
-- Creation: Jan 21, 2014 at 07:43 AM
--

DROP TABLE IF EXISTS `community_service`;
CREATE TABLE IF NOT EXISTS `community_service` (
  `CS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `UNIT_CODE` varchar(4) DEFAULT NULL,
  `DEPT_CODE` varchar(5) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `GOV_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- RELATIONS FOR TABLE `community_service`:
--   `CS_TYPE`
--       `cs_type` -> `CSTYPE_CODE`
--   `DEPT_CODE`
--       `department` -> `dept_code`
--   `FID`
--       `faculty` -> `FID`
--   `GOV_ID`
--       `gov_agencies` -> `GOV_ID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--   `UNIT_CODE`
--       `unit` -> `Unit_Code`
--

--
-- Dumping data for table `community_service`
--

INSERT INTO `community_service` (`CS_ID`, `FID`, `CS_TYPE`, `DESCRIPTION`, `UNIT_CODE`, `DEPT_CODE`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `INSTITUTION_ID`, `ORG_ID`, `GOV_ID`) VALUES
(1, 97063932, 'CS004', 'Tree Planting in Quezon', NULL, NULL, 'Mountain in Rizal Quezon', '2011-10-21', '2011-10-21', NULL, 'O0001', NULL),
(2, 97063932, 'CS001', 'Microsoft Ambassador', 'CCS', 'CT', NULL, '2014-03-02', '2014-03-03', 'A0001', '', NULL),
(3, 97063932, 'CS002', 'Sample CS in Prof Org', NULL, NULL, 'Calamba Laguna', '2014-02-02', '2014-02-03', NULL, 'O0002', NULL),
(4, 97063932, 'CS003', 'Tree Planting sa Manila', NULL, NULL, 'Manila', '2014-01-01', '2014-01-02', NULL, NULL, 'G0001');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--
-- Creation: Apr 11, 2014 at 01:33 AM
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(35) NOT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cs_type`
--
-- Creation: Apr 08, 2014 at 01:41 PM
--

DROP TABLE IF EXISTS `cs_type`;
CREATE TABLE IF NOT EXISTS `cs_type` (
  `CSTYPE_CODE` varchar(5) NOT NULL,
  `CSTYPE_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`CSTYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_type`
--

INSERT INTO `cs_type` (`CSTYPE_CODE`, `CSTYPE_TITLE`) VALUES
('CS001', 'DLSU'),
('CS002', 'Professional Organization'),
('CS003', 'Government'),
('CS004', 'Others');

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
  `DLEVEL_ID` varchar(3) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `degree`:
--   `DLEVEL_ID`
--       `degree_level` -> `DLEVEL_ID`
--

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DEGREE_ID`, `DEGREE_TITLE`, `DLEVEL_ID`) VALUES
('D0001', 'Master of Science in Computer Science', 'DL2'),
('D0002', 'Master of Science in Information Technology', 'DL2'),
('D0003', 'Doctor of Philosophy in Computer Science', 'DL3'),
('D0004', 'Doctor of Technology', 'DL3'),
('D0005', 'Bachelor of Science in Computer Science', 'DL1');

-- --------------------------------------------------------

--
-- Table structure for table `degree_earned`
--
-- Creation: Jan 20, 2014 at 09:16 AM
--

DROP TABLE IF EXISTS `degree_earned`;
CREATE TABLE IF NOT EXISTS `degree_earned` (
  `DE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `SPECIALIZATION` int(11) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `SO_NUM` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- RELATIONS FOR TABLE `degree_earned`:
--   `DEGREE_ID`
--       `degree` -> `DEGREE_ID`
--   `DLEVEL_ID`
--       `degree_level` -> `DLEVEL_ID`
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `SPECIALIZATION`
--       `specialization` -> `SP_CODE`
--

--
-- Dumping data for table `degree_earned`
--

INSERT INTO `degree_earned` (`DE_ID`, `FID`, `DEGREE_ID`, `SPECIALIZATION`, `YEAR_OBTAINED`, `INSTITUTION_ID`, `SO_NUM`) VALUES
(1, 97063932, 'D0002', NULL, 2004, 'A0007', 'ULS-80-464106-019 S.2004'),
(2, 97063932, 'D0005', NULL, 2000, 'A0005', 'CHED-11111111'),
(3, 97000001, 'D0005', NULL, 2003, 'A0007', 'SO 1111-234-9876');

-- --------------------------------------------------------

--
-- Table structure for table `degree_level`
--
-- Creation: Apr 08, 2014 at 11:42 AM
--

DROP TABLE IF EXISTS `degree_level`;
CREATE TABLE IF NOT EXISTS `degree_level` (
  `DLEVEL_ID` varchar(3) NOT NULL,
  `DLEVEL_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`DLEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_level`
--

INSERT INTO `degree_level` (`DLEVEL_ID`, `DLEVEL_TITLE`) VALUES
('DL1', 'Bachelor'),
('DL2', 'Master'),
('DL3', 'Doctoral');

-- --------------------------------------------------------

--
-- Table structure for table `degree_pursue`
--
-- Creation: Mar 11, 2014 at 03:55 AM
--

DROP TABLE IF EXISTS `degree_pursue`;
CREATE TABLE IF NOT EXISTS `degree_pursue` (
  `DP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `DEGREE_STAGES` varchar(45) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`DP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

INSERT INTO `degree_pursue` (`DP_ID`, `FID`, `DEGREE_ID`, `INSTITUTION_ID`, `DEGREE_STAGES`, `EARNED_UNITS`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'D0004', 'A0005', 'Academic Courses', 33, '2009-06-01', '2012-10-01'),
(2, 97000001, 'D0004', 'A0008', 'Academic Courses', 9, '2014-02-02', '2014-04-05');

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
-- Table structure for table `educ_level`
--
-- Creation: Apr 08, 2014 at 03:37 PM
--

DROP TABLE IF EXISTS `educ_level`;
CREATE TABLE IF NOT EXISTS `educ_level` (
  `EL_ID` varchar(5) NOT NULL,
  `EL_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`EL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educ_level`
--

INSERT INTO `educ_level` (`EL_ID`, `EL_TITLE`) VALUES
('EL001', 'Elementary'),
('EL002', 'Secondary'),
('EL003', 'Tertiary');

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
  `UNIT_CODE` varchar(5) DEFAULT NULL,
  `DEPT` varchar(45) NOT NULL,
  `CLASSIFICATION` varchar(5) NOT NULL,
  `RANK` varchar(45) NOT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `faculty`:
--   `CLASSIFICATION`
--       `position` -> `POSITION_ID`
--   `DEPT`
--       `department` -> `dept_code`
--   `POSITION_ID`
--       `position` -> `POSITION_ID`
--   `RANK`
--       `rank` -> `rank_code`
--   `UNIT_CODE`
--       `unit` -> `Unit_Code`
--

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `password`, `FFNAME`, `FLNAME`, `FMNAME`, `UNIT_CODE`, `DEPT`, `CLASSIFICATION`, `RANK`, `POSITION_ID`) VALUES
(1111, 'password', 'Staff ', 'Account', 'Sample', 'CCS', 'CT', 'P0005', 'L1', 'P0005'),
(20000, 'password', 'Administrator', 'Account', 'Sample', 'CCS', 'CT', 'P0000', 'AP1', 'P0000'),
(97000001, 'password', 'Sample', 'Faculty', 'Only', 'CCS', 'CT', 'P0004', 'L2', 'P0004'),
(97063932, 'geanne', 'Geanne Ross', 'Franco', 'Lunar', 'CCS', 'CT', 'P0003', 'AP2', 'P0003');

-- --------------------------------------------------------

--
-- Table structure for table `funding_agency`
--
-- Creation: Apr 09, 2014 at 06:42 AM
--

DROP TABLE IF EXISTS `funding_agency`;
CREATE TABLE IF NOT EXISTS `funding_agency` (
  `FAGENCY_ID` varchar(5) NOT NULL,
  `FAGENCY_NAME` varchar(70) NOT NULL,
  PRIMARY KEY (`FAGENCY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funding_agency`
--

INSERT INTO `funding_agency` (`FAGENCY_ID`, `FAGENCY_NAME`) VALUES
('F0000', 'N/A'),
('F0001', 'Funding Agency 1'),
('F0002', 'Funding Agency 2');

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
('G0001', 'Social Security System', 'Manila'),
('G0002', 'Department of Social Welfare Development', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--
-- Creation: Jan 20, 2014 at 09:17 AM
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `INSTITUTION_ID` varchar(5) NOT NULL,
  `INSTITUTION_NAME` varchar(45) DEFAULT NULL,
  `INSTITUTION_TYPE` varchar(25) DEFAULT NULL,
  `LOCATION` varchar(45) NOT NULL,
  `country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `INSTITUTION_TYPE`, `LOCATION`, `country`) VALUES
('A0000', NULL, NULL, '', NULL),
('A0001', 'De La Salle University', 'Academe', 'Taft Ave., Manila', 'Philippines'),
('A0002', 'Ateneo De Manila University', 'Academe', 'Loyola Heights, Quezon City', 'Philippines'),
('A0003', 'University of the Philippines, Diliman', 'Academe', 'Diliman Quezon City', 'Philippines'),
('A0004', 'University of the Philippines, Los Banos', 'Academe', 'Los Banos Laguna', 'Philippines'),
('A0005', 'Technological University of the Philippines', 'Academe', 'Manila', 'Philippines'),
('A0006', 'University of Santo Tomas', 'Academe', 'Manila', 'Philippines'),
('A0007', 'FEU - East Asia College', 'Academe', 'Morayta, Manila', 'Philippines'),
('A0008', 'Colegio de San Juan de Letran', 'Academe', 'Intramuros, Manila', 'Philippines'),
('I0001', 'Hospitality Staff Philippines, Inc.', 'Industry', 'Makati City', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--
-- Creation: Apr 09, 2014 at 06:56 AM
--

DROP TABLE IF EXISTS `journals`;
CREATE TABLE IF NOT EXISTS `journals` (
  `JOURNAL_ID` varchar(8) NOT NULL,
  `JOURNAL_TITLE` varchar(100) NOT NULL,
  `JOURNAL_TYPE` varchar(35) NOT NULL,
  `JOURNAL_PUBLICATION` varchar(35) NOT NULL,
  PRIMARY KEY (`JOURNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`JOURNAL_ID`, `JOURNAL_TITLE`, `JOURNAL_TYPE`, `JOURNAL_PUBLICATION`) VALUES
('J0000000', 'N/A', 'N/A', 'N/A'),
('J0000001', 'IEEE Transactions on Affective Computing', 'Trade Journal', 'International'),
('J0000002', 'The CET Review', 'Academic Journal', 'Local'),
('J0000003', 'The Journal of DLSU-CCS', 'Academic', 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--
-- Creation: Apr 11, 2014 at 01:33 AM
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `LOCATION_NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('O0000', '', NULL, ''),
('O0001', 'Philippines Society of Information Technology Educators', 'PSITE', 'Manila'),
('O0002', 'Institute of Electronics and Communications Engineers of the Philippines', 'IECEP', 'National Capital Region'),
('O0003', 'Philippine Computing Organization Alliance', 'PCOA', 'DLSU Manila'),
('O0004', 'Computing Society of the Philippines', 'CSP', 'Manila'),
('O0005', 'Association for Computing Machinery', 'ACM', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--
-- Creation: Apr 08, 2014 at 09:26 AM
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `POSITION_ID` varchar(5) NOT NULL,
  `POSITION_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`POSITION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`POSITION_ID`, `POSITION_TITLE`) VALUES
('P0000', 'Administrator'),
('P0001', 'Dean'),
('P0002', 'Chairperson'),
('P0003', 'Full Time - Faculty'),
('P0004', 'Part Time - Faculty'),
('P0005', 'Academic Staff');

-- --------------------------------------------------------

--
-- Table structure for table `professional_acty`
--
-- Creation: Jan 21, 2014 at 07:02 AM
--

DROP TABLE IF EXISTS `professional_acty`;
CREATE TABLE IF NOT EXISTS `professional_acty` (
  `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEADER_TYPE` int(1) NOT NULL,
  `FID` int(5) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

INSERT INTO `professional_acty` (`PA_ID`, `LEADER_TYPE`, `FID`, `DESIGNATION`, `ORG_ID`, `START_DATE`, `END_DATE`) VALUES
(1, 0, 97063932, 'Member', 'O0001', '2009-04-22', '2010-04-22'),
(2, 1, 97063932, 'Business Manager', 'O0002', '2010-04-22', '2010-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `professional_exp`
--
-- Creation: Jan 20, 2014 at 09:46 AM
--

DROP TABLE IF EXISTS `professional_exp`;
CREATE TABLE IF NOT EXISTS `professional_exp` (
  `PE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL,
  PRIMARY KEY (`PE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- RELATIONS FOR TABLE `professional_exp`:
--   `FID`
--       `faculty` -> `FID`
--

--
-- Dumping data for table `professional_exp`
--

INSERT INTO `professional_exp` (`PE_ID`, `FID`, `LICENSURE_TITLE`, `YEAR_PASSED`, `LICENSE_NO`, `DATE_VALIDITY`) VALUES
(1, 97063932, 'n/a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professional_prac`
--
-- Creation: Mar 11, 2014 at 05:17 AM
--

DROP TABLE IF EXISTS `professional_prac`;
CREATE TABLE IF NOT EXISTS `professional_prac` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

INSERT INTO `professional_prac` (`PP_ID`, `FID`, `WORK_NATURE`, `INSTITUTION_ID`, `ORG_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Web Developer', 'I0001', '', 1, '2006-05-01', '2007-01-01'),
(2, 97063932, 'Consultant', NULL, 'O0001', 1, '2013-04-01', '2014-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--
-- Creation: Jan 21, 2014 at 07:10 AM
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `PUB_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `PUB_TYPE` varchar(5) DEFAULT NULL,
  `PAPER_TITLE` varchar(250) DEFAULT NULL,
  `WORK_TITLE` varchar(100) DEFAULT NULL,
  `CONF_TITLE` varchar(100) DEFAULT NULL,
  `SEMINAR_TITLE` varchar(100) DEFAULT NULL,
  `JOURNAL_ID` varchar(8) DEFAULT NULL,
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
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ISSUING_COUNTRY` varchar(45) DEFAULT NULL,
  `EDITORS` varchar(100) DEFAULT NULL,
  `PUBLISHED_IN` varchar(100) DEFAULT NULL,
  `VENUE_PERFORMANCE` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PUB_CODE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- RELATIONS FOR TABLE `publication`:
--   `FID`
--       `faculty` -> `FID`
--   `JOURNAL_ID`
--       `journals` -> `JOURNAL_ID`
--   `PUB_TYPE`
--       `publication_type` -> `PT_ID`
--

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL_ID`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`) VALUES
(1, 97063932, 'PT001', 'The Proposed Computer Engineering Curriculum for the YLFI - EAC: A Response Towards GLobal Competitiveness', NULL, NULL, NULL, 'J0000002', NULL, NULL, 1, 'ISSN 1908-6121', NULL, '1-12', 'ISI', NULL, NULL, '2008-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 97063932, 'PT002', 'PROTOTYPE PROTOTYPE PROTOTYPE ', NULL, NULL, NULL, 'J0000001', NULL, 'Franco', 1, 'Issue101', NULL, '1-5', NULL, NULL, NULL, '2014-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 97063932, 'PT003', 'Sample Patent 000001', NULL, NULL, NULL, '', NULL, 'Franco', NULL, NULL, 'Patent11111', NULL, NULL, NULL, NULL, '2014-02-03', NULL, NULL, 'Philippines', NULL, NULL, NULL, NULL),
(4, 97063932, 'PT004', 'Sample Title of a Book ', NULL, NULL, NULL, '', 'Sample Publisher of a Book', NULL, NULL, 'Bookissue101', NULL, NULL, NULL, NULL, 'Manila', '2014-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 97063932, 'PT005', 'Sample title of a textbook', NULL, NULL, NULL, '', 'Sample Publisher of a text book', NULL, NULL, 'TextbookIssue111', NULL, NULL, NULL, NULL, 'Manila', '2014-03-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 97063932, 'PT006', 'Sample Chapter in an Edited Book', 'Sample Work Title of an Edited Book', NULL, NULL, '', 'Sample Publisher of the Chapter', NULL, NULL, 'IssueChapter111', NULL, '14', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, 'Editor1 Editor2', NULL, NULL, NULL),
(7, 97063932, 'PT007', 'Sample Conference Title', NULL, 'Sample of a conference proceedings', NULL, '', 'PublisherSample', NULL, NULL, NULL, NULL, '5-15', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 97063932, 'PT008', 'Sample Short Stories', NULL, NULL, NULL, '', 'Publisher1111', NULL, NULL, NULL, NULL, '12', NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, NULL, 'Cultural Center of the Philippines', NULL, NULL),
(9, 97063932, 'PT009', 'Sample Screen Play , Film, Play', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2014-03-02', NULL, NULL, NULL, NULL, '', 'Cultural Center of the Philippines', NULL),
(10, 97063932, 'PT010', 'Dynamic Website for EFI', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', NULL, 'Working Paper', '', '2014-03-02', NULL, NULL, NULL, NULL, '', '', 'Web Development Project done in FEU-EAC for EFI'),
(11, 97063932, 'PT011', NULL, NULL, NULL, 'IBM DB2 Express C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-04-01', '2013-04-10', NULL, NULL, NULL, 'De La Salle University', NULL),
(12, 97063932, 'PT011', NULL, NULL, NULL, 'Building Forms using Oracle 10g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-04-01', '2013-04-12', NULL, NULL, NULL, 'Makati City', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publication_type`
--
-- Creation: Apr 08, 2014 at 01:51 PM
--

DROP TABLE IF EXISTS `publication_type`;
CREATE TABLE IF NOT EXISTS `publication_type` (
  `PT_ID` varchar(5) NOT NULL,
  `PT_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`PT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication_type`
--

INSERT INTO `publication_type` (`PT_ID`, `PT_TITLE`) VALUES
('PT001', 'Journal'),
('PT002', 'Prototype'),
('PT003', 'Patent'),
('PT004', 'Book'),
('PT005', 'Textbook'),
('PT006', 'Chapter'),
('PT007', 'Conference'),
('PT008', 'Other Published'),
('PT009', 'Play'),
('PT010', 'Other Research'),
('PT011', 'Seminars');

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
-- Table structure for table `research_external`
--
-- Creation: Jan 21, 2014 at 06:52 AM
--

DROP TABLE IF EXISTS `research_external`;
CREATE TABLE IF NOT EXISTS `research_external` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FAGENCY_ID` varchar(5) NOT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- RELATIONS FOR TABLE `research_external`:
--   `FAGENCY_ID`
--       `funding_agency` -> `FAGENCY_ID`
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `research_external`
--

INSERT INTO `research_external` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FAGENCY_ID`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Dynamic Web Site for Evangelion Foundation, Inc.', 'Funded', 'External', 'F0001', 'Php', '30000.25', '2012-06-01', '2013-04-17'),
(3, 97063932, 'Research Grant Sample', 'Grants', NULL, 'F0000', NULL, NULL, '2014-03-03', '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `research_internal`
--
-- Creation: Apr 09, 2014 at 06:31 AM
--

DROP TABLE IF EXISTS `research_internal`;
CREATE TABLE IF NOT EXISTS `research_internal` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FUNDING_UNIT` varchar(5) NOT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- RELATIONS FOR TABLE `research_internal`:
--   `FID`
--       `faculty` -> `FID`
--   `FUNDING_UNIT`
--       `unit` -> `Unit_Code`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `ORG_ID`
--       `organization` -> `ORG_ID`
--

--
-- Dumping data for table `research_internal`
--

INSERT INTO `research_internal` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FUNDING_UNIT`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Dynamic Web Site for Evangelion Foundation, Inc.', 'Funded', 'Internal', 'CCS', 'Php', '30000.25', '2012-06-01', '2013-04-17'),
(3, 97063932, 'Research Interanal Funded Sample', 'Funded', 'Internal', 'COS', 'PhP', '35555.55', '2014-03-03', '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--
-- Creation: Apr 08, 2014 at 11:58 AM
--

DROP TABLE IF EXISTS `specialization`;
CREATE TABLE IF NOT EXISTS `specialization` (
  `SP_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `AS_CODE` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`SP_CODE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- RELATIONS FOR TABLE `specialization`:
--   `AS_CODE`
--       `area_spec` -> `AS_CODE`
--   `DEGREE_ID`
--       `degree` -> `DEGREE_ID`
--

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`SP_CODE`, `DEGREE_ID`, `AS_CODE`) VALUES
(1, 'D0001', 'AS001'),
(2, 'D0002', 'AS002'),
(3, 'D0001', 'AS002'),
(4, 'D0002', 'AS003');

-- --------------------------------------------------------

--
-- Table structure for table `special_training`
--
-- Creation: Jan 20, 2014 at 09:28 AM
--

DROP TABLE IF EXISTS `special_training`;
CREATE TABLE IF NOT EXISTS `special_training` (
  `ST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ST_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

INSERT INTO `special_training` (`ST_ID`, `FID`, `TRAINING_TITLE`, `VENUE`, `START_DATE`, `END_DATE`, `INSTITUTION_ID`, `ORG_ID`) VALUES
(1, 97063932, 'IBM DB2 Fundamental of Database', 'DLSU', '2012-12-22', '2013-01-05', 'A0001', NULL),
(2, 97063932, 'Strengthen Your Research Profile', 'National University', '2010-03-01', '2010-03-01', NULL, 'O0001');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--
-- Creation: Jan 20, 2014 at 09:32 AM
--

DROP TABLE IF EXISTS `teaching_experience`;
CREATE TABLE IF NOT EXISTS `teaching_experience` (
  `TE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `EL_ID` varchar(5) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `NO_YEARS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`TE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- RELATIONS FOR TABLE `teaching_experience`:
--   `EL_ID`
--       `educ_level` -> `EL_ID`
--   `FID`
--       `faculty` -> `FID`
--   `INSTITUTION_ID`
--       `institution` -> `INSTITUTION_ID`
--   `POSITION_ID`
--       `position` -> `POSITION_ID`
--

--
-- Dumping data for table `teaching_experience`
--

INSERT INTO `teaching_experience` (`TE_ID`, `FID`, `EL_ID`, `INSTITUTION_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`, `POSITION_ID`) VALUES
(1, 97063932, 'EL003', 'A0005', 3, '2009-05-22', '2013-06-15', 'P0003'),
(2, 97063932, 'EL003', 'A0001', 1, '2013-01-06', '0000-00-00', 'P0003'),
(3, 97063932, 'EL003', 'A0007', 1, '2008-06-01', '2009-04-13', 'P0003');

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
('COB', 'College of Business'),
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
