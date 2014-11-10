-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2014 at 05:36 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ACCOUNT_ID` varchar(5) NOT NULL,
  `ACCOUNT_ROLE` varchar(25) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `ACCOUNT_ROLE`) VALUES
('AC001', 'System Administrator'),
('AC002', 'Manager'),
('AC003', 'Faculty'),
('AC004', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `area_spec`
--

CREATE TABLE IF NOT EXISTS `area_spec` (
  `AS_CODE` varchar(5) NOT NULL,
  `AS_TITLE` varchar(50) NOT NULL,
  PRIMARY KEY (`AS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_spec`
--

INSERT INTO `area_spec` (`AS_CODE`, `AS_TITLE`) VALUES
('AS000', '  N/A'),
('AS001', 'Signal Processing'),
('AS002', 'Artificial Intelligence'),
('AS003', 'Digital Forensics'),
('AS004', 'Big Data and Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `AWARD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`AWARD_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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

CREATE TABLE IF NOT EXISTS `community_service` (
  `CS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `UNIT_CODE` varchar(4) DEFAULT NULL,
  `DEPT_CODE` varchar(5) DEFAULT NULL,
  `COMMITTEE` varchar(45) DEFAULT NULL,
  `OTHERS` varchar(45) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `GOV_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `community_service`
--

INSERT INTO `community_service` (`CS_ID`, `FID`, `CS_TYPE`, `DESCRIPTION`, `UNIT_CODE`, `DEPT_CODE`, `COMMITTEE`, `OTHERS`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `INSTITUTION_ID`, `ORG_ID`, `GOV_ID`) VALUES
(1, 97063932, 'CS004', 'Tree Planting in Quezon', NULL, NULL, NULL, NULL, 'Mountain in Rizal Quezon', '2011-10-21', '2011-10-21', NULL, 'O0001', NULL),
(2, 97063932, 'CS001', 'Microsoft Ambassador', 'CCS', 'CT', NULL, NULL, NULL, '2014-03-02', '2014-03-03', 'A0001', '', NULL),
(3, 97063932, 'CS002', 'Sample CS in Prof Org', NULL, NULL, NULL, NULL, 'Calamba Laguna', '2014-02-02', '2014-02-03', NULL, 'O0002', NULL),
(4, 97063932, 'CS003', 'Tree Planting sa Manila', NULL, NULL, NULL, NULL, 'Manila', '2014-01-01', '2014-01-02', NULL, NULL, 'G0001'),
(7, 97000001, 'CS001', 'Teaching Computers', 'CCS', 'CT', NULL, NULL, NULL, '2005-05-05', '2005-05-05', NULL, NULL, NULL),
(8, 97000001, 'CS002', 'Tree Planting', NULL, NULL, NULL, NULL, 'Nasugbu, Batangas', '2007-02-02', '2007-02-02', NULL, 'O0000', NULL),
(10, 97000001, 'CS003', 'Street Lighting', NULL, NULL, NULL, NULL, 'Bataan', '2008-04-04', '2008-04-04', NULL, NULL, 'G0001'),
(12, 97000001, 'CS004', 'Feeding Program', NULL, NULL, NULL, 'DSWD', 'Tondo, Manila', '2003-02-01', '2003-02-02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `COUNTRY_CODE` varchar(3) NOT NULL,
  `COUNTRY_NAME` varchar(35) NOT NULL,
  PRIMARY KEY (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_CODE`, `COUNTRY_NAME`) VALUES
('AFG', 'Afghanistan'),
('ALB', 'Albania'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('BEL', 'Belgium'),
('CHN', 'China'),
('DZA', 'Algeria'),
('JPN', 'Japan'),
('KHM', 'Cambodia'),
('MAC', 'Macau'),
('MYS', 'Malaysia'),
('PHL', 'Philippines'),
('ROU', 'Romania'),
('RUS', 'Russia'),
('SGP', 'Singapore'),
('USA', 'United Stated of America');

-- --------------------------------------------------------

--
-- Table structure for table `cs_type`
--

CREATE TABLE IF NOT EXISTS `cs_type` (
  `CSTYPE_CODE` varchar(5) NOT NULL,
  `CSTYPE_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`CSTYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_type`
--

INSERT INTO `cs_type` (`CSTYPE_CODE`, `CSTYPE_TITLE`) VALUES
('CS000', '  N/A'),
('CS001', 'DLSU'),
('CS002', 'Professional Organization'),
('CS003', 'Government'),
('CS004', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `DEGREE_ID` varchar(5) NOT NULL,
  `DEGREE_TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DEGREE_ID`, `DEGREE_TITLE`) VALUES
('D0001', 'Computer Science'),
('D0002', 'Information Technology'),
('D0003', 'Computer Engineering'),
('D0004', 'Electronics and Communications Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `degree_earned`
--

CREATE TABLE IF NOT EXISTS `degree_earned` (
  `DE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `SPECIALIZATION` varchar(5) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `LOCATION_ID` varchar(5) DEFAULT NULL,
  `SO_NUM` varchar(25) NOT NULL,
  PRIMARY KEY (`DE_ID`),
  KEY `DE_ID` (`DE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `degree_earned`
--

INSERT INTO `degree_earned` (`DE_ID`, `FID`, `DLEVEL_ID`, `DEGREE_ID`, `SPECIALIZATION`, `YEAR_OBTAINED`, `INSTITUTION_ID`, `LOCATION_ID`, `SO_NUM`) VALUES
(1, 97000001, 'DL00', 'D0001', 'AS001', 2004, 'A0000', '0', 'SO11111');

-- --------------------------------------------------------

--
-- Table structure for table `degree_level`
--

CREATE TABLE IF NOT EXISTS `degree_level` (
  `DLEVEL_ID` varchar(4) NOT NULL,
  `DLEVEL_TITLE` varchar(35) NOT NULL,
  `DLEVEL_DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DLEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_level`
--

INSERT INTO `degree_level` (`DLEVEL_ID`, `DLEVEL_TITLE`, `DLEVEL_DESC`) VALUES
('DL00', 'Bachelor (BS)', 'Bachelor of Science in'),
('DL01', 'Bachelor (BA)', 'Bachelor of Arts in'),
('DL02', 'Master''s (MS)', 'Master of Science in'),
('DL03', 'Master''s (MA)', 'Master of Arts in'),
('DL04', 'Master''s (M)', 'Master in'),
('DL05', 'Doctoral (PhD)', 'Doctor of Philosophy in'),
('DL06', 'Doctoral (EdD)', 'Doctor of Education in'),
('DL07', 'Doctoral (Doctor In)', 'Doctor in'),
('DL08', 'Doctoral (Doctor of)', 'Doctor of');

-- --------------------------------------------------------

--
-- Table structure for table `degree_pursue`
--

CREATE TABLE IF NOT EXISTS `degree_pursue` (
  `DP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` varchar(5) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `DEGREE_STAGES` varchar(5) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`DP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `degree_pursue`
--

INSERT INTO `degree_pursue` (`DP_ID`, `FID`, `DEGREE_ID`, `DLEVEL_ID`, `INSTITUTION_ID`, `DEGREE_STAGES`, `EARNED_UNITS`, `START_DATE`, `END_DATE`) VALUES
(3, 97000001, 'D0003', 'DL02', 'A0004', 'DS003', 30, '2011-06-02', '2014-07-11'),
(6, 97063932, 'D0001', 'DL05', 'A0001', 'DS004', 32, '2003-01-01', '2003-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `degree_stages`
--

CREATE TABLE IF NOT EXISTS `degree_stages` (
  `DS_CODE` varchar(5) NOT NULL,
  `DS_NAME` varchar(25) NOT NULL,
  PRIMARY KEY (`DS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_stages`
--

INSERT INTO `degree_stages` (`DS_CODE`, `DS_NAME`) VALUES
('DS000', '  N/A'),
('DS001', 'Dissertation'),
('DS002', 'Thesis'),
('DS003', 'Comprehensives'),
('DS004', 'Academic Courses');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_code` varchar(15) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_code`, `dept_name`) VALUES
('00', '  N/A'),
('CT', 'Computer Technology'),
('IS', 'Information System'),
('IT', 'Information Technology'),
('ST', 'SoftwareTechnology');

-- --------------------------------------------------------

--
-- Table structure for table `educ_level`
--

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

CREATE TABLE IF NOT EXISTS `faculty` (
  `FID` int(8) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `USERNAME` varchar(25) NOT NULL,
  `ACCOUNT_ID` varchar(5) NOT NULL,
  `FFNAME` varchar(25) NOT NULL,
  `FLNAME` varchar(25) NOT NULL,
  `FMNAME` varchar(25) NOT NULL,
  `UNIT_CODE` varchar(5) DEFAULT NULL,
  `DEPT` varchar(45) NOT NULL,
  `RANK` varchar(45) NOT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `PASSWORD`, `USERNAME`, `ACCOUNT_ID`, `FFNAME`, `FLNAME`, `FMNAME`, `UNIT_CODE`, `DEPT`, `RANK`, `POSITION_ID`) VALUES
(1111, 'password', 'staff.account', 'AC004', 'Staff ', 'Account', 'Sample', 'CCS', 'CT', 'L1', 'P0005'),
(20000, 'password', 'admin.account', 'AC001', 'Administrator', 'Account', 'Sample', 'CCS', 'CT', 'AP1', 'P0000'),
(97000001, 'password', '', '', 'Sample', 'Faculty', 'Only', 'CCS', 'CT', 'L2', 'P0004'),
(97063932, 'geanne', 'geanne.franco', 'AC003', 'Geanne Ross', 'Franco', 'Lunar', 'CCS', 'CT', 'AP2', 'P0003');

-- --------------------------------------------------------

--
-- Table structure for table `funding_agency`
--

CREATE TABLE IF NOT EXISTS `funding_agency` (
  `FAGENCY_ID` varchar(5) NOT NULL,
  `FAGENCY_NAME` varchar(70) NOT NULL,
  PRIMARY KEY (`FAGENCY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funding_agency`
--

INSERT INTO `funding_agency` (`FAGENCY_ID`, `FAGENCY_NAME`) VALUES
('F0000', '  N/A'),
('F0001', 'Funding Agency 1'),
('F0002', 'Funding Agency 2');

-- --------------------------------------------------------

--
-- Table structure for table `gov_agencies`
--

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
('G0000', '  N/A', '  N/A'),
('G0001', 'Social Security System', 'Manila'),
('G0002', 'Department of Social Welfare Development', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE IF NOT EXISTS `industry` (
  `INDUSTRY_ID` varchar(5) NOT NULL,
  `INDUSTRY_NAME` varchar(45) NOT NULL,
  `IND_ACRONYM` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`INDUSTRY_ID`, `INDUSTRY_NAME`, `IND_ACRONYM`) VALUES
('I0000', '  N/A', '  N/A'),
('I0001', 'Digital Telecommunications Philippines', '(DIGITEL)'),
('I0002', 'Globe Telecomm', '(GLOBE)'),
('I0003', 'Integrated Microelectronics, Inc.', '(IMI)');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE IF NOT EXISTS `institution` (
  `INSTITUTION_ID` varchar(5) NOT NULL,
  `INSTITUTION_NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `LOCATION`, `country`) VALUES
('A0000', '  N/A', '', NULL),
('A0001', 'De La Salle University', 'Taft Ave., Manila', 'Philippines'),
('A0002', 'Ateneo De Manila University', 'Loyola Heights, Quezon City', 'Philippines'),
('A0003', 'University of the Philippines, Diliman', 'Diliman Quezon City', 'Philippines'),
('A0004', 'University of the Philippines, Los Banos', 'Los Banos Laguna', 'Philippines'),
('A0005', 'Technological University of the Philippines', 'Manila', 'Philippines'),
('A0006', 'University of Santo Tomas', 'Manila', 'Philippines'),
('A0007', 'FEU - East Asia College', 'Morayta, Manila', 'Philippines'),
('A0008', 'Colegio de San Juan de Letran', 'Intramuros, Manila', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

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

CREATE TABLE IF NOT EXISTS `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `LOCATION_NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `LOCATION_NAME`) VALUES
(0, '  N/A'),
(1, 'Agusan Del Norte'),
(2, 'Agusan Del Sur');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

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
('O0000', '  N/A', '  N/A', ''),
('O0001', 'Philippines Society of Information Technology Educators', 'PSITE', 'Manila'),
('O0002', 'Institute of Electronics and Communications Engineers of the Philippines', 'IECEP', 'National Capital Region'),
('O0003', 'Philippine Computing Organization Alliance', 'PCOA', 'DLSU Manila'),
('O0004', 'Computing Society of the Philippines', 'CSP', 'Manila'),
('O0005', 'Association for Computing Machinery', 'ACM', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

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

CREATE TABLE IF NOT EXISTS `professional_acty` (
  `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEADER_TYPE` int(1) NOT NULL,
  `FID` int(5) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `professional_acty`
--

INSERT INTO `professional_acty` (`PA_ID`, `LEADER_TYPE`, `FID`, `DESIGNATION`, `ORG_ID`, `START_DATE`, `END_DATE`) VALUES
(1, 0, 97063932, 'Member', 'O0001', '2009-04-22', '2010-04-22'),
(2, 1, 97063932, 'Business Manager', 'O0002', '2010-04-22', '2010-10-30'),
(3, 1, 97000001, 'Secretary', 'O0005', '0008-01-12', '2009-01-01'),
(4, 0, 97000001, 'Member', 'O0002', '2006-01-01', '2007-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `professional_exp`
--

CREATE TABLE IF NOT EXISTS `professional_exp` (
  `PE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL,
  PRIMARY KEY (`PE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `professional_exp`
--

INSERT INTO `professional_exp` (`PE_ID`, `FID`, `LICENSURE_TITLE`, `YEAR_PASSED`, `LICENSE_NO`, `DATE_VALIDITY`) VALUES
(1, 97063932, 'n/a', NULL, NULL, NULL),
(3, 97000001, 'Teaching Exp', 2005, 1111110, '2013-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `professional_prac`
--

CREATE TABLE IF NOT EXISTS `professional_prac` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `INDUSTRY_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `professional_prac`
--

INSERT INTO `professional_prac` (`PP_ID`, `FID`, `WORK_NATURE`, `INSTITUTION_ID`, `INDUSTRY_ID`, `ORG_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Web Developer', 'A0001', 'I0000', 'O0000', 1, '2006-05-01', '2007-01-01'),
(2, 97063932, 'Consultant', 'A0000', 'I0000', 'O0001', 1, '2013-04-01', '2014-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

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
  `ISBN` varchar(25) DEFAULT NULL,
  `PATENT_NO` varchar(30) DEFAULT NULL,
  `PAGES` varchar(20) DEFAULT NULL,
  `PUBLICATION_TYPE` varchar(45) DEFAULT NULL,
  `OUTPUT_TYPE` varchar(45) DEFAULT NULL,
  `PAPER_TYPE` varchar(25) DEFAULT NULL,
  `PLACE_PUBLICATION` varchar(45) DEFAULT NULL,
  `DATE_PUBLICATION` date DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `ISSUING_COUNTRY` varchar(3) DEFAULT NULL,
  `EDITORS` varchar(100) DEFAULT NULL,
  `PUBLISHED_IN` varchar(100) DEFAULT NULL,
  `VENUE_PERFORMANCE` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PUB_CODE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL_ID`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`) VALUES
(1, 97063932, 'PT001', 'The Proposed Computer Engineering Curriculum for the YLFI - EAC: A Response Towards GLobal Competitiveness', NULL, NULL, NULL, 'J0000002', NULL, NULL, 1, 'ISSN 1908-6121', NULL, NULL, '1-12', 'ISI', NULL, NULL, NULL, '2008-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 97063932, 'PT002', 'PROTOTYPE PROTOTYPE PROTOTYPE ', NULL, NULL, NULL, 'J0000001', NULL, 'Franco', 1, 'Issue101', NULL, NULL, '1-5', NULL, NULL, NULL, NULL, '2014-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 97063932, 'PT003', 'Sample Patent 000001', NULL, NULL, NULL, '', NULL, 'Franco', NULL, NULL, NULL, 'Patent11111', NULL, NULL, NULL, NULL, NULL, '2014-02-03', NULL, NULL, 'PHL', NULL, NULL, NULL, NULL),
(4, 97063932, 'PT004', 'Sample Title of a Book ', NULL, NULL, NULL, '', 'Sample Publisher of a Book', NULL, NULL, 'Bookissue101', NULL, NULL, NULL, NULL, NULL, NULL, 'Manila', '2014-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 97063932, 'PT005', 'Sample title of a textbook', NULL, NULL, NULL, '', 'Sample Publisher of a text book', NULL, NULL, 'TB101', NULL, NULL, NULL, NULL, NULL, NULL, 'Manila', '2014-03-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 97063932, 'PT006', 'Sample Chapter in an Edited Book', 'Sample Work Title of an Edited Book', NULL, NULL, '', 'Sample Publisher of the Chapter', NULL, NULL, 'IssueChapter111', NULL, NULL, '14', NULL, NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, 'Editor1 Editor2', NULL, NULL, NULL),
(7, 97063932, 'PT007', 'Sample Conference Title', NULL, 'Sample of a conference proceedings', NULL, '', 'PublisherSample', NULL, NULL, NULL, NULL, NULL, '5-15', NULL, NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 97063932, 'PT008', 'Sample Short Stories', NULL, NULL, NULL, '', 'Publisher1111', NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, NULL, 'Manila', '2014-03-02', NULL, NULL, NULL, NULL, 'Cultural Center of the Philippines', NULL, NULL),
(9, 97063932, 'PT009', 'Sample Screen Play , Film, Play', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '2014-03-02', NULL, NULL, NULL, NULL, '', 'Cultural Center of the Philippines', NULL),
(10, 97063932, 'PT010', 'Dynamic Website for EFI', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, 'Working Paper', NULL, '', '2014-03-02', NULL, NULL, NULL, NULL, '', '', 'Web Development Project done in FEU-EAC for EFI'),
(11, 97063932, 'PT011', NULL, NULL, NULL, 'IBM DB2 Express C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-04-01', '2013-04-10', NULL, NULL, NULL, 'De La Salle University', NULL),
(12, 97063932, 'PT011', NULL, NULL, NULL, 'Building Forms using Oracle 10g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-04-01', '2013-04-12', NULL, NULL, NULL, 'Makati City', NULL),
(14, 97000001, 'PT002', 'Prototype Sample', NULL, NULL, NULL, 'J0000002', NULL, NULL, 0, 'ISN12345', NULL, NULL, '68', '', NULL, NULL, NULL, '2001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 97000001, 'PT003', 'Patent Sample Ulet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PS1010101', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL, 'PHL', NULL, NULL, NULL, NULL),
(16, 97000001, 'PT005', 'Book Bookan', NULL, NULL, NULL, NULL, 'Publisher Kuno', NULL, NULL, NULL, 'SIBN10101', NULL, NULL, NULL, NULL, NULL, 'Manila', '2001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 97000001, 'PT006', 'Twinkle Twinkle Little Star', 'Chapter Na Inedit Ko', NULL, NULL, NULL, 'Kinder Publisher', NULL, NULL, NULL, 'ISBN101', NULL, '', NULL, NULL, NULL, 'Manila', '2001-01-01', NULL, NULL, NULL, 'N/a', NULL, NULL, NULL),
(18, 97000001, 'PT007', 'Conference Samp', NULL, 'Proceeding 101', NULL, NULL, 'Kingston Publisher', NULL, NULL, NULL, NULL, NULL, '14', NULL, NULL, NULL, 'Manila', '2001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 97000001, 'PT008', 'Bahay Kubo', NULL, NULL, NULL, NULL, 'Mang Juan', NULL, NULL, NULL, NULL, NULL, '14-16', NULL, NULL, NULL, 'Manila', '2009-10-12', NULL, NULL, NULL, NULL, 'Bahay Ni Mang Juan', NULL, NULL),
(20, 97000001, 'PT009', 'Madonna Of The Rocks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2008-01-01', NULL, NULL, NULL, NULL, NULL, 'CCP', NULL),
(21, 97000001, 'PT010', 'Other Research 101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference Paper', NULL, '2004-01-01', NULL, NULL, NULL, NULL, NULL, NULL, 'Presented With Flyring Olors'),
(22, 97000001, 'PT011', NULL, NULL, NULL, 'Teching Methodology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2003-01-01', '2003-01-01', NULL, NULL, NULL, 'Makati City', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publication_type`
--

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
('PT009', 'Screen Play'),
('PT010', 'Other Research'),
('PT011', 'Seminars');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

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

CREATE TABLE IF NOT EXISTS `research_external` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FAGENCY_ID` varchar(5) NOT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` float(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `research_external`
--

INSERT INTO `research_external` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FAGENCY_ID`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Dynamic Web Site for Evangelion Foundation, Inc.', 'Funded', 'External', 'F0001', 'Php', 30000.25, '2012-06-01', '2013-04-17'),
(3, 97063932, 'Research Grant Sample', 'Grants', NULL, 'F0000', NULL, NULL, '2014-03-03', '2014-03-04'),
(7, 97000001, 'Sample Reseacrg', 'Funded', 'External', 'F0001', 'php', 1500.00, '2001-01-02', '2003-01-01'),
(8, 97000001, 'Sample Grants', 'Grants', '', 'F0001', '', 0.00, '2001-01-12', '2003-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `research_internal`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `research_internal`
--

INSERT INTO `research_internal` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FUNDING_UNIT`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97063932, 'Dynamic Web Site for Evangelion Foundation, Inc.', 'Funded', 'Internal', 'CCS', 'Php', '30000.25', '2012-06-01', '2013-04-17'),
(3, 97063932, 'Research Interanal Funded Sample', 'Funded', 'Internal', 'COS', 'PhP', '35555.55', '2014-03-03', '2014-03-04'),
(4, 97000001, 'Sample Internal Research', 'Funded', 'Internal', 'CCS', 'PhP', '10.00', '2001-01-01', '2002-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `special_training`
--

CREATE TABLE IF NOT EXISTS `special_training` (
  `ST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` varchar(5) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `INDUSTRY_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ST_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `special_training`
--

INSERT INTO `special_training` (`ST_ID`, `FID`, `TRAINING_TITLE`, `VENUE`, `START_DATE`, `END_DATE`, `INSTITUTION_ID`, `ORG_ID`, `INDUSTRY_ID`) VALUES
(1, 97063932, 'IBM DB2 Fundamental of Database', 'DLSU', '2012-12-22', '2013-01-05', 'A0001', 'O0000', 'I0000'),
(2, 97063932, 'Strengthen Your Research Profile', 'National University', '2010-03-01', '2010-03-01', 'A0000', 'O0001', 'I0000'),
(5, 97000001, 'Sample Training 101', 'Quezon City', '2013-02-01', '2013-02-01', 'A0004', 'O0000', 'I0000');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `teaching_experience`
--

INSERT INTO `teaching_experience` (`TE_ID`, `FID`, `EL_ID`, `INSTITUTION_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`, `POSITION_ID`) VALUES
(1, 97063932, 'EL003', 'A0005', 3, '2009-05-22', '2013-06-15', 'P0003'),
(2, 97063932, 'EL003', 'A0001', 1, '2013-01-06', '0000-00-00', 'P0003'),
(3, 97063932, 'EL003', 'A0007', 1, '2008-06-01', '2009-04-13', 'P0003'),
(5, 97000001, 'EL003', 'A0001', 1, '2013-06-01', '2014-06-01', 'P0003');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

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
