-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2015 at 09:53 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` varchar(5) NOT NULL,
  `ACCOUNT_ROLE` varchar(25) NOT NULL,
  `READ_ONLY` int(10) unsigned NOT NULL DEFAULT '1',
  `ACCESS_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 = own, 1 = department, 2=alldepts, 3 = admin',
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `ACCOUNT_ID`, `ACCOUNT_ROLE`, `READ_ONLY`, `ACCESS_TYPE`) VALUES
(1, 'AC001', 'System Administrator', 0, 3),
(2, 'AC002', 'Manager', 0, 1),
(3, 'AC003', 'Faculty', 0, 0),
(4, 'AC004', 'Staff', 1, 2),
(5, 'AC005', 'QMO', 0, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`AWARD_ID`, `FID`, `AWARD_TITLE`, `AWARD_BODY`, `AWARD_DATE`) VALUES
(1, 97049336, 'Gawad Lagablab (Outstanding PSHS Alumnus)', 'PSHS National Alumni Association', '0000-00-00'),
(2, 97077763, 'TIP Outstanding Young Achiever Alumni', 'TIPQC Alumni Association', '0000-00-00'),
(3, 97077763, 'Second Best Non-Teaching Research', 'TIP', '0000-00-00'),
(4, 97077763, 'Best Non-Teaching Research', 'TIP', '0000-00-00'),
(5, 97088420, 'Outstanding Thesis Award - Silver Medal', 'College of Computer Studies', '0000-00-00'),
(6, 20123647, 'Honorable Mention', 'De La Salle University - STC', '0000-00-00'),
(7, 20123647, '3rd Honorable Mention', 'Jesus the Risen Savior School - De La Salle Supervised', '0000-00-00'),
(8, 97014753, '15 Years Service Awardee', 'De La Salle University', '0000-00-00'),
(9, 20143559, 'Volunteer of the Year (For Galing Mo Kid mentoring program)', 'Hands On Manila', '0000-00-00'),
(10, 20133707, 'Best Graduate Poster Presentation', 'IEEE UP Diliman', '0000-00-00'),
(11, 97088366, 'Living our Employer of Yours Values Awardee', 'Hewlett Packard', '0000-00-00'),
(12, 97088366, 'Honorable Mention', 'De Le Salle University', '0000-00-00'),
(13, 97088366, 'Student Leadership', 'De Le Salle University', '0000-00-00'),
(14, 97088366, 'Best Contribution to the Department', 'College of Computer Studies- De La Salle University', '0000-00-00'),
(15, 97049182, 'Gawad Lasalyano Awardee (as Faculty Adviser)', 'Office of Student L.I.F. E (DLSU)', '0000-00-00'),
(16, 97014818, 'Outstanding Monograph (Co-Author)', 'National Academy of Science and Technology', '0000-00-00'),
(17, 97028304, 'James Meany Awardee (75 visits)', 'PAASCU', '0000-00-00'),
(18, 97028304, 'URCO Research Awardee', 'URCO Research Recognition', '0000-00-00'),
(19, 97028304, 'James Meany Awardee (50 visits)', 'PAASCU', '0000-00-00'),
(20, 97028304, 'James Meany Awardee (25 visits)', 'PAASCU', '0000-00-00'),
(21, 97028304, 'James Meany Awardee (10 visits)', 'PAASCU', '0000-00-00'),
(22, 97028304, '20-Year Service Awardee', 'DLSU', '0000-00-00'),
(23, 97028304, '15-Year Service Awardee', 'DLSU', '0000-00-00'),
(24, 97028304, '10-Year Service Awardee', 'DLSU', '0000-00-00'),
(25, 97028304, 'Associate Professor Medal Awardee', 'DLSU', '0000-00-00'),
(26, 97028304, 'Most Outstanding Faculty Adviser Nominee', 'SPS Student Awards', '0000-00-00'),
(27, 97028304, 'Grand Prize Winner', '', '0000-00-00'),
(28, 97028304, 'Most Outstanding CCS Faculty Member Awardee', 'DLSU CCS', '0000-00-00'),
(29, 97028304, 'Most Outstanding Faculty Adviser Nominee', 'SPS Student Awards', '0000-00-00'),
(30, 97028304, 'Student Search for Outstanding Teachers Hall of Fame Awardee', 'DLSU SPS', '0000-00-00'),
(31, 97028304, 'Student Search for Outstanding Teachers Awardee', 'DLSU SPS', '0000-00-00'),
(32, 97028304, 'Outstanding Faculty of CCS Awardee', 'College of Education Week', '0000-00-00'),
(33, 97028304, 'Most Outstanding Faculty Adviser Awardee', 'SPS Student Awards', '0000-00-00'),
(34, 97028304, 'Student Search for Outstanding Teachers Awardee', 'DLSU SPS', '0000-00-00'),
(35, 97028304, '12 Terms Cumulative Service Awardee', 'Orient Program Recognition', '0000-00-00'),
(36, 97028304, 'Most Outstanding CCS Faculty Member Nominee', 'DLSU CCS', '0000-00-00'),
(37, 97028304, 'Student Search for Outstanding Teachers Awardee', 'DLSU SPS', '0000-00-00'),
(38, 97028304, 'Most Outstanding CCS Faculty Member Nominee', 'DLSU CCS', '0000-00-00'),
(39, 97028304, '3 Years Consecutive Service Awardee', 'Orient Program Recognition', '0000-00-00'),
(40, 97028304, 'URCO Research Awardee', 'URCO Research Recognition', '0000-00-00'),
(41, 97028304, 'Assistant Professor Medal Awardee', 'DLSU', '0000-00-00'),
(42, 97028304, 'Most Outstanding CCS Faculty Member Awardee', 'DLSU CCS', '0000-00-00'),
(43, 97028304, 'Student Awards for Teaching Excellence Nominee', 'DLSU SPS', '0000-00-00'),
(44, 97028304, 'Pagkamulat Awardee', 'Pagkamulat Recognition', '0000-00-00'),
(45, 97028304, 'Most Outstanding CCS Faculty Member Nominee', 'DLSU CCS', '0000-00-00'),
(46, 97015784, 'Outstanding Teacher of CCS', 'Council of Student Organizations of DLSU', '0000-00-00'),
(47, 97015784, 'Grand Winner', '', '0000-00-00'),
(48, 97015784, 'Outstanding Teacher of CCS', 'Council of Student Organizations of DLSU', '0000-00-00'),
(49, 97015784, 'Outstanding Teacher of CCS', 'Council of Student Organizations of DLSU', '0000-00-00'),
(50, 97015784, 'Outstanding LPEP Facilitator', 'DLSU SLIFE', '0000-00-00'),
(51, 20141718, 'BPI DOST Science Awardee (DLSU)', 'BPI-DOST', '0000-00-00'),
(52, 97015512, '20 Year Service Awardee', 'De La Salle University', '0000-00-00'),
(53, 97015512, 'IBM Faculty Award', 'IBM', '0000-00-00'),
(54, 97093017, '2nd Place - Seedstars Word Manila', 'Seedstars World', '0000-00-00'),
(55, 97093017, 'Winner - Best Research Optimization App', 'International Rice Research Institute', '0000-00-00'),
(56, 97093017, 'Winner - 5th Startup Weekend Manila', 'Smart', '0000-00-00'),
(57, 97093017, 'Best Blackberry App Award', 'PinoyBBDev', '0000-00-00'),
(58, 97093017, 'Special HTML5 Award', 'PinoyBBDev', '0000-00-00'),
(59, 97093017, 'Best Windows Phone App', 'Nokia Philippines', '0000-00-00'),
(60, 97042579, 'NAST-Du Pont Talent Search for Young Scientists 2007', 'National Academy of Science and Technology (NAST)', '0000-00-00'),
(61, 97042579, 'Student Search for Outstanding Teacher', 'DLSU-CSO', '0000-00-00'),
(62, 97064424, 'Best Research Optimization App', '', '0000-00-00'),
(63, 97064424, 'Finalist', '', '0000-00-00'),
(64, 97064424, 'Outstanding Student Creative Research or Sibol Award', '', '0000-00-00'),
(65, 97064424, 'Magna Cum Laude', 'De La Salle University - Manila', '0000-00-00'),
(66, 97064424, 'Special Thesis Citation for Outstanding Contribution in Filipino Language Processing and Computation', 'College of Computer Studies', '0000-00-00'),
(67, 97053856, '1st', '', '0000-00-00'),
(68, 97054038, 'Outstanding Book Award (Co-Author) ', 'National Academy of Science and Technology (NAST) ', '0000-00-00'),
(69, 97053848, 'Outstanding Teacher (Higher Education Category', '', '0000-00-00'),
(70, 97053848, 'University Fellow', 'De La Salle University', '0000-00-00'),
(71, 97053848, 'Integrity Award', 'DLSU Parents of University Students Organization', '0000-00-00'),
(72, 97053848, 'Gawad Br. Cecilio Hojilla', '', '0000-00-00'),
(73, 20141009, '1st place', '', '0000-00-00'),
(74, 97054097, '20th year service awardee', 'De La Salle University', '0000-00-00'),
(75, 97054097, '15th year service awardee', 'De La Salle University', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `community_service`
--

CREATE TABLE IF NOT EXISTS `community_service` (
  `CS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `CS_TYPE` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `UNIT_CODE` varchar(20) DEFAULT NULL,
  `DEPT_CODE` varchar(15) DEFAULT NULL,
  `COMMITTEE` varchar(45) DEFAULT NULL,
  `OTHERS` varchar(45) DEFAULT NULL,
  `PROJECT_SITE` varchar(100) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  `ORG_NAME` varchar(45) DEFAULT NULL,
  `GOV_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CS_ID`),
  KEY `fk_fid` (`FID`),
  KEY `fk_cs_unitcode` (`UNIT_CODE`),
  KEY `fk_cs_deptcode` (`DEPT_CODE`),
  KEY `fk_cs_cstype` (`CS_TYPE`),
  KEY `fk_cs_instid` (`INSTITUTION`),
  KEY `fk_cs_orgid` (`ORG_NAME`),
  KEY `fk_cs_govid` (`GOV_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=428 ;

--
-- Dumping data for table `community_service`
--

INSERT INTO `community_service` (`CS_ID`, `FID`, `CS_TYPE`, `DESCRIPTION`, `UNIT_CODE`, `DEPT_CODE`, `COMMITTEE`, `OTHERS`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `INSTITUTION`, `ORG_NAME`, `GOV_NAME`) VALUES
(1, 20133413, 'CS001', 'Technical Lead for URCO RIMS Project', 'N/A', ' N/A', 'DLSU CEC', 'none', 'none', '0000-00-00', '0000-00-00', 'none', 'none', 'None'),
(2, 97014788, 'CS004', 'Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(3, 97014788, 'CS004', 'Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(4, 97014788, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(5, 97014788, 'CS004', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(6, 97049336, 'CS004', 'Membership', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(7, 97049344, 'CS004', 'Participant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(8, 97077763, 'CS004', 'Scholarship Program for graduating students of TIP Quezon City', 'N/A', ' N/A', '', '', 'TIP Quezon City', '0000-00-00', '0000-00-00', '', 'Estudyante ni Engr. Alexie E. Ballon', ''),
(9, 97033235, 'CS001', 'Presenter for Specialization Talk for the Software Technology Department', 'N/A', ' N/A', 'CCS-ST', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(10, 97033235, 'CS001', 'Emcee and Facilitator for the College Pre-Confirmation', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(11, 97033235, 'CS001', 'Outreach/Fundraiser: Green Idol-College Representative for Variety Show', 'N/A', ' N/A', 'DLSU-CAO', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(12, 97033235, 'CS001', 'Training: Compiler Design', 'N/A', ' N/A', 'De La Salle Ozamiz City', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(13, 97033235, 'CS001', 'Trainer and Speaker for Advocacy for Automated Elections Trustworthiness during the iVote Roadshow', 'N/A', ' N/A', 'LJPC and  LSVP', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(14, 97033235, 'CS001', 'Trainer on International Competition Program Committee', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(15, 97033235, 'CS001', 'Director', 'N/A', ' N/A', 'Consulting and Education Center (CEC)', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(16, 97033235, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(17, 97033235, 'CS001', 'Created the Automated Elections for the University Student Government (with my Student groups/Thesis', 'N/A', ' N/A', 'DLSU - USG', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(18, 97033235, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(19, 97033235, 'CS004', 'Project Leader on ICT Management', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(20, 97033235, 'CS001', 'Specialization talk', 'N/A', ' N/A', 'DLSP', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(21, 97033235, 'CS004', 'Participated in Conferences', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(22, 97033235, 'CS004', 'Participated in Conferences', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(23, 97033235, 'CS004', 'Presenter and Invited Speaker on Natural Language Processing during the SMACS (4th Symposium on Math', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2008', 'Computing Society of the Philippines', ''),
(24, 97033235, 'CS004', 'Participated in National Natural Language Research Symposium', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2013', 'NLP Group in CSP', ''),
(25, 97033235, 'CS003', 'Technical Consultant to the Modernization Program of COMELEC', 'N/A', ' N/A', '', '', 'COMELEC Manila', '0000-00-00', '0000-00-00', '2004', '', 'COMELEC'),
(26, 97033235, 'CS003', 'Technical Consultant to the Phase 2 (Automated Counting and Canvassing Project) of the Modernization', 'N/A', ' N/A', '', '', 'COMELEC Manila', '0000-00-00', '0000-00-00', '2008', '', 'COMELEC'),
(27, 97033235, 'CS004', 'Member/Panel ', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(28, 97033235, 'CS003', 'Participant and emcee in Workshops for Collaboration for the Philippine Corpus', 'N/A', ' N/A', '', '', 'NCCA Intramuros Manila', '0000-00-00', '0000-00-00', '2007', '', 'KOMISYON SA WIKANG FILIPINO and National Comm'),
(29, 97033235, 'CS003', 'Project on eLegislation project which will be piloted with the Senate''s blue Ribbon Committee', 'N/A', ' N/A', '', '', 'Philippine Senate', '0000-00-00', '0000-00-00', '', '', ''),
(30, 97033235, 'CS004', 'Lecturer', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(31, 97033235, 'CS004', 'Programt coordinator and administration', 'N/A', ' N/A', '', '', 'gCIO Program', '0000-00-00', '0000-00-00', '2012', '', 'Government CIO Formal Training Program'),
(32, 97033235, 'CS003', 'IT Strategic Plan (Bureaucracy-wide)', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(33, 97033235, 'CS003', 'Content Developer and Management of gCIO Training Modules', 'N/A', ' N/A', '', '', 'Metro Manila', '0000-00-00', '0000-00-00', 'present', '', 'ideacorp (NGO) and Career Executive Service B'),
(34, 97033235, 'CS001', 'Participant on Collaborative Workshops/Meetings on the integration of the Filipino sign Language in ', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', '2008', 'Philippine Federation for the Deaf', ''),
(35, 97033235, 'CS004', 'Presented during the Tech Bootcamp (Technopreneurship)', 'N/A', ' N/A', '', '', 'AIM Makati', '0000-00-00', '0000-00-00', '2008', 'Ayala Foundation', ''),
(36, 97033235, 'CS004', 'Presented the application of Natural Language Processing Techniques to Legislative Documents', 'N/A', ' N/A', '', '', 'Cebu', '0000-00-00', '0000-00-00', '2008', 'ideacorp (NGO)', ''),
(37, 97033235, 'CS004', 'Participated during the tour of the fireflies', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2008', '2012', 'Firefly Brigade'),
(38, 97033235, 'CS003', 'Sponsored and served the seminars provided by the community: Marriage Encounter and Life in the Spir', 'N/A', ' N/A', '', '', 'Cavite and Metro Manila', '0000-00-00', '0000-00-00', '2011', 'Pag-ibig sa Diyos Catholic Community', 'none'),
(39, 97033235, 'CS004', 'Assisted in the production and communcation of the forum', 'N/A', ' N/A', '', '', 'Metro Manila', '0000-00-00', '0000-00-00', '2012', 'Landmark Education', 'none'),
(40, 97033235, 'CS003', 'Co-convener', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2009', '2012', 'Automated Election System Watch (AES Watch)'),
(41, 97033235, 'CS003', 'Content Developer and Management of gCIO Training Modules', 'N/A', ' N/A', '', '', 'Metro Manila', '0000-00-00', '0000-00-00', '2012', 'ideacorp (NGO) and Career Executive Service B', ''),
(42, 97033235, 'CS003', 'Board Director and PRO', 'N/A', ' N/A', '', '', 'Metro Manila', '0000-00-00', '0000-00-00', '2015', 'Philippine Science High School Alumni Associa', 'none'),
(43, 97055743, 'CS001', 'Review/ Evalation of Research papers and proposals', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(44, 97055743, 'CS004', 'Habitat for Humanity', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(45, 97055743, 'CS004', 'Associate Editor', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(46, 97055743, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2009', 'EGI homeowners association', 'none'),
(47, 97055743, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2007', 'Computing Society of the Philippines', 'none'),
(48, 97090638, 'CS001', 'Vice chair.  Assists the department Chair in her tasks particularly student concerns and preparation', 'N/A', ' N/A', 'Software Technology Dept', '', '', '0000-00-00', '0000-00-00', '2015', 'none', ''),
(49, 97090638, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(50, 97090638, 'CS001', 'Committee Head Manages the team assigned to design the curriculum for the BS Entertainment and Multi', 'N/A', ' N/A', 'BS EMC program curriculum review committee', '', '', '0000-00-00', '0000-00-00', 'present', 'none', ''),
(51, 97090638, 'CS001', 'Research director. Coordinates the activities of the different research laboratories of the College ', 'N/A', ' N/A', '', '', 'Advanced Research Institute for Informatics', '0000-00-00', '0000-00-00', '', '', ''),
(52, 97090638, 'CS001', 'Facilitating FORMDEV class', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(53, 97090638, 'CS001', 'Participation in fund raising activity for faculty out-reach activities', 'N/A', ' N/A', 'PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(54, 97090638, 'CS001', 'Participation in Medical/ Dental Mission to Barangay 46', 'N/A', ' N/A', 'PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(55, 97090638, 'CS001', 'Participation in outreach activity for children of Little Angels Home', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(56, 97090638, 'CS001', 'Participation in fund raising activity for faculty out-reach activities', 'N/A', ' N/A', 'PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(57, 97090638, 'CS004', 'Music Ministry', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2013', 'Suita Church and Youth Group', ''),
(58, 97090638, 'CS004', 'ASEAN Quest game designer and tester', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '7-Dec', 'ASEAN Foundation', ''),
(59, 97090638, 'CS004', 'Participation in Medical/ Dental mission in Gawad Kalinga Community (GK Mission)', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'September 29 2007', 'St. James the Great Singles Apostolate', ''),
(60, 97090638, 'CS004', 'Technical training for Manila Science High School and City College of Manila Teachers', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'July 9 2005', 'Microsoft Philippines', ''),
(61, 97088420, 'CS004', 'Cancer Warriors Foundation Koinonia - Fellowship', 'N/A', ' N/A', '', '', 'Ellinwood Malate Church', '0000-00-00', '0000-00-00', 'September 01 2012', 'CWF - Philippines', ''),
(62, 97031925, 'CS001', 'External Affair Director', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(63, 97031925, 'CS001', 'Member / University Mission Committee', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(64, 97031925, 'CS001', 'Research Director', 'N/A', ' N/A', 'ADRIC', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(65, 97031925, 'CS001', 'Cluster Head / BS Computer Science program / Manages the core programming cluster that handles the i', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(66, 97031925, 'CS001', 'Organizing Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(67, 97031925, 'CS001', 'Program Committee Member/Reviewer of the 10th National Natural Language Processing Research Symposum', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', 'February 22 2014', 'Computing Society of the Philippines', ''),
(68, 97031925, 'CS001', 'Organizing Committee Co-Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(69, 97031925, 'CS004', 'Program Committee Member/Reviewer of the 23rd International Conference on Computational Linguistics ', 'N/A', ' N/A', '', '', 'Beijing', '0000-00-00', '0000-00-00', '', '', ''),
(70, 97031925, 'CS004', 'Speaker / Packaging and Publishing IT Research', 'N/A', ' N/A', '', '', 'Angeles City', '0000-00-00', '0000-00-00', '', '', ''),
(71, 97031925, 'CS004', 'Local Organizing Committee Co-Chair of the 22nd Pacific Asia Conference on Computation', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(72, 97031925, 'CS003', 'Developing a Web-Based eParticipation System for the Senate Blue Ribbon Committee', 'N/A', ' N/A', '', '', 'DLSU and Senate BROOM', '0000-00-00', '0000-00-00', '12-May', '', 'Senate BROOM'),
(73, 97031925, 'CS003', 'Speaker / Pambansang Edukasyong Pampanitikan', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', 'October 5 2014', 'Linangan sa Imahen', ''),
(74, 97031925, 'CS003', 'One of the projects of the multi-country PaneGov Initiative ', 'N/A', ' N/A', '', '', 'Philippines', '0000-00-00', '0000-00-00', '12-May', 'International Development Research Centre (ID', ''),
(75, 97020087, 'CS001', 'Academic Area Coordinator', 'N/A', ' N/A', 'Net Centric Computing Academic Area', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(76, 97020087, 'CS001', 'Committee Member', 'N/A', ' N/A', 'PAASCU Laboratory Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(77, 97020087, 'CS001', 'Organizer', 'N/A', ' N/A', 'MOBIGAME Local Competition Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(78, 97020087, 'CS001', 'Project Coordinator and Mentor to competing teams', 'N/A', ' N/A', 'Microsoft Innovation Lab ', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(79, 97020087, 'CS001', 'Mentor', 'N/A', ' N/A', 'Globe Challenge Competition Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(80, 97020087, 'CS004', 'Member', 'N/A', ' N/A', 'Nokia', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(81, 97020087, 'CS004', 'Member', 'N/A', ' N/A', 'THINC', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(82, 97020087, 'CS004', 'Consultant', 'N/A', ' N/A', 'Modern Conduct of Schools', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(83, 97020087, 'CS004', 'Reactor in Panel Discussion on Information Security', 'N/A', ' N/A', '', '', 'Lyceum', '0000-00-00', '0000-00-00', 'August 31 2012', 'Information Systems Security Association', 'none'),
(84, 97020087, 'CS003', 'Consultant', 'N/A', ' N/A', '', '', 'Online Information System and Crime Mapping System', '0000-00-00', '0000-00-00', '2009', '', 'Manila Police District'),
(85, 97020087, 'CS003', 'Consultant', 'N/A', ' N/A', '', '', 'Online Information System', '0000-00-00', '0000-00-00', '2005', '', 'Commission on Higher Education'),
(86, 97020087, 'CS003', 'Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2006', '', 'Online Faculty Development Information System'),
(87, 97020087, 'CS003', 'Project Manager', 'N/A', ' N/A', '', '', 'Open Source Mobile Application Distribution Service on  a Social Network', '0000-00-00', '0000-00-00', '2010', '', 'DOST-PCASTRD'),
(88, 97020087, 'CS004', 'Consultant', 'N/A', ' N/A', '', '', 'Online Project Requirements and Skills matching system', '0000-00-00', '0000-00-00', '2005', 'Transparency and Accountability Network', ''),
(89, 97020087, 'CS004', 'Author', 'N/A', ' N/A', '', '', 'Course Materials for the OpenSocial Platform', '0000-00-00', '0000-00-00', '2009', 'Google', ''),
(90, 97020087, 'CS004', 'Mentor', 'N/A', ' N/A', '', '', 'Globe Incubation Center', '0000-00-00', '0000-00-00', '2009', 'Globe', ''),
(91, 97042498, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(92, 97042498, 'CS001', 'CCS Representative for NLCC - Math in the Modern World', 'N/A', ' N/A', 'NLCC', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(93, 97042498, 'CS001', 'Handles thesis-related activities', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(94, 97088897, 'CS001', 'CRC Department Representative', 'N/A', ' N/A', 'College Research Council', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(95, 97088897, 'CS001', 'CT Thesis Coordinator', 'N/A', ' N/A', 'Computer Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(96, 97088897, 'CS001', 'CT Major''s Forum Organizing Committee Head 2013 and 2014', 'N/A', ' N/A', 'Organizing Committeen', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(97, 97088897, 'CS001', 'M2VIP 2015 Conference Secretariat Head', 'N/A', ' N/A', 'M2VIP Organizing committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(98, 97088897, 'CS001', 'Representative', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(99, 97031909, 'CS001', 'PAASCU Physical Plant Committee Member', 'N/A', ' N/A', 'PAASCU - Physical Plant', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(100, 97031909, 'CS001', 'PAASCU Physical Plant Committee Member', 'N/A', ' N/A', 'PAASCU - Physical Plant', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(101, 97031909, 'CS001', 'Technical Support Group Head', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', 'none', '', ''),
(102, 97031909, 'CS001', 'Vice-President', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2015', 'Cisco Core Council of the Philippines', 'none'),
(103, 97014753, 'CS001', 'OBE BSIT Program Head / Handles overall program revision', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(104, 97014753, 'CS001', 'Department Chair / Leads the strategic direction', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(105, 97014753, 'CS001', 'Department Vice Chair / Programs the faculty load and schedule of courses every term', 'N/A', ' N/A', 'Computer Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(106, 97014753, 'CS001', 'Quality Assurance Head / Manages overall quality of Networking Academy Program delivered at DLSU CCS', 'N/A', ' N/A', 'Computer Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(107, 97014753, 'CS004', 'Reviewer for Journal', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2012', 'International Journal of Pattern Recognition ', ''),
(108, 97014753, 'CS004', 'Reviewer for Journal', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2011', 'Philippine Computing Journal (PCJ)', ''),
(109, 97014753, 'CS004', 'Reviewer for Conference', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', 'Pacific Rim International Conference on Artif', ''),
(110, 97014753, 'CS004', 'Reviewer for Conference', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', 'Workshop on Computation: Theory and Practice ', ''),
(111, 97014753, 'CS004', 'Reviewer for Conference', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', 'International Workshop on Empathic Computing ', ''),
(112, 97014753, 'CS004', 'Reviewer for Conference', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2012', 'Workshop on Context-Based Affect Recognition ', ''),
(113, 97045179, 'CS004', 'Building of Houses and School buildings', 'N/A', ' N/A', '', '', 'Multinational', '0000-00-00', '0000-00-00', '0', 'PAREF Woodrose-Gawad Kalinga', ''),
(114, 97093157, 'CS001', 'Faculty Facilitator', 'N/A', ' N/A', 'FORMDEV', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(115, 97093157, 'CS002', 'Web Development', 'N/A', ' N/A', '', '', 'JMOMPC Website', '0000-00-00', '0000-00-00', '0', 'Freelance', ''),
(116, 97093157, 'CS002', 'Web Development', 'N/A', ' N/A', '', '', 'Diggermac Major Mynah Website', '0000-00-00', '0000-00-00', '0', 'Freelance', ''),
(117, 97093157, 'CS002', 'Web Development', 'N/A', ' N/A', '', '', 'Persistent Organic Pollutants Inventory', '0000-00-00', '0000-00-00', '0', '', 'UNIDO - United Nations Industrial Development'),
(118, 97093157, 'CS002', 'Web Development', 'N/A', ' N/A', '', '', 'Persistent Organic Pollutants Inventory', '0000-00-00', '0000-00-00', '0', '', 'AECOMS'),
(119, 20123256, 'CS001', 'Adviser', 'N/A', ' N/A', 'College Information Technology Society', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(120, 20123256, 'CS001', 'Coordinator', 'N/A', ' N/A', 'College Office of Student Discipline', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(121, 20123256, 'CS001', 'Auditor', 'N/A', ' N/A', 'College Faculty Association', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(122, 20123256, 'CS001', 'Adviser', 'N/A', ' N/A', 'Animo Teatro', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(123, 20123256, 'CS001', 'Organizer / Coach', 'N/A', ' N/A', 'De La Salle Canlubang Quiz Contestants Pool', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(124, 20123256, 'CS001', 'Adviser', 'N/A', ' N/A', 'Digital Arts Club', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(125, 20123256, 'CS001', 'Organizer', 'N/A', ' N/A', 'De La Salle Canlubang Math Championship 2006', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(126, 20123256, 'CS001', 'Prefect of Discipline', 'N/A', ' N/A', 'De La Salle Canlubang Residence Hall', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(127, 20123256, 'CS001', 'Adviser', 'N/A', ' N/A', 'Young Educators Society', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(128, 20123256, 'CS001', 'Ambassador', 'N/A', ' N/A', 'Microsoft Faculty and Student Ambassador Prog', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(129, 20123256, 'CS002', 'Vice President Membership Director', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2009', 'Mensa Philippines', ''),
(130, 20123256, 'CS002', 'Board Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2009', 'Mensa Philippines', ''),
(131, 20123256, 'CS004', 'Resource Person / Official', 'N/A', ' N/A', '', '', 'Whiz of the South 2006', '0000-00-00', '0000-00-00', '2006', '', ''),
(132, 20123256, 'CS002', 'Deputy Testing Director', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2008', 'Mensa', ''),
(133, 97063932, 'CS001', 'Member of the New La Sallian Core Curriculum - Science', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(134, 97063932, 'CS001', 'Development of the Web-Based Faculty Information System for CCS', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(135, 97063932, 'CS001', 'Academic Leaders Development Program (ALDP) 1', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(136, 97063932, 'CS001', 'Academic Leaders Development Program (ALDP) 2', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(137, 97063932, 'CS001', 'Academic Leaders Development Program (ALDP) 3', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(138, 97063932, 'CS001', 'Academic Leaders Development Program (ALDP) 4', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(139, 97063932, 'CS001', 'Conference Committee for the M2VIP Conference 2014', 'N/A', ' N/A', 'CCS/CT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(140, 97063932, 'CS001', 'CT Thesis Coordinator', 'N/A', ' N/A', 'CT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(141, 97063932, 'CS001', 'Microsoft Dreamspark Coordinator', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', 'none', '', ''),
(142, 97063932, 'CS002', 'Tree Planting in Quezon', 'N/A', ' N/A', '', '', 'Mountain in Rizal Quezon ', '0000-00-00', '0000-00-00', 'October 01 2011', 'FEU - East Asia College', ''),
(143, 97063932, 'CS002', 'Instructor for the Out of School Youth in teaching Basic Computer Literacy', 'N/A', ' N/A', '', '', 'FEU-EAC Computer Laboratory', '0000-00-00', '0000-00-00', 'May 01 2011', 'FEU - East Asia College', ''),
(144, 97063932, 'CS002', 'Instructor for the High School Teacher in teaching the Basic Animation in Macromedia Flash MX', 'N/A', ' N/A', '', '', 'EAC Computer Laboratory', '0000-00-00', '0000-00-00', 'March 01 2008', 'Emilio Aguinaldo College', ''),
(145, 97063932, 'CS002', 'Instructor for the High School Student in teaching the Basic Animation in Macromedia Flash MX', 'N/A', ' N/A', '', '', 'EAC Computer Laboratory', '0000-00-00', '0000-00-00', 'March 01 2008', 'Emilio Aguinaldo College', ''),
(146, 20123590, 'CS003', 'Resource Person', 'N/A', ' N/A', '', '', 'Basic Android App Development Workshop', '0000-00-00', '0000-00-00', 'May 29 2014', '', 'Provincial Government of Laguna and DepEd Lag'),
(147, 97091219, 'CS002', 'Director', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(148, 97091219, 'CS002', 'Director', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(149, 97091219, 'CS002', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(150, 97091219, 'CS002', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(151, 97091219, 'CS001', 'Lasallian Personal Effectiveness Program (LPEP) Facilitator', 'N/A', ' N/A', 'DLSU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(152, 97091219, 'CS001', 'Formdev Facilitator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(153, 97091219, 'CS001', 'Computer Technology Thesis Coordinator', 'N/A', ' N/A', 'Computer Technology Dept.', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(154, 97091219, 'CS001', 'Lasallian Leadership Formation Program  Batch 2 (LLFP2) delegate', 'N/A', ' N/A', 'De La Salle Philippines', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(155, 97091219, 'CS001', 'Social Action Committee Coordinator', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(156, 97091219, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(157, 97091219, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(158, 97091219, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(159, 97091219, 'CS001', 'Development of website and computational tools for tracking the development of the Philippine nation', 'N/A', ' N/A', '', '', 'Bantay-Wika Project', '0000-00-00', '0000-00-00', '2011', '', 'UP - Sentro ng Wikang Filipino'),
(160, 97091219, 'CS001', 'active member and unit head', 'N/A', ' N/A', '', '', 'Las Pinas Unit', '0000-00-00', '0000-00-00', '', '', ''),
(161, 20133707, 'CS001', 'Adviser', 'N/A', ' N/A', 'LEAP 2015', '', 'February 10 2015', '0000-00-00', '0000-00-00', '', '', ''),
(162, 20133707, 'CS002', 'Short Talk', 'N/A', ' N/A', '', '', 'University of the Philippines - Diliman', '0000-00-00', '0000-00-00', 'Sept 17 2015', 'Philippine Youth Congress in Information Tech', ''),
(163, 97020095, 'CS001', 'AUN writer', 'N/A', ' N/A', 'Software Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(164, 97020095, 'CS001', 'Thesis coordinator', 'N/A', ' N/A', 'Software Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(165, 97020095, 'CS001', 'Laboratory coordinator', 'N/A', ' N/A', 'Center for Language Technologies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(166, 97020095, 'CS001', 'CCS Pagkamulat Coordinator', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(167, 97020095, 'CS001', 'Organization Adviser to La Salle Computer Society', 'N/A', ' N/A', 'Council of Student Organizations', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(168, 97020095, 'CS001', 'Organization Adviser / Consultant to Peer Tutor’s Society', 'N/A', ' N/A', 'Office of the Vice Dean', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(169, 97020095, 'CS001', 'Department Chair', 'N/A', ' N/A', 'Software Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(170, 97020095, 'CS001', 'CRC Representative', 'N/A', ' N/A', 'Software Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(171, 97020095, 'CS001', 'PAASCU CCS Instruction Area Evaluation (Analysis) Committee', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(172, 97020095, 'CS001', 'Cluster Head for Programming', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(173, 97020095, 'CS003', 'Local Organizing Committee Member', 'N/A', ' N/A', '', '', 'Cebu', '0000-00-00', '0000-00-00', '2008', 'PACLIC 22', ''),
(174, 97020095, 'CS003', 'Project Manager', 'N/A', ' N/A', '', '', 'Hybrid Machine Translation System', '0000-00-00', '0000-00-00', '2009', '', 'DOST-PCASTRD'),
(175, 97020095, 'CS003', 'Consultant ', 'N/A', ' N/A', '', '', 'CHED', '0000-00-00', '0000-00-00', '2013', '', 'Technical Committee on Computer Science'),
(176, 97088366, 'CS003', 'Project Head- TESDA Technical Course Training for Public High School Students ', 'N/A', ' N/A', '', '', 'Ateneo De Manila University', '0000-00-00', '0000-00-00', 'April 28 2012', 'Inspire@HP/ Ateneo Center for Education', ''),
(177, 97088366, 'CS003', 'Project Head- ABCDevelopment Seminar', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(178, 97049182, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(179, 97049182, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(180, 97049182, 'CS001', 'Faculty Representative for Faculty Development Program Committee', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(181, 97049182, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(182, 97049182, 'CS001', 'Faculty Representative for Faculty Development Program Committee', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(183, 97053139, 'CS004', 'Member/Board Member/Secretary/Treasurer', 'N/A', ' N/A', '', '', 'Relief Goods/Binan (c/o PRC) & G2 School Supplies Donation/Don Jose Elementary School', '0000-00-00', '0000-00-00', '', '', ''),
(184, 97053139, 'CS004', 'Member/Board Member/Secretary/Treasurer', 'N/A', ' N/A', '', '', 'Relief Goods/Binan (c/o PRC) & G2 School Supplies Donation/Don Jose Elementary School', '0000-00-00', '0000-00-00', '', '', ''),
(185, 97053139, 'CS004', 'Member', 'N/A', ' N/A', '', '', 'Donation/Beth Myriam', '0000-00-00', '0000-00-00', 'present', 'True Life in God (TLIG)', ''),
(186, 97014818, 'CS001', 'Formulates plans for faculty trainings on instructional development', 'N/A', ' N/A', 'Faculty Training Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(187, 97014818, 'CS001', 'Chair', 'N/A', ' N/A', 'PAASCU Instructions Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(188, 97014818, 'CS004', 'Vice-President (Attends to organizational development activities)', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '11-Dec', 'Philippine eLearning Society', ''),
(189, 97014818, 'CS004', 'Member (Holds seminars', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(190, 97014818, 'CS004', 'Member (attends seminars', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(191, 97014818, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(192, 97014818, 'CS004', 'Committee Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(193, 97028304, 'CS001', 'Vice Dean', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(194, 97028304, 'CS001', 'Graduate Studies Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(195, 97028304, 'CS001', 'PAASCU Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(196, 97028304, 'CS001', 'Graduate Studies Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(197, 97028304, 'CS001', 'Green Idol', 'N/A', ' N/A', 'SPS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(198, 97028304, 'CS001', 'Green Idol', 'N/A', ' N/A', 'SPS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(199, 97028304, 'CS001', 'Green Idol', 'N/A', ' N/A', 'SPS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(200, 97028304, 'CS001', 'Green Idol', 'N/A', ' N/A', 'SPS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(201, 97028304, 'CS001', 'Green Idol', 'N/A', ' N/A', 'SPS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(202, 97028304, 'CS001', 'PAASCU Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(203, 97028304, 'CS001', 'Dean', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(204, 97028304, 'CS001', 'Acting Dean', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(205, 97028304, 'CS001', 'Vice Dean', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(206, 97028304, 'CS001', 'Vice Dean', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(207, 97028304, 'CS001', 'Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(208, 97028304, 'CS001', 'Acting Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(209, 97028304, 'CS001', 'Acting Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(210, 97028304, 'CS001', 'Acting Research Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(211, 97028304, 'CS001', 'Acting Library Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(212, 97028304, 'CS001', 'Library Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(213, 97028304, 'CS001', 'Publications Officer', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(214, 97028304, 'CS001', 'Editor in Chief', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(215, 97028304, 'CS001', 'Facilitator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(216, 97028304, 'CS001', 'Facilitator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(217, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Manila', '0000-00-00', '0000-00-00', '', 'ACM National/Regiona/International programmin', ''),
(218, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Naga', '0000-00-00', '0000-00-00', '', 'ACM National/Regiona/International programmin', ''),
(219, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Manila', '0000-00-00', '0000-00-00', '', 'ACM National/Regiona/International programmin', ''),
(220, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Cebu', '0000-00-00', '0000-00-00', '', 'ACM National Programming Competition', ''),
(221, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Canlubang', '0000-00-00', '0000-00-00', '', 'ACM National Programming Competition', ''),
(222, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Manila', '0000-00-00', '0000-00-00', '', 'ACM Regional/International programming compet', ''),
(223, 97028304, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'Manila', '0000-00-00', '0000-00-00', '', 'ACM Regional/International programming compet', ''),
(224, 97028304, 'CS004', 'CHED TPITE Joint Workshop on Finalization of COE/COD Instrument', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'June 01 2010', '', 'CHED TPITE'),
(225, 97028304, 'CS004', 'Open Office Org. and Computer Skills Training for Court of Appeal justices and Staff', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', '', 'USAID'),
(226, 97028304, 'CS003', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2004', '', 'DOST PCASTRD STCC Technical Pannel on Informa'),
(227, 97028304, 'CS003', 'Accreditor', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', 'PAASCU', ''),
(228, 97028304, 'CS003', 'PGH Christmas Outreach', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '12-Dec', 'PGH', ''),
(229, 97015784, 'CS001', 'Head  ', 'N/A', ' N/A', 'Faculty Training Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(230, 97015784, 'CS001', 'Vice-Chairperson', 'N/A', ' N/A', 'IT Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(231, 97015784, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', 'La Salle Computer Society', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(232, 97015784, 'CS001', 'Head of Secretariat', 'N/A', ' N/A', 'Touchpoint 2010', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(233, 97015784, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', 'Information Systems Organization', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(234, 97015784, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', 'La Salle Computer Society', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(235, 97015784, 'CS001', 'Head of Secretariat', 'N/A', ' N/A', 'Emerging Technologies for Philippines 2020', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(236, 97015784, 'CS001', 'Program Developer & Modules Writer', 'N/A', ' N/A', 'PERSEF Program', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(237, 97015784, 'CS001', 'Freshmen Coordinator', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(238, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'Southwestern University Coliseum', '0000-00-00', '0000-00-00', '', '', ''),
(239, 97015784, 'CS001', 'Seminar Facilitator & Speaker', 'N/A', ' N/A', '', '', 'Malagos Resort', '0000-00-00', '0000-00-00', '', '', ''),
(240, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'Sarrosa Hotel', '0000-00-00', '0000-00-00', '', '', ''),
(241, 97015784, 'CS001', 'Seminar Facilitator & Speaker', 'N/A', ' N/A', '', '', 'Centro Escolar University', '0000-00-00', '0000-00-00', 'November 26 2011', 'Mathematics Society of the Philippines NCR Ch', ''),
(242, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'University of Southern Mindanao', '0000-00-00', '0000-00-00', '', '', ''),
(243, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'Sitio Lucia Hotel', '0000-00-00', '0000-00-00', '', '', ''),
(244, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'Asia Pacific College', '0000-00-00', '0000-00-00', 'May 15 2009', 'Philippine Society of IT Educators NCR Chapte', ''),
(245, 97015784, 'CS001', 'Seminar Speaker', 'N/A', ' N/A', '', '', 'Technological Institute of the Philippines', '0000-00-00', '0000-00-00', 'March 13 2009', 'Philippine Society of IT Educators NCR Chapte', ''),
(246, 97015784, 'CS003', 'Speaker on Total Quality Management for Municipal Agriculturists', 'N/A', ' N/A', '', '', 'Iloilo Midtown Hotel', '0000-00-00', '0000-00-00', 'March 21 2015', '', 'DA Agricultural Training Institute Region 6'),
(247, 97015784, 'CS003', 'Speaker on Self-Management and Life Skills for Agricultural Extension Workers', 'N/A', ' N/A', '', '', 'ATI Training Cnetre', '0000-00-00', '0000-00-00', '', '', ''),
(248, 97015784, 'CS003', 'Speaker on Self-Management and Life Skills for Agricultural Extension Workers', 'N/A', ' N/A', '', '', 'General Santos City', '0000-00-00', '0000-00-00', 'October 27 2014', '', 'DA Agricultural Training Institute Region 12'),
(249, 97015784, 'CS003', 'Speaker for Total Quality Leadership and Teambuilding Seminar', 'N/A', ' N/A', '', '', 'Puerto Princesa', '0000-00-00', '0000-00-00', '', '', ''),
(250, 97015784, 'CS003', 'Speaker for Total Quality Service', 'N/A', ' N/A', '', '', 'Mandaluyong Division Office', '0000-00-00', '0000-00-00', 'April 19 2012', '', 'Department of Education Staff - Mandaluyong D'),
(251, 97015784, 'CS003', 'Speaker for Customer Relations Seminar for Employees & Cooperative Members', 'N/A', ' N/A', '', '', 'Tacloban', '0000-00-00', '0000-00-00', '', '', ''),
(252, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'DepEd Mandaluyong', '0000-00-00', '0000-00-00', 'June 01 2011', '', 'Department of Education - Mandaluyong Divisio'),
(253, 97015784, 'CS003', 'Speaker for Total Quality Management Seminar', 'N/A', ' N/A', '', '', 'Tacloban', '0000-00-00', '0000-00-00', '', '', ''),
(254, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Yuchengco Building DLSU', '0000-00-00', '0000-00-00', 'October 29 2010', '', 'Department of Education - Mandaluyong Divisio'),
(255, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Yuchengco Building DLSU', '0000-00-00', '0000-00-00', 'September 18 2010', '', 'Department of Education - Mandaluyong Science'),
(256, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Yuchengco Building DLSU', '0000-00-00', '0000-00-00', 'June 04 2010', '', 'Department of Education - Mataas na Paaralang'),
(257, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Gokongwei Building DLSU', '0000-00-00', '0000-00-00', 'May 28 2009', '', 'Department of Education - Caloocan Division'),
(258, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Yuchengco Building DLSU', '0000-00-00', '0000-00-00', 'October 30 2008', '', 'Department of Education - Caloocan Division'),
(259, 97015784, 'CS003', 'Speaker & Facilitator for Leadership Training & Seminar', 'N/A', ' N/A', '', '', 'Universidad de Manila', '0000-00-00', '0000-00-00', 'June 23 2007', '', 'Manila City Government'),
(260, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Tereso Lara Seminar Room DLSU', '0000-00-00', '0000-00-00', 'October 30 2006', '', 'Department of Education - Maria Clara High Sc'),
(261, 97015784, 'CS003', 'Speaker & Facilitator for Leadership Training & Seminar', 'N/A', ' N/A', '', '', 'Fort Bonifacio Naval Clubhouse', '0000-00-00', '0000-00-00', 'December 11 2005', '', 'Taguig City Government'),
(262, 97015784, 'CS003', 'Teacher Training for Public School Teachers', 'N/A', ' N/A', '', '', 'Gokongwei Building DLSU', '0000-00-00', '0000-00-00', 'October 28 2005', '', 'Department of Education - Pangarap High Schoo'),
(263, 97015784, 'CS003', 'Speaker for Seminar on Personal Branding', 'N/A', ' N/A', '', '', 'Binondo', '0000-00-00', '0000-00-00', '', '', ''),
(264, 97015784, 'CS003', 'Speaker for Seminar on Leadership', 'N/A', ' N/A', '', '', 'EDSA Shrine Hall', '0000-00-00', '0000-00-00', 'November 13 2011', 'Our Lady of EDSA Youth Organization', 'none'),
(265, 97015784, 'CS002', 'Speaker for Management With a Heart', 'N/A', ' N/A', '', '', 'Ormoc', '0000-00-00', '0000-00-00', '', '', ''),
(266, 97015784, 'CS002', 'Speaker for Seminar on Motivation', 'N/A', ' N/A', '', '', 'Hotel Venice', '0000-00-00', '0000-00-00', '', '', ''),
(267, 97015784, 'CS002', 'Speaker & Facilitator for Seminar on Becoming Positive Influence to Others', 'N/A', ' N/A', '', '', 'Ateneo de Manila University', '0000-00-00', '0000-00-00', 'September 08 2006', 'St Joseph Foundation for Children and Aging', 'none'),
(268, 20141718, 'CS002', 'SPRINT Tree Planting', 'N/A', ' N/A', 'SPRINT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(269, 97026050, 'CS001', 'CCS AUN QA team', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(270, 97026050, 'CS001', 'member of Cisco Academy QA team', 'N/A', ' N/A', 'Computer Technology Dept', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(271, 97026050, 'CS001', 'Practicum Coordinator', 'N/A', ' N/A', 'Computer Technology Dept', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(272, 97026050, 'CS001', 'Cisco Networking Academy QA Manager', 'N/A', ' N/A', 'Computer Technology Dept', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(273, 97026050, 'CS001', 'PAASCU CCS Faculty Analysis Team', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(274, 97026050, 'CS001', 'Faculty Adviser (CSNeS)', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(275, 97026050, 'CS001', 'CCS Representative', 'N/A', ' N/A', '2014 University VM Week central committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(276, 97026050, 'CS001', '2014 Asia Pacific Cisco NetRiders competition DLSU Team Coach', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(277, 97026050, 'CS001', 'PLC Coach', 'N/A', ' N/A', 'AVC-AA Office', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(278, 97026050, 'CS001', 'Networking / Information Security cluster head (BSCS OBE)', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(279, 97026050, 'CS001', 'Center for Networking and Information Security (Lab Head)', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(280, 97026050, 'CS004', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', 'C3P Core Council of the Philippines', ''),
(281, 97015512, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(282, 97015512, 'CS001', 'Laboratory Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(283, 97015512, 'CS001', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(284, 97015512, 'CS001', 'PAASCU 2013 Survey Preparation Team', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(285, 97015512, 'CS001', 'Department Chair: leads the strategic direction', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(286, 97015512, 'CS001', 'Academic Area Chair for Microprocessors', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(287, 97015512, 'CS001', 'Talk: PCB Etching', 'N/A', ' N/A', 'La Salle Computer Society', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(288, 97015512, 'CS001', 'Talk: Mechatronics and Robotics : Presented to Cagayan Colleges  Tuguegarao College of Information T', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(289, 97015512, 'CS001', 'Talk: Introduction to Robotics: DLSU Summer Camp', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(290, 97015512, 'CS004', 'Reviewer for Conference Papers', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'November 01 2014', 'IEEE Robotics and Automation Society', ''),
(291, 97015512, 'CS004', 'Reviewer for Conference Papers', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'December 01 2011', 'Philippine Computing Society', ''),
(292, 97015512, 'CS004', 'Reviewer for Conference Papers', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'February 01 2009', 'Philippine Computing Society', ''),
(293, 97015512, 'CS004', 'Working Group on Computer Engineering Curriculum', 'N/A', ' N/A', '', '', 'DAP building', '0000-00-00', '0000-00-00', '', '', ''),
(294, 97049212, 'CS004', 'Member.  Reviews and recommends revisions to the Department Operations Manual', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'May 2015none', 'none', ''),
(295, 97049212, 'CS001', 'Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(296, 97049212, 'CS001', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(297, 97049212, 'CS001', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(298, 97049212, 'CS001', 'Coach.  Undergoes training with the AVC-Academic Affairs on practices in professional learning commu', 'N/A', ' N/A', '', '', 'AVC-Academic Affairs Professional Learning Communitiesnone', '0000-00-00', '0000-00-00', '2013', 'present', ''),
(299, 97049212, 'CS001', 'Program Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(300, 97049212, 'CS001', 'Researcher.  Conducts on-campus and off-campus lectures and workshops on Natural Language Processing', 'N/A', ' N/A', ' Informatics and Networking', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(301, 97049212, 'CS001', 'Chair', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(302, 97049212, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(303, 97049212, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(304, 97049212, 'CS001', 'Member.  Screens candidates for various Graduation Awards', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(305, 97049212, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(306, 97049212, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(307, 97049212, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(308, 97049212, 'CS001', 'Organizing Committee Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(309, 97049212, 'CS001', 'Organizing Committee Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(310, 97049212, 'CS001', 'Project Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(311, 97049212, 'CS001', 'Accreditor', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(312, 97049212, 'CS001', 'Accreditor', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(313, 97049212, 'CS001', 'Accreditor', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(314, 97093017, 'CS001', 'Head', 'N/A', ' N/A', 'Net-Centric Laboratory', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(315, 97093017, 'CS001', 'DLSU Hacker Cup 2014', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(316, 97093017, 'CS001', 'OBE BSCS SW Development Cluster Head', 'N/A', ' N/A', 'CCS', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(317, 97093017, 'CS002', 'Maker Festival', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(318, 97093017, 'CS002', 'Extreme by Design Local Screening', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(319, 97093017, 'CS002', 'Windows Phone Development Training', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(320, 97093017, 'CS002', 'Firefox OS Apps Development', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(321, 97093017, 'CS001', 'Practicum Coordinator', 'N/A', ' N/A', 'CCS-ST', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(322, 97093017, 'CS001', 'DLSU Hacker Cup 2013 : WP8', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(323, 97093017, 'CS001', 'DLSU Hacker Cup 2012', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(324, 97093017, 'CS001', 'Member', 'N/A', ' N/A', 'Technology Hub for Innovation and Incubation', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(325, 97093017, 'CS001', 'Member', 'N/A', ' N/A', 'ST Representative', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(326, 97093017, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(327, 97093017, 'CS001', 'Venue Coordinator', 'N/A', ' N/A', '', '', 'UX Philippines Conference', '0000-00-00', '0000-00-00', 'November 14 2014', 'UX Philippines', ''),
(328, 97093017, 'CS001', 'Venue Coordinator', 'N/A', ' N/A', '', '', 'Form', '0000-00-00', '0000-00-00', '', '', ''),
(329, 97093017, 'CS001', 'Co-organizer', 'N/A', ' N/A', '', '', 'Python Conference', '0000-00-00', '0000-00-00', 'February 23 2014', 'Python Philippines', '');
INSERT INTO `community_service` (`CS_ID`, `FID`, `CS_TYPE`, `DESCRIPTION`, `UNIT_CODE`, `DEPT_CODE`, `COMMITTEE`, `OTHERS`, `PROJECT_SITE`, `START_DATE`, `END_DATE`, `INSTITUTION`, `ORG_NAME`, `GOV_NAME`) VALUES
(330, 97093017, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(331, 97093017, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(332, 97093017, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(333, 97093017, 'CS001', 'SMS-Based Evacuation Disaser Response for Lian', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(334, 97093017, 'CS001', 'Digitization of Lian', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(335, 97093017, 'CS001', 'Resource Allocation System (Prototype)', 'N/A', ' N/A', '', '', 'Lian', '0000-00-00', '0000-00-00', '', '', ''),
(336, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'Android Lollipop', '0000-00-00', '0000-00-00', 'April 17 2015', 'Google Student Ambassadors ', ''),
(337, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'Women Techmakers Baguio', '0000-00-00', '0000-00-00', 'March 31 2015', 'UP Manila', 'none'),
(338, 97093017, 'CS001', 'Co-organizer', 'N/A', ' N/A', '', '', 'Women Techmakers Manila', '0000-00-00', '0000-00-00', 'March 28 2015', 'Google Developer Group Philippines', 'none'),
(339, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'HTML 5 Games', '0000-00-00', '0000-00-00', 'February 23 2015', 'Google Developer Group Philippines', ''),
(340, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'How to Start a Startup', '0000-00-00', '0000-00-00', 'February 20 2015', 'DevCon', ''),
(341, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'HTML 5 Games', '0000-00-00', '0000-00-00', 'November 20 2015', 'Google Developer Group Baguio', ''),
(342, 97093017, 'CS001', 'Co-organizer', 'N/A', ' N/A', '', '', 'GDG DevFest', '0000-00-00', '0000-00-00', 'November 24 2014', 'Google Developer Group Philippines', ''),
(343, 97093017, 'CS001', 'Organizer', 'N/A', ' N/A', '', '', '6th Startup Weekend Manila', '0000-00-00', '0000-00-00', 'October 10 2014', 'UP Manila', ''),
(344, 97093017, 'CS001', 'Judge', 'N/A', ' N/A', '', '', 'ASES Summit', '0000-00-00', '0000-00-00', 'July 25 2014', 'ASES', ''),
(345, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'Form Function Class 2013', '0000-00-00', '0000-00-00', 'November 10 2013', 'Philippine Web Designers Organization', ''),
(346, 97093017, 'CS001', 'Speaker', 'N/A', ' N/A', '', '', 'Junior Form Function Class 2013', '0000-00-00', '0000-00-00', 'February 17 2013', 'Philippine Web Designers Organization', ''),
(347, 97093017, 'CS001', 'Organizer', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', '12-Dec', 'Corel Discovery Photo Life Center App Contest', ''),
(348, 97093017, 'CS001', 'Project Head', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', '12-Apr', 'DLSU Nokia Tap that App Program', ''),
(349, 97093017, 'CS001', 'Organizer', 'N/A', ' N/A', '', '', 'National', '0000-00-00', '0000-00-00', '12-Apr', 'Xtreme Java: National Inter-School App Dev''t ', ''),
(350, 97093017, 'CS001', 'Organizer', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', 'March 01 2012', 'Open Web-Day ', ''),
(351, 97093017, 'CS001', 'Organizer', 'N/A', ' N/A', '', '', 'DLSU', '0000-00-00', '0000-00-00', '11-Dec', 'KFC Youth Innovetion Challenge Contest', ''),
(352, 97042579, 'CS001', 'Computer Literacy Program out of School Youths or public school Teachers', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(353, 97042579, 'CS001', 'Medical Mission', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(354, 97042579, 'CS001', 'School Supplies Distribution ', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(355, 97042579, 'CS001', 'MACE Learning Center- Christmas Gift Givin- part of the Organizing Committee that collected and dist', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(356, 97042579, 'CS001', 'Orphanage Visitation', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(357, 97042579, 'CS001', 'Outreach/Fundraiser: Green Idol- College Representative to the University faculty variety show to ra', 'N/A', ' N/A', 'DLSU-CAO', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(358, 97042579, 'CS001', 'Lingap- Volunteer teacher', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(359, 97042579, 'CS001', 'PAASCU Accreditation Preparations', 'N/A', ' N/A', 'PAASCU -CCS Faculty Area Chair', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(360, 97042579, 'CS001', 'Member of the ad-hoc committee in charge with exploring alternative pedagogical approaches for teach', 'N/A', ' N/A', 'COMPRO1/INTRPRG Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(361, 97042579, 'CS001', 'College representative/ CCS Director', 'N/A', ' N/A', 'Faculty Association', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(362, 97042579, 'CS001', 'MACE Learning Center-Scholarship Program', 'N/A', ' N/A', 'CCS- PAGKAMULAT', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(363, 97042579, 'CS001', 'Computer skills Training for Court of Appeals', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', '', 'USAID'),
(364, 97042579, 'CS001', 'Christmas Party for the kids', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'Dec 1 2004', 'Bantay Bata', ''),
(365, 97042579, 'CS001', 'Digital Literacy Training-MS Access/Trainor/Participants  for Public School Teachers', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'April 16 2007', 'April 18 2007', 'Microsoft- Partners in Learning'),
(366, 97053937, 'CS001', 'Member', 'N/A', ' N/A', 'PAASCU Faculty Area Evaluation', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(367, 97053937, 'CS001', 'Member', 'N/A', ' N/A', 'Academic Publications Board', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(368, 97053937, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(369, 97064424, 'CS001', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(370, 97064424, 'CS001', 'ST Practicum Coordinator', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', '', ''),
(371, 97064424, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(372, 97064424, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(373, 97064424, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(374, 97064424, 'CS001', 'Program Committee', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(375, 97064424, 'CS001', 'Researcher', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(376, 97053856, 'CS001', 'Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', 'P & G/AdSys', ''),
(377, 97053856, 'CS001', 'Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2007', 'Vibal', ''),
(378, 97053856, 'CS001', 'System Architect', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', 'Morbie.com', ''),
(379, 97053856, 'CS001', 'Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', 'Asia Development Bank', ''),
(380, 97053856, 'CS001', 'System Architect', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', 'present', 'AKI-CBMS', ''),
(381, 97053856, 'CS001', 'System Architect', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2013', 'Globe', ''),
(382, 97053856, 'CS001', 'Project Manager', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2010', 'Wideout HRIS', ''),
(383, 97053856, 'CS001', 'Project Manager', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2012', 'BBR Singapore', ''),
(384, 97053856, 'CS001', 'Software Developer', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '2007', '', 'BIR'),
(385, 97053856, 'CS001', 'Technical Consultant', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '0', 'Philippine DEAF', ''),
(386, 97054038, 'CS001', 'IT Dept Chair', 'N/A', ' N/A', 'IT Dept', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(387, 97054038, 'CS001', 'Students Scholarship & Governacne ', 'N/A', ' N/A', '', '', 'Riyas', '0000-00-00', '0000-00-00', '0', 'Alumni Tree ', ''),
(388, 97053848, 'CS001', 'Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(389, 97053848, 'CS001', 'Distributed educational materials and clothes to schools and teachers in Northern Luzon', 'N/A', ' N/A', '', '', 'Northern Luzon', '0000-00-00', '0000-00-00', '0', 'Network of Outstanding Teachers and Educators', ''),
(390, 97053848, 'CS001', 'Ministry to people from a poor community', 'N/A', ' N/A', '', '', 'Floodway', '0000-00-00', '0000-00-00', '', '', ''),
(391, 20141009, 'CS001', 'Coordinator', 'N/A', ' N/A', 'CCS-Pagkamulat', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(392, 20141009, 'CS001', 'Committee Member', 'N/A', ' N/A', 'BS-IT OBE', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(393, 97053953, 'CS001', 'FORMDEV Facilitator', 'N/A', ' N/A', 'FORMDEV', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(394, 97053953, 'CS001', 'Faculty Association Executive Board Member', 'N/A', ' N/A', 'DLSU-FA', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(395, 97053953, 'CS001', 'Lasallian Volunteer Formator', 'N/A', ' N/A', 'DLSU-LSPO', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(396, 97079669, 'CS001', 'Program Coordinator', 'N/A', ' N/A', 'BS-IST Curriculum', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(397, 97079669, 'CS001', 'Head', 'N/A', ' N/A', 'Center for Information and Communications Tec', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(398, 97079669, 'CS001', 'Thesis Coordinator', 'N/A', ' N/A', 'Information Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(399, 97079669, 'CS001', 'Research Fellow', 'N/A', ' N/A', 'Center for Information and Communications Tec', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(400, 97079669, 'CS001', 'Faculty Facilitator', 'N/A', ' N/A', 'Lasallian Formation and Development (FORMDEV)', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(401, 97079669, 'CS001', 'Library Coordinator', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(402, 97079669, 'CS001', 'Member', 'N/A', ' N/A', 'University Library Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(403, 97079669, 'CS001', 'Subject Coordinator', 'N/A', ' N/A', 'Business Management Department - COMP1BU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(404, 97079669, 'CS001', 'Session Moderator', 'N/A', ' N/A', 'Information Technology Department - TouchPoin', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(405, 97079669, 'CS001', 'Faculty Facilitator', 'N/A', ' N/A', 'Lasallian Personal Effectiveness Program (LPE', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(406, 97079669, 'CS001', 'Designed publicity materials for the conference', 'N/A', ' N/A', 'Information Technology Department - TouchPoin', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(407, 97079669, 'CS001', 'Designed publicity materials for the workshop', 'N/A', ' N/A', 'Center for Empathic Human Computer Interactio', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(408, 97079669, 'CS001', 'Developed a concept Flash video', 'N/A', ' N/A', 'Center for Empathic Human Computer Interactio', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(409, 97079669, 'CS001', 'Subject Coordinator', 'N/A', ' N/A', 'Business Management Department - COMP2BU', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(410, 97079669, 'CS001', 'Subject Coordinator', 'N/A', ' N/A', 'Information Technology Department - INMEDIA', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(411, 97079669, 'CS001', 'Subject Coordinator', 'N/A', ' N/A', 'Information Technology Department - INTRIST', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(412, 97079669, 'CS001', 'Faculty Adviser', 'N/A', ' N/A', 'Moomedia', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(413, 97079669, 'CS001', 'Coordinator', 'N/A', ' N/A', 'College of Computer Studies - Social Action C', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(414, 97079669, 'CS001', 'Lab Coordinator', 'N/A', ' N/A', 'Information Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(415, 97079669, 'CS001', 'Subject Coordinator', 'N/A', ' N/A', 'Information Technology Department - HUCOINT/H', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(416, 97079669, 'CS001', 'Member', 'N/A', ' N/A', 'IST Curriculum Committee', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(417, 97079669, 'CS001', 'Donor', 'N/A', ' N/A', 'Philippine Red Cross Blood Drive (DLSU)', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(418, 97079669, 'CS001', 'Exhibits Committee Member', 'N/A', ' N/A', 'College of Computer Studies - PAASCU Reaccred', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(419, 97079669, 'CS001', 'Evaluator for the 2014 National Competition for Alternative Learning Systems Learning Facilitators o', 'N/A', ' N/A', '', '', 'Girl Scouts of the Philippines', '0000-00-00', '0000-00-00', '', '', ''),
(420, 97079669, 'CS001', 'Resource person for Flash Training Workshops and Content Development for SUCs for the eSkwela and iS', 'N/A', ' N/A', '', '', 'Various sites in the Philippines (SUCs)', '0000-00-00', '0000-00-00', '2011', '', 'Commission on ICT and DepEd-Bureau of Alterna'),
(421, 97054097, 'CS001', 'Cluster Head', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(422, 97054097, 'CS001', 'Committee Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(423, 97054097, 'CS001', 'Practicum Coordinator: To oversee the practicum program of the department', 'N/A', ' N/A', 'Computer Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(424, 97054097, 'CS001', 'Member', 'N/A', ' N/A', '', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(425, 97054097, 'CS001', 'University Library Coordinator for CCS: representative of the college for issues related to universi', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(426, 97054097, 'CS001', 'Faculty Tranining Committee Member: develop training program to upgrade the skills for the faculty m', 'N/A', ' N/A', 'College of Computer Studies', '', '', '0000-00-00', '0000-00-00', '', '', ''),
(427, 97054097, 'CS001', 'Computer Architecture Area Academic Chair: develop program in the field of Computer Architecture', 'N/A', ' N/A', 'Computer Technology Department', '', '', '0000-00-00', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(4) NOT NULL,
  `COUNTRY_NAME` varchar(35) NOT NULL,
  PRIMARY KEY (`COUNTRY_CODE`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `COUNTRY_CODE`, `COUNTRY_NAME`) VALUES
(1, ' N/A', ' N/A'),
(2, 'AFG', 'Afghanistan'),
(3, 'ALB', 'Albania'),
(4, 'AUS', 'Australia'),
(5, 'AUT', 'Austria'),
(6, 'BEL', 'Belgium'),
(7, 'BHS', 'Bahamas'),
(8, 'CHN', 'China'),
(9, 'DZA', 'Algeria'),
(10, 'JPN', 'Japan'),
(11, 'KHM', 'Cambodia'),
(12, 'MAC', 'Macau'),
(13, 'MYS', 'Malaysia'),
(14, 'PHL', 'Philippines'),
(15, 'ROU', 'Romania'),
(16, 'RUS', 'Russia'),
(17, 'SGP', 'Singapore'),
(18, 'USA', 'United Stated of America');

-- --------------------------------------------------------

--
-- Table structure for table `co_author`
--

CREATE TABLE IF NOT EXISTS `co_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR_VAL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `co_author`
--

INSERT INTO `co_author` (`id`, `AUTHOR_VAL`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `cs_type`
--

CREATE TABLE IF NOT EXISTS `cs_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CSTYPE_CODE` varchar(5) NOT NULL,
  `CSTYPE_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`CSTYPE_CODE`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cs_type`
--

INSERT INTO `cs_type` (`id`, `CSTYPE_CODE`, `CSTYPE_TITLE`) VALUES
(1, 'CS000', '  N/A'),
(2, 'CS001', 'DLSU'),
(3, 'CS002', 'Professional Organization'),
(4, 'CS003', 'Government'),
(5, 'CS004', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CURRENCY_NAME` varchar(45) NOT NULL,
  `COUNTRY` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `CURRENCY_NAME`, `COUNTRY`) VALUES
(1, 'Australia$', 'AUS'),
(2, '  N/A', NULL),
(3, 'PhP', 'PHL');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `DEGREE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEGREE_TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DEGREE_ID`, `DEGREE_TITLE`) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Computer Engineering'),
(4, 'Electronics and Communications Engineering'),
(6, 'Information Systems'),
(7, 'Technology Management'),
(8, 'Management'),
(9, 'Applied Mathematics'),
(10, 'Information Management'),
(11, 'Electrical Engineering'),
(12, 'Electronics Engineering'),
(13, 'Electrical and Electronics Engineering'),
(14, 'Teaching in Computer Science'),
(15, 'Engineering Technology'),
(16, 'Business Administration'),
(17, 'Technology'),
(18, 'Education and Leadership Management');

-- --------------------------------------------------------

--
-- Table structure for table `degree_earned`
--

CREATE TABLE IF NOT EXISTS `degree_earned` (
  `DE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `SPECIALIZATION` varchar(45) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` varchar(45) DEFAULT NULL,
  `LOCATION_ID` varchar(45) DEFAULT NULL,
  `SO_NUM` varchar(25) NOT NULL,
  PRIMARY KEY (`DE_ID`),
  KEY `DE_ID` (`DE_ID`),
  KEY `fk_degree_fid` (`FID`),
  KEY `fk_degree_dlevelid` (`DLEVEL_ID`),
  KEY `fk_degree_loc` (`LOCATION_ID`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_earned_ibfk_2` (`INSTITUTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `degree_earned`
--

INSERT INTO `degree_earned` (`DE_ID`, `FID`, `DLEVEL_ID`, `DEGREE_ID`, `SPECIALIZATION`, `YEAR_OBTAINED`, `INSTITUTION_ID`, `LOCATION_ID`, `SO_NUM`) VALUES
(16, 97063932, 'DL02', 2, 'None', 2004, 'University of La Salette', 'Santiago City', 'ULS-80-464106-019 S. 2004'),
(34, 97063932, 'DL00', 1, 'None', 2000, 'Emilio Aguinaldo College', 'Manila', '50-464101-1035 S. 2000'),
(35, 20133413, 'DL02', 1, 'NA', 2011, ' De La Salle University', 'Manila', 'N/A'),
(36, 20133413, 'DL00', 1, 'Software Technology', 2009, ' De La Salle University', 'Manila', 'N/A'),
(37, 97014788, 'DL02', 2, 'Business Processes', 2002, ' De La Salle University', 'Manila', 'N/A'),
(38, 97014788, 'DL02', 1, 'Information Technology', 1997, ' De La Salle University', 'Manila', 'N/A'),
(39, 97049336, 'DL05', 1, 'None', 1993, ' Institut National Polytechnique de Grenoble', 'Manila', 'N/A'),
(51, 97049336, 'DL02', 1, 'None', 1987, 'Asian Institute of Technology', 'Bangkok', 'N/A'),
(52, 97049336, 'DL00', 1, 'None', 1982, 'University of the Philippines at Los Banos', 'Laguna', 'N/A'),
(53, 97049336, 'DL09', 1, 'None', 1989, 'Institut National Polytechnique de Grenoble', 'France', 'N/A'),
(54, 97049336, 'DL09', 1, 'None', 1988, 'University Stendhal (University of Grenoble I', 'France', 'N/A'),
(58, 97049344, 'DL05', 1, 'NA', 2014, 'De La Salle University', 'Manila', 'N/A'),
(59, 97049344, 'DL02', 1, 'NA', 1995, 'De La Salle University', 'Manila', 'N/A'),
(60, 97049344, 'DL00', 1, 'Software Technology', 1993, 'De La Salle University', 'Manila', 'N/A'),
(76, 97077763, 'DL07', 2, 'Information Technology', 2003, 'Technological University of the Philippines', 'Manila', 'N/A'),
(77, 97077763, 'DL00', 1, 'Computer Engineering', 1999, 'Technological Institute of the Philippines ', 'Manila', '50-542202-1431'),
(78, 97033235, 'DL02', 1, 'Natural Language Processing', 2000, 'University of the Philippines Los Banos', 'Laguna', 'N/A'),
(79, 97033235, 'DL00', 1, 'None', 1996, 'University of the Philippines Los Banos', 'Laguna', 'N/A'),
(80, 97055743, 'DL05', 1, 'Computer Science and Artificial Intelligence', 1999, 'University of Sussex Brighton', 'United Kingdom', 'N/A'),
(81, 97090638, 'DL05', 1, 'Machine Learning Empathic Computing', 2013, 'Osaka University', 'Osaka', 'N/A'),
(82, 97090638, 'DL02', 1, 'Artificial Intelligence', 2005, 'De La Salle University', 'Manila', 'N/A'),
(83, 97090638, 'DL00', 1, 'Software Development', 2001, 'De La Salle University', 'Manila', 'N/A'),
(91, 97031925, 'DL02', 1, 'N/A', 1999, 'De La Salle University', 'Manila', 'N/A'),
(92, 97031925, 'DL00', 1, 'Software Technology', 1994, 'De La Salle University', 'Manila', 'N/A'),
(93, 97020087, 'DL02', 1, 'None', 2000, 'De La Salle University', 'Manila', 'N/A'),
(94, 97020087, 'DL00', 1, 'Software Technology', 1997, 'De La Salle University', 'Manila', 'N/A'),
(95, 20123647, 'DL02', 2, 'None', 2014, 'De La Salle University', 'Manila', 'N/A'),
(96, 20123647, 'DL00', 1, 'None', 2009, 'De La Salle University - STC', 'Binan', 'N/A'),
(97, 97042498, 'DL02', 1, 'None', 2002, 'De La Salle University', 'Manila', 'N/A'),
(98, 97042498, 'DL00', 1, 'Software Technology', 1998, 'De La Salle University', 'Manila', 'N/A'),
(99, 97088897, 'DL02', 1, 'Computers and Communications', 2010, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(100, 97088897, 'DL00', 4, 'Digital Communications', 2006, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(101, 97031909, 'DL02', 1, 'None', 2000, 'De La Salle University', 'Manila', 'N/A'),
(102, 97031909, 'DL00', 1, 'Computer Technology', 1994, 'De La Salle University', 'Manila', 'N/A'),
(103, 97014753, 'DL02', 1, 'Computer Science', 2001, 'De La Salle University', 'Manila', 'N/A'),
(104, 97014753, 'DL00', 1, 'Computer Technology', 1997, 'De La Salle University', 'Manila', 'N/A'),
(106, 97093157, 'DL00', 1, 'Software Technology', 2009, 'De La Salle University', 'Manila', 'N/A'),
(107, 97093157, 'DL02', 1, 'None', 2014, 'De La Salle University', 'Manila', 'N/A'),
(108, 20123256, 'DL04', 8, 'Major in Business Management', 2007, 'University of the Philippines', 'Los Banos', 'N/A'),
(109, 20123256, 'DL00', 1, 'None', 1999, 'University of the Philippines', 'Los Banos', 'N/A'),
(110, 20123590, 'DL02', 1, 'N/A', 1999, 'University of the Philippines', 'Los Banos', 'N/A'),
(111, 20123590, 'DL00', 1, 'N/A', 1991, 'University of the Philippines', 'Los Banos', 'N/A'),
(112, 97091219, 'DL02', 1, 'Machine Vision', 2008, 'De La Salle University', 'Manila', 'N/A'),
(113, 97091219, 'DL05', 13, 'Digital Signal Processing Corpus Linguistic', 2012, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(114, 20133707, 'DL02', 11, 'Digital Signal Processing', 2014, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(115, 20133707, 'DL00', 3, 'Digital Signal Processing', 2012, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(116, 97020095, 'DL02', 1, 'None', 2001, 'De La Salle University', 'Manila', 'N/A'),
(117, 97020095, 'DL00', 1, 'Software Technology', 1997, 'De La Salle University', 'Manila', 'N/A'),
(121, 97053139, 'DL02', 1, 'None', 1995, 'De La Salle University PSI', 'Manila', 'N/A'),
(122, 97053139, 'DL00', 3, 'None', 1988, 'Mapua Insitute of Technology', 'Manila', 'N/A'),
(123, 97014818, 'DL02', 2, 'Learning Management Systems', 2003, 'De La Salle University', 'Manila', 'N/A'),
(124, 97014818, 'DL00', 1, 'Computer Technology', 1997, 'De La Salle University', 'Manila', 'N/A'),
(125, 97028304, 'DL05', 1, 'None', 2001, 'De La Salle University', 'Manila', 'N/A'),
(126, 97028304, 'DL02', 1, 'Computer Science', 1994, 'De La Salle University', 'Manila', 'None'),
(127, 97028304, 'DL00', 1, 'Computer Science', 1990, 'De La Salle University', 'Manila', 'None'),
(128, 20141718, 'DL02', 1, 'None', 2014, 'De La Salle University', 'Manila', 'None'),
(129, 20141718, 'DL00', 1, 'Software Technology', 2012, 'De La Salle University', 'Manila', 'N/A'),
(130, 97026050, 'DL00', 1, 'Nework Engineering', 2008, 'De La Salle University', 'Manila', 'N/A'),
(131, 97026050, 'DL02', 1, 'N/A', 2013, 'De La Salle University', 'Manila', 'N/A'),
(132, 97015512, 'DL04', 1, 'Mechatronics', 2000, 'University of Southern Queensland', 'Toowoomba Queensland', 'None'),
(133, 97015512, 'DL00', 1, 'Computer Technology', 1988, 'De La Salle University', 'Manila Philippines', 'None'),
(134, 97049212, 'DL02', 1, 'Visual Programming', 1995, 'De La Salle University', 'Manila', 'None'),
(135, 97049212, 'DL00', 1, 'Software Technology', 1993, 'De La Salle University', 'Manila', 'None'),
(136, 97041378, 'DL05', 1, 'Information Security', 2013, 'De La Salle University', 'Manila', 'None'),
(137, 97041378, 'DL02', 1, 'Computer Vision', 2001, 'De La Salle University', 'Manila', 'None'),
(138, 97041378, 'DL00', 1, 'Microprocessor Interfacing', 1998, 'De La Salle University', 'Manila', 'None'),
(139, 97093017, 'DL00', 1, 'Software Tecnology', 2009, 'De La Sale University', 'Manila', 'None'),
(140, 97093017, 'DL02', 1, 'Natural Language Procesing', 2013, 'De La Salle University', 'Manila', 'None'),
(141, 97042579, 'DL02', 1, 'Computer Science', 2001, 'National University of Singapore', 'Singapore', 'EXEMPT'),
(142, 97042579, 'DL00', 1, 'Software Technology', 1999, 'De La Salle University', 'Philippines', 'EXEMPT'),
(143, 97053937, 'DL08', 1, 'Social and Information System Engineering (Sh', 1996, 'Yamanashi University', 'Kofu', 'N/A'),
(144, 97053937, 'DL02', 1, 'None', 1990, 'De La Salle University', 'Manila', 'N/A'),
(145, 97053937, 'DL00', 1, 'None', 1986, 'De La Salle University', 'Manila', 'N/A'),
(146, 97064424, 'DL02', 1, 'Natural Language Processing', 2013, 'De La Salle University', 'Manila', 'N/A'),
(147, 97064424, 'DL00', 1, 'Software Technology', 2009, 'De La Sall University', 'Manila', 'N/A'),
(148, 97053856, 'DL02', 1, 'Computer Science', 2006, 'De La Salle University', 'Manila', 'N/A'),
(149, 97053856, 'DL00', 1, 'Computer Science', 2004, 'De La Salle University', 'Manila Philippines', 'N/A'),
(152, 97054038, 'DL02', 1, 'Computer and Information Science', 1989, 'Temple Univerisity', 'Philadelphia', 'N/A'),
(153, 97054038, 'DL00', 1, 'None', 1979, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(154, 97053848, 'DL05', 1, 'Artificial Intelligence', 1998, 'Tokyo Insititute of Technology', 'Tokyo Japan', 'N/A'),
(155, 97053848, 'DL02', 1, 'Computer Science', 1990, 'De La Salle University', 'Manila', 'N/A'),
(156, 97053848, 'DL00', 1, 'Computer Science', 1987, 'De La Salle University', 'Manila', 'N/A'),
(157, 20141009, 'DL02', 1, 'N/A', 2014, 'De La Salle University', 'Manila', 'N/A'),
(158, 20141009, 'DL00', 1, 'Software Technology', 2011, 'De La Salle University', 'Manila', 'N/A'),
(159, 20141769, 'DL02', 1, 'None', 2014, 'De La Salle University', 'Manila', 'N/A'),
(160, 20141769, 'DL00', 1, 'Software Technology', 2012, 'De La Salle University', 'Manila', 'N/A'),
(161, 97053953, 'DL00', 1, 'Information Technology', 1987, 'De La Salle University', 'Manila', 'N/A'),
(162, 97053953, 'DL02', 16, 'None', 1995, 'De La Salle University', 'Manila', 'N/A'),
(167, 97079669, 'DL02', 2, 'NA', 2012, 'De La Salle University', 'Manila', 'N/A'),
(168, 97079669, 'DL00', 1, 'Instructional Systems Technology', 2006, 'De La Salle University', 'Manila', 'N/A'),
(169, 97054097, 'DL02', 1, 'None', 1999, 'De La Salle University', 'Manila', 'N/A'),
(170, 97054097, 'DL00', 1, 'Computer Technology', 1988, 'De La Salle University', 'Manila', '1-32:0986 S:1998'),
(174, 97088420, 'DL02', 1, 'None', 2014, 'De La Salle University', 'Manila', 'N/A'),
(175, 97088420, 'DL00', 1, 'Software Technology', 2010, 'De La Salle University', 'Manila', 'N/A'),
(176, 20143559, 'DL00', 1, 'None', 2000, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(177, 20143559, 'DL02', 1, 'None', 2014, 'University of the Philippines - Diliman', 'Quezon City', 'N/A'),
(178, 97045179, 'DL00', 1, 'None', 1988, 'De La Salle University', 'Manila', 'N/A'),
(179, 97045179, 'DL02', 8, 'Finance', 2003, 'Asian Institute of Management', 'Philippines', 'N/A'),
(180, 97088366, 'DL00', 1, 'None', 2010, 'De La Salle University', 'Manila', 'Exempted'),
(181, 97049182, 'DL02', 1, 'None', 1995, 'De La Salle University', 'Manila', 'N/A'),
(182, 97049182, 'DL00', 1, 'Software Technology', 1993, 'De La Salle University', 'Manila', 'N/A'),
(183, 20143558, 'DL04', 1, 'Business Administration', 2006, 'Ateneo Graduate School of Business', 'Makati', 'N/A'),
(184, 20143558, 'DL00', 4, 'Electronics and Comminications', 1999, 'Mapua Institute of Technology', 'Manila Philippines', 'N/A'),
(185, 20141890, 'DL02', 1, 'None', 2014, 'De La Salle University', 'Manila', 'N/A'),
(186, 20141890, 'DL00', 1, 'Software Technology', 2012, 'De La Salle University', 'Manila', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `degree_level`
--

CREATE TABLE IF NOT EXISTS `degree_level` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DLEVEL_ID` varchar(4) NOT NULL,
  `DLEVEL_TITLE` varchar(35) NOT NULL,
  `DLEVEL_DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DLEVEL_ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `degree_level`
--

INSERT INTO `degree_level` (`ID`, `DLEVEL_ID`, `DLEVEL_TITLE`, `DLEVEL_DESC`) VALUES
(1, 'DL00', 'Bachelor (BS)', 'Bachelor Of Science In'),
(2, 'DL01', 'Bachelor (BA)', 'Bachelor of Arts in'),
(3, 'DL02', 'Master''s (MS)', 'Master of Science in'),
(4, 'DL03', 'Master''s (MA)', 'Master of Arts in'),
(5, 'DL04', 'Master''s (M)', 'Master in'),
(6, 'DL05', 'Doctoral (PhD)', 'Doctor of Philosophy in'),
(7, 'DL06', 'Doctoral (EdD)', 'Doctor of Education in'),
(8, 'DL07', 'Doctoral (Doctor In)', 'Doctor in'),
(9, 'DL08', 'Doctoral (Doctor of)', 'Doctor of'),
(10, 'DL09', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `degree_pursue`
--

CREATE TABLE IF NOT EXISTS `degree_pursue` (
  `DP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `INSTITUTION_ID` varchar(45) DEFAULT NULL,
  `DEGREE_STAGES` varchar(5) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` text,
  PRIMARY KEY (`DP_ID`),
  KEY `fk_degreepursue_fid` (`FID`),
  KEY `fk_dp_dlevelid` (`DLEVEL_ID`),
  KEY `fk_dp_degstages` (`DEGREE_STAGES`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_pursue_ibfk_2` (`INSTITUTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Dumping data for table `degree_pursue`
--

INSERT INTO `degree_pursue` (`DP_ID`, `FID`, `DEGREE_ID`, `DLEVEL_ID`, `INSTITUTION_ID`, `DEGREE_STAGES`, `EARNED_UNITS`, `START_DATE`, `END_DATE`) VALUES
(1, 97088366, 2, 'DL02', 'De La Salle University', 'DS002', 33, '0000-00-00', '2015'),
(2, 97049182, 1, 'DL05', 'De La Salle University', 'DS002', 0, '0000-00-00', 'On Going'),
(3, 97053139, 16, 'DL07', 'De La Salle University', 'DS002', 30, '0000-00-00', 'Present'),
(4, 97015784, 18, 'DL05', 'De La Salle University', 'DS001', 60, '0000-00-00', 'present'),
(5, 97026050, 1, 'DL05', 'De La Salle University', 'DS004', 0, '0000-00-00', 'present'),
(6, 97049212, 1, 'DL05', 'De La Salle University', 'DS001', 18, '0000-00-00', 'Present'),
(7, 97093017, 1, 'DL05', 'De La Salle University', 'DS004', 6, '0000-00-00', 'Present'),
(8, 97042579, 1, 'DL05', 'National University of Singapore', 'DS001', 38, '0000-00-00', 'present'),
(9, 97064424, 1, 'DL05', 'De La Salle University', 'DS004', 0, '0000-00-00', 'present'),
(10, 97053856, 1, 'DL05', 'De La Salle University', 'DS004', 3, '0000-00-00', 'present'),
(11, 20143558, 2, 'DL02', 'De La Salle University', 'DS004', 27, '0000-00-00', 'present'),
(12, 97054038, 1, 'DL05', 'De La Salle University', 'DS001', 0, '0000-00-00', 'present'),
(13, 97053848, 18, 'DL05', 'De La Salle University', 'DS001', 57, '0000-00-00', 'present'),
(14, 97079669, 2, 'DL07', 'De La Salle University', 'DS004', 6, '0000-00-00', 'present'),
(15, 97054097, 1, 'DL05', 'De La Salle University', 'DS004', 9, '0000-00-00', 'Present'),
(67, 97014788, 2, 'DL07', 'De La Salle University', 'DS004', 0, '0000-00-00', 'On Going'),
(68, 97077763, 17, 'DL08', 'Technological University of the Philippines', 'DS001', 45, '0000-00-00', '2015'),
(141, 97033235, 1, 'DL05', 'De La Salle University', 'DS001', 0, '2006-06-01', 'present'),
(254, 97090638, 1, 'DL05', 'De La Salle University', 'DS001', 9, '0000-00-00', 'On Going'),
(255, 97031925, 1, 'DL05', 'De La Salle University', 'DS001', 18, '0000-00-00', 'present'),
(256, 97020087, 1, 'DL05', 'De La Salle University', 'DS001', 0, '0000-00-00', 'present'),
(257, 97042498, 1, 'DL05', 'De La Salle University', 'DS001', 15, '0000-00-00', 'present'),
(258, 97088897, 1, 'DL05', 'De La Salle University', 'DS004', 12, '0000-00-00', 'On Going'),
(303, 97031909, 1, 'DL05', 'De La Salle University', 'DS004', 6, '0000-00-00', 'Present'),
(304, 97014753, 1, 'DL05', 'De La Salle University', 'DS004', 12, '0000-00-00', 'present'),
(305, 20123256, 2, 'DL07', 'De La Salle University', 'DS004', 9, '0000-00-00', 'ongoing'),
(306, 97063932, 2, 'DL07', 'De La Salle University', 'DS004', 3, '2015-08-24', 'On-Going'),
(307, 97020095, 1, 'DL05', 'De La Salle University', 'DS001', 0, '0000-00-00', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `degree_stages`
--

CREATE TABLE IF NOT EXISTS `degree_stages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DS_CODE` varchar(5) NOT NULL,
  `DS_NAME` varchar(25) NOT NULL,
  PRIMARY KEY (`DS_CODE`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `degree_stages`
--

INSERT INTO `degree_stages` (`ID`, `DS_CODE`, `DS_NAME`) VALUES
(1, 'DS000', '  N/A'),
(2, 'DS001', 'Dissertation'),
(3, 'DS002', 'Thesis'),
(4, 'DS003', 'Comprehensives'),
(5, 'DS004', 'Academic Courses');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(15) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_code`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_code`, `dept_name`) VALUES
(1, ' N/A', '  N/A'),
(2, 'CT', 'Computer Technology'),
(3, 'IS', 'Information System'),
(4, 'IT', 'Information Technology'),
(5, 'ST', 'Software Technology');

-- --------------------------------------------------------

--
-- Table structure for table `educ_level`
--

CREATE TABLE IF NOT EXISTS `educ_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EL_ID` varchar(5) NOT NULL,
  `EL_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`EL_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `educ_level`
--

INSERT INTO `educ_level` (`id`, `EL_ID`, `EL_TITLE`) VALUES
(1, 'EL001', 'Elementary'),
(2, 'EL002', 'Secondary'),
(3, 'EL003', 'Tertiary');

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
  `ACTIVE` int(11) DEFAULT NULL,
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

INSERT INTO `faculty` (`FID`, `PASSWORD`, `USERNAME`, `ACCOUNT_ID`, `FFNAME`, `FLNAME`, `FMNAME`, `UNIT_CODE`, `DEPT`, `CLASSIFICATION`, `RANK`, `POSITION_ID`, `ACTIVE`) VALUES
(1, '5f4dcc3b5aa765d61d8327deb882cf99', 'evan.espina', 'AC003', 'Evan', 'Espina', '. ', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(2, '5f4dcc3b5aa765d61d8327deb882cf99', 'fritz.florez', 'AC003', 'Fritz Kevin', 'Florez', 'Salvador', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(3, '5f4dcc3b5aa765d61d8327deb882cf99', 'juan.goco', 'AC003', 'Juan Rene', 'Goco', '. ', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(4, '5f4dcc3b5aa765d61d8327deb882cf99', 'brandon.lim', 'AC003', 'Brandon', 'Lim', '.', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(5, '5f4dcc3b5aa765d61d8327deb882cf99', 'diana.lim', 'AC003', 'Diana Rose', 'Lim', 'Mirasol', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(6, '5f4dcc3b5aa765d61d8327deb882cf99', 'david.rivera', 'AC003', 'David Andro', 'Rivera', 'Ganancial', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(8, '5f4dcc3b5aa765d61d8327deb882cf99', 'henry.tan', 'AC003', 'Henry', 'Tan', '.', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(10, '5f4dcc3b5aa765d61d8327deb882cf99', 'pierre.abesamis', 'AC003', 'Pierre Pauline', 'Abesamis', '.', 'CCS', 'IT', 'P0004', 'L1', 'P0003', 2),
(11, '5f4dcc3b5aa765d61d8327deb882cf99', 'billy.angeles', 'AC003', 'Billy', 'Angeles', 'B', 'CCS', 'IT', 'P0004', 'APL2', 'P0003', 2),
(12, '5f4dcc3b5aa765d61d8327deb882cf99', 'allan.danos', 'AC003', 'Danos', 'Allan', 'Dela Vega', 'CCS', 'IT', 'P0004', 'L5', 'P0003', 2),
(14, '5f4dcc3b5aa765d61d8327deb882cf99', 'budhrani.kiran', 'AC003', 'Kiran', 'Budhrani', '.', 'CCS', 'IT', 'P0004', 'APL2', 'P0003', 2),
(15, '5f4dcc3b5aa765d61d8327deb882cf99', 'erwin.quinto', 'AC003', 'Erwin', 'Quinto', 'Canido', 'CCS', 'IT', 'P0004', 'L6', 'P0003', 2),
(16, '5f4dcc3b5aa765d61d8327deb882cf99', 'ramir.ramirez', 'AC003', 'Ramir', 'Ramirez', '.', 'CCS', 'IT', 'P0004', 'L2', 'P0003', 2),
(17, '5f4dcc3b5aa765d61d8327deb882cf99', 'john.ruero', 'AC003', 'John Peter', 'Ruero', '.', 'CCS', 'IT', 'P0003', 'AP2', 'P0003', 2),
(18, '5f4dcc3b5aa765d61d8327deb882cf99', 'anthony.salazar', 'AC003', 'Anthony', 'Salazar', 'Cataylo', 'CCS', 'IT', 'P0004', 'APL1', 'P0003', 2),
(19, '5f4dcc3b5aa765d61d8327deb882cf99', 'christine.tavera', 'AC003', 'Christine Mae', 'Tavera', 'Abillar', 'CCS', 'IT', 'P0004', 'L3', 'P0003', 2),
(20, '5f4dcc3b5aa765d61d8327deb882cf99', 'geneva.timonera', 'AC003', 'Geneva Mara', 'Timonera', '.', 'CCS', 'IT', 'P0004', 'APL2', 'P0003', 2),
(21, '5f4dcc3b5aa765d61d8327deb882cf99', 'lesley.abe', 'AC003', 'Lesley', 'Abe', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 2),
(22, '5f4dcc3b5aa765d61d8327deb882cf99', 'danniel.alcantara', 'AC003', 'Danniel', 'Alcantara', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 2),
(24, '5f4dcc3b5aa765d61d8327deb882cf99', 'neil.bretana', 'AC003', 'Neil', 'Bretana', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 2),
(25, '5f4dcc3b5aa765d61d8327deb882cf99', 'miguel.cabral', 'AC003', 'Miguel Angelo', 'Cabral', '.', 'CCS', 'ST', 'P0003', 'I2', 'P0003', 2),
(27, '5f4dcc3b5aa765d61d8327deb882cf99', 'philip.chan', 'AC003', 'Philip', 'Chan', '.', 'CCS', 'ST', 'P0003', 'AP7', 'P0003', 2),
(28, '5f4dcc3b5aa765d61d8327deb882cf99', 'kelvin.chua ', 'AC003', 'Kelvin', 'Chua', '.', 'CCS', 'ST', 'P0003', 'I1', 'P0003', 2),
(29, '5f4dcc3b5aa765d61d8327deb882cf99', 'richard.cruz ', 'AC003', 'Richard Thomas', 'Cruz', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 2),
(31, '5f4dcc3b5aa765d61d8327deb882cf99', 'jeffrey.cua', 'AC003', 'Jeffrey Leonard', 'Cua', '.', 'CCS', 'ST', 'P0003', 'I1', 'P0003', 2),
(34, '5f4dcc3b5aa765d61d8327deb882cf99', 'paul.inventado', 'AC003', 'Paul Salvador', 'Inventado', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 2),
(36, '5f4dcc3b5aa765d61d8327deb882cf99', 'leif.syliongka ', 'AC003', 'Leif Romerich', 'Syliongka', '.', 'CCS', 'ST', 'P0003', 'I1', 'P0003', 2),
(39, '5f4dcc3b5aa765d61d8327deb882cf99', 'emerico.aguilar', 'AC003', 'Emerico', 'Aguilar', '.', 'CCS', 'ST', 'P0004', 'L5', 'P0004', 2),
(40, '5f4dcc3b5aa765d61d8327deb882cf99', 'jasaper.belenzo', 'AC003', 'Jasaper', 'Belenzo', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(41, '5f4dcc3b5aa765d61d8327deb882cf99', 'marie.celestino', 'AC003', 'Marie Chelsea Fila', 'Celestino', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 1),
(42, '5f4dcc3b5aa765d61d8327deb882cf99', 'nellie.chua', 'AC003', 'Nellie Margaret', 'Chua', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 1),
(43, '5f4dcc3b5aa765d61d8327deb882cf99', 'john.dejesus', 'AC003', 'John Angelo', 'De Jesus', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(44, '5f4dcc3b5aa765d61d8327deb882cf99', 'jordan.deja', 'AC003', 'Jordan Aiko', 'Deja', '.', 'CCS', 'ST', 'P0004', 'L3', 'P0004', 2),
(45, '5f4dcc3b5aa765d61d8327deb882cf99', 'evangeline.dolores', 'AC003', 'Evangeline', 'Dolores', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(46, '5f4dcc3b5aa765d61d8327deb882cf99', 'gian.fontanilla', 'AC003', 'Gian Kristian', 'Fontanilla', '.', 'CCS', 'ST', 'P0004', 'APL1', 'P0004', 2),
(47, '5f4dcc3b5aa765d61d8327deb882cf99', 'alvin.gendrano', 'AC003', 'Alvin', 'Gendrano', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(48, '5f4dcc3b5aa765d61d8327deb882cf99', 'kathleen.go', 'AC003', 'Kathleen', 'Go', '.', 'CCS', 'ST', 'P0004', 'APL1', 'P0004', 2),
(49, '5f4dcc3b5aa765d61d8327deb882cf99', 'federico.gonzales', 'AC003', 'Federico', 'Gonzales', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 1),
(50, '5f4dcc3b5aa765d61d8327deb882cf99', 'juan.hagad', 'AC003', 'Juan Lorenzo', 'Hagad', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(51, '5f4dcc3b5aa765d61d8327deb882cf99', 'jacinto.limjap', 'AC003', 'Jacinto', 'Limjap', '.', 'CCS', 'ST', 'P0004', 'L6', 'P0004', 2),
(52, '5f4dcc3b5aa765d61d8327deb882cf99', 'mary.lu', 'AC003', 'Mary Lizabeth', 'Lu', '.', 'CCS', 'ST', 'P0004', 'L2', 'P0004', 2),
(53, '5f4dcc3b5aa765d61d8327deb882cf99', 'keone.medina', 'AC003', 'Keone Karl', 'Medina', '.', 'CCS', 'ST', 'P0004', 'L2', 'P0004', 2),
(54, '5f4dcc3b5aa765d61d8327deb882cf99', 'kristian.mitra', 'AC003', 'Kristian', 'Mitra', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(55, '5f4dcc3b5aa765d61d8327deb882cf99', 'emilio.moghareh', 'AC003', 'Emilio Ramin', 'Moghareh', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(56, '5f4dcc3b5aa765d61d8327deb882cf99', 'leo.pangilinan', 'AC003', 'Leo Allen', 'Pangilinan', '.', 'CCS', 'ST', 'P0004', 'APL1', 'P0004', 2),
(57, '5f4dcc3b5aa765d61d8327deb882cf99', 'jemie.que', 'AC003', 'Jemie', 'Que', '.', 'CCS', 'ST', 'P0004', 'APL1', 'P0004', 2),
(58, '5f4dcc3b5aa765d61d8327deb882cf99', 'rose.sale', 'AC003', 'Rose Ann', 'Sale', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(59, '5f4dcc3b5aa765d61d8327deb882cf99', 'geoffrey.solano', 'AC003', 'Geoffrey', 'Solano', '.', 'CCS', 'ST', 'P0004', 'APL4', 'P0004', 2),
(60, '5f4dcc3b5aa765d61d8327deb882cf99', 'vicky.sy', 'AC003', 'Vicky', 'Sy', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(61, '5f4dcc3b5aa765d61d8327deb882cf99', 'tommy.tan', 'AC003', 'Tommy', 'Tan', '.', 'CCS', 'ST', 'P0004', 'L1', 'P0004', 2),
(62, '5f4dcc3b5aa765d61d8327deb882cf99', 'joanne.vilda', 'AC003', 'Joanne', 'Vilda', '.', 'CCS', 'ST', 'P0004', 'L6', 'P0004', 2),
(63, '5f4dcc3b5aa765d61d8327deb882cf99', 'jason.wong', 'AC003', 'Jason', 'Wong', '.', 'CCS', 'ST', 'P0004', 'APL1', 'P0004', 2),
(1111, '5f4dcc3b5aa765d61d8327deb882cf99', 'staff.account', 'AC004', 'Account', 'Staff', 'S', 'CCS', 'CT', 'P0006', ' N/A', 'P0005', 1),
(20001, '5f4dcc3b5aa765d61d8327deb882cf99', 'admin.account', 'AC001', 'Administrator', 'System', 'A', 'CCS', ' N/A', 'P0003', 'L1', 'P0000', 1),
(20002, '5f4dcc3b5aa765d61d8327deb882cf99', 'ct.manager', 'AC002', 'Manager', 'CT', 'CT', 'CCS', 'CT', 'PPPPP', ' N/A', 'PPPPP', 1),
(20003, '827ccb0eea8a706c4c34a16891f84e7b', 'qmo.account', 'AC005', 'QMO', 'QMO', 'QMO', 'CCS', ' N/A', 'PPPPP', ' N/A', 'PPPPP', 1),
(22222, '5f4dcc3b5aa765d61d8327deb882cf99', 'staff.account', 'AC004', 'Account', 'Staff', 'S', 'CCS', 'CT', 'P0006', ' N/A', 'P0005', 1),
(20123256, '5f4dcc3b5aa765d61d8327deb882cf99', 'alain.encarnacion', 'AC003', 'Encarnacion', 'Alain', 'Lizardo', 'CCS', 'IT', 'P0003', 'AP1', 'P0003', 1),
(20123590, '5f4dcc3b5aa765d61d8327deb882cf99', 'machristine.gendrano ', 'AC003', 'Ma Christine', 'Gendrano', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 1),
(20123647, '5f4dcc3b5aa765d61d8327deb882cf99', 'michelle.ching', 'AC003', 'Ching', 'Michelle Renee', 'Domingo', 'CCS', 'IT', 'P0004', 'L2', 'P0003', 1),
(20132220, '5f4dcc3b5aa765d61d8327deb882cf99', 'cecille.ochotorena', 'AC003', 'Cecille Adrianne', 'Ochotorena', 'Yap', 'CCS', 'CT', 'P0004', 'ASSOCPL1', 'P0004', 2),
(20133413, '5f4dcc3b5aa765d61d8327deb882cf99', 'lance.alcabasa', 'AC003', 'Lance', 'Alcabasa', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 1),
(20133707, '5f4dcc3b5aa765d61d8327deb882cf99', 'franchesca.laguna', 'AC003', 'Ann Franchesca', 'Laguna', 'Balon', 'CCS', 'CT', 'P0003', 'AP1', 'P0003', 1),
(20141009, '5f4dcc3b5aa765d61d8327deb882cf99', 'katrina.solomon', 'AC003', 'Katrina Ysabel', 'Solomon', 'Camtan', 'CCS', 'CT', 'P0003', 'AP1', 'P0003', 1),
(20141718, '5f4dcc3b5aa765d61d8327deb882cf99', 'courtney.ngo', 'AC003', 'Courtney', 'Ngo', '.', 'CCS', 'ST', 'P0003', 'TEAASSOC', 'P0003', 1),
(20141769, '5f4dcc3b5aa765d61d8327deb882cf99', 'daniel.tan ', 'AC003', 'Daniel Stanley', 'Tan', '.', 'CCS', 'ST', 'P0003', 'TEAASSOC', 'P0003', 1),
(20141890, '5f4dcc3b5aa765d61d8327deb882cf99', 'thomas.tiam-lee', 'AC003', 'Thomas James', 'Tiam-Lee', '.', 'CCS', 'ST', 'P0003', 'TEAASSOC', 'P0003', 1),
(20143558, '5f4dcc3b5aa765d61d8327deb882cf99', 'loreto.sibayan', 'AC003', 'Loreto ', 'Sibayan II', 'Valtiendas', 'CCS', 'IT', 'P0003', ' N/A', 'P0003', 1),
(20143559, '5f4dcc3b5aa765d61d8327deb882cf99', 'brian.dejesus', 'AC003', 'Brian Kenneth', 'De Jesus', 'Angeles', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 1),
(97000011, '5f4dcc3b5aa765d61d8327deb882cf99', 'rochelle.tabirao', 'AC004', 'Rochelle', 'Tabirao', 'P.', 'CCS', 'CT', 'PPPPP', ' N/A', 'P0005', 1),
(97012345, '696d29e0940a4957748fe3fc9efd22a3', 'alexie.ballon', 'AC003', 'Alexie', 'Ballon', 'E.', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97012610, '5f4dcc3b5aa765d61d8327deb882cf99', 'mike.tan', 'AC003', 'Mike Anthony', 'Tan', 'Sy', 'CCS', 'IT', 'P0004', 'L2', 'P0003', 2),
(97014753, '5f4dcc3b5aa765d61d8327deb882cf99', 'jocelynn.cu', 'AC002', 'Jocelynn', 'Cu', 'Wong', 'CCS', 'CT', 'P0003', 'AP7', 'P0003', 1),
(97014788, '5f4dcc3b5aa765d61d8327deb882cf99', 'maryjane.arcilla', 'AC002', 'Arcilla', 'Mary Jane', 'Bacong', 'CCS', 'IT', 'P0003', 'AP4', 'P0002', 1),
(97014818, '5f4dcc3b5aa765d61d8327deb882cf99', 'oliver.malabanan', 'AC003', 'Oliver', 'Malabanan', 'Arciaga', 'CCS', 'IT', 'P0003', 'AP3', 'P0003', 1),
(97015512, '5f4dcc3b5aa765d61d8327deb882cf99', 'clement.ong', 'AC003', 'Clement', 'Ong', 'Yu', 'CCS', 'CT', 'P0003', 'AP7', 'P0003', 1),
(97015784, '5f4dcc3b5aa765d61d8327deb882cf99', 'renato.molano', 'AC003', 'Renato Jose Maria', 'Molano', 'Villanueva', 'CCS', 'IT', 'P0003', 'AP7', 'P0003', 1),
(97020087, '5f4dcc3b5aa765d61d8327deb882cf99', 'danny.cheng', 'AC003', 'Cheng', 'Danny', 'Co', 'CCS', 'IT', 'P0003', 'AP7', 'P0003', 1),
(97020095, '5f4dcc3b5aa765d61d8327deb882cf99', 'nathalie.lim-cheng', 'AC003', 'Nathalie Rose', 'Lim-Cheng', '.', 'CCS', 'ST', 'P0003', 'AP7', 'P0003', 1),
(97026050, '5f4dcc3b5aa765d61d8327deb882cf99', 'arlyn.ong', 'AC003', 'Arlyn Verina', 'Ong', 'Lao', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97028304, '5f4dcc3b5aa765d61d8327deb882cf99', 'nelson.marcos', 'AC003', 'Nelson', 'Marcos', '.', 'CCS', 'ST', 'P0003', 'ASSOCP5', 'P0001', 1),
(97031720, '5f4dcc3b5aa765d61d8327deb882cf99', 'ana.pedro', 'AC003', 'Ana Marian', 'Pedro', 'Manahan', 'CCS', 'CT', 'P0004', 'I2', 'P0004', 2),
(97031909, '5f4dcc3b5aa765d61d8327deb882cf99', 'gregory.cu', 'AC003', 'Gregory', 'Cu', 'Go', 'CCS', 'CT', 'P0003', 'AP5', 'P0003', 1),
(97031925, '5f4dcc3b5aa765d61d8327deb882cf99', 'charibeth.cheng', 'AC003', 'Charibeth', 'Cheng', 'Koh', 'CCS', 'CT', 'P0004', 'AP7', 'P0004', 2),
(97031968, '5f4dcc3b5aa765d61d8327deb882cf99', 'zelinna.pablo', 'AC003', 'Zelinna Cynthia', 'Pablo', 'De Guzman', 'CCS', 'IT', 'P0003', 'ASSOCP4', 'P0003', 2),
(97031976, '5f4dcc3b5aa765d61d8327deb882cf99', 'sherwin.ona', 'AC003', 'Sherwin', 'Ona', '.', 'CCS', 'IT', 'P0003', 'ASSOCP4', 'P0003', 2),
(97031992, '5f4dcc3b5aa765d61d8327deb882cf99', 'jose.espiritu', 'AC003', 'Espiritu', 'Jose Lloyd', '.', 'CCS', 'IT', 'P0003', 'ASSOCP7', 'P0003', 2),
(97033235, '5f4dcc3b5aa765d61d8327deb882cf99', 'allan.borra', 'AC003', 'Allan', 'Borra', '.', 'CCS', 'ST', 'P0003', 'AP4', 'P0003', 1),
(97041025, '5f4dcc3b5aa765d61d8327deb882cf99', 'rachel.roxas', 'AC003', 'Rachel', 'Roxas', '.', 'CCS', 'ST', 'P0003', 'ASSOCP7', 'P0003', 2),
(97041041, '5f4dcc3b5aa765d61d8327deb882cf99', 'elaine.chua', 'AC003', 'Elaine', 'Chua', '.', 'CCS', 'ST', 'P0003', 'AP5', 'P0003', 2),
(97041378, '5f4dcc3b5aa765d61d8327deb882cf99', 'alexis.pantola', 'AC003', 'Alexis', 'Pantola', 'Velarde', 'CCS', 'CT', 'P0004', 'ASSOCPL3', 'P0004', 1),
(97041536, '5f4dcc3b5aa765d61d8327deb882cf99', 'rigan.ap-apid', 'AC003', 'Rigan', 'Ap-apid', '.', 'CCS', 'ST', 'P0003', 'AP6', 'P0003', 2),
(97042498, '5f4dcc3b5aa765d61d8327deb882cf99', 'shirley.chu', 'AC003', 'Shirley', 'Chu', '.', 'CCS', 'ST', 'P0003', 'AP4', 'P0003', 1),
(97042579, '5f4dcc3b5aa765d61d8327deb882cf99', 'conrado.ruiz', 'AC003', 'Conrado', 'Ruiz', '.', 'CCS', 'ST', 'P0003', 'AP5', 'P0003', 1),
(97042803, '5f4dcc3b5aa765d61d8327deb882cf99', 'jesus.gonzalez', 'AC003', 'Jesus', 'Gonzalez', 'Estacio', 'CCS', 'CT', 'P0004', 'AP7', 'P0004', 2),
(97045179, '5f4dcc3b5aa765d61d8327deb882cf99', 'vitaliano.depante', 'AC003', 'Depante', 'Vitaliano', '.', 'CCS', 'IT', 'P0004', 'APL2', 'P0003', 1),
(97049182, '5f4dcc3b5aa765d61d8327deb882cf99', 'teresita.limoanco', 'AC003', 'Teresita', 'Limoanco', '.', 'CCS', 'ST', 'P0003', 'AP7', 'P0003', 1),
(97049212, '5f4dcc3b5aa765d61d8327deb882cf99', 'ethel.ong ', 'AC002', 'Ethel', 'Ong', '.', 'CCS', 'ST', 'P0003', 'AP7', 'P0003', 1),
(97049328, '5f4dcc3b5aa765d61d8327deb882cf99', 'caslon.chua', 'AC003', 'Caslon', 'Chua', '.', 'CCS', 'ST', 'P0003', 'ASSOCP4', 'P0003', 2),
(97049336, '5f4dcc3b5aa765d61d8327deb882cf99', 'arnulfo.azcarraga', 'AC003', 'Arnulfo', 'Azcarraga', '.', 'CCS', 'ST', 'P0003', 'FP4', 'P0003', 1),
(97049344, '5f4dcc3b5aa765d61d8327deb882cf99', 'judith.azcarraga', 'AC003', 'Judith', 'Azcarraga', 'Yumig', 'CCS', 'CT', 'P0003', 'AP5', 'P0003', 1),
(97049379, '5f4dcc3b5aa765d61d8327deb882cf99', 'merlin.suarez ', 'AC002', 'Merlin Teodosia', 'Suarez', '.', 'CCS', 'ST', 'P0003', 'FP1', 'P0001', 1),
(97049441, '5f4dcc3b5aa765d61d8327deb882cf99', 'julius.suarez', 'AC003', 'Julius', 'Suarez', 'Quizon', 'CCS', 'CT', 'P0004', 'L8', 'P0004', 2),
(97052566, '5f4dcc3b5aa765d61d8327deb882cf99', 'jose.paredes', 'AC003', 'Jose Manuel', 'Paredes', '. ', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97053066, '5f4dcc3b5aa765d61d8327deb882cf99', 'victoria.pineda', 'AC003', 'Ma. Victoria', 'Pineda', 'Pangilinan', 'CCS', 'IT', 'P0003', 'I8', 'P0003', 2),
(97053139, '5f4dcc3b5aa765d61d8327deb882cf99', 'lissa.magpantay', 'AC002', 'Lissa Andrea', 'Magpantay', 'Katigbak', 'CCS', 'IT', 'P0003', 'AP7', 'P0002', 1),
(97053848, '5f4dcc3b5aa765d61d8327deb882cf99', 'raymund.sison', 'AC003', 'Raymund', 'Sison', '.', 'CCS', 'ST', 'P0003', 'FP6', 'P0003', 1),
(97053856, '5f4dcc3b5aa765d61d8327deb882cf99', 'solomon.see', 'AC003', 'Solomon', 'See', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 1),
(97053937, '5f4dcc3b5aa765d61d8327deb882cf99', 'florante.salvador', 'AC003', 'Florante', 'Salvador', '.', 'CCS', 'ST', 'P0003', 'ASSOCP7', 'P0003', 1),
(97053953, '5f4dcc3b5aa765d61d8327deb882cf99', 'marivic.tangkeko', 'AC003', 'Marivic', 'Tangkeko', 'Santos', 'CCS', 'IT', 'P0003', 'AP7', 'P0003', 1),
(97054038, '5f4dcc3b5aa765d61d8327deb882cf99', 'glenn.sipin', 'AC003', 'Glenn', 'Sipin', 'Lugue', 'CCS', 'IT', 'P0003', 'AP7', 'P0003', 1),
(97054097, '5f4dcc3b5aa765d61d8327deb882cf99', 'roger.uy', 'AC003', 'Roger Luis', 'Uy', 'Tan', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97054305, '5f4dcc3b5aa765d61d8327deb882cf99', 'emmanuel.gonzalez', 'AC003', 'Emmanuel', 'Gonzalez', 'Azcarraga', 'CCS', 'CT', 'P0004', 'APL2', 'P0004', 2),
(97055743, '5f4dcc3b5aa765d61d8327deb882cf99', 'remedios.bulos ', 'AC003', 'Remedios', 'Bulos', '.', 'CCS', 'ST', 'P0003', 'ASSOCP7', 'P0003', 1),
(97056081, '5f4dcc3b5aa765d61d8327deb882cf99', 'agnes.yuhico', 'AC003', 'Agnes', 'Yuhico', '.', 'CCS', 'IT', 'P0003', 'I6', 'P0003', 2),
(97056103, '5f4dcc3b5aa765d61d8327deb882cf99', 'karlo.campos', 'AC003', 'Karlo Shane', 'Campos', 'Orozco', 'CCS', 'CT', 'P0004', 'I3', 'P0004', 2),
(97056200, '5f4dcc3b5aa765d61d8327deb882cf99', 'miguel.gomez', 'AC003', 'Miguel Alberto', 'Gomez', 'Norberte', 'CCS', 'CT', 'P0004', 'I2', 'P0004', 2),
(97059196, '5f4dcc3b5aa765d61d8327deb882cf99', 'francis.lai', 'AC003', 'Francis', 'Lai', 'Pe', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97063932, '5f4dcc3b5aa765d61d8327deb882cf99', 'geanne.franco', 'AC003', 'Geanne Ross', 'Franco', 'Lunar', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97064424, '5f4dcc3b5aa765d61d8327deb882cf99', 'briane.samson', 'AC003', 'Briane Paul', 'Samson', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 1),
(97077763, '5f4dcc3b5aa765d61d8327deb882cf99', 'alexei.ballon', 'AC003', 'Alexei', 'Ballon', 'Erese', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97077798, '5f4dcc3b5aa765d61d8327deb882cf99', 'ravi.kumar', 'AC003', 'Ravi ', 'Kumar', '.', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97078212, '5f4dcc3b5aa765d61d8327deb882cf99', 'cindy.saw', 'AC003', 'Cindy', 'Saw', '.', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97078239, '5f4dcc3b5aa765d61d8327deb882cf99', 'therese.seares', 'AC003', 'Therese', 'Seares', '.', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97079669, '5f4dcc3b5aa765d61d8327deb882cf99', 'estefanie.ulit', 'AC003', 'Estefanie', 'Ulit', 'De Jesus', 'CCS', 'IT', 'P0003', 'AP2', 'P0003', 1),
(97088366, '5f4dcc3b5aa765d61d8327deb882cf99', 'christine.lim', 'AC003', 'Christine Diane', 'Lim', 'Quevedo', 'CCS', 'IT', 'P0004', 'TEAASSOC', 'P0003', 1),
(97088420, '5f4dcc3b5aa765d61d8327deb882cf99', 'arturo.caronongan', 'AC003', 'Arturo III', 'Caronongan', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 1),
(97088897, '5f4dcc3b5aa765d61d8327deb882cf99', 'macario.cordel', 'AC003', 'Macario Ii', 'Cordel', 'Olalo', 'CCS', 'CT', 'P0003', 'AP2', 'P0003', 1),
(97090328, '5f4dcc3b5aa765d61d8327deb882cf99', 'christian.echavez', 'AC003', 'Christian', 'Echavez', 'De Castro', 'CCS', 'CT', 'P0004', 'I1', 'P0004', 2),
(97090638, '5f4dcc3b5aa765d61d8327deb882cf99', 'rafael.cabredo', 'AC003', 'Rafael', 'Cabredo', '.', 'CCS', 'ST', 'P0003', 'ASSOCP5', 'P0003', 1),
(97090654, '5f4dcc3b5aa765d61d8327deb882cf99', 'rhia.trogo', 'AC003', 'Rhia ', 'Trogo', '.', 'CCS', 'ST', 'P0003', 'AP5', 'P0003', 2),
(97091219, '5f4dcc3b5aa765d61d8327deb882cf99', 'joel.ilao', 'AC003', 'Joel', 'Ilao', 'Paz', 'CCS', 'CT', 'P0003', 'AP5', 'P0003', 1),
(97091596, '5f4dcc3b5aa765d61d8327deb882cf99', 'russel.lim', 'AC003', 'Russel Lloyd', 'Lim', 'Chua', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97092134, '5f4dcc3b5aa765d61d8327deb882cf99', 'martin.deleon', 'AC003', 'Martin Ivan', 'De Leon', '. ', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97093017, '5f4dcc3b5aa765d61d8327deb882cf99', 'ralph.regalado', 'AC003', 'Ralph Vincent', 'Regalado', '.', 'CCS', 'ST', 'P0003', 'AP2', 'P0003', 1),
(97093041, '5f4dcc3b5aa765d61d8327deb882cf99', 'kristofferson.deocampo', 'AC003', 'Kristofferson', 'De Ocampo', 'Factora', 'CCS', 'CT', 'P0004', 'L4', 'P0004', 2),
(97093157, '5f4dcc3b5aa765d61d8327deb882cf99', 'ryan.dimaunahan', 'AC003', 'Ryan Samuel', 'Dimaunahan', '.', 'CCS', 'ST', 'P0003', 'AP1', 'P0003', 1),
(97094137, '5f4dcc3b5aa765d61d8327deb882cf99', 'lawrence.rodriguez', 'AC003', 'Lawrence', 'Rodriguez', 'Tolentino', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97094307, '5f4dcc3b5aa765d61d8327deb882cf99', 'ralph.payumo', 'AC003', 'Ralph Christian', 'Payumo', 'Restor', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97094323, '5f4dcc3b5aa765d61d8327deb882cf99', 'isaac.sabas', 'AC003', 'Isaac Herculano', 'Sabas', 'Sun', 'CCS', 'CT', 'P0004', 'L1', 'P0004', 2),
(97094536, '5f4dcc3b5aa765d61d8327deb882cf99', 'corinne.ang', 'AC003', 'Ang', 'Corinne', 'Sia', 'CCS', 'IT', 'P0004', 'L1', 'P0003', 2),
(97094684, '5f4dcc3b5aa765d61d8327deb882cf99', 'liandro.tabora', 'AC003', 'Liandro Antonio', 'Tabora', 'Tiongson', 'CCS', 'IT', 'P0003', 'I1', 'P0003', 2),
(97095915, '5f4dcc3b5aa765d61d8327deb882cf99', 'kai.fernandez', 'AC003', 'Kai Shan', 'Fernandez', '.', 'CCS', 'ST', 'P0003', 'AP7', 'P0003', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`INDUSTRY_ID`, `INDUSTRY_NAME`, `IND_ACRONYM`) VALUES
(1, '  N/A', '  N/A'),
(2, 'Digital Telecommunications Philippines', '(DIGITEL)'),
(3, 'Globe Telecomm', '(GLOBE)'),
(4, 'Integrated Microelectronics, Inc.', '(IMI)'),
(6, 'Philippine Long Distance Company', '(PLDT)');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`INSTITUTION_ID`, `INSTITUTION_NAME`, `LOCATION`, `COUNTRY`) VALUES
(1, '  N/A', '1', ' N/A'),
(2, 'De La Salle University', '1', 'PHL'),
(3, 'Ateneo De Manila University', '1', 'PHL'),
(4, 'University of the Philippines, Diliman', '1', 'PHL'),
(5, 'University of the Philippines, Los Banos', '1', 'PHL'),
(6, 'Technological University of the Philippines', '1', 'PHL'),
(7, 'University of Santo Tomas', '1', 'PHL'),
(9, 'Colegio de San Juan de Letran', '1', 'PHL'),
(10, 'FEU - East Asia College', '1', 'PHL'),
(11, 'Pamantasan Ng Lungsod Ng Maynila', '1', 'PHL');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `ORG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_ACRONYM` varchar(25) DEFAULT NULL,
  `ORG_LOCATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`ORG_ID`, `ORG_NAME`, `ORG_ACRONYM`, `ORG_LOCATION`) VALUES
(1, '  N/A', '  N/A', ''),
(2, 'Philippines Society of Information Technology Educators', 'PSITE', 'Manila'),
(3, '', '', ''),
(4, 'Philippine Computing Organization Alliance', 'PCOA', 'DLSU Manila'),
(5, 'Computing Society of the Philippines', 'CSP', 'Manila'),
(7, 'Association Of Computing Machinery', 'ACM', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSITION_ID` varchar(5) NOT NULL,
  `POSITION_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`POSITION_ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`ID`, `POSITION_ID`, `POSITION_TITLE`) VALUES
(1, 'P0000', 'Administrator'),
(2, 'P0001', 'Dean'),
(3, 'P0002', 'Chairperson'),
(4, 'P0003', 'Full Time - Faculty'),
(5, 'P0004', 'Part Time - Faculty'),
(6, 'P0005', 'Academic Staff'),
(7, 'P0006', 'Academic Service Faculty'),
(8, 'PPPPP', '  N/A');

-- --------------------------------------------------------

--
-- Table structure for table `professional_acty`
--

CREATE TABLE IF NOT EXISTS `professional_acty` (
  `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEADER_TYPE` int(1) NOT NULL,
  `FID` int(8) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_NAME` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PA_ID`),
  KEY `fk_profacty_fid` (`FID`),
  KEY `professional_acty_ibfk_1` (`ORG_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `professional_acty`
--

INSERT INTO `professional_acty` (`PA_ID`, `LEADER_TYPE`, `FID`, `DESIGNATION`, `ORG_NAME`, `START_DATE`, `END_DATE`) VALUES
(1, 0, 97014788, 'Member', 'PSITE', '0000-00-00', 'Present'),
(2, 0, 97014788, 'Member', 'PCS', '0000-00-00', 'Present'),
(3, 0, 97014788, 'Member', 'itSMF', '0000-00-00', 'Present'),
(4, 0, 97049336, 'Member', '', '0000-00-00', ''),
(5, 1, 97049336, 'Board member', 'International Association of La Salle Univers', '0000-00-00', '2012'),
(6, 0, 97049336, 'Member', 'IEEE', '0000-00-00', '0'),
(7, 0, 97077763, 'Member', 'Philippine Society of Informatino Technology ', '0000-00-00', '2011'),
(8, 0, 97077763, 'Member', 'Philippine Instrumentation and Control Societ', '0000-00-00', '2008'),
(9, 1, 97033235, 'Local Organizing Committee', 'Special Interest Group for Natural Language P', '0000-00-00', '2012'),
(10, 0, 97033235, 'Founding Member', 'Association of Enterprise Architects-Philippi', '0000-00-00', '2015'),
(11, 0, 97033235, 'Member', 'Association of Computing Machine', '0000-00-00', '2008'),
(12, 0, 97033235, 'Member', 'Association of Computational Linguistics', '0000-00-00', '2008'),
(13, 0, 97033235, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2012'),
(14, 0, 97033235, 'Founding Member', 'Association of Enterprise Architects - Philip', '0000-00-00', '2015'),
(15, 1, 97090638, 'Academe representative', 'Game Developer''s Association of the Philippin', '0000-00-00', 'present'),
(16, 1, 97090638, 'Advisoral Board member', 'International Game Development Association - ', '0000-00-00', '2008'),
(17, 0, 97090638, 'Member', 'International Society for Music Information R', '0000-00-00', '2013'),
(18, 0, 97090638, 'Member', 'Game Developer''s Association of the Philippin', '0000-00-00', 'Dec-09'),
(19, 0, 97090638, 'Member', 'Microsoft-Faculty & Student Ambassador Progra', '0000-00-00', '2006'),
(20, 0, 97090638, 'Member', 'International Game Development Association – ', '0000-00-00', 'Dec-09'),
(21, 0, 97031925, 'Member', 'Computing Society of the Philippines', '0000-00-00', ''),
(22, 0, 97031925, 'Member', 'Association of Computing Machinery', '0000-00-00', '2007'),
(23, 0, 97031925, 'Member', 'Association of Computational Linguistics', '0000-00-00', '2007'),
(24, 0, 97031925, 'Member', 'Linguistic Society of the Philippines', '0000-00-00', '2010'),
(25, 1, 97020087, 'Academic Advocate', 'Information Systems Audit and Control Associa', '0000-00-00', '2015'),
(26, 0, 97020087, 'Member', 'Computing Society of the Philippines', '0000-00-00', '0'),
(27, 0, 97020087, 'Member', 'Information Systems Security Association', '0000-00-00', '2015'),
(28, 0, 97020087, 'Member', 'Information Systems Audit and Control Associa', '0000-00-00', '2015'),
(29, 0, 97042498, 'Member', 'Computer Science Teachers Association', '0000-00-00', 'Present'),
(30, 0, 97088897, 'Member', 'The Insitute of Electronics', '0000-00-00', ''),
(31, 0, 97088897, 'Member', 'Institute of Electrical and Electronics Engin', '0000-00-00', 'present'),
(32, 0, 97088897, 'Member', 'Institute of Electrical and Electronics Engin', '0000-00-00', 'Nov-07'),
(33, 0, 97031909, 'Member', 'Computing Society of the Philippines', '0000-00-00', '0'),
(34, 1, 97014753, 'Board member / Trustee', 'Cisco Networking Academy Core Council of the ', '0000-00-00', '2010'),
(35, 0, 97014753, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2014'),
(36, 0, 97045179, 'Member', 'CIO Forum', '0000-00-00', 'Present'),
(37, 0, 97045179, 'Member', 'Project Management Institute', '0000-00-00', 'Present'),
(38, 0, 97045179, 'Member', 'CIO/CTO Leadership Council', '0000-00-00', 'Present'),
(39, 0, 97045179, 'Member', 'Chief Information Officer Council', '0000-00-00', 'Present'),
(40, 0, 97045179, 'Member', 'International Alliance of Quality Professiona', '0000-00-00', 'Present'),
(41, 0, 20123256, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2006'),
(42, 0, 97063932, 'Member', 'PSITE', '0000-00-00', '2010'),
(43, 0, 20123590, 'Member', 'Mathematical Society of the Philippines', '0000-00-00', '2015'),
(44, 0, 97091219, 'Member', 'Institute of Electrical and Electronics Engin', '0000-00-00', 'present'),
(45, 0, 97091219, 'Member', 'Institute of Electronics', '0000-00-00', ''),
(46, 0, 97091219, 'Member', 'Institute of Electronics and Communications E', '0000-00-00', '2003'),
(47, 0, 97091219, 'Member', 'Institute of Electronics and Communications E', '0000-00-00', '2006'),
(48, 0, 97091219, 'Member', 'Computing Society of the Philippines ', '0000-00-00', '2006'),
(49, 0, 97091219, 'Member', 'Computing Society of the Philippines ', '0000-00-00', '2009'),
(50, 0, 97091219, 'Member', 'Computing Society of the Philippines ', '0000-00-00', 'present'),
(51, 0, 97020095, 'Member', 'Association of Computer Machinery (ACM)', '0000-00-00', '0'),
(52, 0, 97020095, 'Member', 'Institute of Electrical and Electronics Engin', '0000-00-00', '0'),
(53, 0, 97020095, 'Member', 'Computer Science Teachers Association (CSTA)', '0000-00-00', '0'),
(54, 0, 97020095, 'Member', 'Association for Computational Linguistics (AC', '0000-00-00', '0'),
(55, 0, 97020095, 'Member', 'Computing Society of the Philippines (CSP)', '0000-00-00', '0'),
(56, 0, 97053139, 'Member', 'PCS', '0000-00-00', '1998'),
(57, 1, 97014818, 'Vice-President', 'Philippine eLearning Society', '0000-00-00', '2011'),
(58, 0, 97014818, 'Member', 'Philippine Computing Society', '0000-00-00', 'Present'),
(59, 0, 97014818, 'Member', 'Philippine Society for IT Educators', '0000-00-00', 'Present'),
(60, 1, 97028304, 'Accreditor', 'PAASCU', '0000-00-00', 'present'),
(61, 1, 97028304, 'Judge', 'ACM National/Regional/International Programmi', '0000-00-00', 'present'),
(62, 0, 97028304, 'Member', 'DOST PCASTRD STCC Technical Panel on ICT', '0000-00-00', '2004'),
(63, 1, 97028304, 'First Vice President', 'TEX Users Group', '0000-00-00', ''),
(64, 1, 97028304, 'Treasurer', 'TEX Users Group', '0000-00-00', ''),
(65, 1, 97028304, 'Accreditor', 'PAASCU', '0000-00-00', 'present'),
(66, 1, 97028304, 'Judge', 'ACM National/Regional/International Programmi', '0000-00-00', 'present'),
(67, 0, 97028304, 'Member', 'DOST PCASTRD STCC Technical Panel on ICT', '0000-00-00', '2004'),
(68, 1, 97028304, 'First Vice President', 'TEX Users Group', '0000-00-00', ''),
(69, 1, 97028304, 'Treasurer', 'TEX Users Group', '0000-00-00', ''),
(70, 1, 97015784, 'National Adviser', 'Philippine Association of Campus Student Advi', '0000-00-00', '2016'),
(71, 1, 97015784, 'National President', 'Philippine Association of Campus Student Advi', '0000-00-00', '2014'),
(72, 1, 97015784, 'Public Relations Officer', 'Philippine Association of Campus Student Advi', '0000-00-00', '2012'),
(73, 1, 97015784, 'Executive Vice President', 'Philippine Association of Campus Student Advi', '0000-00-00', '2006'),
(74, 0, 97015784, 'Member', 'Philippine Society of IT Educators', '0000-00-00', 'present'),
(75, 0, 97015784, 'Member', 'Philippine Computing Society', '0000-00-00', 'present'),
(76, 0, 97015784, 'Member', 'Philippine Association of Campus Student Advi', '0000-00-00', 'present'),
(77, 0, 97026050, 'Member', 'C3P Core Council of the Philippines', '0000-00-00', '2015'),
(78, 0, 97015512, 'Associate Member', 'Audio Engineering Society', '0000-00-00', '2012'),
(79, 0, 97015512, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2013'),
(80, 0, 97049212, 'Member', 'Computing Society of the Philippines - SIG on', '0000-00-00', 'Present'),
(81, 0, 97041378, 'Member', 'Computing Society of the Philippines', '0000-00-00', 'Present'),
(82, 0, 97041378, 'Member', 'International Information Systems Security Ce', '0000-00-00', ''),
(83, 1, 97093017, 'Community Manager', 'Google Developers Group Philippines', '0000-00-00', '0'),
(84, 0, 97093017, 'Member', 'COMPUTING SOCIETY OF THE PHILIPPINES - SPECIA', '0000-00-00', 'Present'),
(85, 0, 97093017, 'Member', 'INTERNATIONAL ASSOCIATION OF COMPUTER SCIENCE', '0000-00-00', 'Present'),
(86, 0, 97093017, 'Member', 'COUNCIL FOR TEACHING THE FILIPINO LANGUAGE – ', '0000-00-00', 'Present'),
(87, 0, 97042579, 'Member', 'Association of Computing Machineries - Specia', '0000-00-00', 'present'),
(88, 0, 97042579, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2006'),
(89, 0, 97053937, 'Member', 'Philippine Association of Japanese Government', '0000-00-00', '0'),
(90, 0, 97053937, 'Founding Member', 'Nagoya University Alumni Association Philippi', '0000-00-00', ''),
(91, 0, 97053856, 'Member', 'PCSC', '0000-00-00', '0'),
(92, 0, 97053856, 'Member', 'ACM', '0000-00-00', '0'),
(93, 1, 97054038, 'Founder and Past President', '', '0000-00-00', ''),
(94, 0, 97054038, 'Member', 'PSITE', '0000-00-00', 'Present'),
(95, 0, 97053848, 'Board Member', 'Asia-Pacific Society for Computers in Educati', '0000-00-00', '2006'),
(96, 1, 97053848, 'Founding President', 'Computing Society of the Philippines ', '0000-00-00', '2002'),
(97, 0, 97053848, 'Member', 'Game Development Association of the Philippin', '0000-00-00', 'present'),
(98, 0, 97053848, 'Member', 'Association for Computing Machinery', '0000-00-00', 'present'),
(99, 0, 20141009, 'Member', 'EMC Academic Alliance', '0000-00-00', 'present'),
(100, 0, 97053953, 'Member', 'Philippine Computer Society', '0000-00-00', '2012'),
(101, 0, 97053953, 'Member', 'PCITE', '0000-00-00', '2013'),
(102, 0, 97053953, 'Member', 'itSMF', '0000-00-00', 'present'),
(103, 0, 97079669, 'Member', 'Adobe Users Group Philippines', '0000-00-00', 'present'),
(104, 0, 97079669, 'Member', 'Philippine Computer Society', '0000-00-00', 'present'),
(105, 0, 97079669, 'Member', 'Philippine Society of Information Technology ', '0000-00-00', 'present'),
(106, 0, 97054097, 'Member', 'Computing Society of the Philippines', '0000-00-00', '2006'),
(107, 0, 97054097, 'Member', 'Computing Society of the Philippines', '0000-00-00', '0'),
(108, 0, 97054097, 'Member', 'IEEE Computer Society', '0000-00-00', '2005');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `professional_exp`
--

INSERT INTO `professional_exp` (`PE_ID`, `FID`, `LICENSURE_TITLE`, `YEAR_PASSED`, `LICENSE_NO`, `DATE_VALIDITY`) VALUES
(1, 97014788, 'Lean Six Sigma - Yellow Belt', 2014, 0, '0000-00-00'),
(2, 97014788, 'ITIL 2011 Foundation', 2013, 0, '0000-00-00'),
(3, 97077763, 'IBM Certified Solution Advisor - Cloud Comput', 2011, 0, '0000-00-00'),
(4, 97020087, 'Certified Information Security Manager', 2012, 1221447, '0000-00-00'),
(5, 97020087, 'Certified in Risk and Information System Cont', 2014, 1418166, '0000-00-00'),
(6, 97020087, 'COBIT5 Foundation', 2015, 0, '0000-00-00'),
(7, 97088897, 'ECE Board Exam', 2006, 38980, '0000-00-00'),
(8, 20143559, 'Philippine National Information Technology St', 2001, 2001, '0000-00-00'),
(9, 97091219, 'Electronics and Communications Engineering', 2002, 28111, '0000-00-00'),
(10, 97015784, 'ECE Board Exams', 1985, 0, '0000-00-00'),
(11, 97026050, 'IBM Academic Associate Certification- DB2 9 D', 2011, 0, '0000-00-00'),
(12, 97026050, 'Cisco Certified Network Associate', 2013, 2147483647, '0000-00-00'),
(13, 97026050, 'EMC Academic Associate - Cloud Infrastructure', 2014, 0, '0000-00-00'),
(14, 20143558, 'Electronics and Communications Licensure Exam', 1999, 0, '0000-00-00'),
(15, 97054038, 'Government CAREER-PROF EXAM ', 1979, 0, '0000-00-00'),
(16, 97054038, 'Government Career Executive Services Eligibil', 1995, 1914, '0000-00-00'),
(17, 97053953, 'Civil Service Examination', 0, 0, '0000-00-00'),
(18, 97053953, 'Lean Six Sigma - Yellow Belt', 2014, 0, '0000-00-00'),
(19, 97053953, 'ITIL 2011 Foundation', 2013, 2369263, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `professional_prac`
--

CREATE TABLE IF NOT EXISTS `professional_prac` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PP_ID`),
  KEY `fk_profprac_fid` (`FID`),
  KEY `professional_prac_ibfk_1` (`INSTITUTION`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `professional_prac`
--

INSERT INTO `professional_prac` (`PP_ID`, `FID`, `WORK_NATURE`, `INSTITUTION`, `NO_YEARS`, `START_DATE`, `END_DATE`) VALUES
(1, 20133413, 'Technical Specialist', 'Provoke Solutions Makati', 1, '0000-00-00', '0000-00-00'),
(2, 20133413, 'Associate Consultant', 'Manpower PH - Microsoft Philippines', 1, '0000-00-00', '0000-00-00'),
(3, 20133413, 'Research Assistant', 'Datacraft CRC Batch 4', 1, '0000-00-00', '0000-00-00'),
(4, 97014788, 'Modern Conduct of Schools', 'DLSP', 1, '0000-00-00', '0000-00-00'),
(5, 97049336, 'IT Professional (programmer', '', 0, '0000-00-00', '0000-00-00'),
(6, 97049336, 'Senior Research Fellow', 'School of Computing', 0, '0000-00-00', '0000-00-00'),
(7, 97033235, 'Consultant - Modernization Program', 'Commission on Elections', 2, '0000-00-00', '0000-00-00'),
(8, 97033235, 'Technical Consultant - Phase 2 (Automated Cou', 'Commission on Elections', 2, '0000-00-00', '0000-00-00'),
(9, 97033235, 'Content Development and Management of Trainin', 'Career Executive Service Board (Government) a', 1, '0000-00-00', '0000-00-00'),
(10, 97033235, 'Project Lead', '', 0, '0000-00-00', '0000-00-00'),
(11, 97033235, 'Project Lead and Consultant', '', 0, '0000-00-00', '0000-00-00'),
(12, 97055743, 'Consultant', 'Soft Tech Advantage', 0, '0000-00-00', '0000-00-00'),
(13, 97055743, 'Systems Analyst/Programmer/Project Manager', 'De La Salle university', 3, '0000-00-00', '0000-00-00'),
(14, 97055743, 'Systems Analyst/Programmer', 'Filinvest Credit Corporation', 1, '0000-00-00', '0000-00-00'),
(15, 97055743, 'Researcher and Programmer', 'Natural Resources Management Center', 3, '0000-00-00', '0000-00-00'),
(16, 97090638, 'Co-founder / Project Manager', 'IntelliSense', 0, '0000-00-00', '0000-00-00'),
(17, 97088420, 'Oregon Trail Dsi Port', 'Gameloft Inc.', 1, '0000-00-00', '0000-00-00'),
(18, 97031925, 'co-founder', '', 0, '0000-00-00', '0000-00-00'),
(19, 97031925, 'Consultant', 'James Martin and Co.', 6, '0000-00-00', '0000-00-00'),
(20, 97020087, 'Deployment of Portal', 'Manila Police District', 1, '0000-00-00', '0000-00-00'),
(21, 97020087, 'Information System', 'Commission on Higher Education', 0, '0000-00-00', '0000-00-00'),
(22, 97020087, 'Online Matching System', 'Transparency and Accountability Network', 0, '0000-00-00', '0000-00-00'),
(23, 97020087, 'Online Portal', 'Cavite Philippine National Police', 2, '0000-00-00', '0000-00-00'),
(24, 97020087, 'Open Source Mobile Application Distribution i', 'DOST-PCASTRD', 1, '0000-00-00', '0000-00-00'),
(25, 20123647, 'ERP System', 'Manila Cordage Company', 7, '0000-00-00', '0000-00-00'),
(26, 97042498, 'Software Engineer', 'Infinity Information Systems', 0, '0000-00-00', '0000-00-00'),
(27, 97088897, 'Design Electrical Engineer', 'Emerson Network Power- Embedded Power and Com', 2, '0000-00-00', '0000-00-00'),
(28, 97031909, 'Network Consultant', 'Secur Links Network and Technologies', 5, '0000-00-00', '0000-00-00'),
(29, 97031909, 'Systems Consultant', 'Integrated Computer Solutions Inc.', 1, '0000-00-00', '0000-00-00'),
(30, 97014753, 'Special Projects Manager', 'Cisco Networking Academy - Asia Pacific Regio', 6, '0000-00-00', '0000-00-00'),
(31, 97014753, 'Co-founder / Project Manager', 'IntelliSense', 0, '0000-00-00', '0000-00-00'),
(32, 20143559, 'Software Development', 'ADTX Inc', 4, '0000-00-00', '0000-00-00'),
(33, 20143559, 'Software Development', 'Pointwest Technologies', 3, '0000-00-00', '0000-00-00'),
(34, 20143559, 'Software Development / Management', 'Coca-Cola Far East Ltd.', 7, '0000-00-00', '0000-00-00'),
(35, 97045179, 'General Manager', 'Nelsoft Technology', 0, '0000-00-00', '0000-00-00'),
(36, 97045179, 'Principal Consultant', 'Innovato Information Technology Consulting', 4, '0000-00-00', '0000-00-00'),
(37, 97045179, 'Senior Knowledge Advisor', 'Digileaf', 4, '0000-00-00', '0000-00-00'),
(38, 97045179, 'CIO/BP Process Controller', 'AS Watsons', 3, '0000-00-00', '0000-00-00'),
(39, 97045179, 'Head of IM Operations and International Suppo', 'Jollibee Foods Corporation', 5, '0000-00-00', '0000-00-00'),
(40, 97045179, 'Head of Information Technology', 'Nissan Motors Philippines', 3, '0000-00-00', '0000-00-00'),
(41, 97045179, 'Deputy CIO and Head of Research and Developme', 'SPI Technologies', 0, '0000-00-00', '0000-00-00'),
(42, 97045179, 'Senior Analyst', 'Mercator Finance Corporation (Credit Lyonnais', 1, '0000-00-00', '0000-00-00'),
(43, 97045179, 'Analyst/Developer', 'Micro Research Corporation', 5, '0000-00-00', '0000-00-00'),
(44, 97045179, 'Development Laboratory Engineer/Analyst', 'Philips Lighting and Electronics', 0, '0000-00-00', '0000-00-00'),
(45, 97093157, 'Software Engineering and Web Development', 'Azeus Systems Philippines Limited', 1, '0000-00-00', '0000-00-00'),
(46, 20123256, 'Consultant', 'Webplus7 Solutions', 1, '0000-00-00', '0000-00-00'),
(47, 97063932, 'Web Developer/Consultant', 'Hospitality Staff Philippines', 0, '0000-00-00', '0000-00-00'),
(48, 20123590, 'Project Tracking Information System', 'DOST', 6, '0000-00-00', '0000-00-00'),
(49, 20123590, 'Website Development', 'DTI-BTRCP', 6, '0000-00-00', '0000-00-00'),
(50, 20123590, 'Website Development', 'APEC-ACTETSME', 1, '0000-00-00', '0000-00-00'),
(51, 20123590, 'Training on Personal Computing', 'Forest Product Resources and Development Inst', 1, '0000-00-00', '0000-00-00'),
(52, 97091219, 'Professional IT training', 'Aptech', 0, '0000-00-00', '0000-00-00'),
(53, 20133707, ' ISIP: Interdisciplinary Signal Processing fo', 'Digital Signal Processing Laboratory', 0, '0000-00-00', '0000-00-00'),
(54, 20133707, 'LEAP: Learning while Playing', 'Computer Networks Laboratory', 0, '0000-00-00', '0000-00-00'),
(55, 97020095, 'Hybrid Machine Translation System', 'DOST-PCASTRD', 4, '0000-00-00', '0000-00-00'),
(56, 97088366, 'Project Management/ SAP', 'Hewlett Packard', 4, '0000-00-00', '0000-00-00'),
(57, 97088366, 'Business Analyst', 'Deutsche Bank', 1, '0000-00-00', '0000-00-00'),
(58, 97049182, 'Programmer & Software Development Consultant', 'WeServ Systems International', 0, '0000-00-00', '0000-00-00'),
(59, 97049182, 'Softare and Process Consultant', 'Chase Technologies Corporation', 6, '0000-00-00', '0000-00-00'),
(60, 97053139, 'Engineering Assistant', 'PLDT', 5, '0000-00-00', '0000-00-00'),
(61, 97053139, 'Project Manager', 'Sunlife Philippines Employee Multipurpose Coo', 6, '0000-00-00', '0000-00-00'),
(62, 97014818, 'Design and Development of Right 8 Payroll Sys', 'Xtensyon Philippines', 0, '0000-00-00', '0000-00-00'),
(63, 97014818, 'Development of Effective eLearning Programs f', 'Bridgeworth Consulting - AUSAID', 0, '0000-00-00', '0000-00-00'),
(64, 97014818, 'Applied Technology to Support Practical Teach', 'Bridgeworth Consulting - AUSAID', 0, '0000-00-00', '0000-00-00'),
(65, 97014818, 'Content Developer Assistant - Strengthening t', 'Bridgeworth Consulting - AUSAID', 0, '0000-00-00', '0000-00-00'),
(66, 97014818, 'Database Consultant', 'Vibal Publishing', 0, '0000-00-00', '0000-00-00'),
(67, 97014818, 'Information Technology Specialist', 'Department of Trade and Industry - USAID-EMER', 0, '0000-00-00', '0000-00-00'),
(68, 97014818, 'Project Leader', '', 0, '0000-00-00', '0000-00-00'),
(69, 97014818, 'Managing Partner', 'SevenMinds Plus', 0, '0000-00-00', '0000-00-00'),
(70, 97028304, 'Programmer-Analyst', 'Cybertech Enterprises', 4, '0000-00-00', '0000-00-00'),
(71, 97028304, 'Programmer Trainee', 'Republic Business Systems International', 0, '0000-00-00', '0000-00-00'),
(72, 97015784, 'Consultancy', 'Center for the Integration of Technology in E', 3, '0000-00-00', '0000-00-00'),
(73, 20141718, 'Inventory ', 'New Star Commercial', 2, '0000-00-00', '0000-00-00'),
(74, 20141718, '3D Printing', 'HobbyistPH', 2, '0000-00-00', '0000-00-00'),
(75, 97026050, 'Technology Consultant', 'Hewlett Packard Asia Pacific (HK)', 0, '0000-00-00', '0000-00-00'),
(76, 97026050, 'Intern', 'Azeus Systems Philippines', 0, '0000-00-00', '0000-00-00'),
(77, 97015512, 'Co-Founder and R&D Manager', 'Cogent Technologies', 0, '0000-00-00', '0000-00-00'),
(78, 97015512, 'Research Engineer', 'Toowomba University of Southern Queensland', 0, '0000-00-00', '0000-00-00'),
(81, 97015512, 'Technical Support Engineer', 'DFI Taipei', 0, '0000-00-00', '0000-00-00'),
(82, 97015512, 'Junior Product Engineer', 'Zilog Philippines Incorporated', 9, '0000-00-00', '0000-00-00'),
(83, 97049212, 'Software Development and Consultancy / Bills ', '', 0, '0000-00-00', '0000-00-00'),
(84, 97041378, 'Technical Operations Manager', '888 Corporation', 9, '0000-00-00', '0000-00-00'),
(85, 97041378, 'Technical Consultant', 'Secur Links Network and Technologies', 6, '0000-00-00', '0000-00-00'),
(86, 97041378, 'Technical Consultant', 'Netlink Computers', 0, '0000-00-00', '0000-00-00'),
(87, 97041378, 'IBM Philippines', 'Technnical Manager', 6, '0000-00-00', '0000-00-00'),
(88, 97093017, 'Founder / Chief Executive Officer', 'Senti Business Solutions Inc.', 2, '0000-00-00', '0000-00-00'),
(89, 97053937, 'Researcher/Technical Trainee', 'MATUO Corporation (Saitama', 0, '0000-00-00', '0000-00-00'),
(90, 97053937, 'Research Associate for One Million Safe Schoo', 'United Nations International Strategy for Dis', 1, '0000-00-00', '0000-00-00'),
(91, 97064424, 'Associate Consultant', '', 0, '0000-00-00', '0000-00-00'),
(92, 97053856, 'Developer', 'Vibal Foundation-Filipiniana.NET project', 1, '0000-00-00', '0000-00-00'),
(93, 97053856, 'Developer', 'BIR-TCVD Project', 1, '0000-00-00', '0000-00-00'),
(94, 97053856, 'System Integrator', 'DLSU-SPEMC Coop System', 1, '0000-00-00', '0000-00-00'),
(95, 97053856, 'Senior Researcher', 'Center for LEAN', 1, '0000-00-00', '0000-00-00'),
(96, 97053856, 'Consultant', 'ADSys', 2, '0000-00-00', '0000-00-00'),
(97, 97053856, 'System Architect', 'AKI-CBMS', 2, '0000-00-00', '0000-00-00'),
(98, 97053856, 'System Architect', 'Globe Virtual Pila Project', 1, '0000-00-00', '0000-00-00'),
(99, 97053856, 'System Architect', 'Morbie.com', 1, '0000-00-00', '0000-00-00'),
(100, 97053856, 'Project Manager', 'Wideout HRIS', 1, '0000-00-00', '0000-00-00'),
(101, 97053856, 'Project Manager', 'BBR Singapore', 1, '0000-00-00', '0000-00-00'),
(102, 97053856, 'Consultant', 'Asia Development Bank', 1, '0000-00-00', '0000-00-00'),
(103, 20143558, 'Systems and Technology Development and Manage', 'Magsaysay Transport and Logistics Corporation', 7, '0000-00-00', '0000-00-00'),
(104, 20143558, 'Business Process Outsourcing', 'HSBC Data Processing Philippines Inc', 3, '0000-00-00', '0000-00-00'),
(105, 97054038, 'IT Consultant', 'Philippine National Police (Cavite', 0, '0000-00-00', '0000-00-00'),
(106, 97054038, 'Technical panel member', 'CHED-technical panel on IT educ(TPITE)', 2, '0000-00-00', '0000-00-00'),
(107, 97054038, 'IT Consultant/Board Director/ CEO', 'Wideout Tech services', 6, '0000-00-00', '0000-00-00'),
(108, 97054038, 'Panel Member', 'CHED-TPITE', 0, '0000-00-00', '0000-00-00'),
(109, 97054038, 'Evaluator  ', 'DOST', 0, '0000-00-00', '0000-00-00'),
(110, 97054038, 'GCIO ', 'CCS-CEC-GCIO', 0, '0000-00-00', '0000-00-00'),
(111, 97053848, 'Inventory of Persistent Organic Pollutants (P', 'DENR/EMB', 0, '0000-00-00', '0000-00-00'),
(112, 97053848, 'New POPs', 'DENR/EMB', 0, '0000-00-00', '0000-00-00'),
(113, 20141009, 'Internship - Business Process Master List', 'SMART Communications', 0, '0000-00-00', '0000-00-00'),
(114, 20141769, 'Web Development', 'Mindplay Graphics', 3, '0000-00-00', '0000-00-00'),
(115, 20141769, 'Web Development', 'Rebnet Logistics', 3, '0000-00-00', '0000-00-00'),
(116, 20141769, 'Web Development', 'Girlactik PH', 3, '0000-00-00', '0000-00-00'),
(117, 20141769, 'Web Development', 'De La Salle University Junior Entrepreneur''s ', 3, '0000-00-00', '0000-00-00'),
(118, 20141769, 'Web Development', 'De La Salle University Business Management So', 4, '0000-00-00', '0000-00-00'),
(119, 20141769, 'Web and Apps Development', 'Europlus Global', 4, '0000-00-00', '0000-00-00'),
(120, 20141769, 'Web and Apps Development', 'PJ Wellington Laundry Services', 4, '0000-00-00', '0000-00-00'),
(121, 20141769, 'Apps Development', 'Tattoo-a', 2, '0000-00-00', '0000-00-00'),
(122, 20141769, 'Web and Apps Development', 'Optimax', 4, '0000-00-00', '0000-00-00'),
(123, 97053953, 'Systems Analyst and Programmer', 'De La Salle University', 12, '0000-00-00', '0000-00-00'),
(124, 20141890, 'Web Development', 'Triumph JT Corporation', 3, '0000-00-00', '0000-00-00'),
(125, 97054097, 'Technical Consultant ', 'Abstract Automation Company', 20, '0000-00-00', '0000-00-00'),
(126, 97054097, 'Senior Systems Engineer', 'Metasystems Development Inc.', 1, '0000-00-00', '0000-00-00');

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
  `JOURNAL` varchar(65) DEFAULT NULL,
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
  `LOCAL` int(11) DEFAULT NULL,
  `CO_AUTHOR` int(5) DEFAULT NULL,
  PRIMARY KEY (`PUB_CODE`),
  KEY `fk_publication_fid` (`FID`),
  KEY `fk_pub_pubtype` (`PUB_TYPE`),
  KEY `fk_pub_country` (`ISSUING_COUNTRY`),
  KEY `fk_pub_journals` (`JOURNAL`),
  KEY `fk_journalpub_type` (`PUBLICATION_TYPE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1313 ;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(1, 20133413, 'PT007', 'Automatic Guitar Music Transcription', '', 'ACSAT 2012 International Conference', '', 'IEEE Computer Society', '', 'Alcabasa', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(3, 20133413, 'PT007', 'A Unified Framework for Examining Program Correctness', '', 'PCSC 2010: Proceedings of the 10th Philippine Computing Science Congress', '', '', 'Computing Society of the Philippines', 'Alcabasa', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(4, 20133413, 'PT011', '', '', '', 'DLSU Research Congress 2015', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Y405', '', 2, 2),
(5, 20133413, 'PT011', '', '', '', 'Teaching for Meaning and Understanding', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(6, 20133413, 'PT011', '', '', '', 'Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(7, 20133413, 'PT011', '', '', '', 'LGP for Rheims Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(8, 20133413, 'PT011', '', '', '', 'St. La Salle As A Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(9, 20133413, 'PT011', '', '', '', 'LSPO Vaugirard Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(10, 20133413, 'PT011', '', '', '', 'Curriculum Planning and Syllabi Design for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(11, 20133413, 'PT011', '', '', '', 'Principles of Teaching for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(12, 20133413, 'PT011', '', '', '', 'The Art of Questioning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(13, 20133413, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(14, 20133413, 'PT011', '', '', '', 'Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(15, 20133413, 'PT011', '', '', '', 'Managing the Transformative Learning Classroom', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(16, 97014788, 'PT001', 'Breast Cancer Case Monitoring and Mapping System for Decision Support', '', '', '', 'International Journal of Innovation', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(17, 97014788, 'PT001', 'Enrollment Forecasting for School Management System', '', '', '', 'International Journal of Modeling and Optimization', 'none', 'Rabby Q. Lavilles', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(18, 97014788, 'PT007', 'A Framework for Developing a Maternal Health Informatics System for an Urban City in the Philippines', '', 'DLSU Conference Series', '', '', 'DLSU', 'Lorenz Angelo M. Cortez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(19, 97014788, 'PT007', 'A Framework for Developing a Breast Cancer Monitoring System for Low and Middle Income Countries', '', 'DLSU Conference Series', '', '', 'DLSU', 'Mary Jane B. Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(20, 97014788, 'PT002', '', 'A Framework for Developing a Cultural Collections Management System', '', '', '', '', 'Jan Lorenz C. Aguas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(21, 97014788, 'PT002', '', 'Exigere: A Resource Management System for a Non-Government Organization in the Philippines', '', '', '', '', 'Mary Jane B. Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(22, 97014788, 'PT002', '', 'Digital Asset Management System ', '', '', '', '', 'Mary Jane Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(23, 97014788, 'PT002', '', 'Epidemic Decision Support System ', '', '', '', '', 'Mary Jane Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(24, 97014788, 'PT002', '', 'Supply Chain Information System ', '', '', '', '', 'Mary Jane B. Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(25, 97014788, 'PT002', '', 'Assessment on the Use of ICT in Monitoring Maternal Health in the Philippines', '', '', '', '', 'Mary Jane Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(26, 97014788, 'PT002', '', 'Legal Digest Management System', '', '', '', '', 'Mary Jane Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(27, 97014788, 'PT002', '', 'Enrollment Forecasting For School Management System', '', '', '', '', 'Rabby Q. Lavilles', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(28, 97014788, 'PT002', '', 'Asiana Weighing System Corporation : An Integrated Sales, Integrated Production, Scheduling Soiltech', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(31, 97014788, 'PT002', '', 'Clinic Information Management System', 'none', '', '', '', 'Mary Jane B. Arcilla', 0, '', '', '', '', 1, 'Research paper', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Presented at the IT Department Lounge Lecture in De La Salle University', 2, 2),
(32, 97014788, 'PT007', '', 'Framework for an Integrated Sales', 'International Conference on Software and Information Engineering', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Singapore', '', 2, 2),
(34, 97014788, 'PT011', '', '', '', 'BPO Fundamentals (BPO 101 and 102)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(35, 97014788, 'PT011', '', '', '', 'Business Process Continuous Improvement using Lean Six Sigma', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(36, 97014788, 'PT011', '', '', '', 'DLSU Research Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(37, 97014788, 'PT011', '', '', '', 'Information Technology Infrastructure Library (ITIL) 2011 Foundation Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(38, 97014788, 'PT011', '', '', '', '2013  1st Journal  Conference on  Innovation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(39, 97014788, 'PT011', '', '', '', 'DLSU Science and Technology Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(40, 97014788, 'PT011', '', '', '', 'International Conference on Computer and Software Modeling', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(41, 97049336, 'PT001', 'Knowledge acquisition and revision using neural networks: an application to a cross-national study of brand image perception', '', '', '', 'Journal of the Operational Research Society', 'none', 'R. Setiono', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(42, 97049336, 'PT001', 'Extracting salient dimensions for automatic SOM labeling', '', '', '', 'IEEE Transactions on Systems', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(43, 97049336, 'PT001', 'Automatic knowledge extraction from survey data: learning M-of-N constructs using a hybrid approach', '', '', '', 'Journal of the Operational Research Society', 'none', 'R. Setiono', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(44, 97049336, 'PT001', 'Separating core and non-core knowledge: An application of neural network rule extraction to a cross-national study of brand image perception', '', '', '', 'IEEE Transactions on Systems', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(45, 97049336, 'PT002', '', 'Improved SOM Labeling Methodology for Data Mining Applications', '', '', 'Soft Computing for Knowledge Discovery and Data Mining', 'Springer', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(46, 97049336, 'PT007', 'MofN Rule Extraction from Neural Networks Trained with Augmented Discretized Input', '', 'International Joint Conference on Neural Networks (IJCNN2014)', '', '', 'IEEE', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(47, 97049336, 'PT007', 'Tagging Documents using Neural Networks based on Local Word Feature', '', 'International Joint Conference on Neural Networks (IJCNN2014)', '', '', 'IEEE', 'A.Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(48, 97049336, 'PT007', 'Credit scoring using neural networks with augmented discretized inputs.', '', 'Proceedings of the 12th International Decision Sciences Institute Conference', '', '', 'DSI', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(49, 97049336, 'PT007', ' Using neural network for visualizing poverty', '', 'Proceedings of the 12th International Decision Sciences Institute Conference', '', '', 'DSI', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(50, 97049336, 'PT007', 'Keyword Extraction using Backpropagation Neural Networks and Rule extraction', '', 'International Joint Conference on Neural Networks (IJCNN2012)', '', '', 'IEEE', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(51, 97049336, 'PT007', 'Design of a Structured 3D SOM as a Music Archive', '', 'Proceedings of Wokshop on Self-Organizing Maps (WSOM) ', '', '', 'Springer', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(52, 97049336, 'PT010', 'Assuring Quality in Higher Education : A Perspective from the Philippines', '', '', '', '', 'Universitas Indonesia', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(53, 97049336, 'PT007', 'Car market segmentation using SOM and decision trees', '', 'Proceedings of the International Conference on Information Systems (ICIS)', '', '', 'ICIS', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(54, 97049336, 'PT007', 'Engaging an entire academic community towards shared governance:A balancing act among multiple stakeholders and multiple perspectives', '', 'Proceedings International UNISTAFF Forum on Emerging Transformation in Higher Education : Concepts', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(55, 97049336, 'PT007', 'Market research application of neural networks', '', 'Proceedings of CEC 2008', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(56, 97049336, 'PT007', 'Enhancing SOM Digital Music Archives Using Scatter-Gather', '', 'Proc of the World Congress on Computational Intelligence', '', '', 'IEEE', 'A. Azcarraga and A. Caw', 0, '', '', '', '', 1, '', '', 'Hongkong', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(57, 97049336, 'PT002', '', 'Design of a Structured 3D SOM as a Music Archive', '', '', '', '', 'A. Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(58, 97049336, 'PT002', '', 'Assuring Quality in Higher Education : a perspective from the Philippines', '', '', '', '', 'A. Azcarraga', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(59, 97049336, 'PT002', '', 'Car market segmentation using SOM and decision trees', '', '', '', '', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(60, 97049336, 'PT011', '', '', '', 'IALU Lasallian Leadership Training', '', '', 'none', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Rome', '', 2, 2),
(61, 97049336, 'PT011', '', '', '', 'Lasallian Leadership Formation Program', '', '', 'none', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(62, 97049336, 'PT011', '', '', '', 'Quality Assurance assessor of the ASEAN University Network ', '', '', 'none', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Gadja Mada University ', '', 2, 2),
(63, 97049336, 'PT011', '', '', '', 'UNISTAFF program ', '', '', 'none', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Kassel in Germany', '', 2, 2),
(64, 97049344, 'PT007', 'Recognizing Student Emotions using Brainwaves and Mouse Behavior Data', '', '', '', 'International Journal of Distance Education Technologies', 'none', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(65, 97049344, 'PT007', 'Predicting Academic Emotion based on Brainwaves Signals and Mouse Click Behavior', '', '19th International Conference on Computers in Education (ICCE)', '', '', 'NECTEC', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(66, 97049344, 'PT007', 'Predicting Student Affect Based on Brainwaves and Mouse Behavior', '', '11th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Philippines', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(67, 97049344, 'PT007', 'Use of Personality Profile in Predicting Academic Emotion Based on Brainwaves Signals and Mouse Behavior', '', 'Third International Conference on Knowledge and Systems Engineering 2011', '', '', 'IEEE', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(68, 97049344, 'PT007', 'Predicting the Difficulty Level Faced by Academic Achievers based on Brainwaves Analysis', '', '18th International Conference on Computers in Education (ICCE)', '', '', 'Faculty of Educational Studies Universiti Putra Malaysia', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(69, 97049344, 'PT002', '', 'Selective Prediction of Student Emotions based on Unusually Strong EEG Signals', '', '', '', '', 'Azcarraga J. ', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(70, 97049344, 'PT002', '', 'Modelling EEG Signals for the Prediction of Academic Emotions', '', '', '', '', 'Azcarraga', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(71, 97049344, 'PT011', '', '', '', 'Utilizing EEG Input in Intelligent Tutoring Systems of the 12th International Conference on Intellig', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hawaii', '', 2, 2),
(72, 97049344, 'PT011', '', '', '', '19th International Conference on Computers in Education (ICCE)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Thailand', '', 2, 2),
(73, 97049344, 'PT011', '', '', '', '11th Philippine Computing Science Congress (PCSC)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Philippines', '', 2, 2),
(74, 97049344, 'PT011', '', '', '', 'Third International Conference on Knowledge and Systems Engineering 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Vietnam', '', 2, 2),
(75, 97077763, 'PT011', '', '', '', '1st Cloud Computing Training and Certification', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP Information Training Center', '', 2, 2),
(76, 97077763, 'PT011', '', '', '', 'Cisco Networking Academy Program Conference and Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hotel Supreme', '', 2, 2),
(77, 97077763, 'PT011', '', '', '', 'Cisco Networking Academy Program Conference and Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Angelo King International Convention Center', '', 2, 2),
(78, 97077763, 'PT011', '', '', '', 'Csico Networking Academy Program Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(79, 97033235, 'PT007', 'Building Language Resources for a Multi-Engine Machine Translation System', 'none', '', '', ' ISI Journal of Language Resources and Evaluation: Special Issue ', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(80, 97033235, 'PT007', 'Maternal Medical Information Extraction (MaMIE) ', 'none', 'National Natural Language Processing Research Symposium', '', '', 'Philippine Computing Science Congress', 'Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(81, 97033235, 'PT007', 'Information Extraction and Opinion Organization for an e-Legislation Framework for the Philippine Senate. ', 'none', 'Proceedings of HLTD 2011: Conference on Human Language Technology for Development', '', '', 'HLTD 2011', 'Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(82, 97033235, 'PT002', '', 'Bootstrapping an LFG F-structure Bank for Tagalog by Cross-Lingual Projection', 'none', '', '', '', 'Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(83, 97033235, 'PT002', '', 'Automatic Generation of Flood Reports for Twitter', 'none', '', '', '', 'Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(84, 97033235, 'PT002', '', 'Tagalog Support for LanguageTool. Proceedings of the 8th National Natural Language Processing Resear', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(85, 97033235, 'PT002', '', 'A Grammar Checker for Tagalog using LangaugeTool. the 5th International Joint Conference on Natural ', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(93, 97033235, 'PT002', '', 'NLP Research and Linguistic Resources in DLSU.Language Technology Research in Filipino. ALRS - Asian', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(94, 97033235, 'PT002', '', 'Philippine Natural Language Processing Researches for Pan Localization. Language Processing in Filip', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(95, 97033235, 'PT002', '', 'Introduction to Natural Language Processing and Researches.  “Seminar on Natural Language Processing', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(96, 97033235, 'PT002', '', 'A Greedy Approach to Unsupervised Grammar Induction for Filipino. 5th National Natural Language Proc', '', '', '', '', 'Alcantara, Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(98, 97033235, 'PT002', '', 'Constituent Structure for Filipino: Induction Through Probabilistic Approaches. Proceedings of PACLI', '', '', '', '', 'Alcantara, Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(99, 97033235, 'PT002', '', 'A Report on the English-Filipino Hybrid Machine Translation. Pambansang Seminar sa Pagsasaling Tekni', '', '', '', '', 'Roxas, Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(102, 97033235, 'PT002', '', 'FiSSAn: Filipino Syntax and Semantics Analyzer. 7th Philippine Computing Science Congress (PCSC 2007', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(107, 97033235, 'PT011', '', '', '', 'TOGAF Enterprise Architecture Certification Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'AIM Makati', '', 2, 2),
(108, 97033235, 'PT011', '', '', '', 'Presentation on Bangladesh eParticipation Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'D.Net', '', 2, 2),
(109, 97033235, 'PT011', '', '', '', 'Workshop on the Government Chief Information Officer Program  ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Subic', '', 2, 2),
(110, 97033235, 'PT011', '', '', '', 'the 5th International Joint Conference on Natural Language Processing (IJCNLP2011) during the 9TH Wo', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(111, 97033235, 'PT011', '', '', '', '8th National Natural Language Processing ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(112, 97033235, 'PT011', '', '', '', ' Filipino IT for Elections (FIT4E) Conference ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP Diliman', '', 2, 2),
(113, 97033235, 'PT011', '', '', '', 'National Career Executive Service (CES) Conference : Launching of gCIO Formal Training Program', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Pasay', '', 2, 2),
(114, 97033235, 'PT011', '', '', '', '6th Asian Applied Natural Language Processing for Linguistic Diversity and Language Resource Develop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Pukhet', '', 2, 2),
(115, 97033235, 'PT011', '', '', '', 'Open eGovernance Forum for Developing Asia ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Palawan', '', 2, 2),
(116, 97033235, 'PT011', '', '', '', '7th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(117, 97033235, 'PT011', '', '', '', '6TH National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(118, 97033235, 'PT011', '', '', '', '5th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(119, 97033235, 'PT011', '', '', '', '22nd Pacific Asia Conference on Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(120, 97033235, 'PT011', '', '', '', 'Towards Building the Philippine Corpus', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(121, 97033235, 'PT011', '', '', '', 'Cutting Edge Researches in Digital Signal Processing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(122, 97033235, 'PT011', '', '', '', 'Tech Boot Camp 2007 organized by Ayala Foundation''s Technology Business Incubator Project', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(123, 97033235, 'PT011', '', '', '', 'Towards Building the Philippine Languages Corpora', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(124, 97033235, 'PT011', '', '', '', '11th European Workshop on NL Generation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(125, 97033235, 'PT011', '', '', '', '4th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(126, 97033235, 'PT011', '', '', '', 'Open Source Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(127, 97033235, 'PT011', '', '', '', 'Language ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(128, 97033235, 'PT011', '', '', '', '3rd National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(129, 97033235, 'PT011', '', '', '', '10th International Conference on Austronesian Linguistics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(130, 97033235, 'PT011', '', '', '', 'Algorithms and Applications:  A Graduate Short course in Computer Science', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(131, 97055743, 'PT008', 'A Data Mining Approach in Opponent Modeling. ', '', '', '', 'Lecture Notes in Computer Science', '', 'Remedios de Dios Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(132, 97055743, 'PT001', 'Exploring Data Mining and Gamification as Tools for Poverty Analysis and Policy Formulation: A Methodological Framework', '', '', '', 'Journal of Economics & Economic Education Research', '', 'Remedios de Dios Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(133, 97055743, 'PT011', '', '', '', 'Learning in Coaching: A Neural Network Rule Extraction Approach', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(134, 97055743, 'PT011', '', '', '', 'ADAPTIVE CO-EVOLUTION USING REINFORCEMENT LEARNING', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(135, 97055743, 'PT011', '', '', '', 'USING BEST  RESPONSE LEARNING ALGORITHM IN AN  ADAPTIVE COEVOLUTION  GAME ENVIRONMENT', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(136, 97055743, 'PT011', '', '', '', 'Data Mining Approach in Opponent Modeling. Australian Conference on Artificial Intelligence 2005: 99', '', '', 'Remedios de Dios Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(137, 97055743, 'PT011', '', '', '', 'Learning in Coaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(138, 97055743, 'PT011', '', '', '', 'SimSoccer Coach', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(139, 97055743, 'PT007', 'Adopting CMMI for a Small Software Organization: Experiences Gained and Lessons Learned', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(140, 97055743, 'PT007', ' "Building a Data Warehouse for a Retail Chain" in the Proceedings of Philippine Conference on Computer Science', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(141, 97055743, 'PT011', '', '', '', 'Software Product Metrics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(142, 97055743, 'PT011', '', '', '', 'Genetic Local Search In an Automated Contracting Environment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(143, 97055743, 'PT011', '', '', '', '"SimSoccer: A Multi Agent Soccer Game Simulation"', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(144, 97055743, 'PT007', 'Data Mining Approach to Automatic Movie Genre Classification Proceedings of the 13th Science and Technology Congress', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(145, 97055743, 'PT007', 'Learning in Neural Networks with Decision Trees Proceedings of the 12th Science and Technology Congress', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(146, 97055743, 'PT007', 'Classification Rule Mining as a Learning Algorithm in Competitive Environments Proceedings of the 11th Science and Technology Congress', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(147, 97055743, 'PT007', 'Host Parasite Cooperative Coevolution of Decentralized Controllers in EvoTanks Proceedings of the 10th Science and Technology Congress', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(148, 97055743, 'PT006', '', 'Learning in Competitive Environments through Observation: A Data Mining Approach', '', '', '', '', 'Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(149, 97055743, 'PT006', '', 'Predictive Analysis Using Data Mining Techniques and SQL', '', '', '', '', 'Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(150, 97055743, 'PT006', '', 'Comparative Analysis of Relational and Non-relational Database Models for Simple Queries in a Web-Ba', '', '', '', '', 'Bulos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(151, 97090638, 'PT001', 'Discovering Emotion Inducing Music Features using EEG Signals', '', '', '', 'Journal of Advanced Computational Intelligence and Intelligent In', 'none', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(152, 97090638, 'PT007', 'An Emotion Model for Music Using Brain waves', '', 'Proc. Of 13th International Society for Music Information Retrieval Conference (ISMIR)', '', '', 'ISMIR', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(153, 97090638, 'PT007', 'Sidekick Retrospect: A Self-Regulation Tool for Unsupervised Learning Environments', '', 'Proc. in Information and Communications Technology : Theory and Practice of Computation', '', '', 'Springer', 'P.S. Inventado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(154, 97090638, 'PT007', 'EEG-Based Music Emotion Recognition using Regression Analysis', '', 'Proc. Of 3rd International Workshop on Empathic Computing', '', '', 'Springer', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(155, 97090638, 'PT007', 'On Modelling Emotional Responses to Rhythm Features', '', 'Lecture Notes in Computer Science: Proc. Of PRICAI 2012 Trends in Artificial Intelligence', '', '', 'Springer', 'J. Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(156, 97090638, 'PT007', 'Estimating Emotions on Music Based on Brainwave Analyses', '', 'Proc. Of 3rd International Workshop on Empathic Computing', '', '', 'Springer', 'Y. Yamano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(157, 97090638, 'PT007', 'Modeling Affect and Intentions in Unsupervised Learning Environments', '', 'Proc. Of 3rd International Workshop on Empathic Computing', '', '', 'Springer', 'P.S. Inventado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(158, 97090638, 'PT007', 'Users Sitting Postures to Infer User''s Learning and Non-learning States', '', 'Proc. Of 3rd International Workshop on Empathic Computing', '', '', 'Springer', 'A. Mai', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(159, 97090638, 'PT007', 'Discovering Emotion Features in Symbolic Music', '', 'Proc. of 26th Annual Conference of the Japanese Society for Artificial Intelligence', '', '', '', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(160, 97090638, 'PT007', 'A Model for Sitting Postures in Relation to Learning and Non-learning Behaviors', '', 'Proc. of 26th Annual Conference of the Japanese Society for Artificial Intelligence', '', '', '', 'A. Mai', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(161, 97090638, 'PT007', 'Finding Motifs in Psychophysiological Responses and Chord Sequences', '', 'Proc. in Information and Communications Technology : Theory and Practice of Computation', '', '', 'Springer', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(162, 97090638, 'PT007', 'Analysis of Music Timbre Features for the Construction of a User-specific Affect Model', '', 'Proc. in Information and Communications Technology : Theory and Practice of Computation', '', '', 'Springer', 'H.G. Avisado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(163, 97090638, 'PT007', 'Extracting Time Series Motifs for Emotion and Behavior Modeling', '', 'Proc. The 15th SANKEN International Symposium', '', '', '', 'M. Numao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(164, 97090638, 'PT007', 'Identifying Emotion Segments in Music by Discovering Motifs in Physiological Data', '', 'Proc. Of 12th International Society for Music Information Retrieval Conference (ISMIR)', '', '', 'ISMIR', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(165, 97090638, 'PT007', 'Comparing Effectiveness of Different Physiological Sensors for Music Segmentation', '', 'Proc. of the 14th SANKEN International Symposium & the 9th SANKEN Nanotechnology Symposium', '', '', '', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(166, 97090638, 'PT007', 'The TALA Empathic Space: Integrating Affect and Activity Recognition into a Smart Space', '', 'Proc. 3rd International Conference on Human-Centric Computing', '', '', '', 'J. Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(167, 97090638, 'PT008', 'Identification of Effective Learning Behaviors', '', '', '', '', '', 'P.S. Inventado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(168, 97090638, 'PT008', 'A Comparison between Genetic and Memetic Algorithm for Automated Music Composition System', '', '', '', '', '', 'M. Pituxcoosuvarn', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(169, 97090638, 'PT008', 'Investigating the Relation between Brainwaves and Emotions in Music', '', '', '', '', '', 'Y. Yamano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(170, 97090638, 'PT008', 'Segmentation of Music Using Physiological Data', '', '', '', '', '', 'R. Cabredo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 0, 2),
(171, 97090638, 'PT008', 'Analysis of Timbre Features for Construction of a User-specific Affect Model for Classifying Music', '', '', '', '', '', 'H.G.P. Avisado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(172, 97090638, 'PT008', 'Automatic Detection of Posture Congruence in Dyadic Interactions to Predict Rapport', '', '', '', '', '', 'J.L. Hagad', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(173, 97090638, 'PT008', 'Extending Shape-based Similarity Measures for 3D Models', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(174, 97090638, 'PT008', 'A Multi-Feature Similarity Measure For 3D Models', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(175, 97090638, 'PT011', '', '', '', '3rd Workshop on Computation: Theory and Practice', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(176, 97090638, 'PT011', '', '', '', '13th International Society for Music Information Retrieval (ISMIR) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Porto', '', 2, 2),
(177, 97090638, 'PT011', '', '', '', '2nd Workshop on Computation: Theory and Practice', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(178, 97090638, 'PT011', '', '', '', 'Osaka University-De La Salle University Academic Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(179, 97090638, 'PT011', '', '', '', '3rd International Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sarawak', '', 2, 2),
(180, 97090638, 'PT011', '', '', '', 'The Pacific Rim International Conference on Artificial Intelligence (PRICAI)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sarawak', '', 2, 2),
(181, 97090638, 'PT011', '', '', '', '26th Annual Conference of Japanese Society for Artificial Intelligence', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Yamaguchi', '', 2, 2),
(182, 97090638, 'PT011', '', '', '', '15th SANKEN International Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Osaka', '', 2, 2),
(183, 97090638, 'PT011', '', '', '', '12th International Society for Music Information Retrieval (ISMIR) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Miami', '', 2, 2),
(184, 97090638, 'PT011', '', '', '', '1st Workshop on Computation: Theory and Practice', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(185, 97090638, 'PT011', '', '', '', 'Information Processing Society of Japan Special Interest Group on MUSic and computer (SIGMUS)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Fukuoka', '', 2, 2),
(186, 97090638, 'PT011', '', '', '', '14th SANKEN International Symposium & the 9th SANKEN Nanotechnology Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Otso', '', 2, 2),
(187, 97090638, 'PT011', '', '', '', '15th Joint Academic Research Symposium of De La Salle University and Osaka University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(188, 97088420, 'PT008', 'Music Recommendation Model Based on User Listening Behavior and Utility Based Preference Scoring', '', '', '', '', '', 'Caronongan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(189, 97088420, 'PT008', 'MOD-G Protocol: A Communication Protocol for an Empathic Network', '', '', '', '', '', 'Bartolome', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(190, 97088420, 'PT008', 'Classical Music Time Period Classification', '', '', '', '', '', 'Caronongan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(191, 97088420, 'PT008', 'AI Shipyard: Finite State Machine AI Captain Engine', '', '', '', '', '', 'Benavidez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(193, 97031925, 'PT001', 'Toward an enriched understanding of factors influencing Filipino behavior during elections through the analysis of Twitter data', '', '', '', 'Philippine Political Science Journal', '', 'Zelinna Cynthia Pablo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(194, 97031925, 'PT001', 'Composer Classification of Filipino Song Lyrics Using Machine Learning', '', '', '', 'Philippine Computing Journal', '', 'Oliver Isaac Chan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(195, 97031925, 'PT001', 'Exploring the use of new technologies in participation practices in legislation', '', '', '', 'Journal of E-Governance', '', 'Sherwin Ona', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(196, 97031925, 'PT001', 'Building Web-Based Filipino Language Learning Tool for Heritage Learners', '', '', '', 'Philippine Information Technology Journal', '', 'Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(197, 97031925, 'PT001', 'Classifying Public Opinion using Sentiwordnet', '', '', '', 'Philippine Computing Journal', '', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(198, 97031925, 'PT001', 'Building Language Resources for a Multi-Engine English-Filipino Machine Translation System', '', '', '', 'Language Resources and Evaluation', '', 'Rachel Edita Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(199, 97031925, 'PT001', 'SpellCheF: Spelling Checker and Corrector for Filipino', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(200, 97031925, 'PT001', 'The Revised Wordframe Model for the Filipino Language', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(201, 97031925, 'PT001', 'TPOST: A Template-Based Using Language Technologies  in Managing Crowd-Sourced Data', '', '', '', 'Information & Communications Technology in the Philippines: Conte', 'De La Salle Univeristy Publishing House', 'Charibeth K. Cheng and Ralph Vincent J. Regalado', 0, '', '978-971-555-606-4', '', '113-125', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(203, 97031925, 'PT007', 'Combining Automatic and Manual Approaches: Towards a Framework for Discovering Themes in Disaster-Related Tweets', '', '3rd International Workshop on Social Web for Disaster Management (SWDM''15)', '', '', '', 'Leif Romeritch Syliongka', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(204, 97031925, 'PT007', 'NormAPI: An API for normalizing Filipino shortcut texts', '', '2014 International Conference on Asian Language Processing (IALP)', '', '', 'IEEE', 'Nicco Nocon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(205, 97031925, 'PT007', 'Feature-based Extraction using Typed Dependencies on Political Commentaries', '', 'PACLING 2013: Conference of the Pacific Association for Computational Linguistics', '', '', 'PACLING', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(206, 97031925, 'PT007', 'The Democracy Cube as a Framework for Guiding Participatory Planning for Community-based IT Initiative', '', 'Pacific Asia Conference on Information Systems 2013 Proceedings', '', '', 'PACIS', 'Zelinna Pablo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(207, 97031925, 'PT007', 'FELEX BUILDER: A SEMI-SUPERVISED LEXICAL RESOURCE BUILDER FOR OPINION MINING IN PRODUCT REVIEWS', '', ' The Second International Conference on Digital Enterprise and Information Systems (DEIS 2013)', '', '', 'The Society of Digital Information and Wireless Communication', 'Miguel Arcilla', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(208, 97031925, 'PT007', 'Feature-Based Subjectivity Classification of Filipino Text', '', 'International Conference of Asia Language Processing (IALP2012)', '', '', 'Conference Publication Services', 'Ralph Vincent Regalado and Charibeth Cheng', 0, '', '', '', '', 1, '', '', 'China', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(209, 97031925, 'PT007', 'Information Extraction and Opinion Organization for an e-Legislation Framework for the Philippine Senate', '', 'Conference on Human Language Technology for Development', '', '', 'PAN Localization Network and  the African Network for Localization', 'Allan Borra', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(210, 97031925, 'PT007', 'eParticipation towards Legislation: the Case of the Philippines', '', 'Third international conference on eParticipation (ePart 2011)', '', '', 'Springer LNCS', 'Rachel Edita Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(211, 97031925, 'PT007', 'Building Web-Based Filipino Language Learning Tool for Heritage Learners', '', '8th National Conference on Information Technology Education (NCITE 2010).', '', '', 'Philippine Society of Information Technology Educators', 'Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(212, 97031925, 'PT007', 'Salinlahi: A Web-Based Interactive Learning Environment for Filipino Heritage Learners', '', '2nd International Conference on Filipino as a Global Language', '', '', 'Council For Teaching Filipino Language And Culture', 'Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(213, 97031925, 'PT007', 'Salinlahi: A web-based Interactive Learning Environment for the Filipino Language', '', '1st International Conference on Heritage/Community Languages', '', '', 'Nationional Heritage Language Research Center', 'Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(214, 97031925, 'PT007', 'Philippine Language Resources: Trends and Directions ', '', '7th Workshop on Asian Language Resources', '', '', 'Association for Computational Linguistics and Asian Federation for Natural Language Processing', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(215, 97031925, 'PT007', 'Word Sense Disambiguation of Opinionated Words Using Extended Gloss Overlap', '', '8th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Bernadette Rosario Razon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(216, 97031925, 'PT007', 'Classifying Public Opinion using Sentiwordnet', '', '7th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(217, 97031925, 'PT007', 'Natural Language Processing Laboratory: the CCS-DLSU Experience', '', '9th Philippine Computing Science Congress', '', '', 'Computing Society of the Philippines', 'Rachel Edita Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(218, 97031925, 'PT007', 'Salinlahi:  An Interactive Learning Environment for Filipino Language Learning for Kids', '', '6th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(219, 97031925, 'PT007', 'Natural Language Database Interface for the Community Based Monitoring System', '', '22nd Pacific Asia Conference on Languages', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(220, 97031925, 'PT007', 'e-Wika: Digitalization of the Philippine Languages', '', '1st Internation Conference on Filipino as a Global Language', '', '', 'Council For Teaching Filipino Language And Culture', 'Rachel Edita Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(221, 97031925, 'PT007', 'Towards the Development of a Hybrid Machine Translation System for Philippine Languages', '', '1st Philippine-Japan Linguistics Conference', '', '', 'University of the Philippine-Mindanao', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(222, 97031925, 'PT007', 'SpellCheF: Spelling Checker and Corrector for Filipino', '', '4th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Cedric Paul Alberto', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(223, 97031925, 'PT007', 'A POS-Tagger for Tagalog using Minimal Lexical Resources', '', '5th Philippine Computing Science Congress', '', '', 'Philippine Computing Society', 'Charibeth Cheng and Vladimir Rabo', 0, '', '', '', '', 1, '', '', 'Philippines', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(224, 97031925, 'PT007', 'An Example-Based Morphological Analyzer for the Filipino Language', '', '1st World Congress on the Power of Language: Theory', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(225, 97031925, 'PT007', 'Use of the WordFrame Model in Learning the Filipino Morphological Process', '', '3rd National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Solomon See', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(226, 97031925, 'PT008', 'Building an Annotated Corpus of Philippine Political Commentaries for Opinion Summarization', '', '', '', '', '', 'Charibeth Cheng', 0, '', '', '', '', 1, 'Research Report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Final Report to URCO', 2, 2),
(227, 97031925, 'PT008', 'Developing Natural Language Processing/Data Mining Application for eLegislation', '', '', '', '', '', 'Rachel Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(228, 97031925, 'PT008', 'Packaging and Publishing IT Research', '', '', '', '', '', 'Charibeth Cheng', 0, '', '', '', '', 1, 'Others', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Invited Talk', 2, 2),
(229, 97031925, 'PT008', 'Use of ICT in Teaching Heritage Learners', '', '', '', '', '', 'Charibeth Cheng ', 0, '', '', '', '', 1, 'Others', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Inivited Talk', 2, 2),
(230, 97031925, 'PT008', 'Hybrid English-Filipino Machine Translation System', '', '', '', '', '', 'Rachel Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(231, 97031925, 'PT008', 'eParticipation: Enabling', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(232, 97031925, 'PT008', 'E-Wika: Digitalization of Philippine Languages', '', '', '', '', '', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(233, 97031925, 'PT008', 'VoxPop: An Automated Opinion Detection and Classification with Data Clustering System', '', '', '', '', '', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(234, 97031925, 'PT011', '', '', '', 'Pambansang Edukasyong Pampanitikan 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(235, 97031925, 'PT011', '', '', '', 'Scholarship of Teaching and Learning Workshop on Pedagological Action Research', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(236, 97031925, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(237, 97031925, 'PT011', '', '', '', 'Authentic Assessment (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(238, 97031925, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcomes (PGO) Development', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(239, 97031925, 'PT011', '', '', '', '2014 International Conference on Asian Language Processing (IALP)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kuching', '', 2, 2),
(240, 97031925, 'PT011', '', '', '', 'PACLING 2013: Conference of the Pacific Association for Computational Linguistics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Tokyo', '', 2, 2),
(241, 97031925, 'PT011', '', '', '', 'Educational Philosophy and Transformative Learning Integration into Instruction and Curriculum', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(242, 97031925, 'PT011', '', '', '', 'Rethinking Teaching in Computing (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(243, 97031925, 'PT011', '', '', '', 'ELGA-Module 2 " Revision of Syllabus Stages 1-3 and Professional Learning Communities"', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(244, 97031925, 'PT011', '', '', '', 'ELGA Module 1 "Overview of Curriculum Development based on LGP', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(245, 97031925, 'PT011', '', '', '', '2010 National Science and Technology Week Celebration', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila Hotel', '', 2, 2),
(246, 97031925, 'PT011', '', '', '', 'Touchpoint 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(247, 97031925, 'PT011', '', '', '', '1st International Conference on Heritage/Community Learners', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UCLA', '', 2, 2),
(248, 97031925, 'PT011', '', '', '', '2nd International Conference on Filipino as a Global Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'San Diego', '', 2, 2),
(249, 97031925, 'PT011', '', '', '', 'Packaging and Publishing IT Research', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Holy Angel Unviersity', '', 2, 2),
(250, 97031925, 'PT011', '', '', '', '6th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(251, 97031925, 'PT011', '', '', '', 'Curriculum Mapping', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(252, 97031925, 'PT011', '', '', '', 'Charism of Lasallian Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(253, 97031925, 'PT011', '', '', '', 'Classroom Management Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(254, 97031925, 'PT011', '', '', '', 'Designing Project-based Courses', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(255, 97031925, 'PT011', '', '', '', '5th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(256, 97031925, 'PT011', '', '', '', '22nd Pacific Asia Conference on Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(257, 97031925, 'PT011', '', '', '', 'Curriculum Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(258, 97031925, 'PT011', '', '', '', '11th OU-DLSU Academic Research Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(259, 97031925, 'PT011', '', '', '', '1st International Conference on Filipino as a Global Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Hawaii at Manoa', '', 2, 2),
(260, 97031925, 'PT011', '', '', '', 'Towards Building the Philippine Corpus', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(261, 97031925, 'PT011', '', '', '', 'Cutting Edge Researches in Digital Signal Processing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(262, 97031925, 'PT011', '', '', '', 'Towards Building the Philippine Languages Corpora', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kawanihan ng Wikang Filipino', '', 2, 2),
(263, 97031925, 'PT011', '', '', '', '4th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(264, 97031925, 'PT011', '', '', '', 'HOPL-III: The 3rd ACM SIGPLAN History of Programming Languages', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(265, 97031925, 'PT011', '', '', '', 'PLDI 2007: ACM SIGPLAN 2007 Programming Language Design and Implementation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(266, 97031925, 'PT011', '', '', '', 'Open Source Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(267, 97031925, 'PT011', '', '', '', '1st Philippine-Japan Linguistic Conference ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Davao', '', 2, 2),
(268, 97031925, 'PT011', '', '', '', '1st World Congress on the Power of Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bangkok', '', 2, 2),
(269, 97031925, 'PT011', '', '', '', '3rd National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(270, 97031925, 'PT011', '', '', '', 'Workshop on Developing Pilot Modules for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(271, 97031925, 'PT011', '', '', '', 'Algorithms and Applications: A Graduate Short Course in Computer Science', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLS-Canlubang', '', 2, 2),
(272, 97020087, 'PT007', 'MULTI-DEVICE', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(273, 97020087, 'PT007', 'Integrating Project Management in a Web Programming Environment: Considerations in architecture and service delivery ', '', '6th International Conference Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(274, 97020087, 'PT007', 'THE USE OF SOCIAL NETWORKS IN AID OF PERSONAL HEALTH MONITORING', '', 'DLSU Research Congress 2015', '', '', 'DLSU', 'Castilo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(275, 97020087, 'PT007', 'Unifying heterogeneous mobile messaging protocols to provide a person-centric thread of conversation', '', 'DLSU Research Congress 2014', '', '', 'DLSU', 'John Jefferson Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(276, 97020087, 'PT007', 'An Architecture for Integrating a Web-based IDE and a Project Management System', '', 'DLSU Research Congress 2013', '', '', 'DLSU', 'Arnold Choa1', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(277, 97020087, 'PT007', 'Presenting and Contributing Locality-specific Road Traffic Information Through Mobile Traffic Monitoring System ', '', 'Research @DLSU', '', '', 'DLSU', 'Danny C. Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(278, 97020087, 'PT007', 'FiliText: A Filipino Hands-Free Text Messaging Application', '', '8th National Natural Language Processing Research Symposium', '', '', 'DLSU', 'Jerrick Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(279, 97020087, 'PT007', 'IMPROVING APPLICATION VISIBILITY IN A MOBILE APPLICATION STORE THROUGH SOCIAL NETWORK INTEGRATION', '', '15TH OSAKA UNIVERSITY – DE LA SALLE UNIVERSITY JOINT ACADEMIC RESEARCH SYMPOSIUM', '', '', 'DLSU', 'Michael Mohan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(280, 97020087, 'PT007', 'Techniques for Masquerading and Motivating Community driven Ontology', '', 'Proceedings of PCSC 2010: 10th Philippine Computing Science Congress', '', '', 'PCSC', 'Tinmon Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(281, 97020087, 'PT007', 'GATEKEEPER: A DISTRIBUTED REPUTATION-BASED APPROACH TO DETECT MALICIOUS USERS', '', '11TH SCIENCE AND TECHNOLOGY CONGRESS 2009', '', '', 'DLSU', 'P. Blancaflor', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(282, 97020087, 'PT007', 'Increasing community participation for learning and validating ontologies', '', 'Proceedings of Workshop on Web 3.0: Merging Semantic Web and Social Web - (SW)^2  at Hypertext 2009', '', '', 'CEUR-WS.org', 'Danny Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(283, 97020087, 'PT007', 'AN APPROACH FOR MONITORING NODE SELECTION TO SUPPORT REAL-TIME DETECTION OF CHEATING IN A P2P NETWORK FOR A MOFPS', '', '4th International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(284, 97020087, 'PT007', 'Multiplayer Mobile Game IDE', '', '9th Science and Technology Congress 2008', '', '', 'DLSU', 'Edward Mangaliman', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(285, 97020087, 'PT007', 'Filipiniana.NET: Supporting Community Research Activities within an Indexed Digital Library', '', 'The IEEE 2007 International Workshop on Web 2.0 and Multimedia-enabled Education (W2ME) in IEEE Inte', '', '', 'IEEE', 'Danny Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(286, 97020087, 'PT007', 'Coordinating System for Personal Digital Assistants', '', '9th Science and Technology Congress 2007', '', '', 'DLSU', 'Danny Cheng', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(287, 97020087, 'PT007', 'An IDE for Making Two Dimensional Mobile Games', '', '9th Science and Technology Congress 2007', '', '', 'DLSU', 'Danny Cheng', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(288, 97020087, 'PT007', 'VOICE OVER INTERNET PROTOCOL API FOR MOBILE DEVICES', '', 'Third Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(289, 97020087, 'PT007', '3D Application Programming Interface for Non-multithreaded Mobile Devices', '', '7th Philippine Computing Science Congress', '', '', 'DLSU', 'Arun Roshan Singh', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(290, 97020087, 'PT007', 'Adaptation of an Adversarial Non-player Character through Case-based Reasoning', '', '6th Philippine Computing Science Congress', '', '', 'DLSU', 'Danny Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(291, 97020087, 'PT007', 'Using Bayesian Network in Plan Recognition for RTS Games', '', '6th Philippine Computing Science Congress', '', '', 'DLSU', 'Danny Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(292, 97020087, 'PT007', 'Applying CBR for an adversarial NPC in skirmishes of an RTS game: Learning strategies from the human player', '', '6th Philippine Computing Science Congress', '', '', 'DLSU', 'Danny Cheng', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(293, 97020087, 'PT007', 'USER MODELING IN A REAL TIME STRATEGY GAME', '', '6th International Conference on Computer Games', '', '', 'CGAIMS', 'Danny Cheng', 0, '', '', '', '', 1, '', '', 'London', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(294, 97020087, 'PT007', 'CAN: CASE-BASED REASONING IN AN ADVERSARIAL NON-PLAYER CHARACTER', '', '6th International Conference on Computer Games', '', '', 'CGAIMS', 'Danny Cheng', 0, '', '', '', '', 1, '', '', 'London', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(295, 97020087, 'PT008', 'CROWD SOURCING THROUGH SOCIAL GAMING FOR COMMUNITY DRIVEN ONTOLOGY ENGINEERING', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(296, 97020087, 'PT008', 'A FRAMEWORK TOWARDS SUSTAINING SCALABLE COMMUNITY- DRIVEN ONTOLOGY ENGINEERING', '', '', '', '', '', 'Danny Cheng', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'ESWC-10 PHD SYMPOSIUM', 2, 2),
(297, 97020087, 'PT011', '', '', '', 'Professional Development Associates - Certified Information Security Manager Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Singapore', '', 2, 2),
(298, 97020087, 'PT011', '', '', '', '8th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(299, 97020087, 'PT011', '', '', '', 'OM2010 THE FIFTH INTERNATIONAL WORKSHOP ON ONTOLOGY MATCHING', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Shanghai', '', 2, 2),
(300, 97020087, 'PT011', '', '', '', '15th Osaka University ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(301, 97020087, 'PT011', '', '', '', 'Curriculum Development (ELGA 1)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(302, 97020087, 'PT011', '', '', '', 'ESWC-10 PHD SYMPOSIUM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Greece', '', 2, 2),
(303, 97020087, 'PT011', '', '', '', '10th Philippine Computing Science Congress ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo de Davao University', '', 2, 2),
(304, 97020087, 'PT011', '', '', '', 'Workshop on Web 3.0: Merging Semantic Web and Social Web - (SW)^2  at Hypertext 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Torino', '', 2, 2),
(305, 97020087, 'PT011', '', '', '', '4th International Conference on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(306, 97020087, 'PT011', '', '', '', 'Curriculum Mapping Designing of Project-based Courses Training Curriculum Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(309, 97020087, 'PT011', '', '', '', '9th Science and Technology Congress 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(310, 97020087, 'PT011', '', '', '', 'The IEEE 2007 International Workshop on Web 2.0 and Multimedia-enabled Education (W2ME) in IEEE Inte', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Taichung', '', 2, 2),
(311, 97020087, 'PT011', '', '', '', '9th Science and Technology Congress 2007 Third Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(313, 97020087, 'PT011', '', '', '', '7th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(314, 97020087, 'PT011', '', '', '', 'ENGAGE-Penang European Union-Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Malaysia', '', 2, 2),
(315, 97020087, 'PT011', '', '', '', '1st ENGAGE European Union-Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Century Park Hotel', '', 2, 2),
(316, 97020087, 'PT011', '', '', '', '6th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(317, 97020087, 'PT011', '', '', '', '6th International Conference on Computer Games', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'London', '', 2, 2),
(318, 97020087, 'PT011', '', '', '', 'Algorithms and Applications:   A Graduate Short course in Computer Science', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'ISR', '', 2, 2),
(319, 97020087, 'PT011', '', '', '', 'Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(320, 20123647, 'PT007', 'Exploring Possible Open Data Opportunities in Maternal Health and Child Care in the Philippines', '', '', '', 'International Journal of Innovation', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(321, 20123647, 'PT007', 'Maternal Health Practices in Sta. Rosa', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(322, 20123647, 'PT011', '', '', '', 'Shifting Philippines towards the Digital Economy: Business Process Management Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Asian Institute of Management Conference Center', '', 2, 2),
(323, 20123647, 'PT011', '', '', '', 'Data Skills Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'World Bank', '', 2, 2),
(324, 97042498, 'PT007', 'Sentence-level Morphological and Phonological Analyzer for Filipino', '', 'Proc. of the 8th National Natural Language Processing Research Symposium (8NNLPRS)', '', '', '', 'Chu Shirley', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(325, 97042498, 'PT007', 'Question Answering System for Reading Comprehension Using Evolving Networks', '', 'Proc. of the 2010 IRAST International Congress on Computer Applications and Computational Science (C', '', '', '', 'Chu Shirley', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(327, 97042498, 'PT007', 'EVOGENTS:  Evolving Agents in a Virtual World', '', 'Proc. of the 3rd International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(328, 97042498, 'PT007', 'Question Answering Using Evolving Networks', '', '7th Science and Technology Congress', '', '', '', 'Chu Shirley', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(329, 97042498, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcomes (PGO) Development', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(330, 97042498, 'PT011', '', '', '', 'Classroom Management Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(331, 97042498, 'PT011', '', '', '', 'Charism of Lasallian Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(332, 97042498, 'PT011', '', '', '', 'Designing Project-Based Courses Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(333, 97042498, 'PT011', '', '', '', 'Curriculum Design 101 Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(334, 97088897, 'PT007', 'Fast Emulation of Self-Organizing Maps for Large Datasets', '', '6th International Conference on Ambient Systems', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(335, 97088897, 'PT007', 'Determining the Correlation Between Concentration Levels and the Visual Features of Algae in Water Surfaces', '', '15th Philippine Computing Society Congress', '', '', 'PCSC 2015 Conference Proceedings', 'A.S. Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(336, 97088897, 'PT007', ' SMO-based  System  for  Identifying  Common  Lung  Conditions  Using Histogram', '', 'IEEE 7th  International  Symposium  on  Medical  Information  and Communication Technology (ISMICT 2', '', '', 'IEEE Conference Publications', 'M. O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(337, 97088897, 'PT007', 'Lung Nodule Diagnosis: Using Circle Detection Trough Plain Radiographs', '', 'DLSU Science and Technology Congress 2013', '', '', 'DLSU', ' M.O.  Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(338, 97088897, 'PT007', 'A Simple Lung Sound Enhancement for Automatic Identification of Lung Pathologies', '', 'Proc. 2013 International Symposium on Multimedia and Communication Technology', '', '', 'IEEE Thailand Section', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(339, 97088897, 'PT007', 'Performance Comparison of ASR Classifiers for the Development of  an  English  CAPT  System  for  Filipino  Students', '', 'IEEE  Proceeding  TENCON  2012', '', '', 'IEEE Conference Publications', 'M. O. Cordel and D. D. Obach', 0, '', '', '', '5-Jan', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(340, 97088897, 'PT007', 'An Approach to Discriminate Hand Dorsal Vein Patterns for Low-Cost Biometric Identification', '', '12th Philippine Computing Society Congress', '', '', 'PCSC 2012', 'M. O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(341, 97088897, 'PT007', 'Design and Implementation of a Parameter-Based Voice Enhancement Device (VED) for Next Generation Networking (NGN)', '', 'IEEE Proceeding TENCON 2011', '', '', 'IEEE Conference Publications', 'M.O. Cordel and R.C.L. Guevara', 0, '', '', '', '302-306', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(342, 97088897, 'PT007', 'Parameter-Based Voice Enhancement for Mobile Communications in Next-Generation Networking', '', 'Proc. 2010 International Symposium on Multimedia and Communication Technology', '', '', 'IEEE Philippine Section', 'M.O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(343, 97088897, 'PT007', 'A Parameter-Based Echo Cancellers for Adaptive Multi-Rate Wideband Codec', '', 'Proc. 5th Engineering for Research and Development for Technology Conference', '', '', 'ERDT Consortium', 'M.O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(344, 97088897, 'PT008', 'A Computer Assisted Diagnosis System for the Identification/Auscultation of Pulmonary Pathologies', '', '', '', '', '', 'M.O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(345, 97088897, 'PT008', 'Methodology for Emulating Self-Organizing Maps for Visualization of Large Datasets', '', '', '', '', '', 'M. O. Cordel', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(346, 97088897, 'PT011', '', '', '', 'Charism of a Lasallian Educator and Student Centered Learning (by Br. Mike Valenzuela', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(347, 97088897, 'PT011', '', '', '', 'Authentic Assessment (by Dr. Joe Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(348, 97088897, 'PT011', '', '', '', 'DLSU Output-Based Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(349, 97088897, 'PT011', '', '', '', 'Rethinking Teaching in Computing (by Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(350, 97088897, 'PT011', '', '', '', 'IEEE 7th International Symposium on Medical Information and Communication Technology 2013', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Tokyo', '', 2, 2),
(351, 97088897, 'PT011', '', '', '', 'IEEE TENCON 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bali', '', 2, 2),
(352, 97088897, 'PT011', '', '', '', '2010 International Symposium on Multimedia and Communication Technology', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Diamond Hotel', '', 2, 2),
(353, 97088897, 'PT011', '', '', '', '5th Engineering Research and Development for Technology (ERDT) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sofitel Philippine Plaza', '', 2, 2),
(354, 97088897, 'PT011', '', '', '', 'Lecture on Robust Speech Recognition and its LSI Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP EEEI', '', 2, 2),
(355, 97088897, 'PT011', '', '', '', '4th Engineering Research and Development for Technology (ERDT) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sofitel Philippine Plaza', '', 2, 2),
(356, 97088897, 'PT011', '', '', '', '3rd Engineering Research and Development for Technology (ERDT) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'EDSA Shangri-la Hotel', '', 2, 2),
(357, 97031909, 'PT007', 'Protocol for Data Collection of Mobile Wireless Sensor Nodes', '', 'Workshop on Computing: Theory and Practice', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(358, 97031909, 'PT007', 'Internet of Things: Managing Wireless Sensor  Network with REST API for Smart Homes', '', 'Workshop on Computing: Theory and Practice', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(359, 97031909, 'PT007', 'Modeling DOS Attacks Using Machine Learning', '', 'Philippine Computing Science Congress 2014', '', '', 'Computing Society of the Philippines', 'Fili Emerson Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(360, 97031909, 'PT007', 'An Application Programming Interface for the Communication and Storage Protocol for the TALA Emapthic Space', '', 'Workshop on Computing: Theory and Practice', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(361, 97031909, 'PT007', 'Data Collection with Prioritization for Wireless Sensor Networks', '', 'Workshop on Computing: Theory and Practice', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(362, 97031909, 'PT007', 'Data Traffic Classification in Wireless Sensor Network-based Home Automation Systems', '', 'Workshop on Computing: Theory and Practice', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(363, 97031909, 'PT007', 'MOD-G Protocol: A Communication  Protocol for an Empathic Network', '', 'Workshop on Computing: Theory and Practice Septmber 2012 Conference Proceedings', '', '', 'Springer Japan', 'Juan Miguel N. Bartolome', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(364, 97031909, 'PT007', 'Centralized Data Acquisition Unit for the Empathic Space', '', 'HumanCom 2010 - International Workshop on Empathic Computing', '', '', 'FTRA', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(365, 97031909, 'PT007', 'Issues in the Design of a Computing Platform for the Emphatic Space', '', '1st - Osaka University - De La Salle University Workshop on Empathic Computing', '', '', 'Osaka University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(366, 97031909, 'PT007', 'Internet Controlled Portable Image Acquisition System', '', 'Science and Technology Congress 2009', '', '', 'De La Salle University', 'Daryl Ongmanchi', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(367, 97031909, 'PT007', '	Applying Preprocessing on Road Network to Solve Optimal Paths for Trip Planning Queries', '', 'Fourth International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(368, 97031909, 'PT007', '	A User Location and Tracking System using Wireless Local Area Network', '', 'Philippine Computing Science Congress 2009', '', '', 'Computing Society of the Philippines', 'Kent Nishimore', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(369, 97031909, 'PT007', '	A Behavior-Based Intrusion Prevention System', '', 'Science and Technology Congress 2008', '', '', 'De La Salle University', 'Arlyn Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(370, 97031909, 'PT007', '	Vision Aided Automated Following Vehicle System', '', 'Third International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(371, 97031909, 'PT007', 'nline Network Monitoring using RMON Standards', '', 'Philippine Computing Science Congress 2007', 'none', '', 'Computing Society of the Philippines', 'Chase Tan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(372, 97031909, 'PT007', 'A Follow-up on the Automated Following Vehicle System', '', '2nd International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(373, 97031909, 'PT007', '	An Automatic Clutch Actuation System for Manual Transmission Type Vehicle', '', '2nd International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(374, 97031909, 'PT011', '', '', '', 'Student Centered Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Unviersity', '', 2, 2),
(375, 97031909, 'PT011', '', '', '', 'PAASCU - Workshop on Learning Outcome and Competencies', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hotel Benilde', '', 2, 2),
(376, 97031909, 'PT011', '', '', '', 'Charism of a La Sallian Educator', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Unviersity', '', 2, 2),
(377, 97031909, 'PT011', '', '', '', 'Authentic Assessment ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Unviersity', '', 2, 2),
(378, 97031909, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcome (PGO) Development ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(379, 97031909, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(380, 97031909, 'PT011', '', '', '', 'Rethinking Teaching in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Unviersity', '', 2, 2),
(381, 97031909, 'PT011', '', '', '', 'Workshop on Computing: Theory and Practice 2012', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(382, 97031909, 'PT011', '', '', '', 'Philippine Computing Science Congress 2012', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Canlubang', '', 2, 2),
(383, 97031909, 'PT011', '', '', '', 'Workshop on Computing: Theory and Practice 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of the Philippines', '', 2, 2),
(384, 97031909, 'PT011', '', '', '', 'International Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hanoi University', '', 2, 2),
(385, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy QA Meeting 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'ITE West College', '', 2, 2),
(386, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Instructor''s Conference 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Regency Lagoon', '', 2, 2),
(387, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Council Meeting and QA Academy Workshop 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Cisco', '', 2, 2),
(388, 97031909, 'PT011', '', '', '', 'Philippine Computing Science Congress 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo de Naga', '', 2, 2),
(389, 97031909, 'PT011', '', '', '', 'Humancom 2010 - International Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Cebu', '', 2, 2),
(390, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Instructor''s Conference 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay Regency', '', 2, 2),
(391, 97031909, 'PT011', '', '', '', 'Philippine Computing Science Congress 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo de Davao', '', 2, 2),
(392, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Council Meeting and QA Academy Workshop 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Pan Pacific Hotel', '', 2, 2),
(393, 97031909, 'PT011', '', '', '', '1st - Osaka University - De La Salle University Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(394, 97031909, 'PT011', '', '', '', 'Science and Technology Congress 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(395, 97031909, 'PT011', '', '', '', 'Fourth International Conference on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(396, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Instructor Conference - Philippines 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Century Hotel', '', 2, 2),
(397, 97031909, 'PT011', '', '', '', 'Philippine Computing Science Congress 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Siliman University', '', 2, 2),
(398, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Regional Instructor Conference 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hyatt', '', 2, 2),
(399, 97031909, 'PT011', '', '', '', 'Science and Technology Congress 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(400, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy QA Workshop 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'HKU-SPACE', '', 2, 2),
(401, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Instructor Conference - Philippines 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hotel Dominique', '', 2, 2),
(402, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Regional Instructor Conference 2007', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hong Kong Gold Coast Hotel', '', 2, 2),
(403, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy New CCNA Course Launching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'St. John University', '', 2, 2),
(404, 97031909, 'PT011', '', '', '', 'Third International Conference on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(405, 97031909, 'PT011', '', '', '', 'Philippine Computing Science Congress 2007', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay Regency', '', 2, 2),
(406, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Regional Instructor Conference 2006', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Westin Hotel', '', 2, 2),
(407, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Instructor Conference - Philippines 2006', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(408, 97031909, 'PT011', '', '', '', 'Cisco Networking Academy Regional Instructor Conference 2005', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Grand Hyatt', '', 2, 2),
(409, 97031909, 'PT011', '', '', '', '2nd International Conference on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(410, 97014753, 'PT001', 'A Multimodal Emotion Corpus for Filipino and its Uses', '', '', '', 'Jounal on Multimodal User Interfaces', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(411, 97014753, 'PT001', 'Framework for an Empathic Filipino Embodied Conversational Agent for an Intelligent Tutoring System', '', '', '', 'Philippine Computing Journal', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(412, 97014753, 'PT001', 'Modeling Spontaneous Affect Using Continuous Data', '', '', '', 'Philippine Computing Journal', '', 'Solomon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(413, 97014753, 'PT001', 'Audiovisual Affect Recognition in Spontaneous Filipino Laughter', '', '', '', 'Philippine Computing Journal', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(414, 97014753, 'PT001', 'Facial Expressions with AAM', '', '', '', 'Philippine Computing Journal', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(415, 97014753, 'PT001', 'Developing A Digital Audio Watermark Using Psychoacoustic Model II', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(416, 97014753, 'PT007', 'Automatic Recognition of Affective Laughter Using Body Movement', '', 'DLSU Research Congress 2015', '', '', '', 'Luz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(417, 97014753, 'PT007', 'Ambient Sound Source Classification using Machine Learning', '', 'DLSU Research Congress 2015', '', '', '', 'Dy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(418, 97014753, 'PT007', 'Project TINK: A Methodology for Simulating Network Attacks', '', 'DLSU Research Congress 2015', '', '', '', 'Cabie', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(419, 97014753, 'PT007', 'Measuring Academic Affective States of Adult Learners Using Brainwave Sgnals', '', 'Workshop on Computation', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(420, 97014753, 'PT007', 'Modelling DoS Attack Using Machine Learning', '', '14th Philippine Computing Science Congress', '', '', '', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(421, 97014753, 'PT007', 'An Exploratory Study on Naturalistic Laughter Synthesis', '', '4th Int''l Workshop on Empathic Computing (IWEC)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(422, 97014753, 'PT007', 'I''m Happy… Can''t You Tell From My Laughter?', '', 'DLSU Research Congress 2013', '', '', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(423, 97014753, 'PT007', 'Building an Audio-Based Model for Emotion Recognition in Filipino Laughter', '', '13th Philippine Computing Science Congress', '', '', '', 'Canillas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(424, 97014753, 'PT007', 'Pagtawang Pinoy: Pagbubuo ng Isang Multimodal Database para sa Pagtawa Bilang Ekspresyon ng Emosyon', '', 'Ika-37 Pambansang Kumperesya sa Sikolohiyang Pilipino', '', '', '', 'Sta. Maria', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(425, 97014753, 'PT007', 'Towards Building a Context-based Laughter Model', '', '3rd Interdisciplinary Workshop on Laughter and other Non-Verbal Vocalisations in Speech', '', '', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(427, 97014753, 'PT007', 'A Real-Time On Modelling Emotional Responses to Rhythm Features', '', '12th Pacific Rim International Conference on Artificial Intelligence', '', '', 'MIMOS BERHAD', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(428, 97014753, 'PT007', 'Building a Multimodal Laughter Database for Emotion Recognition', '', '8th International Conference on Language Resources and Evaluation (LREC 2012)', '', '', 'European Language Resources Association', 'Suarez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(429, 97014753, 'PT007', 'An Emotion Model of Academic Affective States in the Filipino Context', '', '12th Philippine Computing Science Congress', '', '', '', 'Ablaza', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(430, 97014753, 'PT007', 'Voice Affect Modelling Using Dimensional Labels', '', '12th Philippine Computing Science Congress', '', '', '', 'De Leon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(431, 97014753, 'PT007', 'Audiovisual Affect Recognition in Spontaneous Filipino Laughter', '', '2nd Int''l Workshop on Empathic Computing (IWEC)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(432, 97014753, 'PT007', 'Analysis of Music Timbre Features for the Construction of User-Specific Affect Model', '', 'Workshop on Computation', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(433, 97014753, 'PT007', 'Automatic Laughter Segmentation in Meetings', '', '11th Philippine Computing Science Congress', '', '', '', 'Lee', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(434, 97014753, 'PT007', 'SAM-D2: Modeling Spontaneous Affect', '', '11th Philippine Computing Science Congress', '', '', '', 'Latorre', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(435, 97014753, 'PT007', 'Affect Recognition from Acted and Spontaneous Facial Expressions', '', '13th Joint Academic Research Symposium of De La Salle University and Osaka University', '', '', '', 'Dy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(436, 97014753, 'PT007', 'Development of a Filipino Multimodal Emotion Corpus', '', 'Making Use of Psychological Constructs in Developing Systems for Human-Computer Interactions', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(437, 97014753, 'PT007', 'Multimodal Emotion Recognition Using a Spontaneous Filipino Emotion Database', '', '1st Int''l Workshop on Empathic Computing', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(438, 97014753, 'PT007', 'The TALA Empathic Space: Integrating Affect and Activity Recognition into a Smart Space', '', '3rd Int''l Conf on Human Centric Computing', '', '', 'IEEE Explore', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(439, 97014753, 'PT007', 'A Filipino Multimodal Emotion Database', '', 'Int''l Workshop on Multimodal Corpora: Advances in Capturing', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(440, 97014753, 'PT007', 'Multimodal Emotion Recognition System for Spontaneous Vocal and Facial Signals', '', '10th Philippine Computing Science Congress', '', '', '', 'Dy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(441, 97014753, 'PT007', 'Issues and Challenges in Corpus Building with Spontaneous Expressions', '', 'Workshop on Empathic Computing', '', '', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(442, 97014753, 'PT007', 'FilMED: A Filipino Multimodal Emotion Database', '', '11th Science and Technology Congress', '', '', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(443, 97014753, 'PT007', 'Speech Corpora and Applications', '', 'O-COCOSDA 2009', '', '', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(444, 97014753, 'PT007', 'CombiSign: Combined Static and Dynamic Feature Types for Online Signature Verification', '', '10th Science and Technology Congress', '', '', '', 'Gan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(445, 97014753, 'PT007', 'A Text-to-Speech System for Counting in Filipino', '', 'ADD-3 School of Applied Natural Language Processing for Linguistics Diversity and Language Resource ', '', '', '', 'Aralar', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(446, 97014753, 'PT007', 'Mark-It! Digital Video Watermarking System', '', '9th Science and Technology Congress', 'none', '', '', 'Bayle', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(447, 97014753, 'PT007', 'Viewpoint and Illumination Properties Extraction for Recognizing Surfaces', '', '3rd Int''l Conf on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(448, 97014753, 'PT007', 'Hand Signature Online Verification System', '', '8th Science and Technology Congress', 'none', 'none', 'None', 'Celestino', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(449, 97014753, 'PT011', '', '', '', 'DLSU Research Congress 2014', 'none', 'none', 'none', 0, 'none', 'none', 'none', 'none', 1, 'none', 'none', 'none', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', 'none', 'none', 'De La Salle University', '', 2, 2),
(450, 97014753, 'PT011', '', '', '', 'LMDP: Internationalization of Education', 'none', 'none', 'none', 0, 'none', 'none', 'none', 'none', 1, 'none', 'none', 'none', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', 'none', 'none', 'De La Salle University', '', 2, 2),
(451, 97014753, 'PT011', '', '', '', 'LMDP: Human Behaviour', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(452, 97014753, 'PT011', '', '', '', 'LMDP: Service Learning - The University as a Resource of Church and Nation', 'none', 'none', 'none', 0, 'none', 'none', 'none', 'none', 1, 'none', 'none', 'none', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', 'none', 'none', 'De La Salle University', '', 2, 2),
(453, 97014753, 'PT011', '', '', '', 'LMDP: Institutional Collaboration', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(454, 97014753, 'PT011', '', '', '', 'LMDP: Research and Knowledge Production in the New Economy', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(455, 97014753, 'PT011', '', '', '', '4th Workshop on Computation: Theory and Practice (WCTP 2014)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Century Park Hotel', '', 2, 2),
(456, 97014753, 'PT011', '', '', '', 'Charism of a Lasallian Educator', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(457, 97014753, 'PT011', '', '', '', 'Launching of the AUTODESK Project and Workshop on Learning Outcomes and Competencies', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hotel Benilde Maison De La Salle Manila', 'none', 2, 2),
(458, 97014753, 'PT011', '', '', '', 'LMDP: Instructional Leadership', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(459, 97014753, 'PT011', '', '', '', 'LMDP: Managing the Academic Department', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(460, 97014753, 'PT011', '', '', '', 'LMDP: Organizational Culture', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(461, 97014753, 'PT011', '', '', '', 'LMDP: The Context of Leadership and Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(462, 97014753, 'PT011', '', '', '', '14th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Immaculate Conception', '', 2, 2),
(463, 97014753, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(464, 97014753, 'PT011', '', '', '', 'LMDP: Spirituality', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(465, 97014753, 'PT011', '', '', '', 'LMDP: The Lasallian Leader and Manager', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(466, 97014753, 'PT011', '', '', '', 'LMDP: Leadership vs. Management/Transformative Models of Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(467, 97014753, 'PT011', '', '', '', 'LMDP: Management Ethics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(468, 97014753, 'PT011', '', '', '', 'LMDP: Foundations of Leadership and Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(469, 97014753, 'PT011', '', '', '', 'CCS Workshop on Program Educational Outcome (PEO) and Program Graduate Outcome (PGO) Development for', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(470, 97014753, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(471, 97014753, 'PT011', '', '', '', 'Rethinking Teaching in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(472, 97014753, 'PT011', '', '', '', '23rd Int''l Joint Conf on Artificial Intelligence', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Beijing', '', 2, 2),
(473, 97014753, 'PT011', '', '', '', 'DLSU Research Congress 2013', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(474, 97014753, 'PT011', '', '', '', ' 13th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo De Manila University', '', 2, 2),
(475, 97014753, 'PT011', '', '', '', 'Ika-37 Pambansang Kumperensya sa Sikolohiyang Pilipino', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Lycuem of the Philippines - Batangas', 'none', 2, 2),
(476, 97014753, 'PT011', '', '', '', 'Interdisciplinary Workshop on Laughter and other Non-Verbal Vocalisations in Speech', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Trinity College', '', 2, 2),
(477, 97014753, 'PT011', '', '', '', '2nd Workshop on Computation:  Theory and Practice (WCTP 2012)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(478, 97014753, 'PT011', '', '', '', '12th Pacific Rim International Conference on Artificial Intelligence', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kuching', '', 2, 2),
(479, 97014753, 'PT011', '', '', '', '8th Int''l Conf on Language Resources and Evaluation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Istanbul', '', 2, 2),
(480, 97014753, 'PT011', '', '', '', '12th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(481, 97014753, 'PT011', '', '', '', '3rd Int''l Conf on Knowledge and Systems Engineering', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Hanoi', '', 2, 2),
(482, 97014753, 'PT011', '', '', '', '2nd Int''l Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Hanoi', '', 2, 2),
(483, 97014753, 'PT011', '', '', '', ' Workshop on Computation: Theory and Practice 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP - Diliman', '', 2, 2),
(484, 97014753, 'PT011', '', '', '', '11th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo De Naga University', '', 2, 2),
(485, 97014753, 'PT011', '', '', '', '10th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo De Davao University', '', 2, 2),
(486, 97014753, 'PT011', '', '', '', '2010 Int''l Conf on Intelligent User Interfaces', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Grand Stanford InterContinental', '', 2, 2),
(487, 97014753, 'PT011', '', '', '', '13th Osaka University - De La Salle University Academic Research Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(488, 97014753, 'PT011', '', '', '', 'Workshop on Empathic Computing ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(489, 97014753, 'PT011', '', '', '', '12th Conf of Oriental Chapter of The International Committee for the Co-ordination and Standardizati', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Xinjiang University', '', 2, 2),
(490, 97014753, 'PT011', '', '', '', 'Science and Technology Congress 2008', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(491, 97014753, 'PT011', '', '', '', 'Asian Applied Natural Language Processing for Linguistics Diversity and Language Resource Developmen', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'NICT Asia Research Center', '', 2, 2),
(492, 97014753, 'PT011', '', '', '', 'Science and Technology Congress 2007', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(493, 97014753, 'PT011', '', '', '', '3rd Int''l Conf on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(494, 97014753, 'PT011', '', '', '', 'Science and Technology Congress 2006', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(495, 20143559, 'PT007', 'Approximate Gene Cluster Discovery Problem (AGCDP) as Minimization Problem on Graph', '', 'Symposium on the Mathematical Aspects of Computer Science (SMACS)', 'none', '', '', 'J. Aborot', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(496, 20143559, 'PT007', 'Solving the Exact Pattern Matching Problem Constrained to Single Occurrence of Pattern P in String S Using Grover''s Quantum Search Algorithm', '', 'Workshop on Computation: Theory and Practice (WCTP)', 'none', '', '', 'J. Aborot', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(497, 97045179, 'PT011', '', '', '', 'Molave Business Conference (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Richville Corporate Tower', '', 2, 2),
(498, 97045179, 'PT011', '', '', '', 'SMEs and Technology (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Asia & the Pacific', '', 2, 2),
(499, 97045179, 'PT011', '', '', '', 'The Internet - A Double-edged Sword (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'PAREF Southridge School', '', 2, 2),
(500, 97045179, 'PT011', '', '', '', 'Software Quality Assurance (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(501, 97045179, 'PT011', '', '', '', 'Software Testing (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(502, 97045179, 'PT011', '', '', '', 'Activity-based Costing (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(503, 97045179, 'PT011', '', '', '', 'Project Management (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(504, 97045179, 'PT011', '', '', '', 'Cost of Poor Quality (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(505, 97045179, 'PT011', '', '', '', 'Business Analysis - BABOK-based (Facilitator', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Digileaf Makati', '', 2, 2),
(506, 97045179, 'PT011', '', '', '', 'Project Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Nestle Philippines', '', 2, 2),
(507, 97045179, 'PT011', '', '', '', 'ITIL (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Innovato Training Facility', '', 2, 2),
(508, 97045179, 'PT011', '', '', '', 'Project Management (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Generika Main Office', '', 2, 2),
(509, 97045179, 'PT011', '', '', '', 'Sofware Quality Assurance (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Gardenia Bakeries - Laguna', '', 2, 2),
(510, 97045179, 'PT011', '', '', '', 'Project Management (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Asia & the Pacific', '', 2, 2),
(511, 97045179, 'PT011', '', '', '', 'Business Process Re-design (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Generika Main Office', '', 2, 2),
(512, 97045179, 'PT011', '', '', '', 'IT Project Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Generika Main Office', '', 2, 2),
(513, 97045179, 'PT011', '', '', '', 'Strategic Planning Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Generika Main Office', '', 2, 2),
(514, 97045179, 'PT011', '', '', '', 'Strategic Planning and Budgeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'PA Builders - Binan', '', 2, 2),
(515, 97045179, 'PT011', '', '', '', 'Raising Web-wise Kids (Facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Valle Verde 5 Clubhouse', '', 2, 2),
(516, 97093157, 'PT007', 'Toward the Automation of Detection of Refactoring Opportunities', 'none', '10th Philippine Computer Science Congress', '', '', 'Philippine Computing Science Congress', 'Raymund Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(517, 97093157, 'PT007', 'A Case-Based Reasoning Approach to Providing Feedback to Novice Programmers', 'none', '2015 DLSU Research Congress', '', '', 'DLSU Research Congress', 'Ryan Dimaunahan and Raymund Sison', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(518, 97093157, 'PT008', '', 'Toward the Automation of Detection of Refactoring Opportunities', '', '', '', '', 'Raymund Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(519, 97093157, 'PT008', '', 'A Case-Based Reasoning Approach to Providing Feedback to Novice Programmers', '', '', '', '', 'Ryan Dimaunahan and Raymund Sison', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(520, 97093157, 'PT011', '', '', '', '10th Philippine Computer Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo de Davao University', '', 2, 2),
(521, 97093157, 'PT011', '', '', '', '9th Science and Technology Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University Manila', '', 2, 2),
(522, 97093157, 'PT011', '', '', '', '2015 DLSU Research Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University Manila', '', 2, 2),
(523, 20123256, 'PT007', 'Community-based Disaster Risk Reduction Management System for Pila', '', 'DLSU Research Congress', '', '', 'DLSU', 'Encarnacion', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(524, 97063932, 'PT001', 'The Proposed Computer Engineering Curriculum for the YLFI - Emilio Aguinaldo College: A Response Towards Global Competitiveness', '', 'none', '', 'The CET Review', '', 'Franco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(525, 97063932, 'PT001', 'A Proposed Computer Laboratory Design for the College of Engineering and Technology', '', '', '', 'The CET Review', '', 'Franco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(526, 97063932, 'PT008', '', 'Dynamic Website for Evangelion Foundation', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(527, 97063932, 'PT007', 'Local Area Network Analyzer with Multi-Vendor Support and Host Aliasing without Agents (LLAMAS)', '', 'DLSU Research Congress 2015', '', '', '', 'Aquino', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(528, 97063932, 'PT007', 'Network Analysis with Report Authoring (NARA)', '', 'DLSU Research Congress 2015', '', '', '', 'Caldez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(530, 97063932, 'PT011', '', '', '', 'Charism of a Lasallian Educator by Br. Mike Valenzuela', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(531, 97063932, 'PT011', '', '', '', 'Student Centered Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(532, 97063932, 'PT011', '', '', '', 'Academic Leaders Development Program (ALDP) 1-4', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(533, 97063932, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(534, 97063932, 'PT011', '', '', '', 'CCS Workshop on Program Education Objectives (PEO) and Program Graduate Outcome (PGO) Development fo', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(535, 97063932, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(536, 97063932, 'PT011', '', '', '', 'IBM DB2 Express-C : Associate Certification', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(537, 97063932, 'PT011', '', '', '', 'Building Forms Using Oracle 10g', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(538, 97063932, 'PT011', '', '', '', 'O&B: Agile Proficiency Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(539, 97063932, 'PT011', '', '', '', 'Seminar-Workshop on Outcome Based Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'FEU-EAC', '', 2, 2),
(540, 97063932, 'PT011', '', '', '', 'Strengthen Your Research Profile / Introduction to Emphatic Computing Research', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'National University', '', 2, 2),
(541, 97063932, 'PT011', '', '', '', 'ABACUS Travel and Computer Reservation System', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati', '', 2, 2),
(542, 20123590, 'PT001', 'Finding Solutions to Different Problems Simultaneously in a Multi-molecule Simulated Reactor', '', '', '', 'Asia Pacific Journal of Multidisciplinary Research', 'none', 'Pabico', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(543, 20123590, 'PT001', 'A Molecular Dynamics Heuristic for Solving the Traveling Salesperson Problem', '', '', '', 'Asia Pacific Journal For Education', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(544, 20123590, 'PT008', '', 'Solving the Traveling Purchaser Problem Using the Molecular Dynamics Metaphor', '', '', '', '', 'Pabico', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(545, 20123590, 'PT008', '', 'Scheduling Aircraft Landings with Pheromone-Laying Random Walkers', '', '', '', '', 'Castro', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(546, 20123590, 'PT008', '', 'Scheduling Aircraft Landings with Artificial Chemistry', '', '', '', '', 'Gendrano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(547, 20123590, 'PT011', '', '', '', 'Philippine Computing Science Congress 2012', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Science and Technology Complex ', 'none', 2, 2),
(548, 20123590, 'PT011', '', '', '', 'Mathematical Society of the Philippines Calabarzon Regional Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Calayan Educational Foundation', '', 2, 2),
(549, 20123590, 'PT011', '', '', '', 'Mathematical Society of the Philippines Annual Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sarabia Manor Hotel and Convention Center', '', 2, 2),
(550, 97091219, 'PT001', 'Open Domain Continuous Filipino Speech Recognition: Challenges and Baseline Experiments', '', '', '', 'IEICE Transactions on Information and Systems', 'none', 'Federico Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(551, 97091219, 'PT001', 'Ang Paggamit ng Trigram Ranking Bilang Panukat sa Pagkakahalintulad at Pagkakapangkat ng mga Wika/Trigram Ranking: Metric for Language Similarity and Clustering', '', '', '', 'Malay Journal', 'none', 'Nathaniel Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(552, 97091219, 'PT001', 'Komparatibong analisis ng aktuwal na gamit ng wika at mga piling pamantayan sa gramatika at ortograpiya sa Filipino', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(553, 97091219, 'PT007', 'Determining the Correlation Between Concentration Levels and the Visual Features of Algae in Water Surfaces', '', '15th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Phils. (CSP)', 'Aaron Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(554, 97091219, 'PT007', 'Classification of an Infant’s Cry Based on Audio Features', '', 'DLSU Research Congress', '', '', 'DLSU', 'Ramon Rodriguez and Joel Ilao', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(555, 97091219, 'PT007', 'Alternative Feature Extraction from Digitized Images of Dye Solutions as a model for Algal Bloom Remote Sensing', '', 'International Conference on Advanced Computer Science and Information Systems (ICACSIS 2014)', '', '', 'IEEE', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(556, 97091219, 'PT007', 'Application of Histogram of Oriented Gradient in Person Detection from Aerial Images', '', 'DLSU Research Congress', '', '', 'DLSU', 'A.M. Garcia', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(557, 97091219, 'PT007', 'Vehicle Count Estimation on Traffic Images', '', 'DLSU Research Congress', '', '', 'DLSU', 'J.A. Alcantara', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(558, 97091219, 'PT007', 'Optimizing Cost Function of Histogram of Oriented Gradient-based INRIA Dataset', '', '14th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Phils. (CSP)', 'Roger Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(559, 97091219, 'PT007', 'Exploring the Behavior of Novice Programmer’s EEG Signals for Affect-based Student Modeling', '', '14th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Phils. (CSP)', 'Tita Herradura', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(560, 97091219, 'PT007', 'Filipino Emotion Classification in Speech Signals based on Audio Features and Transcribed Text', '', '14th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Phils. (CSP)', 'Ramon Rodriguez and Joel Ilao', 0, '', '', '', '', 1, '', '', 'Davao', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(561, 97091219, 'PT007', 'Document Filtering and Cleaning: N-gram based Language Identification and Rule-based Grammar Checking', '', '14th Philippine Computing Science Congress (PCSC)', '', '', 'Computing Society of the Phils. (CSP)', 'Nathaniel Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(562, 97091219, 'PT007', 'Dice''s Coefficient on Trigram Profiles as Metric for Language Similarity', '', '16th Oriental COCOSDA Conference', '', '', 'COCOSDA', 'N. Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(563, 97091219, 'PT007', 'Measuring Language Similarity using Trigrams: Limitations of Language Identification', '', '3rd International Conference on Recent Trends in Information Technology', '', '', 'IEEE', 'N. Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(564, 97091219, 'PT007', 'SMO-based System for Identifying Common Lung Conditions Using Histogram', '', '7th International Symposium on Medical Information and Communication Technology (ISMICT)', '', '', 'IEEE', 'C.V.M. Vera Cruz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(565, 97091219, 'PT007', 'Detecting Code-Switches using Word Bigram Frequency Count', '', '9th National Natural Language Processing Research Symposium ', '', '', 'Computing Society of the Phils. (CSP)', 'N. Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(566, 97091219, 'PT007', 'Live it Up! 2 Smart Refrigerator: Improving Inventory Identification and Recognition', '', 'DLSU Research Congress', '', '', 'DLSU', 'J.K.P. Aranila', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(567, 97091219, 'PT007', 'Image Visualization of Lung Sound for Alternative Reference in Characterizing Adventitous Breath Sound', '', 'DLSU Research Congress', '', '', 'DLSU', 'K.L.D. Cocuaco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(568, 97091219, 'PT007', 'Lung Nodule Detection and Diagnosis using Circle Detection Through Plain Radiographs', '', 'DLSU Research Congress', '', '', 'DLSU', 'R.R. dela Cruz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(569, 97091219, 'PT007', 'A Simple Lung Sound Enhancement for Automatic Identification of Lung Pathologies', '', 'International Symposium on Multimedia and Communication Technology (ISMAC)', '', '', 'IEEE', 'A.J.R. Lao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(570, 97091219, 'PT007', 'Investigating spelling variants and conventionalization rates in the Philippine national language''s system of orthography using a Philippine historical text corpus', '', 'Oriental COCOSDA', '', '', 'COCOSDA', 'Joel P. Ilao and Rowena Cristina L. Guevara', 0, '', '', '', '', 1, '', '', 'Macau', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(571, 97091219, 'PT007', 'Bantay-Wika: towards a better understanding of the dynamics of Filipino culture and linguistic change', '', '9th Asian Language Research Workshop of the International Joint Conference on Natural Language Proce', '', '', 'Asian Federation of Natural Language Processing (AFNLP)', 'Joel P. Ilao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(572, 97091219, 'PT007', 'Filipino Speech Phoneme Classification using a Reduced Feature Set for Multi-Layer Perceptron and Support Vector Machine Classifiers', '', '5th Engineering Research and Development for Technology (ERDT) Conference 2010', '', '', 'University of the Philippines', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(573, 97091219, 'PT007', 'Mining Filipino-English Corpora from the Web', '', 'International Symposium on Multimedia and Communication Technology 2010', '', '', 'IEEE ', 'Joel P. Ilao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(574, 97091219, 'PT007', 'Extended Kalman Filter formulation to the Robust Estimation of Depth in Monocular Vision', '', '11th De La Salle University (DLSU) – Osaka University Academic Research Workshop', '', '', 'De La Salle University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(575, 97091219, 'PT007', 'Design and Implementation of a Vision-Based Hand Mimicking System', '', 'Philippine Computing Science Congress (PCSC) 2008', '', '', 'Computing Society of the Phils. (CSP)', 'Eugene Angelo Fabian', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(576, 97091219, 'PT007', 'Automated Object Counting with Multiple User-defined Criteria', '', '9th Science and Technology (S&T) Congress', '', '', 'De La Salle University', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(577, 97091219, 'PT007', 'Vision System for Hand Gesture Recognition', '', 'Third Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(578, 97091219, 'PT007', 'Hypothesis Generation of Vision-Based Vehicle Tracking System', '', 'Philippine Computing Science Congress (PCSC) 2007', '', '', 'Computing Society of the Phils. (CSP)', 'Mong Tuyet Trinh Dang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(579, 97091219, 'PT007', 'Automated License Place Recognition of Philippine License Plates', '', 'Mechatronics and Machine Vision in Practice (M VIP) International Research Conference', '', '', 'IEEE ', 'Chloe Michelle K. Cevania', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(580, 97091219, 'PT008', '', 'FEBSMT: Filipino-to-English Bidirectional Statistical Machine Translation Using Feedback', '', '', '', '', 'Jasmine Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(581, 97091219, 'PT008', '', 'Exploring the Behavior of Novice Programmer’s EEG Signals for Affect-based Student Modeling', '', '', '', '', 'Tita Herradura', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(582, 97091219, 'PT008', '', 'ASEAN MT-Phil: Philippine Component of the ASEAN Machine Translation Projec', '', '', '', '', 'N. Oco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(583, 97091219, 'PT008', '', 'Comparative analysis of actual language usage and selected grammar and orthographical  rules for Fil', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(584, 97091219, 'PT008', '', 'Vision-Based Hand Mimicking System', '', '', '', '', 'Eugene Angelo Fabian', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(585, 97091219, 'PT011', '', '', '', 'Second technical workshop of the Network-based ASEAN Machine Translation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ayutthaya', '', 2, 2),
(586, 97091219, 'PT011', '', '', '', 'Design of Experiments', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(587, 97091219, 'PT011', '', '', '', 'First technical workshop of the Network-based ASEAN Machine Translation', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'NECTEC', '', 2, 2),
(588, 97091219, 'PT011', '', '', '', '2nd Philippine Conference-Workshop on Mother Tongue-Based Multilingual Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Iloilo City', '', 2, 2),
(589, 97091219, 'PT011', '', '', '', 'International Joint Conference on Natural Language Processing (ICJNLP) 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Shangrila Hotel', '', 2, 2),
(590, 97091219, 'PT011', '', '', '', '5th Engineering Research and Development for Technology (ERDT) Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sofitel Philippine Plaza', '', 2, 2),
(591, 97091219, 'PT011', '', '', '', 'Lecture on Robust Speech Recognition and its LSI Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP EEEI', '', 2, 2),
(592, 97091219, 'PT011', '', '', '', 'Intellectual Property Rights Seminar-Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(593, 97091219, 'PT011', '', '', '', 'Educational Technology Training Program (Module 2)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Center for Educational Multimedia', '', 2, 2),
(594, 97091219, 'PT011', '', '', '', 'Pilot Module Writing Workshop for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(595, 97091219, 'PT011', '', '', '', 'Campus Lectors and Commentators Seminar Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Chapel of the Resurrection. DLS-CSB Campus', '', 2, 2),
(596, 20133707, 'PT008', 'Open Domain Continuous Filipino Speech Recognition: Challenges and Baseline Experiments ', '', '', '', 'nstititute of Electronics', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(597, 20133707, 'PT008', '', 'Experiments on automatic language identification for philippine languages using acoustic Gaussian Mi', '', '', '', '', 'Ann Franchesca B. Laguna', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(598, 20133707, 'PT008', '', 'Real Time Karaoke Grader Using Modal Distribution for Android Devices', '', '', '', '', 'Ann Franchesca B. Laguna', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(599, 20133707, 'PT008', '', 'MIDI Implementation of a Kulintang Modal', '', '', '', '', 'Ann Franchesca B. Laguna', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(600, 20133707, 'PT011', '', '', '', 'International Symposium on Multimedia and Communication Technology ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(601, 20133707, 'PT011', '', '', '', 'IEEE Region 10 Conference 2012', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Cebu', '', 2, 2),
(602, 20133707, 'PT011', '', '', '', 'IEEE Region 10 Symposium 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kuala Lumpur', '', 2, 2),
(603, 20133707, 'PT011', '', '', '', 'Philippine Youth Congress in Information Technology (Y4iT)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Quezon City', '', 2, 2),
(604, 20133707, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(605, 20133707, 'PT011', '', '', '', 'Teaching for Meaning and Understanding', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(606, 20133707, 'PT011', '', '', '', 'Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(607, 20133707, 'PT011', '', '', '', 'LGP for Rheims Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(608, 20133707, 'PT011', '', '', '', 'St. La Salle As A Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(609, 20133707, 'PT011', '', '', '', 'LSPO Vaugirard Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(610, 20133707, 'PT011', '', '', '', 'Curriculum Planning and Syllabi Design for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(611, 20133707, 'PT011', '', '', '', 'Principles of Teaching for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(612, 20133707, 'PT011', '', '', '', 'The Art of Questioning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(613, 20133707, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(614, 20133707, 'PT011', '', '', '', 'Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(615, 20133707, 'PT011', '', '', '', 'Managing the Transformative Learning Classroom', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(616, 20133707, 'PT011', '', '', '', 'The Ministry of Teaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(617, 20133707, 'PT011', '', '', '', 'Service Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(618, 20133707, 'PT011', '', '', '', 'Spirituality and Ethics for Lasallian Learning Leaders', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(619, 20133707, 'PT011', '', '', '', 'Research in a Learner- centered Research University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(620, 97020095, 'PT007', 'Building Language Resources for a Multi-Engine Machine Translation System', '', 'none', 'none', ' Language Resources and Evaluation :New Frontiers in Asian Langua', 'none', 'Rachel Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(621, 97020095, 'PT007', 'Business News Information Extraction System: A Data Retrieval Tool to Facilitate Analysis for Business Intelligence', '', '6th International Conference Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(622, 97020095, 'PT007', 'Question Answering System to Answer Procedural and Causal Questions in Medicine', '', '9th National Natural Language Processing Research Symposium Proceedings (ISSN 1908-3092)', '', '', 'DLSU', 'Paula Angelica Daella', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(623, 97020095, 'PT007', 'Shed: An Online Diet Counselling System', '', 'DLSU Research Congress 2014', '', '', 'DLSU', 'Nathalie Rose Lim-Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(624, 97020095, 'PT007', 'Semi-Automatic Population of Ontology of Philippine Medicinal Plants from On-line Text', '', 'DLSU Research Congress 2014', '', '', 'DLSU', 'Nathalie Rose Lim-Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(625, 97020095, 'PT007', 'Towards Automatically Building a Knowledge Base of Dietary Needs to Address Medical Conditions', '', 'DLSU Research Congress 2015', '', '', 'DLSU', 'Dominic William Elayda III', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(626, 97020095, 'PT008', '', 'Health Informatics', 'none', '', '', '', 'Nathalie Rose Lim-Cheng', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Tipping Points in Maternal Health and Child Care', 2, 2),
(627, 97020095, 'PT008', '', 'CROWD SOURCING THROUGH SOCIAL GAMING FOR COMMUNITY DRIVEN ONTOLOGY ENGINEERING', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(628, 97020095, 'PT008', '', 'Natural Language Processing Research in De La Salle University-Manila: Then', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(629, 97020095, 'PT011', '', '', '', '8th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(630, 97020095, 'PT011', '', '', '', '2011 International Conference on Uncertainty Reasoning and Knowledge', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bali', '', 2, 2),
(631, 97020095, 'PT011', '', '', '', '7th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(632, 97020095, 'PT011', '', '', '', '15th Osaka University ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(633, 97020095, 'PT011', '', '', '', 'Curriculum Development (ELGA 1)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(634, 97020095, 'PT011', '', '', '', 'Teaching 2.0 Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(635, 97020095, 'PT011', '', '', '', '10th Philippine Computing Science Congress ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo de Davao University', '', 2, 2),
(636, 97020095, 'PT011', '', '', '', 'Symposium on Natural Language Processing (SNLP 2009)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bangkok', '', 2, 2),
(637, 97020095, 'PT011', '', '', '', 'Summer School on Question Answering', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kasetsart University', '', 2, 2),
(638, 97020095, 'PT011', '', '', '', '6th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(639, 97020095, 'PT011', '', '', '', 'Knowledge and Reasoning for Question Answering Workshop (KRAQ’09)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Singapore ', '', 2, 2),
(640, 97020095, 'PT011', '', '', '', 'Laboratory Visit', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Institut de Recherche en Informatique de Toulouse (IRIT)', '', 2, 2),
(641, 97020095, 'PT011', '', '', '', 'Curriculum Mapping', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(642, 97020095, 'PT011', '', '', '', '1st PSITE-NCR IT Research Forum', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Technical Institute of the Philippines (TIP)', '', 2, 2),
(643, 97020095, 'PT011', '', '', '', 'Classroom Management Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(644, 97020095, 'PT011', '', '', '', 'Designing of Project-based Courses Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(645, 97020095, 'PT011', '', '', '', '5th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(646, 97020095, 'PT011', '', '', '', 'PACLIC 22', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(647, 97020095, 'PT011', '', '', '', 'Curriculum Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(648, 97020095, 'PT011', '', '', '', 'Laboratory Visit', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(649, 97020095, 'PT011', '', '', '', 'Towards Building the Philippine Corpus', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(650, 97020095, 'PT011', '', '', '', 'Cutting Edge Researches in Digital Signal Processing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(651, 97020095, 'PT011', '', '', '', '4th National Natural Language Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '4th National Natural Language Research Symposium CSB Hotel', '', 2, 2),
(652, 97020095, 'PT011', '', '', '', 'Fourth International Workshop on Generative Approaches to the Lexicon', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Paris', '', 2, 2),
(653, 97020095, 'PT011', '', '', '', 'ENGAGE-Penang European Union-Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Malaysia', '', 2, 2),
(654, 97020095, 'PT011', '', '', '', 'KWF-LSP National Conference on Lexicography : Saan Patungo ang Leksikograpiya sa Pilipinas', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Iloilo Grand Hotel', '', 2, 2),
(655, 97020095, 'PT011', '', '', '', 'Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(656, 97020095, 'PT011', '', '', '', '7th International Conference on Information Technology Based Higher Education and Training (ITHET200', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Technology', '', 2, 2),
(657, 97020095, 'PT011', '', '', '', '1st ENGAGE European Union-Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Century Park Hotel', '', 2, 2),
(658, 97020095, 'PT011', '', '', '', '3rd National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(659, 97020095, 'PT011', '', '', '', '10th International Conference on Austronesian Linguistics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Puerto Princessa', '', 2, 2),
(660, 97020095, 'PT011', '', '', '', 'Algorithms and Applications:   A Graduate Short course in Computer Science', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'ISR', '', 2, 2),
(661, 97020095, 'PT011', '', '', '', 'Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(662, 97020095, 'PT011', '', '', '', '5th International Conference on Advanced Learning Technologies (ICALT2005)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Kaohsiung', '', 2, 2),
(663, 97020095, 'PT011', '', '', '', '6th International Conference Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(664, 97020095, 'PT011', '', '', '', '9th National Natural Language Processing Research Symposium Proceedings (ISSN 1908-3092)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of the Philippines', '', 2, 2),
(665, 97020095, 'PT011', '', '', '', 'DLSU Research Congress 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(666, 97020095, 'PT011', '', '', '', 'DLSU Research Congress 2015', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(667, 97020095, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(668, 97020095, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(669, 97020095, 'PT011', '', '', '', 'Leadership and Management Development Program', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(670, 97020095, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(671, 97020095, 'PT011', '', '', '', 'Rethinking Teaching in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(672, 97088366, 'PT008', '', 'Business Visualization for Monetary Central Banking and Stability', '', '', '', '', 'Lim', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(673, 97088366, 'PT008', '', 'Exploring SPED Legislations and its Impact to ICT4E', '', '', '', '', 'Lim', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(674, 97088366, 'PT008', '', 'Exploring SPED Legislations and its Impact to ICT4E', '', '', '', '', 'Lim', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(675, 97049182, 'PT007', 'Teaching Introductory Programming to Computer Science Freshmen', '', 'Proceedings of the Scholarship and Innovation in Learning and Teaching (SILT) Symposium 2014', '', '', 'DLSU', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(676, 97049182, 'PT007', 'The Underwriting System for ValueLife Company', '', 'Science and Technology Congress-DLSU (S&T 2005)', '', '', 'None', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(677, 97049182, 'PT007', 'Strategy Construction using Genetic Algorithms for a Real-Time Strategy Game. ', '', 'IDIG International Game Conference', '', '', 'IDIG International Game Conference', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(678, 97049182, 'PT007', 'A Study on the use of Genetic Algorithms in a Real-Time Strategy Game', '', '6th Philippine Computing Science Congress (PCSC 2006)', '', '', 'PCSC 2006', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(679, 97049182, 'PT007', 'Use of Genetic Algorithm in a RTS Game Environment', '', '8th Science and Technology Congress 2006', '', '', 'S&T 2006', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(680, 97049182, 'PT007', 'A System for Learner-Support Integrated Cooperative Learning Environment', '', 'Proceedings of the 17th International Conference on Computers in Education', '', '', 'Asia-Pacific Society for Computers in Education', 'Limoanco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(681, 97049182, 'PT011', '', '', '', 'Scholarship and Innovation in Learning and Teaching (SILT) Symposium 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(682, 97049182, 'PT011', '', '', '', 'Pycon Philippines', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(683, 97053139, 'PT007', 'Community-Based Decision Support System for the Manila Health Department', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2012-3477)', '', '', 'DLSU', 'Magpantay', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(684, 97053139, 'PT007', 'Tree Management System', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2012-3477)', '', '', 'DLSU', 'Magpantay', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(685, 97053139, 'PT007', 'Marikina City Situation Mapping and Traffic Management System for Disaster ', '', '2015 DLSU RESEARCH CONGRESS', '', '', 'DLSU', 'Magpantay', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(686, 97053139, 'PT011', '', '', '', 'P&G Global CIO Talk', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(687, 97053139, 'PT011', '', '', '', 'BPM crash course', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(688, 97053139, 'PT011', '', '', '', 'Smart Wireless Engineering Education Program Leadership Summit', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ballroom 2', '', 2, 2),
(689, 97053139, 'PT011', '', '', '', 'ACADEME and INDUSTRY FORUM (LINK IT)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Monochrome', '', 2, 2),
(690, 97053139, 'PT011', '', '', '', 'Smart Wireless Engineering Education Program Leadership Summit', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati Shangri-La', '', 2, 2),
(691, 97053139, 'PT011', '', '', '', '1st Technology Business Incubation (TBI) Forum', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Monochrome', '', 2, 2),
(692, 97053139, 'PT011', '', '', '', 'CEAP-FAPE Conference on K to 12 Transition', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU-TAFT', '', 2, 2),
(693, 97053139, 'PT011', '', '', '', 'SMART LEADERSHIP SUMMIT', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Meralco Multi-Purpose Hall', '', 2, 2),
(694, 97053139, 'PT011', '', '', '', '2012 CEAP National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'SMX', '', 2, 2),
(695, 97053139, 'PT011', '', '', '', 'Encuentro X', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(696, 97053139, 'PT011', '', '', '', 'Developing Leaders for Nation Building Congress (Sponsor: SMART SWEEP)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teatrino', '', 2, 2),
(697, 97053139, 'PT011', '', '', '', 'DLSP K to 12 Forum', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(698, 97053139, 'PT011', '', '', '', 'Failure Analysis (FA) and Reliability (Rel) Competency Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Palms Country Club', '', 2, 2),
(699, 97053139, 'PT011', '', '', '', 'From Career to Calling', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Angelo King International Center', '', 2, 2),
(700, 97053139, 'PT011', '', '', '', '3rd Lasallian Learning Leaders Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(701, 97053139, 'PT011', '', '', '', 'ACCEDE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Enverga Univ Foundation', '', 2, 2),
(702, 97053139, 'PT011', '', '', '', 'LLFP 2nd Module', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Phinma Hotel', '', 2, 2),
(703, 97053139, 'PT011', '', '', '', 'ERDT Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Sofitel Hotel', '', 2, 2),
(704, 97053139, 'PT011', '', '', '', 'CEAP National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Tent City', '', 2, 2),
(705, 97053139, 'PT011', '', '', '', 'Lasallian Leadership Formation Program for Executive Team (LLFP-ET) Series 1', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'PHINMA Training Center', '', 2, 2),
(706, 97053139, 'PT011', '', '', '', '2nd De La Salle Philippines (DLSP) Lasallian Learning Leaders Congress on Curriculum Redesign Using ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle Unversity', '', 2, 2),
(707, 97014818, 'PT011', '', '', '', 'Organization Development & Social Network Analysis ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'SAIDI School of OD', '', 2, 2),
(708, 97028304, 'PT001', 'Automatic Movie Background Music Embedding', '', '', '', 'International Journal of Research in Engineering and Technology', 'none', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(709, 97028304, 'PT001', 'Successive Rule Refinement through Belief-Evidence Fusion', '', '', '', 'WSEAS Transactions on Systems', 'none', 'Nelson Marcos & Arnulfo Azcarraga', 3, '2', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(710, 97028304, 'PT001', 'Textbook for File Organization', '', '', '', '', 'DLSU Press', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(711, 97028304, 'PT001', 'Machine Learning Model for Automated Forecasting of Large Value Payment System Transactions - A Consideration of Specific Issues', '', 'CCS Graduate Research Symposium', '', '', 'CCS', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(712, 97028304, 'PT007', 'Automatic Guitar Music Transaction', '', 'DLSU Research Congress', '', '', 'DLSU', 'Lance Alcabasa', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(715, 97028304, 'PT007', 'Automatic Movie Background Music Embedding', '', 'International Conference on Advanced Computational Technologies (ICACT)', '', '', 'ICACT', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(716, 97028304, 'PT007', 'Automatic Guitar Music Transaction', '', 'Advanced Computer Science Applications and Technologies (ACSAT)', '', '', 'ACSAT', 'Lance Alcabasa', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(717, 97028304, 'PT007', 'Simulating Poverty Reduction Strategy with the use of Regression Modeling and Spatial Analysis', '', 'Computer Frontiers: 1st Symposium on IT and CS Research', '', '', 'AUF', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(718, 97028304, 'PT007', 'Background Music Embedder for Action Movies', '', 'ST Student Computing Research Congress', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(719, 97028304, 'PT007', 'Sign Language Number Recognition', '', '5th International Joint Conference on INC', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(720, 97028304, 'PT007', 'Parallel Implementation of Finite-Difference Time Domain (FDTD) Algorithm through Volunteer Computing', '', '11th De La Salle University - Osaka University Academic Research Workshop and Symposium', '', '', 'DLSU', 'Morris Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(721, 97028304, 'PT007', 'A Java-Based Finite-Difference Time Domain (FDTD) Code in Designing Photonic Crystal Fiber (PCF) Waveguide for Terahertz (THZ) Radiation Delivery', '', '5th South East Asian Congress of Medical Physics (SEACOMP)', '', '', 'DLSU', 'Juan Paolo Tongco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(722, 97028304, 'PT007', 'Simulation of Coral Reef Environment', '', '6th WSEAS International Conference on Applied Computer Science', '', '', 'WSEAS', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(723, 97028304, 'PT007', 'A Prototype Framework for Evaluating Proportionality of Human Faces', '', '8th Science and Technology Congress', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(724, 97028304, 'PT007', 'Belief-Evidence Fusion in a Hybrid Intelligent System', '', '7th International Conference on Information Fusion', '', '', 'Fusion', 'Nelson Marcos & Arnulfo Azcarraga', 0, '', '', '', '', 1, '', '', 'Stockholm', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(725, 97028304, 'PT007', 'Successive Rule Refinement in a Hybrid Intelligent System', '', '5th International Conference on Neural Networks and Applications', '', '', 'WSEAS', 'Nelson Marcos & Arnulfo Azcarraga', 0, '', '', '', '', 1, '', '', 'Udine', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(726, 97028304, 'PT007', 'Succesive Rule Refinement through Belief-Evidence Fusion', '', '4th International Conference on Information Fusion', '', '', 'Fusion', 'Arnulfo Azcarraga & Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Montreal', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(727, 97028304, 'PT007', 'CSMA/CD-Based Multiple Network Lines Dynamic Utilization Algorithm', '', 'Philippine Computing Science Congress', '', '', 'PCSC', 'Gregory Cu & Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(728, 97028304, 'PT007', 'Improving Fuzzy Expert System Rule Base Through Knowledge and Data Fusion Using Neural Network Models', '', '7th International Conference on Neural Information Processing', '', '', 'ICONIP', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(729, 97028304, 'PT007', 'Improving Fuzzy Expert System Rule Base in a Finance Application Through Data and Neural Network Models', '', '6th International Conference on Soft Computing', '', '', 'IIZUKA', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Iizuka', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(730, 97028304, 'PT007', 'An Algorithm to Reduce the Combinatorial Complexity of a Process Graph', '', '6th DLSU Computer Conference', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(731, 97028304, 'PT007', 'ICAI in Derivatives', '', 'Computer Issues', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(732, 97028304, 'PT007', 'NLP in Database Query', '', '5th DLSU Computer Conference', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(733, 97028304, 'PT007', 'Automatic Speech Recognition', '', '3rd DLSU Computer Conference', '', '', 'DLSU', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(734, 97028304, 'PT008', '', 'Room Reservation System for Gokongwei Building', '', '', '', 'none', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(735, 97028304, 'PT011', '', '', '', 'Lessons from Outstanding Teachers', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(736, 97015784, 'PT007', 'ICT Integration in Higher Education Institutions', '', '', '', 'Touchpoint 2010', '', 'Renato Jose Maria V. Molano', 1, '1', '', '', '209-217', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(737, 97015784, 'PT007', 'Technology Integration in Higher Education Institutions: The DLSU College of Computer Studies Experience', '', '', '', 'PTECHS 2007 Journal of DLSU Dasmarinas Graduate School', '', 'Renato Jose Maria V. Molano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(738, 97015784, 'PT007', '', 'PERSEF1 Modules', '', '', 'PERSEF1 Manual', 'DLSU CED', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, '', '', 'DLSU Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(739, 97015784, 'PT007', 'ICT Integration in Private HEIs', 'none', 'Touchpoint 2010 1st International Conference on Technology in Education', '', '', 'Touchpoint 2010 with ISSN 2094-4918', 'Renato Jose Maria V Molano', 0, '', '', '', '209-217', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(740, 97015784, 'PT007', 'Technology Integration in Higher Education Institutions:  The DLSU College of Computer Studies Experience', 'none', 'PTECHS 2007 National Conference', '', '', 'DLSU Dasmarinas Graduate School', 'Renato Jose Maria V Molano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(741, 97015784, 'PT008', '', 'Innovation in Basic Education Schools', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'DepEd Division Research Conference held in Daet', 2, 2),
(742, 97015784, 'PT008', '', 'Towards a Model of ICT Integration for Private HEIs ', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Final Research Report submitted to AdRIC', 2, 2),
(743, 97015784, 'PT008', '', 'A Model of ICT Integration in a Private HEI', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Final Research Report submitted to AdRIC', 2, 2),
(744, 97015784, 'PT008', '', 'ICT Integration in Private HEIs: A Mindanaoan Perspective', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Final Research Report submitted to AdRIC', 2, 2),
(745, 97015784, 'PT008', '', 'Information & Communications Technology in Pedagogy & Curriculum', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'IT in Pedagogy Seminar in FEU-EAC', 2, 2),
(746, 97015784, 'PT008', '', 'ICLT Integration in Private HEIs: The DLSU Manila Experience', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Final Research Report submitted to AdRIC', 2, 2),
(747, 97015784, 'PT008', '', 'ICLT Integration in Private Higher Education Institutions: A Pedagogical Perspective ', '', '', '', '', 'Renato Jose Ma. V. Molano', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'PSITE-NCR Research Seminar', 2, 2),
(748, 97015784, 'PT011', '', '', '', '35th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(749, 97015784, 'PT011', '', '', '', '34th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(750, 97015784, 'PT011', '', '', '', 'Agile Project Management Training Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Phoenix One Center', '', 2, 2),
(751, 97015784, 'PT011', '', '', '', '33rd PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(752, 97015784, 'PT011', '', '', '', '32nd PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(753, 97015784, 'PT011', '', '', '', 'Touchpoint 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(754, 97015784, 'PT011', '', '', '', '31st PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(755, 97015784, 'PT011', '', '', '', '30th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(756, 97015784, 'PT011', '', '', '', '29th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(757, 97015784, 'PT011', '', '', '', '28th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(758, 97015784, 'PT011', '', '', '', 'Emerging Technologies for Philippines 2020', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Renaissance Hotel', '', 2, 2),
(759, 97015784, 'PT011', '', '', '', '27th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(760, 97015784, 'PT011', '', '', '', '26th PACSA National Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Teacher''s Camp', '', 2, 2),
(761, 20141718, 'PT007', 'Mobile Indoor Positioning System using Wi-Fi Localization and Image Processing', '', ' 2nd Workshop on Computation: Theory and Practice', 'none', '', 'Springer', 'Jeleen Chua Ching', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(762, 20141718, 'PT007', 'Using machine learning to detect pedestrian locomotion from sensor-based data', '', '14th Philippine ComputingScience Congress', 'none', '', 'PCSC', 'Courtney Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(763, 20141718, 'PT007', 'Improving Inertial Navigation System with Pedestrian Locomotion Classifiers', '', 'PECCS 2015', 'none', '', 'Scitepress', 'Courtney Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(764, 20141718, 'PT011', '', '', '', 'WCTP', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU-M', '', 2, 2),
(765, 20141718, 'PT011', '', '', '', 'HNICEM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Puerto Prinsesa', '', 2, 2),
(766, 20141718, 'PT011', '', '', '', 'PECCS', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Angers', '', 2, 2),
(767, 20141718, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(768, 20141718, 'PT011', '', '', '', 'Teaching for Meaning and Understanding', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(769, 20141718, 'PT011', '', '', '', 'Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(770, 20141718, 'PT011', '', '', '', 'LGP for Rheims Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(771, 20141718, 'PT011', '', '', '', 'St. La Salle As A Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(772, 20141718, 'PT011', '', '', '', 'LSPO Vaugirard Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(773, 20141718, 'PT011', '', '', '', 'Curriculum Planning and Syllabi Design for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(774, 20141718, 'PT011', '', '', '', 'Principles of Teaching for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(775, 20141718, 'PT011', '', '', '', 'The Art of Questioning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(776, 20141718, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(777, 20141718, 'PT011', '', '', '', 'Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(778, 20141718, 'PT011', '', '', '', 'Managing the Transformative Learning Classroom', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(779, 20141718, 'PT011', '', '', '', 'The Ministry of Teaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(780, 20141718, 'PT011', '', '', '', 'Service Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(781, 20141718, 'PT011', '', '', '', 'Spirituality and Ethics for Lasallian Learning Leaders', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(782, 20141718, 'PT011', '', '', '', 'Research in a Learner- centered Research University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(783, 97026050, 'PT001', 'Data Collection with Prioritization for Wireless Sensor Networks', 'none', 'Theory and Practice of Computation: Proceedings of Workshop on Computation: Theory and Practice WCTP', '', '', 'World Scientific', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(784, 97026050, 'PT008', '', 'IPv6 Stateless Address Autoconfiguration (SLAAC) Attacks and Detection', '', '', '', '', 'Buenaventura', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(785, 97026050, 'PT008', '', 'Queuing Schemes for Wireless Sensor Nodes Transmitting Prioritized Data', '', '', '', '', 'Cantillas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(786, 97026050, 'PT008', '', 'Node Energy and Location-Based Cluster Head Selection for the LEACH Routing Algorithm', '', '', '', '', 'Damasco', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(787, 97026050, 'PT008', '', 'Data Collection with Prioritization for Wireless Sensor Networks', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(788, 97026050, 'PT008', '', 'Beacon TDMA Medim Access Control Protocol for Wireless Sensor Networks', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(789, 97026050, 'PT008', '', 'Data Classification for Wireless Sensor Network-Based Home Automation Systems', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(790, 97026050, 'PT008', '', 'Protocols for Wireless Sensor Networks', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(791, 97026050, 'PT008', '', 'Emotion Recognition in Spontaneous Filipino Speech using Machine Learning Classification ', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(792, 97026050, 'PT008', '', 'Multi-threaded Matrix Multiplication', '', '', '', '', 'Ng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(793, 97026050, 'PT008', '', 'Analysis of the Goddard Space Flight Center Java Coding Convention', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(794, 97026050, 'PT008', '', 'A Comparison of YAPLU Against the C Programming Language', '', '', '', '', 'Ng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(795, 97026050, 'PT008', '', 'Network Media Access Control with QoS Modeled through Timed Automata', '', '', '', '', 'Obach', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(796, 97026050, 'PT008', '', 'An Introduction to Timed Languages and Timed Automata', '', '', '', '', 'Obach', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(797, 97026050, 'PT008', '', 'A Behavior Based Intrusion Prevention System', '', '', '', '', 'Bundang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(798, 97026050, 'PT011', '', '', '', 'DLSU Research Congress 2015', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Manila', '', 2, 2),
(799, 97026050, 'PT011', '', '', '', 'Workshop on Computation: Theory and Practice 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Century Park Hotel Manila', '', 2, 2),
(800, 97026050, 'PT011', '', '', '', '2014 Cisco Networking Academy Instructor Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Lima Park Hotel', '', 2, 2),
(801, 97026050, 'PT011', '', '', '', 'Charism of a Lasallian Educator', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(802, 97026050, 'PT011', '', '', '', '2014 Cisco Partner Meeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Cisco Systems Singapore & Changi Business Park', '', 2, 2),
(803, 97026050, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(804, 97026050, 'PT011', '', '', '', 'DLSU OBE Educational Philisophy and Transformative Learning Integration', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(805, 97026050, 'PT011', '', '', '', 'CCS workshop on Program Educational Objectives and Graduate Outcomes Development ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP Ayala Technohub', '', 2, 2),
(806, 97026050, 'PT011', '', '', '', 'Workshop on Computation: Theory and Practice 2013', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'UP Ayala Technohub', '', 2, 2),
(807, 97026050, 'PT011', '', '', '', 'Rethinking Teaching in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(808, 97026050, 'PT011', '', '', '', '2013 Cisco Networking Academy Instructor Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Crimson resort and Spa', '', 2, 2),
(809, 97026050, 'PT011', '', '', '', '4th International Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Tsinghua University', '', 2, 2),
(810, 97026050, 'PT011', '', '', '', 'Academic Leadership Development Program', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(811, 97026050, 'PT011', '', '', '', '2013 Cisco Partner Meeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'The Stones Hotel', '', 2, 2),
(812, 97026050, 'PT011', '', '', '', '2013 Cisco Partner Meeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'The Stones Hotel', '', 2, 2),
(813, 97026050, 'PT011', '', '', '', '2013 Cisco Acadey Partners'' Summit', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bellevue Hotel', '', 2, 2),
(814, 97026050, 'PT011', '', '', '', 'Workshop on Computation: Theory and Practice', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(815, 97026050, 'PT011', '', '', '', '2012 Cisco Academy Meeting and Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Universiti Kuala Lumpur', '', 2, 2),
(816, 97026050, 'PT011', '', '', '', 'Cisco QA Academy Meeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Universiti Kuala Lumpur', '', 2, 2),
(817, 97026050, 'PT011', '', '', '', 'Cisco QA Academy Meeting', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'ITE College-West', '', 2, 2),
(818, 97026050, 'PT011', '', '', '', 'Cisco Annual Instructors Conference 2011', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay Regency Hotel', '', 2, 2),
(819, 97026050, 'PT011', '', '', '', 'Nokia Qt Smartphone Developer Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Technological Institute of the Philippines', '', 2, 2),
(820, 97026050, 'PT011', '', '', '', 'CCNA Exploration 3 and 4 Instructors’ Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Mapua Institute of Technology', '', 2, 2),
(821, 97026050, 'PT011', '', '', '', 'Teaching 2.0', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(822, 97026050, 'PT011', '', '', '', 'Cisco Annual Instructors Conference 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay Regency Hotel', '', 2, 2),
(823, 97026050, 'PT011', '', '', '', 'CCNA Exploration 1 and 2 Instructors’ Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Meralco Foundation Institute', '', 2, 2),
(824, 97026050, 'PT011', '', '', '', 'SAP Basis Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hewlett-Packard AP', '', 2, 2),
(825, 97026050, 'PT011', '', '', '', 'ABAP Programming', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hewlett-Packard AP', '', 2, 2),
(826, 97026050, 'PT011', '', '', '', 'CCS-OEA Team Management Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(827, 97026050, 'PT011', '', '', '', 'Cisco VoiceComm Summit 2006', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati Shangrila Hotel', '', 2, 2),
(828, 97026050, 'PT011', '', '', '', 'Cisco Networking Academy Program Convention and Workshop 2006', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLS-CSB Angelo King International Center', '', 2, 2),
(829, 97015512, 'PT007', 'Evaluation of the Sonic Fidelity of Full and Approximated HRTFs with Reverberation from the Sonic Fidelity of Loudspeakers', '', '', '', 'Manila Journal of Science', 'none', 'Clement Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(830, 97015512, 'PT007', 'Sign-Language Recognition through Gesture and Movement Analysis', '', 'De La Salle University Research Congress 2015', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(831, 97015512, 'PT007', 'Home-Based Power Outlet Consumption Monitoring System', '', 'De La Salle University Research Congress 2014', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(832, 97015512, 'PT007', 'Instrumentation and Sensor Fusion Implemenation for Automated Takeoff and Landing Sequence of Single-Rotor RC Helicopter', '', 'De La Salle University Research Congress 2014', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(833, 97015512, 'PT007', 'Evaluation of the Fidelity of Full and Approximated Head-Related Transfer Functions From the Sonic Fidelity of Loudspeakers', '', 'De La Salle University Research Congress 2013', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(834, 97015512, 'PT007', 'i-POIS: Intelligent Posture Identification System', '', '12th Philippine Computing Science Conference', '', '', 'DLSU Science and Technology Campus', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(835, 97015512, 'PT007', 'Absolute Position Tracking in Room-Sized 3D Space Using Multipile Wiimotes', '', '15th Osaka University-De La Salle University Joint Academic Research Workshop', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(836, 97015512, 'PT007', 'An Approach to Absolute Position Tracking in Room-Sized Three Dimensional Space', '', '5th ERDT Conference', '', '', 'Engienering Research and Development for Technology Consortium', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(837, 97015512, 'PT007', 'Automatic Fingerprint Identification and Authentication with Specialization in Identical Twin Differentiation', '', '10th Philippine Computing Science Congress', '', '', 'Computing Society of the Philippines', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(838, 97015512, 'PT007', 'Controlled Liquified Petroleum Gas Fumigation of a Turbo-Charged Indirect Injection Diesel Engine for Increased Torque and Reduced Soot Emission', '', 'Science and Technology Congress 2009', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(839, 97015512, 'PT007', 'Applying a 3-Axis Accelerometer as a 2D Input Device', '', '4th Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(840, 97015512, 'PT007', 'A Quasi-Stabilized Underwater Remotely Operated Vehicle', '', '9th Philippine Computing Society Congress (PCSC 2009)', '', '', 'Computing Society of the Philippines', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(841, 97015512, 'PT007', 'Extended Kalman Filter Formulation for Robust Estimation of Depth in Monocular Vision', '', 'Osaka University- De La Salle University Joint Academic Research Workshop', '', '', 'De La Salle University', 'Ilao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(842, 97015512, 'PT007', 'Sonar Beamforming', '', '8th Philippine Computing Science Congress (PCSC 2008)', '', '', 'Computing Society of the Philippines', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(843, 97015512, 'PT007', 'Characterization of Hand Glove Data for Letter Sign Language Translation', '', '8th Philippine Computing Science Congress (PCSC 2008)', 'none', '', 'Computing Society of the Philippines', 'Ong.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(844, 97015512, 'PT007', 'An Adaptive Air/Fuel Mixture Control for Gasoline Engines', '', '3rd Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(845, 97015512, 'PT007', 'Implementation and Characterization of a Dual Drive System for a Mobile Robot', '', '3rd Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(846, 97015512, 'PT007', 'Microcontroller Assisted Mechanical Diesel Fuel Injection', '', '7th Philippine Computing Science Congress', 'none', '', 'Computing Society of the Philippines', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(847, 97015512, 'PT007', 'Ultrasonic Accurate Sensor Platform', '', '12th IEEE Mechatronics and Machine Vision in Practice (M2VIP International Conference 2005)', 'none', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(848, 97015512, 'PT007', 'Force Feedback for 13 Degree of Freedom Teleoperation', '', '12th IEEE Mechatronics and Machine Vision in Practice (M2VIP International Conference 2005)', 'none', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(849, 97015512, 'PT007', 'Implementation of a PID-based Partially Stabilized Control System for the X4 -Flyer', '', '12th IEEE Mechatronics and Machine Vision in Practice (M2VIP International Conference 2005)', 'none', '', 'De La Salle University', 'Campos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(850, 97015512, 'PT007', 'Partial Stabilization of a Quadrotor Using PID', '', '2nd Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(851, 97015512, 'PT008', '', 'Tha Adarna Project (RPW workshop on Climate Change Impacts and Disaster Prepardeness', '', '', '', '', 'Ong C', 0, '', '', '', '', 1, 'Others', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Talk given at the RPW Workshop', 2, 2),
(852, 97015512, 'PT008', '', 'How Can We Improve the Country''s Disaster Response? ', '', '', '', '', 'Ong C', 0, '', '', '', '', 1, 'Others', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', 'Feature article', 2, 2),
(853, 97015512, 'PT008', '', 'Spatial Cues Extraction and Incorporation for Ambient Sound Reproduction', '', '', '', '', 'Ong C', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(854, 97015512, 'PT011', '', '', '', 'De La Salle University Research Congress 2015', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Yuchengco', '', 2, 2),
(855, 97015512, 'PT011', '', '', '', 'Charism of a Lasallian Educator', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Roofdeck', '', 2, 2),
(856, 97015512, 'PT011', '', '', '', 'De La Salle University Research Congress 2014 (Session Chair)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Yuchengco', '', 2, 2),
(857, 97015512, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(858, 97015512, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Outcomes (PGO) Development for BS  ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(859, 97015512, 'PT011', '', '', '', 'Rethinking Teaching in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Manila', '', 2, 2),
(860, 97015512, 'PT011', '', '', '', '12th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Science and Technology Campus', '', 2, 2),
(861, 97015512, 'PT011', '', '', '', 'Engineering Research and Development for Technology (ERDT) workshop entitled "Thesis Preparation Wor', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Iligan City', '', 2, 2),
(862, 97015512, 'PT011', '', '', '', 'ELGA Workshop ELGA syllabus and rubrics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU Andrew Hall', '', 2, 2),
(863, 97015512, 'PT011', '', '', '', 'ELGA Module 3 "Learnings and Continous Improvement of the Lasallian Curriculum"', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSP Multipurpose Room', '', 2, 2),
(864, 97015512, 'PT011', '', '', '', 'ELGA Module 2 "Revision of Syllabus Stages 1-3 and Professional Learning Communities"', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSP Multipurpose Room', '', 2, 2),
(865, 97015512, 'PT011', '', '', '', 'ELGA Module 1 "Overview of Curriculum Development based on LGP"', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSP Multipurpose Room', '', 2, 2),
(866, 97015512, 'PT011', '', '', '', '10th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Ateneo De Davao', '', 2, 2),
(867, 97015512, 'PT011', '', '', '', 'Caucus on the Trustworthiness of the Automated Election System ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Fajardo Auditorium', '', 2, 2),
(868, 97015512, 'PT011', '', '', '', '15th Osaka University - De La Salle University Joint Academic Research Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(869, 97015512, 'PT011', '', '', '', '5th ERDT Conference ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Hotel Sofitel', '', 2, 2),
(870, 97015512, 'PT011', '', '', '', 'Science and Technology Congress 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(871, 97015512, 'PT011', '', '', '', '4th Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(872, 97015512, 'PT011', '', '', '', '9th Philippine Computing Science Congress ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Siliman University', '', 2, 2),
(873, 97015512, 'PT011', '', '', '', 'Charism of Lasalian Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(874, 97015512, 'PT011', '', '', '', 'Classroom Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(875, 97015512, 'PT011', '', '', '', 'Designing Project-Based Courses Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(876, 97015512, 'PT011', '', '', '', 'ASSIST - Orientation on the Development of a Curricular Framework for CCS', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(877, 97015512, 'PT011', '', '', '', '8th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of the Philippines', '', 2, 2),
(878, 97015512, 'PT011', '', '', '', '3rd Humanoid Nanotechnology', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(879, 97015512, 'PT011', '', '', '', '7th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay', '', 2, 2),
(880, 97015512, 'PT011', '', '', '', '4th Engage European Union - Southeast Asia ICT Cooperation Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Penang Malaysia', '', 2, 2),
(881, 97015512, 'PT011', '', '', '', 'Open Source Seminar  ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(882, 97015512, 'PT011', '', '', '', '12th IEEE Mechatronics and Machine Vision in Practice (M2VIP International Conference 2005)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(883, 97015512, 'PT011', '', '', '', 'Commission on Higher Education (CHED) Workshop on the Computer Engineering Curriculum ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'None', '', 2, 2),
(884, 97015512, 'PT011', '', '', '', 'Commission on Higher Education (CHED) Workshop on the Computer Engineering Curriculum ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'None', '', 2, 2),
(885, 97015512, 'PT011', '', '', '', '7th Science and Technology Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(886, 97049212, 'PT001', 'Automated Planning of Children''s Stories using Causal Links', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(887, 97049212, 'PT001', 'Generating Text Descriptions in the Alex Interactive Storytelling System using a Semantic Ontology', '', '', '', 'Philippine Computing Journal', 'none', 'Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(888, 97049212, 'PT001', 'The Automatic Generation of Children''s Stories from a Multi-Scene Input Picture', '', '', '', 'Philippine Computing Journal', 'none', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(889, 97049212, 'PT001', 'Using SUMO to Represent Storytelling Knowledge', '', '', '', 'Philippine Computing Journal', 'none', 'Cua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(890, 97049212, 'PT001', 'Extracting and Using Translation Templates in an Example-Based Machine Translation System', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(891, 97049212, 'PT001', 'Building Language Resources for a Multi-Engine English-Filipino Machine Translation System', '', '', '', 'Journal of Language Resources and Evaluation ', 'none', 'Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(892, 97049212, 'PT001', 'Simplifying Text in Medical Literature', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(893, 97049212, 'PT001', '', 'Picture Books: Challenges and Opportunities in Automatic Story Generation', '', '', 'Information and Communications Technology in the Philippines: Con', 'De La Salle University Publishing House', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(894, 97049212, 'PT007', 'Extracting Conceptual Relations from Children''s Stories', '', 'International Workshop on Knowledge Management and Acquisition for Intelligent Systems (PKAW 2014)', '', '', 'Springer (LNCS 8863)', 'Samson', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(895, 97049212, 'PT007', 'Designing Interactive Stories to Teach Positive Social Behavior to Children with Autism', '', '5th International Workshop on Empathic Computing', '', '', 'None', 'Consignado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(896, 97049212, 'PT007', 'Identifying Topics of Discourse for Affective Dialogue Generation', '', 'DLSU Research Congress 2014', '', '', 'De La Salle University', 'Soriano', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(897, 97049212, 'PT007', 'A System for Collecting commonsense Knowledge from Children', '', 'DLSU Research Congress 2014', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(898, 97049212, 'PT007', 'Approaches to Story Planning using Causal Links', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(899, 97049212, 'PT007', 'Developing a Semantic Ontology for the Alex Interactive Storytelling System', '', '10th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Roxas', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(900, 97049212, 'PT007', 'Building a Simple Linguist''s Assistant for Tagalog', '', '10th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Castilo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(901, 97049212, 'PT007', 'Using Common-sense Knowledge in Generating Stories', '', '12th Pacific Rim International Conference on Artificial Intelligence (PRICAI)', '', '', 'Springer (Lecture Notes in AI 7458)', 'Yu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(902, 97049212, 'PT007', 'Planning Children''s Stories using Agent Models', '', '2012 International Pacific Rim Knowledge Acquisition Workshop (PKAW)', '', '', 'Springer (Lecture Notes in AI 7457)', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(903, 97049212, 'PT007', 'Commonsense Knowledge Acquisition through Children''s Stories', '', '2012 International Pacific Rim Knowledge Acquisition Workshop (PKAW)', '', '', 'Springer (Lecture Notes in AI 7457)', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(904, 97049212, 'PT007', 'The Art of Computer-Generated Stories', '', 'Arts Congress 2012', '', '', 'De La Salle University', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(905, 97049212, 'PT007', 'A Simple Surface Realizer for Filipino', '', '25th Pacific Asia Conference on Language', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(906, 97049212, 'PT007', 'Emotional Narration of Children''s Stories', '', 'Proceedings in Information and Communication Technology', '', '', 'Springer', 'Alcantara', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(907, 97049212, 'PT007', 'Theme-Based Cause-Effect Planning for Multiple-Scene Story Generation', '', 'International Conference on Computational Creativity', '', '', 'ICCC', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(908, 97049212, 'PT007', 'Automatic Generation of Children''s Stories', '', 'Philippine Computing Society Congress', '', '', 'Computing Society of the Philippines', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(909, 97049212, 'PT007', 'Exploring Puns for Spelling and Vocabulary Enrichment', '', '7th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Aban', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(910, 97049212, 'PT007', 'A Commonsense Knowledge Base for Generating Children''s Stories', '', '2010 AAAI Fall Symposium Series on Common Sense Knowledge', '', '', 'Association for the Advancement of Artificial Intelligence', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(911, 97049212, 'PT007', 'Representing Story Plans in SUMO', '', 'NAACL HLT 2010 Workshop on Computational Approaches to Linguistic Creativity', '', '', 'Association for Computational Linguistics', 'Cua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(912, 97049212, 'PT007', 'Automatically Extracting Word Relationships as Templates for Pun Generation', '', 'NAACL HLT 2009 Workshop on Computational Approaches to Linguistic Creativity', '', '', 'Association for Computational Linguistics', 'Hong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(913, 97049212, 'PT007', 'Planning Author and Character Goals for Story Generation', '', 'NAACL HLT 2009 Workshop on Computational Approaches to Linguistic Creativity', '', '', 'Association for Computational Linguistics', 'Solis', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(914, 97049212, 'PT007', 'Generating Punning Riddles from Examples', '', '2nd International Symposium on Universal Communication', '', '', 'IEEE (Inspec Indexed)', 'Hong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(915, 97049212, 'PT007', 'Automatically Extracting Templates from Examples for NLP Tasks', '', '22nd Pacific Asia Conference on Language', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(916, 97049212, 'PT007', 'Picture Books: An Automated Story Generator', '', '5th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Solis', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(917, 97049212, 'PT007', 'Templated-Based Engish-Filipino Machine Translation System', '', '4th National Natural Language Processing Research Symposium', '', '', 'De La Salle University', 'Go', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(918, 97049212, 'PT007', 'Template Extraction for a Bidirectional English-Filipino Machine Translation System', '', 'Philippine Computing Society Congress', '', '', 'Computing Society of the Philippines', 'Go', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(919, 97049212, 'PT008', '', 'Picture Books: Challenges & Opportunities in Automatic Story Generation (Invited Lecture)', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(920, 97049212, 'PT008', '', 'Computer Generated Stories for Reading and Literacy Development', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(921, 97049212, 'PT008', '', 'An Introduction to Text Generation', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(922, 97049212, 'PT008', '', 'Story Generation: Challenges and Opportunities in Computer-Generated Stories', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(923, 97049212, 'PT008', '', 'Story Generation (Invited Lecture)', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(924, 97049212, 'PT008', '', 'Voice Narrator for Picture Books: An Interdisciplinary Research Symposium', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(925, 97049212, 'PT008', '', 'Can Computers Create Stories for Children', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(926, 97049212, 'PT008', '', 'Developing Computer Systems that can Generate Children’s Stories', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(927, 97049212, 'PT008', '', 'Agent Models in Planning Children''s Stories', '', '', '', '', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(928, 97049212, 'PT008', '', 'Acquiring Commonsense Knowledge through Children Stories', '', '', '', '', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(929, 97049212, 'PT008', '', 'A Text Generator for SUMO', '', '', '', '', 'Ureta', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(930, 97049212, 'PT008', '', 'Common-sense Knowledge for the Automatic Generation of Stories', '', '', '', '', 'Yu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(931, 97049212, 'PT008', '', 'Enhancing Event-Based Semantics in the Ontology of Picture Books 2', '', '', '', '', 'Ang', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(932, 97049212, 'PT008', '', 'Building a Commonsense Ontology through Children''s Stories', '', '', '', '', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(933, 97049212, 'PT008', '', 'Natural Language Generator for the Suggested Upper Merged Ontology', '', '', '', '', 'Ureta', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(934, 97049212, 'PT008', '', 'Providing Commonsense Knowledge to Story Generation Systems', '', '', '', '', 'Yu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(935, 97049212, 'PT008', '', 'Automatic Generation of Children''s Stories', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(936, 97049212, 'PT008', '', 'Automated Language Processing (Invited Lecture)', '', '', '', '', 'Ong', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(937, 97049212, 'PT011', '', '', '', 'AIM Curriculum Mapping and Assessment Seminar (Dr. Phyllis Blumberg)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Makati City', '', 2, 2),
(938, 97049212, 'PT011', '', '', '', 'International Workshop on Knowledge Management and Acquisition for Intelligent Systems (PKAW 2014)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Gold Coast', '', 2, 2),
(939, 97049212, 'PT011', '', '', '', '5th International Workshop on Empathic Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Gold Coast', '', 2, 2),
(940, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Teaching for Transformative Learning (Dr. A', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(941, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Human Behavior', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(942, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Institutional Collaboration', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(943, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Research and Knowledge Production in the Ne', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(944, 97049212, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(945, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Authentic Assessment of Learning Outcomes (', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(946, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Transformative Learning: Managing the Acade', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(947, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Quality Assurance in Higher Education Insti', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(948, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Dynamics of Educational Leadership and Mana', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(949, 97049212, 'PT011', '', '', '', 'Scholarship of Teaching and Learning (SoTL) Workshop on Pedagogical Action Research (Dr. A. Limjap)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(950, 97049212, 'PT011', '', '', '', '21st Century Literacy and Assessment (Prof. Timothy Teo)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(951, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Technology Management (Dr. Habulan)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(952, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Stages of Power: Understanding our Leadersh', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(953, 97049212, 'PT011', '', '', '', 'Scholarship and Innovation in Learning and Teaching (SILT) Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(954, 97049212, 'PT011', '', '', '', 'Authentic Assessment (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(955, 97049212, 'PT011', '', '', '', 'Beyond Conference Papers: Publishing in High-Impact Journals', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(956, 97049212, 'PT011', '', '', '', '10th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(957, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Spirituality', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(958, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: The Lasallian Leader / Manager (Dr. Jesusa ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(959, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Management Ethics (Atty. Christopher Cruz)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(960, 97049212, 'PT011', '', '', '', 'Lasallian Leadership and Management Development Program: Foundations of Leadership and Management (D', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(961, 97049212, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcomes (PGO) Development', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(962, 97049212, 'PT011', '', '', '', 'Design Thinking Workshop (Prof. Shengdong Zhao and Mr. TJ Monserrat', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(963, 97049212, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(964, 97049212, 'PT011', '', '', '', 'Rethinking Teaching in Computing (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(965, 97049212, 'PT011', '', '', '', 'Trends in Computing: Getting Started: A Story of a Health Informatics Startup (Kristian Sumabat', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(966, 97049212, 'PT011', '', '', '', 'Trends in Computing: Making the Cloud Real (Arnie Locsin', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(967, 97049212, 'PT011', '', '', '', 'Training Workshop for PAASCU Accreditors', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(968, 97049212, 'PT011', '', '', '', 'International Research Grants and Consulting Opportunities in Education: Why''s and How''s (Dr. Richar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(969, 97049212, 'PT011', '', '', '', 'Trends in Computing: Smarter Analytics (Dr. Alexis Pantola', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(970, 97049212, 'PT011', '', '', '', '21st Century Literacy: A Research Agenda (Dr. Jose Lloyd Espiritu)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(971, 97049212, 'PT011', '', '', '', 'Trends in Computing: A Challenge for the Brightest Students to Solve the Biggest Needs in the Emergi', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(972, 97049212, 'PT011', '', '', '', 'Trends in Computing: Introduction to 3D Printing (Rene Canlas', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(973, 97049212, 'PT011', '', '', '', 'Strategic Approaches to the Future: Kowledge Creation and Exchange Propagated by Technology', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(974, 97049212, 'PT011', '', '', '', '9th Community-Based Monitoring System - Philippines National Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(975, 97049212, 'PT011', '', '', '', 'International Conference on Research and Innovation (Philippine-California Research Institute)', 'none', 'none', 'none', 0, 'none', 'none', 'none', 'none', 1, 'none', 'none', 'none', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', 'none', 'none', 'Manila', '', 2, 2),
(976, 97049212, 'PT011', '', '', '', 'Trends in Computing: The Code Not Taken (Kenneth Palacios', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(977, 97049212, 'PT011', '', '', '', 'Trends in Computing: Developing for Windows Kinect (Warren Yu', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(978, 97049212, 'PT011', '', '', '', 'Trends in Computing: Gamification (Christian Sagenes', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(979, 97049212, 'PT011', '', '', '', 'Trends in Computing: Natural User Interface (Warren Yu', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(980, 97049212, 'PT011', '', '', '', 'Trends in Computing: The Big HIT "Healthcare IT" (Willex Perez', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(981, 97049212, 'PT011', '', '', '', 'Trends in Computing: IBM Cloud Computing: Rethink IT. Reinvent Business (James Faeldon', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(982, 97049212, 'PT011', '', '', '', 'Trends in Computing: EdRank: Ranking Web Pages by their Educational Efficacy (Prof. Joseph Beck', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(983, 97049212, 'PT011', '', '', '', 'Trends in Computing: Enterprise Security (Julius Suarez', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(984, 97049212, 'PT011', '', '', '', '25th Pacific Asia Conference on Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(985, 97049212, 'PT011', '', '', '', 'Grant Proposal Writing Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(986, 97049212, 'PT011', '', '', '', 'Workshop on Computation: Theory and Practice', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(987, 97049212, 'PT011', '', '', '', 'Workshop on Grand Challenges in Computing', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(988, 97049212, 'PT011', '', '', '', 'Philippine Computing Society Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Naga City', '', 2, 2),
(989, 97049212, 'PT011', '', '', '', 'Faculty Training Program: La Sallian Leadership and Management Development Program                  ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(990, 97049212, 'PT011', '', '', '', 'Faculty Training Program: Curriculum Program and Syllabus Design', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(991, 97049212, 'PT011', '', '', '', '2010 AAAI Fall Symposium Series on Common Sense Knowledge', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Virginia', '', 2, 2),
(992, 97049212, 'PT011', '', '', '', 'The School of Asian Applied Natural Language Processing for Linguistics Diversity and Language Resou', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(993, 97049212, 'PT011', '', '', '', '6th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(994, 97049212, 'PT011', '', '', '', 'NAACL HLT 2009 Workshop on Computational Approaches to Linguistic Creativity', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Colorado', '', 2, 2),
(995, 97049212, 'PT011', '', '', '', '2nd International Symposium on Universal Communication', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Osaka', '', 2, 2),
(996, 97049212, 'PT011', '', '', '', '22nd Pacific Asia Conference on Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(997, 97049212, 'PT011', '', '', '', '5th National Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(998, 97049212, 'PT011', '', '', '', 'ACM-SIGPLAN History of Programming Languages', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'San Diego', '', 2, 2),
(999, 97049212, 'PT011', '', '', '', 'ACM-SIGPLAN-SIGSOFT Workshop on Program Analysis of Software Tools and Engineering', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'San Diego', '', 2, 2),
(1000, 97049212, 'PT011', '', '', '', '4th ENGAGE European Union - Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Penang', '', 2, 2),
(1001, 97049212, 'PT011', '', '', '', '3rd ENGAGE European Union - Southeast Asia ICT Research Collaboration Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Bangkok', '', 2, 2),
(1002, 97041378, 'PT001', 'TULUNGAN: A Consensus-Independent Reputation System for Collaborative Web Filtering Systems', '', '', '', 'Science Diliman Journal', 'none', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1003, 97041378, 'PT001', 'Tulungan: A Slandering Resistant Reputation System for Collaborative Web Filtering Systems', '', '', '', 'Journal Paper for International Journal of Network Security and I', 'none', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1004, 97041378, 'PT001', 'Investigating the Number of Users and Months to Make Tulungan Effective Against Self-promoting Users', '', '', '', 'Journal Paper for International Journal of Cyber-Security and Dig', 'none', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1005, 97041378, 'PT001', 'Hacking - The Ethical Way', '', '', '', '', 'DLSU Press', 'Alexis V. Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1006, 97041378, 'PT007', 'Delaying ARP Poisoning using an Active Network-Based Technique', '', 'Philippine Computing Science Congress 2014', '', '', '', 'Buena', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1007, 97041378, 'PT007', 'Using TCP Reset for Blocking and using Spoofing for User Notification in Non-inline Non-proxy based Web Filters', '', 'Philippine Computing Science Congress 2013', '', '', '', 'Chavez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1008, 97041378, 'PT007', 'Tulungan: A Self-promoting Resistant Reputation System for Collaborative Web Filtering Systems', '', 'Second International Conference on Cyber Security', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1009, 97041378, 'PT007', 'Rater Rating V2 (R2V2): A Freeloader-Resistant User-Driven Reputation System for Collaborative Sites', '', '5th ERDT Conference', 'none', 'none', 'None', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1010, 97041378, 'PT007', 'Rating the Raters: A Reputation System for Wiki-like Domains', '', '3rd International Conference on Security of Information and Networks (SIN 2010)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1011, 97041378, 'PT007', 'Packet Classifier for Unified Security Switches', '', 'Science and Technology Congress 2009', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1012, 97041378, 'PT007', 'Reliable Progressive to Restricted PS-STUN Algorithm. A full paper presentation)', '', '9th Philippine Computing Science Congress (PSCS2009)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1013, 97041378, 'PT007', 'Symmetric NAT Traversal using IP Spoofing', '', '4th Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1014, 97041378, 'PT007', 'Session Handling for Unified Security Switches.', '', '4th Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1015, 97041378, 'PT007', 'Epsilon Information Security Laboratory using Virtualization Technology', '', '8th Philippine Computing Science Congress (PSCS2008)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1016, 97041378, 'PT007', 'Epsilon Protocol Suite', '', '3rd Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1017, 97041378, 'PT007', ' Layer 1 to 7 Network Simulator with Extensible Library as an Instructional Tool', '', '6th Philippine Computing Science Congress (PSCS2006)', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1018, 97041378, 'PT007', 'Application Programming Interface for an Extensible Network Simulator', '', '8th Science and Technology Congress 2006', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1019, 97041378, 'PT007', 'Load Balancer System for an Intrusion Prevention System', '', '8th Science and Technology Congress 2006', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1020, 97041378, 'PT007', 'Automatic Maneuver System for Overtaking', '', 'Conference Paper for 2nd International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1021, 97041378, 'PT007', 'Intrusion Detection System- Management System', '', 'Conference Paper for 2nd International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1022, 97041378, 'PT007', 'Intrusion Prevention System', '', 'Conference Paper for 5th Philippine Computing Science Congress', '', '', '', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1023, 97041378, 'PT007', 'Interactive Multicast Video Over IP', '', 'Conference Paper for Science and Technology Congress 2005', '', '', '', 'Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1024, 97041378, 'PT011', '', '', '', 'IBM Regional Tech-Exchange', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1025, 97041378, 'PT011', '', '', '', 'Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1026, 97041378, 'PT011', '', '', '', '5th ERDT Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1027, 97041378, 'PT011', '', '', '', 'Science and Technology Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', 'none', 2, 2),
(1028, 97041378, 'PT011', '', '', '', '9th Philippine Computing Science Congress (PSCS2009)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', ' Silliman University', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(1029, 97041378, 'PT011', '', '', '', '4th Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1030, 97041378, 'PT011', '', '', '', '8th Philippine Computing Science Congress (PSCS2008)', 'none', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of the Philippines-Diliman', '', 2, 2),
(1031, 97041378, 'PT011', '', '', '', '3rd Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1032, 97041378, 'PT011', '', '', '', '6th Philippine Computing Science Congress (PSCS2006)', 'none', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', ' Ateneo De Manila University', '', 2, 2),
(1033, 97041378, 'PT011', '', '', '', '8th Science and Technology Congress 2006', 'none', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', ' De La Salle University - Manila', '', 2, 2),
(1034, 97041378, 'PT011', '', '', '', 'Conference Paper for 2nd International Conference on Humanoid', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1035, 97041378, 'PT011', '', '', '', 'Conference Paper for 5th Philippine Computing Science Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1036, 97093017, 'PT001', '', '', '', '', 'Philippine IT Journal', '', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1037, 97093017, 'PT001', '', 'Using Language Technologies in Managing Crowd-Sourced Data', 'none', '', 'Information and Communications Technology in the Philippines: Con', 'DLSU Publishing House', 'Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1038, 97093017, 'PT007', 'FILIET: An Information Extraction System For Filipino Disaster-Related Tweets ', '', 'DLSU Research Congress', '', '', 'DLSU', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1039, 97093017, 'PT007', 'Adaptive information extraction of disaster information from Twitter', '', 'Advanced Computer Science and Information Systems (ICACSIS)', '', '', 'IEEE', 'Ralph Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1040, 97093017, 'PT007', 'BAHABA: A ROUTE GENERATOR SYSTEM FOR MOBILE DEVICES', '', 'Proceedings of the Workshop on Language Processing and Crisis Information', '', '', 'Asian Federation of Natural Language Processing ', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1041, 97093017, 'PT007', 'SUBJECTIVITY CLASSIFICATION OF FILIPINO TEXT WITH FEATURES BASED ON TERM FREQUENCY-INVERSE DOCUMENT FREQUENCY', '', 'Proceeding of the 2013 International Conference on Asian Language Processing', '', '', 'IEEE', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1042, 97093017, 'PT007', 'LIVE IT UP!: A ECOFRIENDLY SMART FRIDGE PLUG-IN', '', 'DLSU Research Congress', '', '', 'DLSU', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1043, 97093017, 'PT007', 'FEATURE-BASED SUBJECTIVITY CLASSIFICATION OF FILIPINO TEXT', '', 'Proceeding of the 2012 International Conference on Asian Language Processing', '', '', 'IEEE', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1044, 97093017, 'PT007', 'SALINLAHI 3: AN INTELLIGENT TUTORING SYSTEMS FOR FILIPINO HERITAGE LANGUAGE LEARNERS', '', 'Proceedings of the 9th National Conference on I.T. Education', '', '', 'Philippine Society of IT Educators ', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1045, 97093017, 'PT007', 'IFEEDBACK: A FEEDBACK API FOR TUTORING SYSTEMS', '', 'Proceedings of the 8th National Conference on I.T. Education', '', '', 'Philippine Society of IT Educators ', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1046, 97093017, 'PT007', 'IFEEDBACK: A FEEDBACK API FOR TUTORING SYSTEMS', '', 'Proceedings of the 8th National Natural Language Processing Research Symposium', '', '', 'Center for Language Tecnologies ', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1047, 97093017, 'PT007', 'BUILDING WEB-BASED FILIPINO LANGUAGE LEARNING TOOL FOR HERITAGE LEARNERS', '', 'Proceedings of the 7th National Conference on I.T. Education', '', '', 'Philippine Society of IT Educators ', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1048, 97093017, 'PT007', 'EPARTICIPATION: ENABLING', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1050, 97093017, 'PT007', 'SALINLAHI : A WEB - BASED INTERACTIVE LEARNING ENVIRONMENT FOR FILIPINO HERITAGE LEARNERS', 'none', 'Proceedings of the 2nd International Conference of Filipino as a Global Language', '', '', '', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1051, 97093017, 'PT007', 'SALINLAHI : AN INTERACTIVE LEARNING ENVIRONMENT FOR FILIPINO LANGUAGE LEARNING FOR KIDS', 'none', 'Proceedings of the 6th National Natural Language Processing Research Symposium', '', '', 'Center for Language Tecnologies ', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1052, 97093017, 'PT008', '', 'Software-Assisted Vulnerability AssessmeNT (SAVANT) Tools for Climate Change in Coastal Communities', '', '', '', '', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1053, 97093017, 'PT008', '', 'Building web-based Filipino Language Learning Tool for Heritage Learners', '', '', '', '', 'Ralph Vincent Regalado', 0, '', '', '', '', 1, 'Research report', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1054, 97093017, 'PT011', '', '', '', 'Women Techmakers Baguio', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Gossip Coffee', '', 2, 2),
(1055, 97093017, 'PT011', '', '', '', 'Google Developer DevFest 2013 – Baguio', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'University of Baguio', '', 2, 2),
(1056, 97093017, 'PT011', '', '', '', 'Form Function Class 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(1057, 97093017, 'PT011', '', '', '', '5th ICT Youth Convention', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'La Salle Osamis', '', 2, 2),
(1058, 97093017, 'PT011', '', '', '', 'PYCON 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(1059, 97093017, 'PT011', '', '', '', 'Python 101: Beginners Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(1060, 97093017, 'PT011', '', '', '', 'Form Function Class 2013', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLS-CSB', '', 2, 2),
(1061, 97093017, 'PT011', '', '', '', 'GCDC Workshop Wednesday: Google Maps Javascript API', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Globe Valero', '', 2, 2),
(1062, 97093017, 'PT011', '', '', '', 'Geeks on a Beach 2013', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay Regency', '', 2, 2),
(1063, 97093017, 'PT011', '', '', '', 'Ecofish Vulnerability Assessment Training  ', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'View Park Hotel', '', 2, 2),
(1064, 97093017, 'PT011', '', '', '', 'Google Developer DevFest 2013 – Cagayan De Oro', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'N Hotel', '', 2, 2),
(1065, 97093017, 'PT011', '', '', '', 'Google Developer DevFest 2013 – Manila', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Alphaland Mall', '', 2, 2),
(1066, 97093017, 'PT011', '', '', '', 'Accenture Shaping the Future Forum', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'EDSA Shangri-La', '', 2, 2),
(1067, 97093017, 'PT011', '', '', '', 'FGD on ICT4H - Maternal Health and Child Care', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(1068, 97093017, 'PT011', '', '', '', 'Nokia Windows Phone Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Microsoft Philippines', '', 2, 2),
(1069, 97093017, 'PT011', '', '', '', 'RPW on the role of Social Media and ICT in DRRM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'CSB Hotel', '', 2, 2),
(1070, 97093017, 'PT011', '', '', '', '9th NATIONAL NATURAL LANGUAGE PROCESSING RESEARCH SYMPOSIUM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Center for Language Technologies', '', 2, 2),
(1071, 97093017, 'PT011', '', '', '', '8th NATIONAL CONFERENCE ON I.T EDUCATION', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Palawan State University', '', 2, 2),
(1072, 97093017, 'PT011', '', '', '', 'Nokia Developer Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '55 Events Placa', '', 2, 2),
(1073, 97093017, 'PT011', '', '', '', 'QT Smartphone Developer Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'TIP', '', 2, 2),
(1074, 97093017, 'PT011', '', '', '', '8th NATIONAL CONFERENCE ON I.T EDUCATION', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Boracay', '', 2, 2),
(1075, 97093017, 'PT011', '', '', '', 'TEACHING 2.0', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'DLSU', '', 2, 2),
(1076, 97093017, 'PT011', '', '', '', 'GRAPHIKA MANILA 2010', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1077, 97093017, 'PT011', '', '', '', '2nd INTERNATIONAL CONFERENCE ON FILIPINO AS A GLOBAL LANGUAGE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Council for Teaching the Filipino Language and Culture', '', 2, 2),
(1078, 97093017, 'PT011', '', '', '', '6th NATIONAL NATURAL LANGUAGE PROCESSING RESEARCH SYMPOSIUM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Center for Language Technologies', '', 2, 2),
(1079, 97042579, 'PT001', 'Generating Animated Paper Pop-ups from the Motion of Articulated Characters', '', '', '', 'The Visual Computer', '', 'Ruiz C.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1080, 97042579, 'PT001', 'Multi-style Paper Pop-up Designs from 3D Models', '', '', '', 'Computer Graphics Forum ', '', 'Ruiz C.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1081, 97042579, 'PT001', 'Automatic Paper Sliceform Design from 3D Solid Models', '', '', '', 'IEEE Transactions on Visualization and Computer Graphics', '', 'Le-Nguyen', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1082, 97042579, 'PT001', 'Surface- and Contour-Preserving Origamic Architecture Paper Pop-Ups', '', '', '', 'IEEE Transactions on Visualization and Computer Graphics', '', 'Le S.N.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1083, 97042579, 'PT001', 'Computer Games: A New Medium for Traditional Asian Art', '', '', '', 'International Journal of Information Processing and Management (I', '', 'Ruiz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1084, 97042579, 'PT001', 'A Shape Distribution for Comparing 3D Models', '', '', '', 'Lecture Notes in Computer Science', '', 'Monteverde', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1085, 97042579, 'PT001', 'A Shape-Based Classifier of Domain-Independent 3D Models', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1086, 97042579, 'PT001', 'Animation Toolkit Based on Database Approach for Reusing Motions and Models', '', '', '', 'Multimedia Tools and Applications Journal', 'none', 'Akanksha', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1087, 97042579, 'PT007', 'Generating Multi-style Paper Pop-up Designs using 3D Primitive Fitting', '', 'Proceeding SA ''13 SIGGRAPH Asia 2013 Technical Briefs', '', '', 'ACM', 'Ruiz C.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1088, 97042579, 'PT007', 'Combining Color and Shape for Retrieval of 3D Models', '', 'NCM 2009 ', '', '', 'IEEE CS', 'Ruiz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1089, 97042579, 'PT007', 'Exploring Traditional Art and Culture in Modern Computer Games” ', '', 'NCM 2009 ', '', '', 'IEEE CS', 'Ruiz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1090, 97042579, 'PT007', 'Extending Shape-based Similarity Measures for 3D Models”', '', 'Philippine Computing Science Congress', '', '', 'CSP', 'Ruiz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1091, 97042579, 'PT007', 'A Shape Distribution for Comparing 3D Models', '', 'International Conference on Multimedia Modeling 2007', '', '', 'MMM', 'Monteverde', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1092, 97042579, 'PT008', '', 'Creating Animated Pop-up Books from the Motion of 3D Articulated Characters', 'International Conference on Networked Computing and Advanced Information Management', '', 'International MultiMedia Modeling Conference  2007', '', 'Ruiz C.', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Singapore', '', 2, 2),
(1095, 97053937, 'PT001', 'Tulungan: A Concensus-Independent Reputation System for Collaborative Web Filtering Systems', '', '', '', 'Science Diliman', '', 'Alexis Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1096, 97053937, 'PT001', 'Investigating the Number of Users and Months to Make TULUNGAN Effective Against Self-Promoting Users', '', '', '', 'International Journal of Cyber-Security and Digital Forensics', '', 'Alexis Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1097, 97053937, 'PT001', 'TULUNGAN: A Slandering-Resistant Reputation System for Collaborative Web Filtering', '', '', '', 'International Journal of Network Secuirty and Its Applications', '', 'Alexis Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1098, 97053937, 'PT001', 'TULUNGAN: A self-promoting-resistant reputation system for collaborative web filtering systems', '', '2nd International Conference on Cyber Security', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1099, 97053937, 'PT001', 'Rating the Raters: A Reputation System for Wiki-like Domains', '', '3rd International Conference on Security of Information and Networks (SIN 2010)', 'none', 'none', 'Association of Computing Machinery (ACM)', 'Alexis Pantola', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1100, 97053937, 'PT001', 'A Concept for the Campaign of Promoting Safe Schools and Hospitals', '', '5th Civil Engineering Conference in the Asian Region and Australasian Structural Engineering Confere', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1101, 97053937, 'PT001', 'Lessons Learned from Archiving Student Projects in an Introductory Computer Graphics Course', '', '2010 International Conference on Frontiers in Education: Computer Science and Computer Engineering', '', '', 'CSREA Press', 'Florante Salvador', 0, 'none', 'none', 'none', '411 to 415', 1, 'none', 'none', 'None', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', 'none', 'none', 'none', 'none', 2, 2),
(1102, 97053937, 'PT001', 'Representation of Basket Constructs Using Braid Theory', '', '4th International Conference on Computer Graphics and Interactive Techniques in Australasia and Sout', '', '', 'Association of Computing Machinery (ACM)', 'Stephen Ng Dellosa', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1103, 97053937, 'PT008', '', 'Triangle Mesh Shell Voxelization Using Primitive Intersection Tests for Lego Brick Approximation Alg', 'none', '', '', '', 'Paul Guillergan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1104, 97053937, 'PT008', '', 'GPU-enabled Lego Brick Approximation of Mesh Models', 'none', '', '', '', 'Ivan Canilao', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1105, 97053937, 'PT008', '', 'Neural Network Implementation on the Graphics Processing Unit Using CUDA', 'none', '', '', '', 'Ma. Francesca Barcelon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1106, 97053937, 'PT008', '', 'The One Million Safe Schools and Hospitals Campaign: Promoting Disaster Awareness', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1107, 97053937, 'PT008', '', 'A Concept for the Campaign of Promoting Safe Schools and Hospitals', '', '', '', '', 'Jerry Velasquez', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1108, 97053937, 'PT008', '', 'Mesh Guided Virtual Lego Modeling', '', '', '', '', 'Jasmine Grace Caalim', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1109, 97053937, 'PT008', '', 'Mesh-Based Virtual Lego Modeling', '', '', '', '', 'Mary Joy Cruz', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1110, 97053937, 'PT008', '', 'Modeling of Philippine Ethnic Fabric Patterns', '', '', '', '', 'Crisler Chee', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1111, 97053937, 'PT008', '', 'Hand Pose Interpolation', '', '', '', '', 'Kristoffer Albeus', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1112, 97053937, 'PT008', '', 'Approximating Hand Motion with Wrist Movements Using Interpolation and Heuristics', '1st ENGAGE European Union - Southeast Asia ICT Research Collaboration Conference', '', '', '', 'Kristoffer Albeus', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1114, 97064424, 'PT007', 'Plant Height Measurement and Tiller Segmentation of Rice Crops Using Image Processing', '', 'Proceedings of the DLSU Research Congress 2015', 'none', '', 'De La Salle University - Manila', 'Paulette Constantino', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1115, 97064424, 'PT007', 'Luntian: An Automated', '', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1116, 97064424, 'PT007', 'Extracting Conceptual Relations from Children''s Stories', '', 'Knowledge Management and Acquisition for Smart Systems and Services 13th Pacific Rim Knowledge Acqui', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1117, 97064424, 'PT007', 'Design Considerations for a Visualization and Simulation Tool for CBMS Data', '', 'Proceedings of the DLSU Research Congress 2014', 'none', '', 'De La Salle University - Manila', 'Nelson Marcos', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1118, 97064424, 'PT007', 'An Automated Thematic Role Labeler and Generalizer for Filipino Verb Arguments', '', 'Proceedings of the 23rd Pacific Asia Conference on Language', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1119, 97064424, 'PT007', 'Generalized Distributed Garbage Collection', '', 'Proceedings of the 10th Philippine Computing Science Congress', '', '', 'Computing Society of the Philippines', 'Neil Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1120, 97064424, 'PT008', '', 'Automatic Extraction of Conceptual Relations from Childrens Stories', '', '', '', '', 'Briane Samson', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1121, 97064424, 'PT008', '', 'An Automated Thematic Role Labeler and Generalizer for Filipino Verb Arguments', '', '', '', '', 'Briane Samson', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1122, 97064424, 'PT011', '', '', '', 'Writing of URCO Research Proposals', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1123, 97064424, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1124, 97064424, 'PT011', '', '', '', 'Towards Student-Centered Learning (Dr. Phyllis Blumberg)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1125, 97064424, 'PT011', '', '', '', 'Authentic Assessment (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1126, 97064424, 'PT011', '', '', '', 'Beyond Conference Papers: Publishing in High-Impact Journals', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1127, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: DLSU: A Learner-Centered Research University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1128, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Service Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1129, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: The Professional Learning Community', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1130, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Spirituality and Ethics of Lasallian Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1131, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Ministry of Teaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1132, 97064424, 'PT011', '', '', '', 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcomes (PGO) Development', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1133, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1134, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1135, 97064424, 'PT011', '', '', '', 'Design Thinking Workshop (Prof. Shengdong Zhao and Mr. TJ Monserrat', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1136, 97064424, 'PT011', '', '', '', 'DLSU OBE', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1137, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1138, 97064424, 'PT011', '', '', '', 'Rethinking Teaching in Computing (Dr. Jose Lloyd Espiritu and Ms. Kiran Budhrani)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1139, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: St. La Salle as a Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1140, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Teaching and Learning for 21st Century Learners', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1141, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Teaching for Understanding and Meaning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1142, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Lasallian Pedagogical Framework/Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1143, 97064424, 'PT011', '', '', '', 'Academic Leadership Development Program: Philosophy of Lasallian Education Lasallian Guiding Princip', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1144, 97064424, 'PT011', '', '', '', '9th Community-Based Monitoring System - Philippines National Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1145, 97064424, 'PT011', '', '', '', 'Echelon 2012', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'National University Singapore', '', 2, 2),
(1146, 97064424, 'PT011', '', '', '', '23rd Pacific Asia Conference on Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1147, 97064424, 'PT011', '', '', '', '6th Natural Language Processing Research Symposium', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1148, 97053856, 'PT007', 'Multi-Touch Haptic Gesture Recognition from Examples', '', '', '', 'Philippine Computing Journal', '', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1149, 97053856, 'PT007', 'The Revised Wordframe Model for the Filipino Language', '', 'none', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1150, 97053856, 'PT007', 'Multi-Touch Haptic Gesture Recognition from Examples', '', 'Philippine Computing Science Congress', '', '', 'Computing Society of the Philippines', 'Chua', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1151, 97053856, 'PT007', 'Ai Cap''n: A Game Platform for Learning Artifical Intelligence', '', 'PCSC 2009 9th Philippine Computing Science Congress', '', '', 'PCSC', 'Paul Inventado', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1152, 97053856, 'PT007', 'Incorporation of WordNet Features to N-gram Features', '', '22nd Pacific Asia Conference on Language', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1153, 97053856, 'PT007', 'Filipiniana.NET: Supporting Community Research Activities within an Indexed Digital library', '', 'IEEE 2007 International Workshop on Web 2.0 and Multimedia-enabled Education (W2ME)', '', '', 'IEEE', 'Danny Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1154, 97053856, 'PT007', 'Incorporation of WordNet Features to N-gram Features in a Language Modeler', '', '4th National Natural Language Processing Research Symposium', '', '', 'DLSU', 'Kathleen Go', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1155, 97053856, 'PT007', 'An Example-Based Morphological Analyzer for Filipino Language', '', '1st World Congress on the Power of Language: Theory', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1156, 97053856, 'PT007', 'Use of the WordFrame Model in Learning Filipino Morphological Process', '', 'NLP Symposium', '', '', 'DLSU', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1157, 97053856, 'PT007', 'Use of the WordFrame Model in Learning Filipino Morphological Process', '', 'S&T Congress', '', '', 'DLSU', 'Charibeth Cheng', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1158, 97053856, 'PT007', 'Integrating Pedestrian Locomotion Classifiers to Improve Intertial Navigation System', '', 'HNICEM 2014', '', '', 'IEEE', 'Courtney Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1159, 97053856, 'PT007', 'Building a Sentiment Corpus using a Gamified Framework', '', 'HNICEM 2014', '', '', 'IEEE', 'Thomas James Tiam-Lee', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1160, 97053856, 'PT007', 'Automatic Rating of Movies using an Arousal Curve Extracted from Video features', '', 'HNICEM 2014', '', '', 'IEEE', 'Daniel Stanley Tan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1161, 97053856, 'PT007', 'A Comparison of Sounds Produced by People with and without Hearing Impairment using an Acoustic-to-Articulatory Inversion Model for the Creation of a Visual Articulatory Feedback System', '', 'PCSC 2014', '', '', 'PCSC', 'Natalie Agustin', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1162, 97053856, 'PT007', 'Building an Agreement-Objection Corpus using a Gamified Framework', '', 'PCSC 2014', '', '', 'PCSC', 'Thomas James Tiam-Lee', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1163, 97053856, 'PT007', 'Using machine learning to detect pedestrian locomotion from sensor-based data', '', 'PCSC 2014', '', '', 'PCSC', 'Courtney Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1164, 97053856, 'PT007', 'Integrating Pedestrian Locomotion Classifiers to Improve Inertial Navigation Systems', '', 'PECCS 2015', '', '', 'IEEE', 'Courtney Ngo', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1165, 97053856, 'PT011', '', '', '', 'Machine Learning Summer School 2009', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Cambridge UK', '', 2, 2),
(1166, 97053856, 'PT011', '', '', '', 'Language', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1167, 20143558, 'PT007', 'Barriers to Technlogical Adoption (A work in progress)', 'none', '6th International Conference on Humaoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1168, 20143558, 'PT007', 'Technological Attributes That Influence RFID Adoption in Logistics Organizational (A Work in Progress)', 'none', 'DLSU Research Congress 2014', '', '', '', 'Loreto V. Sibayan II', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1169, 97054038, 'PT008', '', 'The Alignment of Information Technology Education  Degree Programs in the Philippines to Emerging Ri', '', '', '', '', 'Sipin', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1170, 97054038, 'PT008', '', 'Training Ad Builders to Use Rich media Advertising Tools through Fading Worked Examples ', '', '', '', '', 'Espiritu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1171, 97054038, 'PT008', '', 'Preparing Information Technology Undergraduate Students for the Emerging Nature of Work ', '', '', '', '', 'Malabanan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1172, 97054038, 'PT008', '', 'Dissecting Personal Informatics', '', '', '', '', 'Malabanan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1173, 97054038, 'PT008', '', 'Understanding of the BSIT Program of Participating HEI Educators in the Phils', '', '', '', '', 'Malabanan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1174, 97054038, 'PT011', '', '', '', 'Google Analytics', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Taguig', '', 2, 2),
(1175, 97054038, 'PT011', '', '', '', 'BPM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'AIM. MAKATI', '', 2, 2),
(1176, 97053848, 'PT001', 'Cluster-Based Predictive Modeling to Improve Pedagogic Reasoning', '', '', '', 'Computers in Human Behavior', 'none', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1177, 97053848, 'PT001', 'A Category-Based Framework of a Self-Improving Instructional Planner', '', '', '', 'Transactions of the Japanese Society for Artificial Intelligence', 'none', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1178, 97053848, 'PT001', 'Intention-based Diagnosis of Novice C Programmer Errors in a Web-based Tutoring System', '', '', '', 'Journal of Research in Science', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1179, 97053848, 'PT001', 'The Promise of ICTs in Asia: Key Trends and Issues', '', '', '', '', 'Jimoondang', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1180, 97053848, 'PT001', 'Developing Useful Computer Applications for Today’s World: Fundamentals of Objected Oriented Application Development', '', '', '', '', 'Phoenix', 'R. Sison', 0, '', '', '', '', 1, '', '', 'Quezon City', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1181, 97053848, 'PT008', '', 'ICT Adoption in Asia: Experiences and Insights', '', '', 'he Promise of ICTs in Asia: Key Trends and Issues', 'Jimoondang', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1182, 97053848, 'PT008', '', 'ICT and Indigenous Communities: A Philippine Case Study Using PGIS in Ancestral Domain Delineation', '', '', 'he Promise of ICTs in Asia: Key Trends and Issues', 'Jimoondang', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1183, 97053848, 'PT007', 'Cluster-Based Predictive Modeling for Coarse-Grained Pedagogic Reasoning', '', 'Cognition and Exploratory Learning in the Digital Age (CELDA 2005)', '', '', 'IEEE Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1184, 97053848, 'PT007', 'Ontologies for Self-Regulated Learning', '', 'Thirteenth International Conference on Computers in Education (ICCE 2005)', '', '', 'IOS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1185, 97053848, 'PT007', 'Personal Software Process (PSP) Assistant', '', 'Twelfth Asia Pacific Conference on Software Engineering (APSEC 2005)', '', '', 'IEEE CS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1186, 97053848, 'PT007', 'Predicting High Level Student Responses Using Conceptual Clustering', '', 'Thirteenth International Conference on Computers in Education (ICCE 2005)', '', '', 'IOS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1187, 97053848, 'PT007', 'Software Practices in Five ASEAN Countries: An Exploratory Study', '', 'Twenty-Eighth International Conference on Software Engineering (ICSE 2006)', '', '', 'ACM Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1188, 97053848, 'PT007', 'Use of Agile Methods and Practices in the Philippines', '', 'Fourteenth Asia Pacific Conference on Software Engineering (APSEC 2007)', '', '', 'IEEE CS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1189, 97053848, 'PT007', 'Automatic Construction of a Bug Library for Object-Oriented Novice Java Programmer Errors', '', 'Ninth International Conference on Intelligent Tutoring Systems (ITS 2008)', '', '', 'Springer', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1190, 97053848, 'PT007', 'Investigating Pair Programming in a Software Engineering Course in an Asian Setting', '', 'Fifteenth Asia Pacific Conference on Software Engineering (APSEC 2008)', '', '', 'IEEE CS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1191, 97053848, 'PT007', 'Investigating the Effect of Pair Programming and Software Size on Software Quality and Programmer Productivity', '', 'Sixteenth Asia Pacific Conference on Software Engineering (APSEC 2009)', '', '', 'IEEE CS Press', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1192, 97053848, 'PT008', '', 'A Case-Based Reasoning Approach to Providing Feedback to Novice Programmers', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1193, 97053848, 'PT008', '', 'Toward a Scholarship of Teaching and Learning Framework for De La Salle University', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1194, 97053848, 'PT008', '', 'Development of a Boxing Audio Game for the Visually Impaired', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1195, 97053848, 'PT008', '', 'Strategic Planning in Higher Education:  Collaborative', '', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1196, 97053848, 'PT008', '', 'Applying Latent Semantic Analysis to Classifying Relevance of Forum Messages Using Small-Sized Corpo', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1197, 97053848, 'PT008', '', 'On the Capability Maturity Model Integration (CMMI) and Software SMEs in the Philippines', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, 'Paper presented in conference', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1198, 97053848, 'PT008', '', 'Web-Based Expert System for Canine Disease Diagnostic and Treatment Support', '', '', '', '', 'R.Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1199, 97053848, 'PT008', '', 'Using Machine Learning to Model Student''s Knowledge', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1200, 97053848, 'PT008', '', 'Automated Support for the Personal Software Process', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1201, 97053848, 'PT008', '', 'Using Cosine Similarity Measures for Clustering Novice Object Oriented Programming Errors', '', '', '', '', 'R.Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1202, 97053848, 'PT008', '', 'Explanation Patterns of Knowledge Level Errors in Novice Prolog Programming', '', '', '', '', 'R. Sison', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1203, 97053848, 'PT011', '', '', '', 'ASEAN University Network (AUN) Quality Assurance Trainng Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Diamond Hotel', '', 2, 2),
(1204, 97053848, 'PT011', '', '', '', 'ASEAN University Network (AUN) Quality Assurance Training Course for Accomplishing Programme Assessm', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Pullman Bangkok Power Hotel', '', 2, 2),
(1205, 20141009, 'PT001', 'A multimodal emotion corpus for Filipino and its uses ', '', '', '', 'Journal on Multimodal User Interfaces', '', 'Cu', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1206, 20141009, 'PT007', 'Modeling Spontaneous Affect Using Continuous Data ', '', '', '', 'Philippine Computing Journal', '', 'Solomon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1207, 20141009, 'PT008', '', 'Modeling Blended Emotions in Spontaneous Filipino Laughter through Facial Expression Analysis', '', '', '', '', 'Solomon', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1208, 20141009, 'PT011', '', '', '', 'Lasallian Pedagogical Framework/Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(1209, 20141009, 'PT011', '', '', '', 'Spirituality and Ethics for Lasallian Learning Leaders', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University', '', 2, 2),
(1210, 20141009, 'PT011', '', '', '', 'The Bluemix Challenge Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'IBM Innovation Center', '', 2, 2),
(1211, 20141769, 'PT007', 'Automatic Rating of Movies Using An Arousal Curve Extracted from Video Features', '', 'HNICEM 2014', 'none', '', 'IEEE', 'Daniel Stanley Tan', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1212, 20141769, 'PT011', '', '', '', 'RivanIT CCNA+ Juniper Training', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Quiapo', '', 2, 2),
(1213, 20141769, 'PT011', '', '', '', 'HNICEM 2014', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Puerto Princessa', '', 2, 2),
(1214, 20141769, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1215, 20141769, 'PT011', '', '', '', 'Teaching for Meaning and Understanding', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1216, 20141769, 'PT011', '', '', '', 'Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1217, 20141769, 'PT011', '', '', '', 'LGP for Rheims Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1218, 20141769, 'PT011', '', '', '', 'St. La Salle As A Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1219, 20141769, 'PT011', '', '', '', 'LSPO Vaugirard Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1220, 20141769, 'PT011', '', '', '', 'Curriculum Planning and Syllabi Design for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1221, 20141769, 'PT011', '', '', '', 'Principles of Teaching for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1222, 20141769, 'PT011', '', '', '', 'The Art of Questioning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1223, 20141769, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1224, 20141769, 'PT011', '', '', '', 'Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1225, 20141769, 'PT011', '', '', '', 'Managing the Transformative Learning Classroom', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1226, 20141769, 'PT011', '', '', '', 'The Ministry of Teaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1227, 20141769, 'PT011', '', '', '', 'Service Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1228, 20141769, 'PT011', '', '', '', 'Spirituality and Ethics for Lasallian Learning Leaders', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1229, 20141769, 'PT011', '', '', '', 'Research in a Learner- centered Research University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2);
INSERT INTO `publication` (`PUB_CODE`, `FID`, `PUB_TYPE`, `PAPER_TITLE`, `WORK_TITLE`, `CONF_TITLE`, `SEMINAR_TITLE`, `JOURNAL`, `PUBLISHER`, `AUTHOR`, `VOLUME_NO`, `ISSUE_NO`, `ISBN`, `PATENT_NO`, `PAGES`, `PUBLICATION_TYPE`, `OUTPUT_TYPE`, `PAPER_TYPE`, `PLACE_PUBLICATION`, `DATE_PUBLICATION`, `START_DATE`, `END_DATE`, `ISSUING_COUNTRY`, `EDITORS`, `PUBLISHED_IN`, `VENUE_PERFORMANCE`, `REMARKS`, `LOCAL`, `CO_AUTHOR`) VALUES
(1230, 97053953, 'PT007', 'Extending Student Information Systems to the Mobile End for Empowering Stakeholders', '', '2011 DLSU RESEARCH CONGRESS (ISSNL 2011-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1231, 97053953, 'PT007', 'DOST-SMART. Department of Science and Technology-System for Managing Training', '', '2012 DLSU RESEARCH CONGRESS (ISSNL 2012-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1232, 97053953, 'PT007', 'Generic University Information System: Empowering the State Universities and Colleges', '', '2012 DLSU RESEARCH CONGRESS (ISSNL 2012-3477)', '', '', 'DLSU', 'Marivic Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1233, 97053953, 'PT007', 'Child Health: Project Child Immunity', '', '2013 DLSU RESEARCH CONGRESS (ISSNL 2013-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1234, 97053953, 'PT007', 'Crime Intelligence System', '', '2013 DLSU RESEARCH CONGRESS (ISSNL 2013-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1235, 97053953, 'PT007', 'Department of Public Works and Highways Trouble Ticketing System', '', '2013 DLSU RESEARCH CONGRESS (ISSNL 2013-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1236, 97053953, 'PT007', 'Sagip Nanay: Maternal Health and Mortality Disaster Risk Reduction Management', '', '2013 DLSU RESEARCH CONGRESS (ISSNL 2013-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1237, 97053953, 'PT007', 'Marketing Information Management System', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2014-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1238, 97053953, 'PT007', 'My Cancer Health Manager', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2014-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1239, 97053953, 'PT007', 'Personal Health Management System for Diabetics', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2014-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1240, 97053953, 'PT007', 'The MainMan', '', '2015 DLSU RESEARCH CONGRESS (ISSNL 2015-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1241, 97053953, 'PT007', 'DiabeSys', '', '2014 DLSU RESEARCH CONGRESS (ISSNL 2014-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1242, 97053953, 'PT007', 'Museo Ilocos Norte Information System: A Cultural Resource Management Study', '', '2015 DLSU RESEARCH CONGRESS (ISSNL 2015-3477)', '', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1243, 97053953, 'PT007', 'Bridging the Gap Between Special Needs Population and CBDRM', '', '2015 DLSU RESEARCH CONGRESS (ISSNL 2015-3477)', 'none', '', 'DLSU', 'Marivic S. Tangkeko', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1244, 97053953, 'PT011', '', '', '', 'Shifting Philippines towrds the Digital Economy (Business Process Management)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'AIM Conference Center', '', 2, 2),
(1245, 97053953, 'PT011', '', '', '', 'Business Process Continuous ImprovementUsing Lean Six Sigmawith Yellow Belt Certification', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Phoenix One- Makati', '', 2, 2),
(1246, 97053953, 'PT011', '', '', '', 'ITIL v3 2011 Edition Foundation Workshop with Certification', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Phoenix One- Makati', '', 2, 2),
(1247, 20141890, 'PT011', '', '', '', 'HNICEM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Puerto Prinsesa', '', 2, 2),
(1248, 20141890, 'PT011', '', '', '', 'Charism of a Lasallian Educator (Br. Mike Valenzuela)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1249, 20141890, 'PT011', '', '', '', 'Teaching for Meaning and Understanding', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1250, 20141890, 'PT011', '', '', '', 'Philosophies and Pedagogical Frameworks of Education', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1251, 20141890, 'PT011', '', '', '', 'LGP for Rheims Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1252, 20141890, 'PT011', '', '', '', 'St. La Salle As A Teacher', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1253, 20141890, 'PT011', '', '', '', 'LSPO Vaugirard Experience', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1254, 20141890, 'PT011', '', '', '', 'Curriculum Planning and Syllabi Design for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1255, 20141890, 'PT011', '', '', '', 'Principles of Teaching for Transformative Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1256, 20141890, 'PT011', '', '', '', 'The Art of Questioning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1257, 20141890, 'PT011', '', '', '', 'Authentic Assessment', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1258, 20141890, 'PT011', '', '', '', 'Technology Integration for Meaningful Teaching and Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1259, 20141890, 'PT011', '', '', '', 'Managing the Transformative Learning Classroom', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1260, 20141890, 'PT011', '', '', '', 'The Ministry of Teaching', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1261, 20141890, 'PT011', '', '', '', 'Service Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1262, 20141890, 'PT011', '', '', '', 'Spirituality and Ethics for Lasallian Learning Leaders', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1263, 20141890, 'PT011', '', '', '', 'Research in a Learner- centered Research University', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Manila', '', 2, 2),
(1264, 97079669, 'PT004', 'CyberSmart ICT Series: Little Clicker Book 1', '', '', '', '', 'Vibal Publishing House', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1265, 97079669, 'PT004', 'CyberSmart ICT Series: Digital Painter Book 2', '', '', '', '', 'Vibal Publishing House', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1266, 97079669, 'PT004', 'CyberSmart ICT Series: Techno Kid Book 3', '', '', '', '', 'Vibal Publishing House', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1267, 97079669, 'PT001', '', 'e-Participation in Legislative Practices: Lessons from the Philippines', 'none', '', 'Information & Communications Technology in the Philippines: Conte', 'De La Salle University Publishing House', 'Sherwin Ona and Estefanie Ulit', 0, 'none', 'ISBN 978-971-555-606-4', 'none', '75-92', 1, 'none', 'none', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1268, 97079669, 'PT001', '', 'The Philippines: The Quest for Genuine e-Development ', 'none', '', 'National Strategies to Harness Information Technology: Seeking Tr', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1269, 97079669, 'PT007', 'Taya-Kilos Volunteer Management System', '', 'Proceedings of the 2014 DLSU Science & Technology Congress', '', '', 'De La Salle University – Manila', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1270, 97079669, 'PT007', 'PARAGON e-Participation System: Utilizing ICT in the Philippine Legislation', '', 'Proceedings of the 2012 DLSU Science & Technology Congress', '', '', 'De La Salle University – Manila', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1271, 97079669, 'PT007', 'Collaboration through e-Participation in Philippine Legislation', '', 'Proceedings of the IADIS International Conference on Internet Technologies & Society 2011 (ITS)', '', '', 'International Association for Development of the Information Society', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1272, 97079669, 'PT007', 'Online Collaboration in e-Participation', '', 'Proceedings of the 2011 DLSU Science & Technology Congress', '', '', 'De La Salle University – Manila', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1273, 97079669, 'PT007', 'E- Portfolio Development Methodology and Evaluation Criteria for Instructional Media Classes', '', 'Proceedings of TIC 2010', '', '', 'Tunku Abdul Rahman College (Malaysia)', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1274, 97079669, 'PT007', 'Digital Portfolio Development And Evaluation For Instructional Media Classes', '', 'Proceedings of Touchpoint 2010', '', '', 'De La Salle University – Manila', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1275, 97079669, 'PT007', 'My Pregnancy Gem: A Guide for Expecting Mothers', '', 'Proceedings of the 2006 DLSU Science & Technology Congress', '', '', 'De La Salle University – Manila', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1276, 97079669, 'PT008', '', 'Exploring the Emerging Impacts of Open Data in Developing Countries', '', '', '', '', 'Ona', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1277, 97079669, 'PT008', '', 'Multimedia Learning: A Courseware Project for a De La Salle Philippines Institution', '', '', '', '', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1278, 97079669, 'PT008', '', 'Multimedia Learning: A Courseware Project for a De La Salle Philippines Institution (poster presenta', '', '', '', '', 'Ulit', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1279, 97079669, 'PT011', '', '', '', 'Academic Leadership Development Program', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', 'none', 2, 2),
(1280, 97079669, 'PT011', '', '', '', 'Toward Student-Centered Learning: Echo Seminar (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', 'none', 2, 2),
(1281, 97079669, 'PT011', '', '', '', 'Case Teaching Workshop', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Asian Institute of Management', '', 2, 2),
(1282, 97079669, 'PT011', '', '', '', 'Toward Student-Centered Learning', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Asian Institute of Management', '', 2, 2),
(1283, 97079669, 'PT011', '', '', '', 'Technology and Emergency Management', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1284, 97079669, 'PT011', '', '', '', 'Open Government Summit (session moderator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'PICC', '', 2, 2),
(1285, 97079669, 'PT011', '', '', '', 'E-Participation on Parliamentary Democracy: Round-table Discussion', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Institute of Informatics and Development (IID)', '', 2, 2),
(1286, 97079669, 'PT011', '', '', '', 'Next Generation of Teachers'' Conference', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Skylight Convention Center', '', 2, 2),
(1287, 97079669, 'PT011', '', '', '', 'CCS-CED Research Symposium on MHCC and DRMM', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1288, 97079669, 'PT011', '', '', '', 'Research Symposium with Tajikistan Delegates (presenter)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1289, 97079669, 'PT011', '', '', '', 'Multimedia Pecha Kucha (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1290, 97079669, 'PT011', '', '', '', 'Graduate Studies Research Symposium (presenter)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1291, 97079669, 'PT011', '', '', '', 'Quo Vadis Pilipinas: Crossroads and Tipping Points', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'SMX Convention Center', '', 2, 2),
(1292, 97079669, 'PT011', '', '', '', 'Effective Presentation Skills (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1293, 97079669, 'PT011', '', '', '', 'Teaching 2.0 (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1294, 97079669, 'PT011', '', '', '', 'Faculty Development Training Program', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1295, 97079669, 'PT011', '', '', '', 'Corporate Website Design (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1296, 97079669, 'PT011', '', '', '', 'DLSU Arts Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1297, 97079669, 'PT011', '', '', '', '9th Science & Technology Congress', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1298, 97079669, 'PT011', '', '', '', 'CEC MS Access Seminar (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1299, 97079669, 'PT011', '', '', '', 'LEAP: Adobe Photoshop Seminar (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1300, 97079669, 'PT011', '', '', '', 'Emerging Technologies for the Philippines 2020', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'Renaissance Hotel', '', 2, 2),
(1301, 97079669, 'PT011', '', '', '', 'E-Teaching Skills', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1302, 97079669, 'PT011', '', '', '', 'CSO Publicity & Marketing Flash Seminar (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1303, 97079669, 'PT011', '', '', '', 'MUMEDIA Macromedia Flash Seminar (facilitator)', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1304, 97079669, 'PT011', '', '', '', 'Summer Camp 2005: Adobe Photoshop Seminar', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', 'De La Salle University - Manila', '', 2, 2),
(1305, 97054097, 'PT007', 'MMIPSS: Mobile-based MIPS64 Simulator', '', 'Proceedings to the 15th Philippine Computing Science Congress ', '', '', 'Computing Society of the Philippines', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1306, 97054097, 'PT007', 'Beyond Multi-Core: A Survey of Architectural Innovations on Microprocessor', '', '2014 International Conference on Humanoid', '', '', '', '', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1307, 97054097, 'PT007', 'Alternative Feature Extraction from Digitized Images of Dye Solutions as a Model for Algal Bloom Remote Sensing', '', 'The 6th International Conference on Advanced Computer Science and Information Systems (ICACSIS 2014)', '', '', 'IEEE Indonesia', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1308, 97054097, 'PT007', 'Optimizing Cost Function of Histogram of Oriented Gradient-based INRIA Dataset', '', 'Proceedings to the 14th Philippine Computing Science Congress ', '', '', 'Computing Society of the Philippines', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1309, 97054097, 'PT007', 'Demystifying Ivy Bridge Microarchitecture', '', 'DLSU Research Congress 2013', '', '', 'De La Salle University', 'Roger Luis Uy', 0, '', '', '', 'CD', 1, '', '', 'Manila', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1310, 97054097, 'PT007', 'DARC2: DLX Simulator2', '', 'Proceedings to the 7th Science & Technology Congress', '', '', 'De La Salle University', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1311, 97054097, 'PT007', 'C ILP Compiler for MIPS64 ISA', '', 'Proceedings to the 6th Philippine Computing Science Congress ', '', '', 'Computing Society of the Philippines', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2),
(1312, 97054097, 'PT007', 'CALI86: Computer Assembly Language Illustrator for x86 Architecture', '', 'Proceedings to the 5th Philippine Computing Science Congress ', '', '', 'Computing Society of the Philippines', 'Roger Luis Uy', 0, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', 'PHL', '', '', '', '', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `publication_type`
--

CREATE TABLE IF NOT EXISTS `publication_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PT_ID` varchar(5) NOT NULL,
  `PT_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`PT_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `publication_type`
--

INSERT INTO `publication_type` (`id`, `PT_ID`, `PT_TITLE`) VALUES
(1, 'PT001', 'Journal'),
(2, 'PT002', 'Prototype'),
(3, 'PT003', 'Patent'),
(4, 'PT004', 'Book'),
(5, 'PT005', 'Textbook'),
(6, 'PT006', 'Chapter'),
(7, 'PT007', 'Conference'),
(8, 'PT008', 'Other Published'),
(9, 'PT009', 'Screen Play'),
(10, 'PT010', 'Other Research'),
(11, 'PT011', 'Seminars');

-- --------------------------------------------------------

--
-- Table structure for table `pub_local`
--

CREATE TABLE IF NOT EXISTS `pub_local` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pub_local`
--

INSERT INTO `pub_local` (`id`, `local_type`) VALUES
(1, ' N/A'),
(2, 'Local'),
(3, 'International');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_code` varchar(25) NOT NULL,
  `rank_title` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rank_code` (`rank_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank_code`, `rank_title`) VALUES
(1, ' N/A', '  N/A'),
(2, 'AP1', 'Assistant Professor 1'),
(3, 'AP2', 'Assistant Professor 2'),
(4, 'AP3', 'Assistant Professor 3'),
(5, 'L1', 'Lecturer 1'),
(6, 'L2', 'Lecturer 2'),
(8, 'L3', 'Lecturer 3'),
(9, 'AP4', 'Assistant Professor 4'),
(10, 'AP5', 'Assistant Professor 5'),
(11, 'AP6', 'Assistant Professor 6'),
(12, 'I1', 'Instructor 1'),
(13, 'I2', 'Instructor 2'),
(14, 'I3', 'Instructor 3'),
(15, 'I4', 'Instructor 4'),
(16, 'I5', 'Instructor 5'),
(17, 'I6', 'Instructor 6'),
(18, 'I7', 'Instructor 7'),
(19, 'I8', 'Instructor 8'),
(20, 'TEAASSOC', 'Teaching Associate'),
(22, 'L4', 'Lecturer 4'),
(23, 'L5', 'Lecturer 5'),
(24, 'L6', 'Lecturer 6'),
(25, 'L7', 'Lecturer 7'),
(26, 'L8', 'Lecturer 8'),
(27, 'AP7', 'Assistant Professor 7'),
(28, 'APL1', 'Asst. Prof. Lec. 1'),
(29, 'APL2', 'Asst. Prof. Lec. 2'),
(30, 'APL3', 'Asst. Prof. Lec. 3'),
(31, 'APL4', 'Asst. Prof. Lec. 4'),
(32, 'APL5', 'Asst. Prof. Lec. 5'),
(33, 'APL6', 'Asst. Prof. Lec. 6'),
(34, 'APL7', 'Asst. Prof. Lec. 7'),
(35, 'ASSOCP1', 'Associate Professor 1'),
(36, 'ASSOCP2', 'Associate Professor 2'),
(37, 'ASSOCP3', 'Associate Professor 3'),
(38, 'ASSOCP4', 'Associate Professor 4'),
(39, 'ASSOCP5', 'Associate Professor 5'),
(40, 'ASSOCP6', 'Associate Professor 6'),
(41, 'ASSOCP7', 'Associate Professor 7'),
(42, 'ASSOCPL1', 'Asso. Prof. Lec. 1'),
(43, 'ASSOCPL2', 'Asso. Prof. Lec. 2'),
(44, 'ASSOCPL3', 'Asso. Prof. Lec. 3'),
(45, 'ASSOCPL4', 'Asso. Prof. Lec. 4'),
(46, 'ASSOCPL5', 'Asso. Prof. Lec. 5'),
(47, 'ASSOCPL7', 'Asso. Prof. Lec. 7'),
(48, 'FP1', 'Full Professor 1'),
(49, 'FP2', 'Full Professor 2'),
(50, 'FP3', 'Full Professor 3'),
(51, 'FP4', 'Full Professor 4'),
(52, 'FP5', 'Full Professor 5'),
(53, 'FP6', 'Full Professor 6'),
(54, 'FP7', 'Full Professor 7'),
(55, 'FP8', 'Full Professor 8'),
(56, 'FP9', 'Full Professor 9'),
(57, 'FP10', 'Full Professor 10'),
(58, 'PL1', 'Professorial Lec. 1'),
(59, 'PL2', 'Professorial Lec. 2'),
(60, 'PL3', 'Professorial Lec. 3'),
(61, 'PL4', 'Professorial Lec. 4'),
(62, 'PL5', 'Professorial Lec. 5'),
(63, 'PL6', 'Professional Lecturer'),
(64, 'PL7', 'Senior Professional Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `research_external`
--

CREATE TABLE IF NOT EXISTS `research_external` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FAGENCY` varchar(45) DEFAULT NULL,
  `CURRENCY` int(11) DEFAULT NULL,
  `AMOUNT` float(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resext_fid` (`FID`),
  KEY `fk_resext_fagency` (`FAGENCY`),
  KEY `CURRENCY` (`CURRENCY`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `research_external`
--

INSERT INTO `research_external` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FAGENCY`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97049336, 'GetBetter Telediagnosis system', 'External', 'Funded', 'WHO-TDR (Geneva)', 3, 40000.00, '0000-00-00', '2015'),
(2, 97049344, 'PhD Scholarship', 'External', 'Funded', 'Department of Science and Technology (DOST)', 2, 0.00, '0000-00-00', '2014'),
(3, 97033235, 'Hybrid Machine Translation ', 'External', 'Funded', 'PCASTRD', 2, 0.00, '0000-00-00', ''),
(4, 97033235, 'eParticipation/eLegislation', 'External', 'Funded', 'IDRC - Funding managed by ideacorp', 2, 2.00, '0000-00-00', '2011'),
(5, 97033235, '(Proposal Stage) ISIP 2 Project: Filipino Style Checker', 'External', 'Funded', 'PCIEERD', 2, 0.00, '0000-00-00', ''),
(6, 97090638, 'Developing an Adaptive Music-based Affect Model for a Self-improving ambient intelligent empathic sp', 'External', 'Funded', 'DOST-PCIEERD', 2, 416246.00, '0000-00-00', '2010'),
(7, 97090638, 'Ghost in the Machine', 'External', 'Funded', 'Anino Mobile', 2, 0.00, '0000-00-00', '2008'),
(8, 97090638, 'ASEAN Quest', 'External', 'Funded', 'ASEAN Foundation', 2, 0.00, '0000-00-00', '2007'),
(9, 97090638, 'Doctoral student scholarship', 'External', 'Funded', 'Ministry of Education', 2, 0.00, '0000-00-00', ''),
(10, 97090638, 'Research student', 'External', 'Funded', 'Ministry of Education', 2, 0.00, '0000-00-00', ''),
(11, 97031925, 'AseanMT-Phil (the Philippine Component of the Asean Machine Translation Project): A Hybrid Bi-direct', 'External', 'Funded', 'CHED', 2, 0.00, '0000-00-00', ''),
(12, 97031925, 'Developing a Natural Language Processing/Data Mining Application for eLegislation', 'External', 'Funded', 'IDRC', 2, 0.00, '0000-00-00', ''),
(13, 97031925, 'Hybrid English-Filipino Machine Translation System ', 'External', 'Funded', 'PCASTRD-DOST', 2, 0.00, '0000-00-00', ''),
(14, 97031925, 'Faculty Development Fund (Scholarship for Ph.D. in CS)', 'External', 'Funded', 'DLSU (Faculty Development Fund)', 2, 0.00, '0000-00-00', 'present'),
(15, 97031925, '8th National Natural Language Processing Symposium', 'External', 'Funded', 'DLSU (Faculty development Fund)', 2, 0.00, '0000-00-00', 'November 14 201'),
(16, 97031925, 'Workshop on Computation: Theory and Practice', 'External', 'Funded', 'DLSU (Faculty development Fund)', 2, 0.00, '0000-00-00', 'Sept 5 2011'),
(17, 97031925, '1st International Conference on Heritage/Community Languages', 'External', 'Funded', 'DLSU (Faculty development Fund)', 2, 0.00, '0000-00-00', 'Feb 23 2010'),
(18, 97031925, '7th Workshop on Asian Language Resources', 'External', 'Funded', 'DLSU (Faculty development Fund)', 2, 0.00, '0000-00-00', 'August 7 2009'),
(19, 97031925, '1st International Conference on Filipino as a Global Language', 'External', 'Funded', 'DLSU (Faculty development Fund)', 2, 0.00, '0000-00-00', 'March 20 2008'),
(20, 97031925, '2nd Workshop on Democratic eGovernance', 'External', 'Funded', 'IDRC', 2, 0.00, '0000-00-00', 'Sept 13 2008'),
(21, 97031925, 'ACM Federated Computing Research Conference Educator''s Travel Grant Program', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(22, 97020087, 'Open Source Mobile Application Distribution Service on  a Social Network', 'External', 'Funded', 'DOST-PCASTRD', 2, 498510.00, '0000-00-00', '2010'),
(23, 20123647, 'Open Data PH', 'External', 'Funded', 'World Wide Web Foundation', 2, 1800000.00, '0000-00-00', '0'),
(24, 20123647, 'Master''s Degree', 'External', 'Funded', 'Graduate Office of Admissions and Scholarship', 2, 0.00, '0000-00-00', ''),
(25, 97042498, 'Research Attachment Program', 'External', 'Funded', 'The Hong Kong Polytechnic University', 2, 0.00, '0000-00-00', 'Nov  14 2009'),
(26, 97042498, 'The School of Asian Applied Natural Language Processing for Linguistics Diversity and Language Resou', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(27, 97042498, 'Federated Computing Research Conference (FCRC) 2007', 'External', 'Funded', 'ACM', 2, 0.00, '0000-00-00', 'Jun 16 2007'),
(28, 97088897, 'Development of a Parameter-Based Voice Enhancement Device for Next Generation Networking', 'External', 'Funded', 'Engineering Research and Development for Tech', 2, 0.00, '0000-00-00', 'Oct-10'),
(29, 97088897, 'A Simple Electronic Stethoscope – Software System in the Identification/Auscultation of Pulmonary Pa', 'External', 'Funded', 'DLSU-University Research Coordinating Office', 2, 0.00, '0000-00-00', 'Jun-13'),
(30, 97088897, 'Research Immersion/Training grant to the Katholieke Universiteit Leuven', 'External', 'Funded', 'Philippine Council for Industry', 2, 0.00, '0000-00-00', ''),
(31, 97031909, 'Development of a Scalable Computing System for an Ambient Intelligent Empathic Space Project', 'External', 'Funded', 'Department of Science and Technology', 2, 2225104.00, '0000-00-00', '2012'),
(32, 97014753, 'An Adaptive Multimodal Affect Recognition System in an Empathic Space', 'External', 'Funded', 'DOST-PCIEERD', 2, 3340080.00, '0000-00-00', '2012'),
(33, 97014753, 'Investigating the Emotions of Filipino Learners based on Face', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(34, 97063932, 'Dynamic Web Site for Evangelion Foundation', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(35, 97091219, 'AseanMT-Phil (the Philippine Component of the Asean Machine Translation Project): A Hybrid Bi-direct', 'External', 'Funded', 'Commission on Higher Education', 2, 10000000.00, '0000-00-00', '2015'),
(36, 97091219, 'Corpus-based analysis of Tagalog/Pilipino/Filipino-written Texts', 'External', 'Funded', 'Department of Science and Technology', 2, 288000.00, '0000-00-00', '2012'),
(37, 97091219, 'Researcher Links Travel Grant', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(38, 97091219, 'Dissertation Grant', 'Grants', 'Funded', 'De La Salle University', 2, 0.00, '0000-00-00', '2012'),
(39, 97091219, 'Engineering Research and Development for Technolgy (ERDT) Ph.D. Scholarship', 'External', 'Funded', 'Department of Science and Technology', 2, 0.00, '0000-00-00', '2011'),
(40, 97091219, 'Faculty Development Grant for M.S. Studies', 'External', 'Funded', 'De La Salle University', 2, 0.00, '0000-00-00', '2008'),
(41, 20133707, 'ERDT Scholarship', 'External', 'Funded', 'Department of Science and Technology - Engine', 2, 0.00, '0000-00-00', 'Apr-14'),
(42, 97020095, 'Hybrid Machine Translation System', 'External', 'Funded', 'DOST-PCASTRD', 2, 4647498.00, '0000-00-00', '2009'),
(43, 97020095, 'Laboratory Immersion in Institut de Recherche en Informatique de Toulouse (IRIT)', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(44, 97053139, 'Project Management', 'External', 'Funded', 'Sun Life Philippines Employees’ Multi-Purpose', 2, 0.00, '0000-00-00', '2005'),
(45, 97028304, 'Human-Computer Interaction and Software Engineering', 'External', 'Funded', 'DOST-ESEP', 2, 0.00, '0000-00-00', '1996'),
(46, 97028304, 'Research Assistant', 'External', 'Funded', 'National University of Singapore', 2, 0.00, '0000-00-00', '2001'),
(47, 97028304, 'Post MS Research', 'External', 'Funded', 'DOST-ESEP', 2, 0.00, '0000-00-00', ''),
(48, 20141718, 'DOST-ERDT Scholarship', 'External', 'Funded', 'DOST-ERDT', 2, 0.00, '0000-00-00', 'Apr-14'),
(49, 97026050, 'Faculty Development Program  (MS Degree Study Grant)', 'External', 'Funded', 'De La Salle University', 2, 0.00, '0000-00-00', '2012'),
(50, 97015512, 'Grant for Aerial Dynamic Assessment Robot for National Advancement (ADARNA) project that aims to imp', 'External', 'Funded', 'IBM', 2, 0.00, '0000-00-00', '2011'),
(51, 97049212, 'Mobile and Web Portal for Processing Community-Based Monitoring System (CBMS) Data', 'External', 'Funded', 'Angelo King Institute of Economic and Busines', 2, 714000.00, '0000-00-00', 'May-13'),
(52, 97049212, 'Automatic Generation of Children’s Stories', 'External', 'Funded', 'DOST-PCASTRD', 2, 498640.00, '0000-00-00', '2010'),
(53, 97049212, 'A Template-Based English-Filipino Machine Translation System (Year 3)', 'External', 'Funded', 'DOST-PCASTRD', 2, 253485.00, '0000-00-00', 'Feb-08'),
(54, 97049212, 'A Template-Based English-Filipino Machine Translation System (Year 2)', 'External', 'Funded', 'DOST-PCASTRD', 2, 253485.00, '0000-00-00', 'Feb-07'),
(55, 97049212, 'A Template-Based English-Filipino Machine Translation System (Year 1)', 'External', 'Funded', 'DOST-PCASTRD', 2, 323485.00, '0000-00-00', 'Feb-06'),
(56, 97049212, 'The School of Asian Applied Natural Language Processing for Linguistics Diversity and Language Resou', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(57, 97049212, 'Automatic Generation of Children''s Stories', 'External', 'Funded', 'USA National Science Foundation', 2, 0.00, '0000-00-00', 'May-09'),
(58, 97049212, 'Natural Language Processing (ACM Federated Computing Research Conference 2007)', 'External', 'Funded', 'ACM FCRC Educator’s Travel Grant Program', 2, 0.00, '0000-00-00', 'Jun-07'),
(59, 97093017, 'ASEAN-MT (Project 5)', 'External', 'Funded', 'CHED', 2, 1938756.75, '0000-00-00', '2014'),
(60, 97093017, 'Software-Assisted Vulnerability AssessmeNT (SAVANT) Tools for Climate Change in Coastal Communities', 'External', 'Funded', 'CHED PHERNET', 2, 1099379.38, '0000-00-00', '2013'),
(61, 97093017, 'Development of an Online Philippine Corpus: Part II', 'External', 'Funded', 'NCCA', 2, 499950.00, '0000-00-00', '2011'),
(62, 97093017, 'E-Participation', 'External', 'Funded', 'IDRC', 2, 0.00, '0000-00-00', '2010'),
(63, 97093017, 'Pek Chiao Seng of Computer Technology', 'External', 'Funded', 'DLSU', 2, 0.00, '0000-00-00', '2013'),
(64, 97042579, 'PRESIDENTS GRADUATE FELLOWSHIP', 'External', 'Funded', 'National Univeristy of Singapore', 2, 0.00, '0000-00-00', 'present'),
(65, 97064424, 'Utilizing Mobile Devices and Web Technology for Processing CBMS Data', 'External', 'Funded', 'Angelo King Institute - Community Based Monit', 2, 714000.00, '0000-00-00', '2013'),
(66, 97053856, 'Plutopia', 'External', 'Funded', 'ANSA-EAP', 2, 0.00, '0000-00-00', '2010'),
(67, 97053856, 'ASEAN-MT', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(68, 97053856, 'Community Based Monitoring System', 'External', 'Funded', 'AKI-CBMS', 2, 0.00, '0000-00-00', 'present'),
(69, 97053856, 'Globe Virtual Pila', 'External', 'Funded', 'Globe', 2, 0.00, '0000-00-00', '2013'),
(70, 97053856, 'Interactive Storytelling NUS Games Lab', 'External', 'Funded', 'NUS', 2, 0.00, '0000-00-00', '2011'),
(71, 97053856, 'English-Filipino Statistical Machine Translation System', 'External', 'Funded', 'DOST', 2, 0.00, '0000-00-00', '2012'),
(72, 97053856, 'ASEAN-MT', 'External', 'Funded', '', 2, 0.00, '0000-00-00', ''),
(73, 97053856, 'Community Based Monitoring System', 'External', 'Funded', 'AKI-CBMS', 2, 0.00, '0000-00-00', 'present'),
(74, 97053856, 'Globe Virtual Pila', 'External', 'Funded', 'Globe', 2, 0.00, '0000-00-00', '2013'),
(75, 20141009, 'Engineering Research and Development for Technology', 'External', 'Funded', 'Department of Science and Technology', 2, 0.00, '0000-00-00', '2014'),
(76, 97079669, '“Open Government in the Philippines: exploring the role of open government data and the use of new t', 'External', 'Funded', 'World Wide Web Foundation', 2, 36980.00, '0000-00-00', 'Mar-14'),
(77, 97079669, 'DOST Merit Scholarship', 'External', 'Funded', 'Department of Science and Technology', 2, 0.00, '0000-00-00', '2006'),
(78, 97054097, 'Scholarship program for PH.D. Computer Science', 'External', 'Funded', 'De La Salle University', 2, 0.00, '0000-00-00', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `research_internal`
--

CREATE TABLE IF NOT EXISTS `research_internal` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FUNDING_UNIT` varchar(45) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resint_fid` (`FID`),
  KEY `fk_resint_fundunit` (`FUNDING_UNIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `research_internal`
--

INSERT INTO `research_internal` (`RESEARCH_ID`, `FID`, `RESEARCH_TITLE`, `RESEARCH_TYPE`, `FUNDING_TYPE`, `FUNDING_UNIT`, `CURRENCY`, `AMOUNT`, `START_DATE`, `END_DATE`) VALUES
(1, 97014788, 'CCS Process Documentation', 'Funded', 'Internal', 'URCO', 'Php', '18010.00', '0000-00-00', '2012'),
(2, 97049336, 'GetBetter Telediagnosis system', 'Funded', 'Internal', 'WHO-TDR (Geneva)', 'USD', '0.00', '0000-00-00', ''),
(3, 97049344, 'Challenge Grant Project: Investigating the Emotions of High and Average Performing Filipino Math Lea', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(4, 97077763, 'Delivering IT Courses Requiring Network Infrastructure Setup using Hyper-V', 'Funded', 'Internal', 'NA', '', '0.00', '0000-00-00', '2014'),
(5, 97077763, 'Development of a Synthesized Job Placement Program for TIPQC Graduates', 'Funded', 'Internal', 'Technological Institute of the Philippines', '', '0.00', '0000-00-00', '2008'),
(6, 97077763, 'Predictors of Employability of the Graduates of Technological Institute of the Philippines Quezon Ci', 'Funded', 'Internal', 'TIP', '', '0.00', '0000-00-00', '2007'),
(7, 97077763, 'Cisco Networking Academy Program: Its Contribution to the Employability of Computer Engineering Grad', 'Funded', 'Internal', 'TIP', '', '0.00', '0000-00-00', '2006'),
(8, 97077763, 'Problem Encountered by Engineering Dean''s Lister''s in Relation to their Academic Performance', 'Funded', 'Internal', 'TIP', '', '0.00', '0000-00-00', '2005'),
(9, 97033235, 'Challenge Grant', 'Funded', 'Internal', 'VCRI', 'Php', '1.00', '0000-00-00', '2014'),
(10, 97055743, 'A Data Mining Approach to Adaptive Learning in Competitive Environments (Sabbatical)', 'Funded', 'Internal', 'DLSU - URCO', '', '0.00', '0000-00-00', '0'),
(11, 97090638, 'Melody Preference Patterns Modeled Using Machine Learning: Prospects for a New Instrument', 'Funded', 'Internal', 'URCO (Interdisciplinary Research Grant)', 'Php', '47780.00', '0000-00-00', '2013'),
(12, 97090638, 'Heart Rate Emotion Recognition Using Eulerian Video Magnification', 'Funded', 'Internal', 'URCO (New PhD Grant)', '', '100000.00', '0000-00-00', '2014'),
(13, 97090638, 'A Study on Emotion Detection using Rhytmic Content', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '0'),
(14, 97031925, 'Twitter Use During Typhoon Yolanda: Explorin Civic Engagement in Calamities', 'Funded', 'Internal', 'DLSU', 'Php', '0.00', '0000-00-00', ''),
(15, 97031925, 'Towards Providing Meaningful Assessment by Understanding Students'' Attitude on Feedback', 'Funded', 'Internal', 'DLSU', 'Php', '0.00', '0000-00-00', ''),
(16, 97031925, 'A Comparison of Manual and NLP-Supported Discourse Analysis of Twitter-Based Comments on the May 201', 'Funded', 'Internal', 'DLSU', 'Php', '0.00', '0000-00-00', ''),
(17, 97031925, 'Empowering Local Communities through e-Participation: Exploring Tipping Points in DRRM and MHCC thro', 'Funded', 'Internal', 'VCR-Challenge Grant', 'Php', '0.00', '0000-00-00', ''),
(18, 97031925, 'Building an Annotated Corpus of Philippine Political Commentaries for Opinion Summarization', 'Funded', 'Internal', 'DLSU', 'Php', '0.00', '0000-00-00', ''),
(19, 97031925, 'WHIZ: Research Data Portal', 'Funded', 'Internal', 'DLSU-SFA', 'Php', '264394.00', '0000-00-00', 'present'),
(20, 97031925, 'Developing a Natural Language Processing Application for eLegislation', 'Funded', 'Internal', 'DLSU-SFA', 'Php', '0.00', '0000-00-00', ''),
(21, 97031925, 'Building a Databank for Philippine Languages', 'Funded', 'Internal', 'DLSU', '', '0.00', '0000-00-00', 'present'),
(22, 97020087, 'Open Source Mobile Application Distribution Service on  a Social Network', 'Funded', 'Internal', 'URCO', 'Php', '89633.00', '0000-00-00', '2011'),
(23, 97088897, 'A Simple Electronic Stethoscope – Software System in the Identification/Auscultation of Pulmonary Pa', 'Funded', 'Internal', 'DLSU-URCO', 'Php', '0.00', '0000-00-00', ''),
(24, 97031909, 'An Application Programming Interface for the Ambient Intelligent System of the Empathic Space', 'Funded', 'Internal', 'URCO', 'Php', '74490.00', '0000-00-00', '2012'),
(25, 97031909, 'Designing Materials for Emotion Detection Devices', 'Funded', 'Internal', 'URCO', 'Php', '68000.00', '0000-00-00', '2012'),
(26, 97014753, 'Investigating laughter Emotions in Spontaneous Interactions', 'Funded', 'Internal', 'URCO', 'Php', '81000.00', '0000-00-00', '2013'),
(27, 97014753, 'Developing an Empathic', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(28, 97014753, 'Modelling Spontaneous Affect using Dimensional Labels', 'Funded', 'Internal', 'URCO', 'Php', '149002.50', '0000-00-00', '2011'),
(29, 97014753, 'Investigating Emotions in Filipino Laughter', 'Funded', 'Internal', 'URCO', 'Php', '97716.00', '0000-00-00', '2010'),
(30, 97014753, 'Towards the Development of a Multimodal Emotion Corpus', 'Funded', 'Internal', 'URCO', 'Php', '105515.00', '0000-00-00', '2009'),
(31, 97063932, 'Development of the Thesis Coordinator System for Computer Technology Department', 'Funded', 'Internal', 'URCO', 'Php', '0.00', '2010-06-01', '2011-05-11'),
(32, 97091219, 'Climate Change Impacts and Disaster Preparedness: Technologies', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(33, 97091219, 'Parallel Language Resources: English and Filipino', 'Funded', 'Internal', 'University Research Coordination Office (URCO', 'Php', '297000.00', '0000-00-00', '2014'),
(34, 97091219, 'An Intelligent Electronic Stethoscope in the Identification/Auscultation of Pulmunary Pathologies', 'Funded', 'Internal', 'University Research Coordination Office (URCO', 'Php', '101334.00', '0000-00-00', '2013'),
(35, 97020095, 'Information Extraction of Transaction Information from Business News Articles', 'Funded', 'Internal', 'URCO', 'Php', '41291.00', '0000-00-00', '2012'),
(36, 97020095, 'Evaluative and Comparative Question Answering for Business Intelligence', 'Funded', 'Internal', 'URCO', 'Php', '153401.00', '0000-00-00', '2011'),
(37, 97020095, 'Creating a Filipino Lexicon with Subcategorization Frame and Thematic Role', 'Funded', 'Internal', 'URCO', 'Php', '59210.00', '0000-00-00', '2009'),
(38, 97088366, 'Exploring SEPD Legislations and Implications to ICT4E', 'Funded', 'Internal', 'College of Computer Studies- De La Salle Univ', 'Php', '5000.00', '0000-00-00', '2014'),
(39, 97049182, 'A Study to Determine the Impact of Weekend Exercises in Students Learning in the Introductory Progra', 'Funded', 'Internal', 'URCO', 'Php', '20570.00', '0000-00-00', '0'),
(40, 97028304, 'A Course Module on the Concepts and Theories in Human-Computer Interaction', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '1998'),
(41, 97028304, 'Textbook for File Organization', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '1994'),
(42, 97028304, 'Investigating the Emotions of Filipino Learners Based on Face', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(43, 97028304, 'Visualization and Simulation of CBMS Data', 'Funded', 'Internal', 'URCO IR', '', '0.00', '0000-00-00', '0'),
(44, 97015512, 'Voice Narration of Children''s Stories', 'Funded', 'Internal', 'URCO Interdisciplinary research', '', '0.00', '0000-00-00', ''),
(45, 97015512, 'Development', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(46, 97049212, 'Developing a Protocol to Guide Student Inquiry of Database Systems', 'Funded', 'Internal', 'URCO', 'Php', '19050.00', '0000-00-00', 'Apr-15'),
(47, 97049212, 'Modeling the Affect States of Readers when Reading a Story (Interdisciplinary Research)', 'Funded', 'Internal', 'URCO', 'Php', '164800.00', '0000-00-00', 'May-14'),
(48, 97049212, 'Research Program Workshop - Towards 21st Century Literacy (with CED)', 'Funded', 'Internal', 'URCO', 'Php', '200000.00', '0000-00-00', 'May-14'),
(49, 97049212, 'Enhancing an Embodied Conversational Agent with Affective Dialogue Generation', 'Funded', 'Internal', 'URCO', 'Php', '167800.00', '0000-00-00', 'Aug-13'),
(50, 97049212, 'Semantic Knowledge Resources in Generating Children''s Stories', 'Funded', 'Internal', 'URCO', 'Php', '103800.00', '0000-00-00', 'May-13'),
(51, 97049212, 'Research Program Workshop - Developing an Empathic', 'Funded', 'Internal', '', '', '0.00', '0000-00-00', ''),
(52, 97049212, 'Voice Narration of Children''s Story (Interdisciplinary Research)', 'Funded', 'Internal', 'URCO', 'Php', '53910.00', '0000-00-00', 'May-12'),
(53, 97049212, 'Automatic Generation of Children''s Stories', 'Funded', 'Internal', 'URCO', 'Php', '103800.00', '0000-00-00', 'May-11'),
(54, 97041378, 'Ethical Hacking Textbook', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '2012'),
(55, 97041378, 'Virtual Vulnerable Network', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '2006'),
(56, 97093017, 'Augmented Reality Android Application for DLSU Campus Tour', 'Funded', 'Internal', 'URCO', 'Php', '102700.00', '0000-00-00', '2015'),
(57, 97093017, 'RPW - Uncovering tipping points in Health Management of Local Communities', 'Funded', 'Internal', 'URCO', 'Php', '200000.00', '0000-00-00', '2013'),
(58, 97093017, 'Building web-based Filipino Language Learning Tool for Heritage Learners', 'Funded', 'Internal', 'URCO', 'Php', '145440.00', '0000-00-00', '2012'),
(59, 97042579, 'COMPRO LAB MANUAL DEVELOPMENT', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '2010'),
(60, 97053937, 'Project#: 12MU209 - "COMPRO2 Course Notes (Advanced Computer Programming Course Notes)"', 'Funded', 'Internal', 'University Research Coordination Office (URCO', '', '0.00', '0000-00-00', '2010'),
(61, 97053937, 'Development of Unmanned Aerial Vehicle Quadrotor Swarm (Interdisciplinary Research with College of E', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '0'),
(62, 97064424, 'Visualization and Simulation of CBMS Data', 'Funded', 'Internal', 'URCO', 'Php', '246600.00', '0000-00-00', 'present'),
(63, 97064424, 'Building a Databank for Philippine Languages (Tagalog)', 'Funded', 'Internal', 'URCO', 'Php', '80683.25', '0000-00-00', '2008'),
(64, 97064424, 'Creating a Filipino Lexicon with Subcategorization Frame and Thematic Role', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '2009'),
(65, 97053856, 'PALITO Development of DEA-based Performance Measurement Mathematical Model and Software Application ', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', '0'),
(66, 97053856, 'Form Generator System for CBMS', 'Funded', 'Internal', 'URCO', '', '0.00', '0000-00-00', 'present'),
(67, 97054038, 'ICT based services:Niches and Networks', 'Funded', 'Internal', 'Angelo King Institute/CIPA', '', '0.00', '0000-00-00', '0'),
(68, 97054097, 'Beyond Multi-Core : A Survey of Architectural innovations', 'Funded', 'Internal', 'URCO', 'Php', '12120.00', '0000-00-00', '2014'),
(69, 97054097, 'Instructor''s Manual for Computer Architecture', 'Funded', 'Internal', 'ADRIC Research Center', 'Php', '3000.00', '0000-00-00', '2005');

-- --------------------------------------------------------

--
-- Table structure for table `special_training`
--

CREATE TABLE IF NOT EXISTS `special_training` (
  `ST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ST_ID`),
  KEY `fk_spectrain_fid` (`FID`),
  KEY `fk_strain_instid` (`INSTITUTION`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `special_training`
--

INSERT INTO `special_training` (`ST_ID`, `FID`, `TRAINING_TITLE`, `VENUE`, `START_DATE`, `END_DATE`, `INSTITUTION`) VALUES
(1, 97049336, 'UNISTAFF (university Leadership)', 'University of Kassel', '2000-01-01', '2000-01-01', NULL),
(2, 97049344, 'Pittsburgh Science of Learning Center (PSLC) Summer School', 'Carnegie Mellon University', '0000-00-00', '0000-00-00', 'Pittsburgh'),
(3, 97077763, '1st Cloud Computing Training and Certification', 'IBM / UPITC', '0000-00-00', '0000-00-00', 'Quezon City'),
(4, 97077763, 'Cisco Certified Network Associate (CCNA)', 'UST', '0000-00-00', '0000-00-00', 'Manila'),
(5, 97033235, 'Enterprise Architecture (TOGAF) Certification Training', 'None', '0000-00-00', '0000-00-00', 'Manila'),
(6, 97090638, 'Research Direction of Game Artificial Intelligence', 'De La Salle University  - College of Computer', '0000-00-00', '0000-00-00', 'Holy Angel University'),
(7, 97090638, 'Research Direction of Game Artificial Intelligence', 'De La Salle University - College of Computer ', '0000-00-00', '0000-00-00', ''),
(8, 97090638, 'Open Source Seminar', 'None', '0000-00-00', '0000-00-00', 'DLSU-ISR'),
(9, 97090638, 'Introducing the Microsoft Developer Network Academic Alliance', 'De La Salle University', '0000-00-00', '0000-00-00', ''),
(10, 97090638, 'Technical Faculty Ambassador Cascade Training for Manila Science and City College of Manila Teachers', 'None', '0000-00-00', '0000-00-00', 'De La Salle University G301'),
(11, 97090638, '2006 The Training Program for the Asian Game Research and Policies', '', '0000-00-00', '0000-00-00', ''),
(12, 97090638, '2006 World Amusement & Game Summit', 'Yesom Co.', '0000-00-00', '0000-00-00', ''),
(13, 97090638, 'Algorithms and Applications:   A Graduate Short course in Computer Science', 'None', '0000-00-00', '0000-00-00', 'ISR'),
(14, 97090638, 'Transformative Learning', 'None', '0000-00-00', '0000-00-00', 'M306'),
(15, 97090638, 'Technical Faculty Ambassador Competency Training Set 5: Web Applications and ASP.NET', 'Microsoft Philippines', '0000-00-00', '0000-00-00', 'Miriam College'),
(16, 97090638, 'Technical Faculty Ambassador Competency Training Set 4: MS SQL Server 2000', 'Microsoft Philippines', '0000-00-00', '0000-00-00', ' De La Salle University-Manila'),
(17, 97090638, 'Technical Faculty Ambassador Competency Training Set 3: Microsoft SQL Server 2000', 'Microsoft Philippines', '0000-00-00', '0000-00-00', 'AMA Computer College-Makati'),
(18, 97090638, 'Technical Faculty Ambassador Competency Training Set 2: Object Oriented Programming', 'Microsoft Philippines', '0000-00-00', '0000-00-00', 'Phoenix One'),
(19, 97090638, 'Technical Faculty Ambassador Competency Training Set 1: Programming using Visual Studio 2003', 'Microsoft Philippines', '0000-00-00', '0000-00-00', 'Mapua IT Center-Makati'),
(20, 97090638, 'Plug and Play', '', '0000-00-00', '0000-00-00', ''),
(21, 97090638, 'TechFest 2005', 'Microsoft Philippines', '0000-00-00', '0000-00-00', 'EDSA Shangri-la Hotel'),
(22, 97088897, 'Diploma in Power Electronics', 'Mapua Institute of Technology / Emerson Netwo', '0000-00-00', '0000-00-00', 'Manila'),
(23, 97045179, 'Project Management', 'PMI ', '0000-00-00', '0000-00-00', 'United States of America'),
(24, 97045179, 'ITIL', 'ITIL', '0000-00-00', '0000-00-00', 'UK'),
(25, 97045179, 'Software Quality Assurance', 'ASQP', '0000-00-00', '0000-00-00', 'The Netherlands'),
(26, 97091219, 'Visting Researcher for Speech to Speech Translation', 'InterACT Laboratory', '0000-00-00', '0000-00-00', ''),
(27, 97088366, 'ITIL V4 Foundations Certification ', 'ITIL/ Hewlett-Packard', '0000-00-00', '0000-00-00', 'Pasay '),
(28, 97028304, 'Open Source Seminar', 'DLSU', '0000-00-00', '0000-00-00', ''),
(29, 97028304, 'Program for Research into Intelligent Systems', 'National University of Singapore', '0000-00-00', '0000-00-00', 'Singapore'),
(30, 97028304, 'Post-MS Research in Human Computer Interaction', 'University of Houston', '0000-00-00', '0000-00-00', 'USA'),
(31, 97015784, 'Workshop on Computing (WCTP)', 'DLSU CCS Research', '0000-00-00', '0000-00-00', 'Century Park Hotel'),
(32, 97015784, 'Agile Project Management', 'Phoenix One', '0000-00-00', '0000-00-00', 'Makati City'),
(33, 97026050, 'Academic Leadership Training Program', 'De La Salle University', '0000-00-00', '0000-00-00', 'Manila'),
(34, 97041378, 'Business Analytics ASL Bootcamp for Ecosystem Development', 'IBM', '0000-00-00', '0000-00-00', 'Singapore'),
(35, 97041378, 'Softlayer (Infrastructure as a Service Cloud Technology) Training', 'IBM', '0000-00-00', '0000-00-00', 'Kuala Lumpur'),
(36, 97041378, 'IBM Cognos Business Intelligence Training', 'IBM', '0000-00-00', '0000-00-00', 'Chicago'),
(37, 97041378, 'IBM WebSphere Application Server Administration Training', 'IBM', '0000-00-00', '0000-00-00', 'Quezon City'),
(38, 97041378, 'Linux System Admininstration II', 'Touch Solutions Incorporated', '0000-00-00', '0000-00-00', 'Quezon City'),
(39, 97041378, 'Linux System Admininstration I', 'Touch Solutions Incorporated', '0000-00-00', '0000-00-00', 'Quezon City'),
(40, 97041378, 'EMC2 Storage Technology Foundation Training', 'EMC2', '0000-00-00', '0000-00-00', 'EMC2 Singapore'),
(41, 97041378, 'Post Grad Course Lec Series in CS - Network Security', 'University of the Philippines-Diliman', '0000-00-00', '0000-00-00', 'Quezon City'),
(42, 97041378, 'C# Training', 'De La Salle University-Manila', '0000-00-00', '0000-00-00', 'Manila'),
(43, 97041378, 'Webwork’s Software Engineering Course', 'De La Salle University-Manila', '0000-00-00', '0000-00-00', 'Manila'),
(44, 97041378, 'Certified Information Systems Security Professional Training', 'ISC2', '0000-00-00', '0000-00-00', 'AIM'),
(45, 97041378, 'Certified Ethical Hacking Traiing', 'EC-Council', '0000-00-00', '0000-00-00', 'Ateneo Professional School'),
(46, 97041378, 'CATC-SC Fundamentals of Wireless LAN Training', 'Cisco', '0000-00-00', '0000-00-00', 'Brisbane'),
(47, 97041378, 'CATC-SC Fundamentals of Network Security Training', 'Cisco', '0000-00-00', '0000-00-00', 'Brisbane'),
(48, 97041378, 'Enterasys Dragon IDS Training', 'Enterasys', '0000-00-00', '0000-00-00', 'MIS NET'),
(49, 97041378, 'CATC-SC Fundamentals of Java Training', 'Cisco', '0000-00-00', '0000-00-00', 'Hongkong'),
(50, 97041378, 'CATC-SC Fundamentals of Unix Training', 'Cisco', '0000-00-00', '0000-00-00', 'Hongkong'),
(51, 97041378, 'CCNA Semester 3 & 4 Instructor Training', 'Cisco', '0000-00-00', '0000-00-00', 'DLSU'),
(52, 97041378, 'Active Server Pages on Micrsofot Internet Information Server 4.0', 'MIS NET', '0000-00-00', '0000-00-00', 'MIS NET'),
(53, 97042579, 'Phil-Swiss Graduate IT School 2008', 'None', '0000-00-00', '0000-00-00', 'Baguio City'),
(54, 97042579, 'Game Development Training', '', '0000-00-00', '0000-00-00', ''),
(55, 97042579, 'Phil-Swiss IT School 2007: Algorithms and Applications:   A Graduate Short course in Computer Scienc', 'None', '0000-00-00', '0000-00-00', 'ISR Canlubang'),
(56, 97053937, 'Certified Cisco Networking Academy (CCNA) Introducing Routing and Switching in the Enterprise', 'Cisco ', '0000-00-00', '0000-00-00', 'DLSU (Manila)'),
(57, 97053937, 'Certified Cisco Networking Academy (CCNA) Working at a Small-to-Medium Business or ISP', 'Cisco ', '0000-00-00', '0000-00-00', 'DLSU (Manila)'),
(58, 97053937, 'CCNA Networking for Home and Small Businesses', 'Cisco ', '0000-00-00', '0000-00-00', 'DLSU (Manila)'),
(59, 97053937, 'Algorithms and Applications: A Graduate Shourt Course in Computer Science', 'ETH Zurich', '0000-00-00', '0000-00-00', 'DLSU Canlubang (Laguna)'),
(60, 97053856, 'Machine Learning Summer School', 'University of Cambridge', '0000-00-00', '0000-00-00', ''),
(61, 20141009, 'Academic Leadership Training Program', 'De La Salle University', '0000-00-00', '0000-00-00', 'Manila'),
(62, 97079669, 'TOGAF 9.1 V4.0 Level 1 & 2 Certification', 'Sinag Solutions CC & CS', '0000-00-00', '0000-00-00', ''),
(63, 97054097, 'Student Centered learning', 'College of Computer Studies', '0000-00-00', '0000-00-00', ''),
(64, 97054097, 'Charism of a Lasallian Educator', 'College of Computer Studies', '0000-00-00', '0000-00-00', ''),
(65, 97054097, 'DLSU NLCC Workshop on curriculum development for new LaSallian core curriculum ', 'De La Salle University', '0000-00-00', '0000-00-00', 'Manila'),
(66, 97054097, 'CCS Workshop on Program Educational Objectives (PEO) and Program Graduate Outcomes (PGO) development', '', '0000-00-00', '0000-00-00', ''),
(67, 97054097, 'DLSU OBE', '', '0000-00-00', '0000-00-00', ''),
(68, 97054097, 'Academic Leadership Development Program ', 'De La Salle University', '0000-00-00', '0000-00-00', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `ACTIVE`) VALUES
(1, 'Active'),
(2, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--

CREATE TABLE IF NOT EXISTS `teaching_experience` (
  `TE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `EL_ID` varchar(5) DEFAULT NULL,
  `INSTITUTION_ID` varchar(45) DEFAULT NULL,
  `NO_YEARS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(30) DEFAULT NULL,
  `POSITION_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`TE_ID`),
  KEY `fk_teachexp_fid` (`FID`),
  KEY `fk_teachexp` (`EL_ID`),
  KEY `fk_teachexp_inst` (`INSTITUTION_ID`),
  KEY `fk_teachexp_pos` (`POSITION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `teaching_experience`
--

INSERT INTO `teaching_experience` (`TE_ID`, `FID`, `EL_ID`, `INSTITUTION_ID`, `NO_YEARS`, `START_DATE`, `END_DATE`, `POSITION_ID`) VALUES
(1, 20133413, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(2, 97014788, 'EL003', 'De La Salle University', 18, '0000-00-00', '0000-00-00', 'P0003'),
(3, 97049336, 'EL003', 'De La Salle University', 19, '0000-00-00', '0000-00-00', 'P0003'),
(4, 97049336, 'EL003', 'National ComputerInstitute', 3, '0000-00-00', '0000-00-00', 'P0003'),
(5, 97049344, 'EL003', 'De La Salle University', 11, '0000-00-00', '0000-00-00', 'P0003'),
(6, 97049344, 'EL003', 'De La Salle University', 9, '0000-00-00', '0000-00-00', 'P0003'),
(7, 97049344, 'EL003', 'De La Salle University', 3, '0000-00-00', '0000-00-00', 'P0003'),
(8, 97049344, 'EL003', 'AIT TAFE Singapore', 2, '0000-00-00', '0000-00-00', 'P0003'),
(9, 97077763, 'EL003', 'De La Salle University', 2, '0000-00-00', '0000-00-00', 'P0003'),
(10, 97077763, 'EL003', 'FEU  - East Asia College', 2, '0000-00-00', '0000-00-00', 'P0003'),
(11, 97077763, 'EL003', 'Bahrain Training Institute', 2, '0000-00-00', '0000-00-00', 'P0003'),
(12, 97077763, 'EL003', 'Technological Institute of the Philippines', 9, '0000-00-00', '0000-00-00', 'P0003'),
(13, 97033235, 'EL003', 'De La Salle University', 12, '1998-06-01', 'Present', 'P0004'),
(14, 97033235, 'EL003', 'University of the Philippines Los Banos', 2, '0000-00-00', '0000-00-00', 'P0003'),
(15, 97055743, 'EL003', 'De La Salle University', 28, '0000-00-00', '0000-00-00', 'P0003'),
(16, 97090638, 'EL003', 'De La Salle University', 8, '0000-00-00', '0000-00-00', 'P0003'),
(17, 97090638, 'EL003', 'De La Salle University', 3, '0000-00-00', '0000-00-00', 'P0003'),
(18, 97090638, 'EL003', 'De La Salle University', 2, '0000-00-00', '0000-00-00', 'P0003'),
(19, 97088420, 'EL003', 'De La Salle University', 4, '0000-00-00', '0000-00-00', 'P0003'),
(20, 97031925, 'EL003', 'De La Salle University', 20, '0000-00-00', '0000-00-00', 'P0003'),
(21, 97020087, 'EL003', 'De La Salle University', 17, '0000-00-00', '0000-00-00', 'P0003'),
(22, 20123647, 'EL003', 'De La Salle University', 5, '0000-00-00', '0000-00-00', 'P0003'),
(23, 97042498, 'EL003', 'De La Salle University', 15, '0000-00-00', '0000-00-00', 'P0003'),
(24, 97088897, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(25, 97088897, 'EL003', 'Mapua Institute of Technology', 0, '0000-00-00', '0000-00-00', 'P0003'),
(26, 97088897, 'EL003', 'First Asia Institute of Technology and Humani', 0, '0000-00-00', '0000-00-00', 'P0003'),
(27, 97031909, 'EL003', 'De La Salle University', 20, '0000-00-00', '0000-00-00', 'P0003'),
(28, 97014753, 'EL003', 'De La Salle University', 17, '0000-00-00', '0000-00-00', 'P0003'),
(29, 20143559, 'EL003', 'Enderun Colleges', 1, '0000-00-00', '0000-00-00', 'P0003'),
(30, 97045179, 'EL003', 'De La Salle University', 21, '0000-00-00', '0000-00-00', 'P0003'),
(31, 97045179, 'EL003', 'University of Asia and the Pacific', 10, '0000-00-00', '0000-00-00', 'P0003'),
(32, 97093157, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(33, 97093157, 'EL003', 'De La Salle University', 3, '0000-00-00', '0000-00-00', 'P0003'),
(34, 20123256, 'EL003', 'De La Salle University', 12, '0000-00-00', '0000-00-00', 'P0003'),
(35, 20123256, 'EL003', 'Laguna Institute of Technology', 1, '0000-00-00', '0000-00-00', 'P0003'),
(36, 20123256, 'EL003', 'Laguna Northwestern College', 3, '0000-00-00', '0000-00-00', 'P0003'),
(37, 20123256, 'EL003', 'Assumption College', 2, '0000-00-00', '0000-00-00', 'P0003'),
(38, 20123256, 'EL003', 'St. Louis Anne Colleges', 2, '0000-00-00', '0000-00-00', 'P0003'),
(39, 20123256, 'EL003', 'San Pedro College of Business and Arts', 1, '0000-00-00', '0000-00-00', 'P0003'),
(40, 20123256, 'EL003', 'AMA Computer College', 1, '0000-00-00', '0000-00-00', 'P0003'),
(41, 97063932, 'EL003', 'De La Salle University', 2, '2012-01-03', '2015-10-30', 'P0003'),
(42, 97063932, 'EL003', 'FEU - East Asia College', 3, '2009-05-23', '2011-06-15', 'P0003'),
(43, 97063932, 'EL003', 'Colegio de San Juan de Letran', 1, '0000-00-00', '0000-00-00', 'P0003'),
(44, 97063932, 'EL003', 'Emilio Aguinaldo College', 8, '2001-06-01', '2008-05-27', 'P0003'),
(45, 20123590, 'EL003', 'De La Salle University', 11, '0000-00-00', '0000-00-00', 'P0003'),
(46, 20123590, 'EL003', 'University of the Philippines Los Banos', 9, '0000-00-00', '0000-00-00', 'P0003'),
(47, 97091219, 'EL003', 'De La Salle University', 5, '0000-00-00', '0000-00-00', 'P0003'),
(48, 97091219, 'EL003', 'De La Salle University', 3, '0000-00-00', '0000-00-00', 'P0003'),
(49, 20133707, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(50, 97020095, 'EL003', 'De La Salle University', 17, '0000-00-00', '0000-00-00', 'P0003'),
(51, 97088366, 'EL003', 'De La Salle University', 4, '0000-00-00', '0000-00-00', 'P0003'),
(52, 97049182, 'EL003', 'De La Salle University', 15, '0000-00-00', '0000-00-00', 'P0003'),
(53, 97053139, 'EL003', 'De La Salle University', 19, '0000-00-00', '0000-00-00', 'P0003'),
(54, 97053139, 'EL003', 'Mapua Institute of Technology', 2, '0000-00-00', '0000-00-00', 'P0003'),
(55, 97014818, 'EL003', 'De La Salle University', 16, '0000-00-00', '0000-00-00', 'P0003'),
(56, 97028304, 'EL003', 'De La Salle University', 22, '0000-00-00', '0000-00-00', 'P0003'),
(57, 97028304, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(58, 97015784, 'EL003', 'De La Salle University', 25, '0000-00-00', '0000-00-00', 'P0003'),
(59, 97015784, 'EL003', 'University of Santo Tomas', 1, '0000-00-00', '0000-00-00', 'P0003'),
(60, 97015784, 'EL003', 'University of Santo Tomas', 3, '0000-00-00', '0000-00-00', 'P0003'),
(61, 20141718, 'EL003', 'De La Salle University', 0, '0000-00-00', '0000-00-00', 'P0003'),
(62, 97026050, 'EL003', 'De La Salle University', 5, '0000-00-00', '0000-00-00', 'P0003'),
(63, 97015512, 'EL003', 'De La Salle University', 19, '0000-00-00', '0000-00-00', 'P0003'),
(64, 97049212, 'EL003', 'De La Salle University', 15, '0000-00-00', '0000-00-00', 'P0003'),
(65, 97041378, 'EL003', 'De La Salle University', 2, '0000-00-00', '0000-00-00', 'P0003'),
(66, 97041378, 'EL003', 'De La Salle University', 11, '0000-00-00', '0000-00-00', 'P0003'),
(67, 97093017, 'EL003', 'De La Salle University', 5, '0000-00-00', '0000-00-00', 'P0003'),
(68, 97042579, 'EL003', 'De La Salle University', 9, '0000-00-00', '0000-00-00', 'P0003'),
(69, 97042579, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(70, 97053937, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(71, 97053937, 'EL003', 'De La Salle University', 3, '0000-00-00', '0000-00-00', 'P0003'),
(72, 97053937, 'EL003', 'De La Salle University', 17, '0000-00-00', '0000-00-00', 'P0003'),
(73, 97064424, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(74, 97053856, 'EL003', 'De La Salle University', 7, '0000-00-00', '0000-00-00', 'P0003'),
(75, 97053856, 'EL003', 'De La Salle University', 2, '0000-00-00', '0000-00-00', 'P0003'),
(76, 20143558, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(77, 20143558, 'EL003', 'AMA Computer College Makati', 1, '0000-00-00', '0000-00-00', 'P0003'),
(78, 97054038, 'EL003', 'De La Salle University', 23, '0000-00-00', '0000-00-00', 'P0003'),
(79, 97053848, 'EL003', 'De La Salle University', 28, '0000-00-00', '0000-00-00', 'P0003'),
(80, 20141009, 'EL003', 'De La Salle University', 10, '0000-00-00', '0000-00-00', 'P0003'),
(81, 20141769, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(82, 97053953, 'EL003', 'De La Salle University', 11, '0000-00-00', '0000-00-00', 'P0003'),
(83, 20141890, 'EL003', 'De La Salle University', 1, '0000-00-00', '0000-00-00', 'P0003'),
(84, 97079669, 'EL003', 'De La Salle University', 5, '0000-00-00', '0000-00-00', 'P0003'),
(85, 97054097, 'EL003', 'De La Salle University', 26, '0000-00-00', '0000-00-00', 'P0003');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Unit_Code` varchar(20) NOT NULL,
  `Unit_Title` varchar(75) NOT NULL,
  PRIMARY KEY (`Unit_Code`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `Unit_Code`, `Unit_Title`) VALUES
(2, 'AVCAS', 'Office of the Associate Vice Chancellor for Academic Affairs'),
(3, 'CCS', 'College of Computer Studies'),
(4, 'CED', 'College of Education'),
(5, 'CLA', 'College of Liberal Arts'),
(16, 'COB', 'College Of Business'),
(7, 'COE', 'College of Engineering'),
(8, 'COL', 'College of Law'),
(9, 'COS', 'College of Science'),
(10, 'EVPERI', 'Executive Vice President for External Relations and Internallization'),
(1, 'N/A', '  N/A'),
(11, 'OPC', 'Office of the President and Chancellor'),
(12, 'SoE', 'School of Economics'),
(13, 'STA', 'Student Affairs'),
(14, 'VCLMAR', 'Office of the Vice Chancellor for Lasallian Mission and Alumni Relations'),
(15, 'VCR', 'Office of the Associate Vice Chancellor for Research');

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
  ADD CONSTRAINT `fk_cs_cstype` FOREIGN KEY (`CS_TYPE`) REFERENCES `cs_type` (`CSTYPE_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_deptcode` FOREIGN KEY (`DEPT_CODE`) REFERENCES `department` (`dept_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cs_unitcode` FOREIGN KEY (`UNIT_CODE`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `degree_earned`
--
ALTER TABLE `degree_earned`
  ADD CONSTRAINT `degree_earned_ibfk_1` FOREIGN KEY (`DEGREE_ID`) REFERENCES `degree` (`DEGREE_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degree_dlevelid` FOREIGN KEY (`DLEVEL_ID`) REFERENCES `degree_level` (`DLEVEL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_degree_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `degree_pursue`
--
ALTER TABLE `degree_pursue`
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
  ADD CONSTRAINT `fk_profprac_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `fk_publication_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub_country` FOREIGN KEY (`ISSUING_COUNTRY`) REFERENCES `country` (`COUNTRY_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub_pubtype` FOREIGN KEY (`PUB_TYPE`) REFERENCES `publication_type` (`PT_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`PUBLICATION_TYPE`) REFERENCES `journal_publication` (`JOURNALPUB_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `research_external`
--
ALTER TABLE `research_external`
  ADD CONSTRAINT `fk_resext_currency` FOREIGN KEY (`CURRENCY`) REFERENCES `currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_resext_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `research_internal`
--
ALTER TABLE `research_internal`
  ADD CONSTRAINT `fk_resint_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `special_training`
--
ALTER TABLE `special_training`
  ADD CONSTRAINT `fk_spectrain_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teaching_experience`
--
ALTER TABLE `teaching_experience`
  ADD CONSTRAINT `fk_teachexp_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teaching_experience_ibfk_1` FOREIGN KEY (`EL_ID`) REFERENCES `educ_level` (`EL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `teaching_experience_ibfk_3` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
