-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2014 at 01:33 PM
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
  `AS_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `AS_TITLE` varchar(50) NOT NULL,
  PRIMARY KEY (`AS_CODE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `area_spec`
--

INSERT INTO `area_spec` (`AS_CODE`, `AS_TITLE`) VALUES
(1, '  N/A'),
(2, 'Signal Processing'),
(3, 'Artificial Intelligence'),
(4, 'Digital Forensics'),
(5, 'Big Data and Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `AWARD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`AWARD_ID`),
  KEY `fk_awards_fid` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `community_service`
--

CREATE TABLE IF NOT EXISTS `community_service` (
  `CS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `UNIT_CODE` varchar(4) DEFAULT NULL,
  `DEPT_CODE` varchar(5) DEFAULT NULL,
  `COMMITTEE` varchar(45) DEFAULT NULL,
  `OTHERS` varchar(45) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `GOV_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CS_ID`),
  KEY `fk_fid` (`FID`),
  KEY `fk_cs_unitcode` (`UNIT_CODE`),
  KEY `fk_cs_deptcode` (`DEPT_CODE`),
  KEY `fk_cs_cstype` (`CS_TYPE`),
  KEY `fk_cs_instid` (`INSTITUTION_ID`),
  KEY `fk_cs_orgid` (`ORG_ID`),
  KEY `fk_cs_govid` (`GOV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
('BHS', 'Bahamas'),
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
  `DEGREE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEGREE_TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DEGREE_ID`, `DEGREE_TITLE`) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Computer Engineering'),
(4, 'Electronics and Communications Engineering'),
(6, 'Information Systems');
------------------------------------------------

--
-- Table structure for table `degree_earned`
--

CREATE TABLE IF NOT EXISTS `degree_earned` (
  `DE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `SPECIALIZATION` varchar(5) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `SO_NUM` varchar(25) NOT NULL,
  PRIMARY KEY (`DE_ID`),
  KEY `DE_ID` (`DE_ID`),
  KEY `fk_degree_fid` (`FID`),
  KEY `fk_degree_dlevelid` (`DLEVEL_ID`),
  KEY `fk_degree_loc` (`LOCATION_ID`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_earned_ibfk_2` (`INSTITUTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `degree_earned`
--

INSERT INTO `degree_earned` (`DE_ID`, `FID`, `DLEVEL_ID`, `DEGREE_ID`, `SPECIALIZATION`, `YEAR_OBTAINED`, `INSTITUTION_ID`, `LOCATION_ID`, `SO_NUM`) VALUES
(1, 97011112, 'DL00', 1, '1', 2005, 2, 1, 'SO1212121');
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
  `DEGREE_ID` int(11) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `DEGREE_STAGES` varchar(5) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`DP_ID`),
  KEY `fk_degreepursue_fid` (`FID`),
  KEY `fk_dp_dlevelid` (`DLEVEL_ID`),
  KEY `fk_dp_degstages` (`DEGREE_STAGES`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_pursue_ibfk_2` (`INSTITUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
('ST', 'Software Technology');

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
  `FMNAME` varchar(25) DEFAULT NULL,
  `UNIT_CODE` varchar(5) DEFAULT NULL,
  `DEPT` varchar(45) DEFAULT NULL,
  `CLASSIFICATION` varchar(25) DEFAULT NULL,
  `RANK` varchar(45) DEFAULT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `fk_fac_unitcode` (`UNIT_CODE`),
  KEY `fk_fac_dept` (`DEPT`),
  KEY `fk_fac_rank` (`RANK`),
  KEY `fk_fac_position` (`POSITION_ID`),
  KEY `fk_fac_account` (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FID`, `PASSWORD`, `USERNAME`, `ACCOUNT_ID`, `FFNAME`, `FLNAME`, `FMNAME`, `UNIT_CODE`, `DEPT`, `CLASSIFICATION`, `RANK`, `POSITION_ID`) VALUES
(1111, '5f4dcc3b5aa765d61d8327deb882cf99', 'staff.account', 'AC004', 'Account', 'Staff', 'S', 'CCS', 'CT', 'P0006', ' N/A', 'P0005'),
(20001, '5f4dcc3b5aa765d61d8327deb882cf99', 'admin.account', 'AC001', 'Administrator', 'System', 'A', 'CCS', '00', 'P0003', 'L1', 'P0000'),
(97011112, '5f4dcc3b5aa765d61d8327deb882cf99', 'sample2.faculty2', 'AC003', 'Faculty2', 'Sample2', 'G', 'CCS', 'IS', 'P0003', 'AP2', 'P0003');

-- --------------------------------------------------------

--
-- Table structure for table `funding_agency`
--

CREATE TABLE IF NOT EXISTS `funding_agency` (
  `FAGENCY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FAGENCY_NAME` varchar(70) NOT NULL,
  PRIMARY KEY (`FAGENCY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `funding_agency`
--

INSERT INTO `funding_agency` (`FAGENCY_ID`, `FAGENCY_NAME`) VALUES
(1, '  N/A'),
(2, 'Funding Agency 1'),
(3, 'Funding Agency 2');

-- --------------------------------------------------------

--
-- Table structure for table `gov_agencies`
--

CREATE TABLE IF NOT EXISTS `gov_agencies` (
  `GOV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AGENCY_NAME` varchar(100) DEFAULT NULL,
  `AGENCY_LOCATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GOV_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gov_agencies`
--

INSERT INTO `gov_agencies` (`GOV_ID`, `AGENCY_NAME`, `AGENCY_LOCATION`) VALUES
(1, '  N/A', '  N/A'),
(2, 'Social Security System', 'Manila'),
(3, 'Department of Social Welfare Development', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE IF NOT EXISTS `industry` (
  `INDUSTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INDUSTRY_NAME` varchar(45) NOT NULL,
  `IND_ACRONYM` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`INDUSTRY_ID`, `INDUSTRY_NAME`, `IND_ACRONYM`) VALUES
(1, '  N/A', '  N/A'),
(2, 'Digital Telecommunications Philippines', '(DIGITEL)'),
(3, 'Globe Telecomm', '(GLOBE)'),
(4, 'Integrated Microelectronics, Inc.', '(IMI)');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE IF NOT EXISTS `institution` (
  `INSTITUTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INSTITUTION_NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `LOCATION`, `COUNTRY`) VALUES
(1, '  N/A', '', 'PHL'),
(2, 'De La Salle University', '', 'PHL'),
(3, 'Ateneo De Manila University', '', 'PHL'),
(4, 'University of the Philippines, Diliman', '', 'PHL'),
(5, 'University of the Philippines, Los Banos', '', 'PHL'),
(6, 'Technological University of the Philippines', '', 'PHL'),
(7, 'University of Santo Tomas', '', 'PHL'),
(9, 'Colegio de San Juan de Letran', '', 'PHL'),
(10, 'FEU - East Asia College', '0', 'PHL');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
  `JOURNAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNAL_TITLE` varchar(100) NOT NULL,
  `JOURNAL_TYPE` varchar(35) NOT NULL,
  `JOURNAL_PUBLICATION` varchar(35) NOT NULL,
  PRIMARY KEY (`JOURNAL_ID`)
<<<<<<< HEAD
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;
=======
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`JOURNAL_ID`, `JOURNAL_TITLE`, `JOURNAL_TYPE`, `JOURNAL_PUBLICATION`) VALUES
(1, '  N/A', 'N/A', 'N/A'),
(2, 'IEEE Transactions on Affective Computing', 'Trade Journal', 'International'),
(3, 'The CET Review', 'Academic Journal', 'Local'),
(4, 'The Journal of DLSU-CCS', 'Academic', 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `journal_publication`
--

CREATE TABLE IF NOT EXISTS `journal_publication` (
  `JOURNALPUB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNALPUB_TYPE` varchar(45) NOT NULL,
  PRIMARY KEY (`JOURNALPUB_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `journal_publication`
--

INSERT INTO `journal_publication` (`JOURNALPUB_ID`, `JOURNALPUB_TYPE`) VALUES
(1, '  N/A'),
(2, 'ISI'),
(4, 'Scopus'),
(5, 'Abstracted And Refereed');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_NAME` varchar(45) NOT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;
--
-- Dumping data for table `location`
--
INSERT INTO `location` (`LOCATION_ID`, `LOCATION_NAME`, `REGION`) VALUES
(1, '  N/A', NULL),
(2, 'Caloocan', 'National Capital Region (NCR)'),
(3, 'Abra', 'Cordillera Administrative Region (CAR)'),
(5, 'Dagupan', 'Ilocos Region (Region I)');
-- ---------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `ORG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_ACRONYM` varchar(25) DEFAULT NULL,
  `ORG_LOCATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`ORG_ID`, `ORG_NAME`, `ORG_ACRONYM`, `ORG_LOCATION`) VALUES
(1, '  N/A', '  N/A', ''),
(2, 'Philippines Society of Information Technology Educators', 'PSITE', 'Manila'),
(3, 'Institute of Electronics and Communications Engineers of the Philippines', 'IECEP', 'National Capital Region'),
(4, 'Philippine Computing Organization Alliance', 'PCOA', 'DLSU Manila'),
(5, 'Computing Society of the Philippines', 'CSP', 'Manila'),
(6, 'Association for Computing Machinery', 'ACM', 'Manila');

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
('P0005', 'Academic Staff'),
('P0006', 'Academic Service Faculty'),
('PPPPP', '  N/A');
-- --------------------------------------------------------

--
-- Table structure for table `professional_acty`
--

CREATE TABLE IF NOT EXISTS `professional_acty` (
  `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEADER_TYPE` int(1) NOT NULL,
  `FID` int(8) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PA_ID`),
  KEY `fk_profacty_fid` (`FID`),
  KEY `professional_acty_ibfk_1` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `professional_exp`
--

CREATE TABLE IF NOT EXISTS `professional_exp` (
  `PE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL,
  PRIMARY KEY (`PE_ID`),
  KEY `fk_profexp_fid` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `professional_prac`
--

CREATE TABLE IF NOT EXISTS `professional_prac` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `INDUSTRY_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PP_ID`),
  KEY `fk_profprac_fid` (`FID`),
  KEY `professional_prac_ibfk_1` (`INSTITUTION_ID`),
  KEY `INDUSTRY_ID` (`INDUSTRY_ID`),
  KEY `ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `PUB_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `PUB_TYPE` varchar(5) DEFAULT NULL,
  `PAPER_TITLE` varchar(250) DEFAULT NULL,
  `WORK_TITLE` varchar(100) DEFAULT NULL,
  `CONF_TITLE` varchar(100) DEFAULT NULL,
  `SEMINAR_TITLE` varchar(100) DEFAULT NULL,
  `JOURNAL_ID` int(11) DEFAULT NULL,
  `PUBLISHER` varchar(100) DEFAULT NULL,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `VOLUME_NO` int(5) DEFAULT NULL,
  `ISSUE_NO` varchar(25) DEFAULT NULL,
  `ISBN` varchar(25) DEFAULT NULL,
  `PATENT_NO` varchar(30) DEFAULT NULL,
  `PAGES` varchar(20) DEFAULT NULL,
  `PUBLICATION_TYPE` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`PUB_CODE`),
  KEY `fk_publication_fid` (`FID`),
  KEY `fk_pub_pubtype` (`PUB_TYPE`),
  KEY `fk_pub_country` (`ISSUING_COUNTRY`),
  KEY `fk_pub_journals` (`JOURNAL_ID`),
  KEY `fk_journalpub_type` (`PUBLICATION_TYPE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL_ID`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`) VALUES
(1, 97011112, 'PT001', 'Development Of Web-Base FIS', NULL, NULL, NULL, 4, NULL, NULL, 1, 'ISN1111', NULL, NULL, '4-7', 5, NULL, NULL, NULL, '2008-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 97011112, 'PT001', 'Development Of FIS', NULL, NULL, NULL, 2, NULL, NULL, 1, 'ISN', NULL, NULL, '4', 5, NULL, NULL, NULL, '2006-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(' N/A', '  N/A'),
('AP1', 'Assistant Professor 1'),
('AP2', 'Assistant Professor 2'),
('AP3', 'Assistant Professor 3'),
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
  `FAGENCY_ID` int(11) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` float(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resext_fid` (`FID`),
  KEY `fk_resext_fagency` (`FAGENCY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `FUNDING_UNIT` varchar(20) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resint_fid` (`FID`),
  KEY `fk_resint_fundunit` (`FUNDING_UNIT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `INDUSTRY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ST_ID`),
  KEY `fk_spectrain_fid` (`FID`),
  KEY `fk_strain_instid` (`INSTITUTION_ID`),
  KEY `fk_strain_orgid` (`ORG_ID`),
  KEY `fk_strain_indid` (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--

CREATE TABLE IF NOT EXISTS `teaching_experience` (
  `TE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(5) DEFAULT NULL,
  `EL_ID` varchar(5) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `NO_YEARS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`TE_ID`),
  KEY `fk_teachexp_fid` (`FID`),
  KEY `fk_teachexp` (`EL_ID`),
  KEY `fk_teachexp_inst` (`INSTITUTION_ID`),
  KEY `fk_teachexp_pos` (`POSITION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
('COB', 'College Of Business'),
('COE', 'College of Engineering'),
('COL', 'College of Law'),
('COS', 'College of Science'),
('EVPERI', 'Executive Vice President for External Relations and Internallization'),
('N/A', '  N/A'),
('OPC', 'Office of the President and Chancellor'),
('SoE', 'School of Economics'),
('STA', 'Student Affairs'),
('VCLMAR', 'Office of the Vice Chancellor for Lasallian Mission and Alumni Relations'),
('VCR', 'Office of the Associate Vice Chancellor for Research');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `fk_awards_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `community_service`
--
ALTER TABLE `community_service`
  ADD CONSTRAINT `fk_cs_govid` FOREIGN KEY (`GOV_ID`) REFERENCES `gov_agencies` (`GOV_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_cstype` FOREIGN KEY (`CS_TYPE`) REFERENCES `cs_type` (`CSTYPE_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_deptcode` FOREIGN KEY (`DEPT_CODE`) REFERENCES `department` (`dept_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_instid` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_orgid` FOREIGN KEY (`ORG_ID`) REFERENCES `organization` (`ORG_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_unitcode` FOREIGN KEY (`UNIT_CODE`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `degree_earned`
--
ALTER TABLE `degree_earned`
  ADD CONSTRAINT `degree_earned_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `degree_earned_ibfk_1` FOREIGN KEY (`DEGREE_ID`) REFERENCES `degree` (`DEGREE_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degree_dlevelid` FOREIGN KEY (`DLEVEL_ID`) REFERENCES `degree_level` (`DLEVEL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degree_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degree_loc` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `degree_pursue`
--
ALTER TABLE `degree_pursue`
  ADD CONSTRAINT `degree_pursue_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `degree_pursue_ibfk_1` FOREIGN KEY (`DEGREE_ID`) REFERENCES `degree` (`DEGREE_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degreepursue_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dp_degstages` FOREIGN KEY (`DEGREE_STAGES`) REFERENCES `degree_stages` (`DS_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dp_dlevelid` FOREIGN KEY (`DLEVEL_ID`) REFERENCES `degree_level` (`DLEVEL_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fac_dept` FOREIGN KEY (`DEPT`) REFERENCES `department` (`dept_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fac_position` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fac_rank` FOREIGN KEY (`RANK`) REFERENCES `rank` (`rank_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fac_unitcode` FOREIGN KEY (`UNIT_CODE`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `professional_acty`
--
ALTER TABLE `professional_acty`
  ADD CONSTRAINT `professional_acty_ibfk_1` FOREIGN KEY (`ORG_ID`) REFERENCES `organization` (`ORG_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profacty_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_exp`
--
ALTER TABLE `professional_exp`
  ADD CONSTRAINT `fk_profexp_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professional_prac`
--
ALTER TABLE `professional_prac`
  ADD CONSTRAINT `professional_prac_ibfk_3` FOREIGN KEY (`ORG_ID`) REFERENCES `organization` (`ORG_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profprac_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professional_prac_ibfk_1` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `professional_prac_ibfk_2` FOREIGN KEY (`INDUSTRY_ID`) REFERENCES `industry` (`INDUSTRY_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
<<<<<<< HEAD
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`PUBLICATION_TYPE`) REFERENCES `journal_publication` (`JOURNALPUB_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_publication_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub_country` FOREIGN KEY (`ISSUING_COUNTRY`) REFERENCES `country` (`COUNTRY_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub_journals` FOREIGN KEY (`JOURNAL_ID`) REFERENCES `journals` (`JOURNAL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
=======
  ADD CONSTRAINT `fk_pub_journals` FOREIGN KEY (`JOURNAL_ID`) REFERENCES `journals` (`JOURNAL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_publication_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub_country` FOREIGN KEY (`ISSUING_COUNTRY`) REFERENCES `country` (`COUNTRY_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  ADD CONSTRAINT `fk_pub_pubtype` FOREIGN KEY (`PUB_TYPE`) REFERENCES `publication_type` (`PT_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `research_external`
--
ALTER TABLE `research_external`
  ADD CONSTRAINT `research_external_ibfk_1` FOREIGN KEY (`FAGENCY_ID`) REFERENCES `funding_agency` (`FAGENCY_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resext_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `research_internal`
--
ALTER TABLE `research_internal`
  ADD CONSTRAINT `research_internal_ibfk_1` FOREIGN KEY (`FUNDING_UNIT`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_resint_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `special_training`
--
ALTER TABLE `special_training`
  ADD CONSTRAINT `special_training_ibfk_3` FOREIGN KEY (`INDUSTRY_ID`) REFERENCES `industry` (`INDUSTRY_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_spectrain_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `special_training_ibfk_1` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `special_training_ibfk_2` FOREIGN KEY (`ORG_ID`) REFERENCES `organization` (`ORG_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `teaching_experience`
--
ALTER TABLE `teaching_experience`
  ADD CONSTRAINT `teaching_experience_ibfk_3` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teachexp_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teaching_experience_ibfk_1` FOREIGN KEY (`EL_ID`) REFERENCES `educ_level` (`EL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `teaching_experience_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
