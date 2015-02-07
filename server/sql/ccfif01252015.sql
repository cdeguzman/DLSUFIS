-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ccsfif
--

CREATE DATABASE IF NOT EXISTS ccsfif;
USE ccsfif;

--
-- Definition of table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` varchar(5) NOT NULL,
  `ACCOUNT_ROLE` varchar(25) NOT NULL,
  `READ_ONLY` int(10) unsigned NOT NULL DEFAULT '1',
  `ACCESS_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 = own, 1 = department, 2=alldepts, 3 = admin',
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`,`ACCOUNT_ID`,`ACCOUNT_ROLE`,`READ_ONLY`,`ACCESS_TYPE`) VALUES 
 (1,'AC001','System Administrator',0,3),
 (2,'AC002','Manager',0,1),
 (3,'AC003','Faculty',0,0),
 (4,'AC004','Staff',1,2),
 (5,'AC005','QMO',0,2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


--
-- Definition of table `area_spec`
--

DROP TABLE IF EXISTS `area_spec`;
CREATE TABLE `area_spec` (
  `AS_CODE` int(11) NOT NULL AUTO_INCREMENT,
  `AS_TITLE` varchar(50) NOT NULL,
  PRIMARY KEY (`AS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_spec`
--

/*!40000 ALTER TABLE `area_spec` DISABLE KEYS */;
INSERT INTO `area_spec` (`AS_CODE`,`AS_TITLE`) VALUES 
 (1,'  N/A'),
 (2,'Signal Processing'),
 (3,'Artificial Intelligence'),
 (4,'Digital Forensics'),
 (5,'Big Data and Analytics');
/*!40000 ALTER TABLE `area_spec` ENABLE KEYS */;


--
-- Definition of table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE `awards` (
  `AWARD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `AWARD_TITLE` varchar(100) DEFAULT NULL,
  `AWARD_BODY` varchar(100) DEFAULT NULL,
  `AWARD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`AWARD_ID`),
  KEY `fk_awards_fid` (`FID`),
  CONSTRAINT `fk_awards_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` (`AWARD_ID`,`FID`,`AWARD_TITLE`,`AWARD_BODY`,`AWARD_DATE`) VALUES 
 (1,97000001,'First Honorable Mention','Academy Awards','2008-02-03');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;


--
-- Definition of table `co_author`
--

DROP TABLE IF EXISTS `co_author`;
CREATE TABLE `co_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR_VAL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_author`
--

/*!40000 ALTER TABLE `co_author` DISABLE KEYS */;
INSERT INTO `co_author` (`id`,`AUTHOR_VAL`) VALUES 
 (1,'Yes'),
 (2,'No');
/*!40000 ALTER TABLE `co_author` ENABLE KEYS */;


--
-- Definition of table `community_service`
--

DROP TABLE IF EXISTS `community_service`;
CREATE TABLE `community_service` (
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
  KEY `fk_cs_govid` (`GOV_NAME`),
  CONSTRAINT `fk_cs_cstype` FOREIGN KEY (`CS_TYPE`) REFERENCES `cs_type` (`CSTYPE_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_cs_deptcode` FOREIGN KEY (`DEPT_CODE`) REFERENCES `department` (`dept_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_cs_unitcode` FOREIGN KEY (`UNIT_CODE`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_service`
--

/*!40000 ALTER TABLE `community_service` DISABLE KEYS */;
INSERT INTO `community_service` (`CS_ID`,`FID`,`CS_TYPE`,`DESCRIPTION`,`UNIT_CODE`,`DEPT_CODE`,`COMMITTEE`,`OTHERS`,`PROJECT_SITE`,`START_DATE`,`END_DATE`,`INSTITUTION`,`ORG_NAME`,`GOV_NAME`) VALUES 
 (1,97000001,'CS001','Teaching Computer','CED','CT','CSC',NULL,NULL,'2009-01-01','2009-01-01',NULL,NULL,NULL),
 (3,97000001,'CS003','Govenrment Project',NULL,NULL,NULL,NULL,'Marikina','2009-01-01','2009-01-05',NULL,NULL,'Department Of Public Works'),
 (5,97000001,'CS002','Pailaw Sa Baranggay',NULL,NULL,NULL,NULL,'Caloocan','2005-01-01','2007-01-02',NULL,'Baranggay 123',NULL),
 (6,97000001,'CS003','Pakain Sa Siyudad',NULL,NULL,NULL,NULL,'Malabon','2001-01-01','2001-01-01',NULL,NULL,'DSWD'),
 (7,97000001,'CS004','Bahay Bahayan',NULL,NULL,NULL,'Bahay Ni Kulas','Makati','2006-01-10','2006-01-10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `community_service` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(4) NOT NULL,
  `COUNTRY_NAME` varchar(35) NOT NULL,
  PRIMARY KEY (`COUNTRY_CODE`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`,`COUNTRY_CODE`,`COUNTRY_NAME`) VALUES 
 (1,' N/A',' N/A'),
 (2,'AFG','Afghanistan'),
 (3,'ALB','Albania'),
 (4,'AUS','Australia'),
 (5,'AUT','Austria'),
 (6,'BEL','Belgium'),
 (7,'BHS','Bahamas'),
 (8,'CHN','China'),
 (9,'DZA','Algeria'),
 (10,'JPN','Japan'),
 (11,'KHM','Cambodia'),
 (12,'MAC','Macau'),
 (13,'MYS','Malaysia'),
 (14,'PHL','Philippines'),
 (15,'ROU','Romania'),
 (16,'RUS','Russia'),
 (17,'SGP','Singapore'),
 (18,'USA','United Stated of America');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `cs_type`
--

DROP TABLE IF EXISTS `cs_type`;
CREATE TABLE `cs_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CSTYPE_CODE` varchar(5) NOT NULL,
  `CSTYPE_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`CSTYPE_CODE`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_type`
--

/*!40000 ALTER TABLE `cs_type` DISABLE KEYS */;
INSERT INTO `cs_type` (`id`,`CSTYPE_CODE`,`CSTYPE_TITLE`) VALUES 
 (1,'CS000','  N/A'),
 (2,'CS001','DLSU'),
 (3,'CS002','Professional Organization'),
 (4,'CS003','Government'),
 (5,'CS004','Others');
/*!40000 ALTER TABLE `cs_type` ENABLE KEYS */;


--
-- Definition of table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CURRENCY_NAME` varchar(45) NOT NULL,
  `COUNTRY` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`id`,`CURRENCY_NAME`,`COUNTRY`) VALUES 
 (1,'Australia$','AUS'),
 (2,'  N/A',NULL),
 (3,'PhP','PHL');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


--
-- Definition of table `degree`
--

DROP TABLE IF EXISTS `degree`;
CREATE TABLE `degree` (
  `DEGREE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEGREE_TITLE` varchar(100) NOT NULL,
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` (`DEGREE_ID`,`DEGREE_TITLE`) VALUES 
 (1,'Computer Science'),
 (2,'Information Technology'),
 (3,'Computer Engineering'),
 (4,'Electronics and Communications Engineering'),
 (6,'Information Systems'),
 (7,'Technology Management');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;


--
-- Definition of table `degree_earned`
--

DROP TABLE IF EXISTS `degree_earned`;
CREATE TABLE `degree_earned` (
  `DE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `SPECIALIZATION` varchar(45) DEFAULT NULL,
  `YEAR_OBTAINED` int(4) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` varchar(45) DEFAULT NULL,
  `SO_NUM` varchar(25) NOT NULL,
  PRIMARY KEY (`DE_ID`),
  KEY `DE_ID` (`DE_ID`),
  KEY `fk_degree_fid` (`FID`),
  KEY `fk_degree_dlevelid` (`DLEVEL_ID`),
  KEY `fk_degree_loc` (`LOCATION_ID`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_earned_ibfk_2` (`INSTITUTION_ID`),
  CONSTRAINT `degree_earned_ibfk_1` FOREIGN KEY (`DEGREE_ID`) REFERENCES `degree` (`DEGREE_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `degree_earned_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_degree_dlevelid` FOREIGN KEY (`DLEVEL_ID`) REFERENCES `degree_level` (`DLEVEL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_degree_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_earned`
--

/*!40000 ALTER TABLE `degree_earned` DISABLE KEYS */;
INSERT INTO `degree_earned` (`DE_ID`,`FID`,`DLEVEL_ID`,`DEGREE_ID`,`SPECIALIZATION`,`YEAR_OBTAINED`,`INSTITUTION_ID`,`LOCATION_ID`,`SO_NUM`) VALUES 
 (1,97011112,'DL00',1,'N/A',2005,2,'Manila','SO1212121'),
 (3,97000001,'DL00',1,'Database Systems',2004,9,'Manila','SO12345');
/*!40000 ALTER TABLE `degree_earned` ENABLE KEYS */;


--
-- Definition of table `degree_level`
--

DROP TABLE IF EXISTS `degree_level`;
CREATE TABLE `degree_level` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DLEVEL_ID` varchar(4) NOT NULL,
  `DLEVEL_TITLE` varchar(35) NOT NULL,
  `DLEVEL_DESC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DLEVEL_ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_level`
--

/*!40000 ALTER TABLE `degree_level` DISABLE KEYS */;
INSERT INTO `degree_level` (`ID`,`DLEVEL_ID`,`DLEVEL_TITLE`,`DLEVEL_DESC`) VALUES 
 (1,'DL00','Bachelor (BS)','Bachelor Of Science In'),
 (2,'DL01','Bachelor (BA)','Bachelor of Arts in'),
 (3,'DL02','Master\'s (MS)','Master of Science in'),
 (4,'DL03','Master\'s (MA)','Master of Arts in'),
 (5,'DL04','Master\'s (M)','Master in'),
 (6,'DL05','Doctoral (PhD)','Doctor of Philosophy in'),
 (7,'DL06','Doctoral (EdD)','Doctor of Education in'),
 (8,'DL07','Doctoral (Doctor In)','Doctor in'),
 (9,'DL08','Doctoral (Doctor of)','Doctor of');
/*!40000 ALTER TABLE `degree_level` ENABLE KEYS */;


--
-- Definition of table `degree_pursue`
--

DROP TABLE IF EXISTS `degree_pursue`;
CREATE TABLE `degree_pursue` (
  `DP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `DEGREE_ID` int(11) DEFAULT NULL,
  `DLEVEL_ID` varchar(4) DEFAULT NULL,
  `INSTITUTION_ID` int(11) DEFAULT NULL,
  `DEGREE_STAGES` varchar(5) DEFAULT NULL,
  `EARNED_UNITS` int(3) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` text,
  PRIMARY KEY (`DP_ID`),
  KEY `fk_degreepursue_fid` (`FID`),
  KEY `fk_dp_dlevelid` (`DLEVEL_ID`),
  KEY `fk_dp_degstages` (`DEGREE_STAGES`),
  KEY `DEGREE_ID` (`DEGREE_ID`),
  KEY `degree_pursue_ibfk_2` (`INSTITUTION_ID`),
  CONSTRAINT `degree_pursue_ibfk_1` FOREIGN KEY (`DEGREE_ID`) REFERENCES `degree` (`DEGREE_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `degree_pursue_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_degreepursue_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_dp_degstages` FOREIGN KEY (`DEGREE_STAGES`) REFERENCES `degree_stages` (`DS_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_dp_dlevelid` FOREIGN KEY (`DLEVEL_ID`) REFERENCES `degree_level` (`DLEVEL_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_pursue`
--

/*!40000 ALTER TABLE `degree_pursue` DISABLE KEYS */;
INSERT INTO `degree_pursue` (`DP_ID`,`FID`,`DEGREE_ID`,`DLEVEL_ID`,`INSTITUTION_ID`,`DEGREE_STAGES`,`EARNED_UNITS`,`START_DATE`,`END_DATE`) VALUES 
 (1,97011112,3,'DL08',6,'DS004',33,'2010-06-01','2014-06-03'),
 (3,97000001,2,'DL08',10,'DS004',33,'2007-02-03','On-going'),
 (4,97000001,2,'DL04',3,'DS002',40,'2006-01-06','On-going');
/*!40000 ALTER TABLE `degree_pursue` ENABLE KEYS */;


--
-- Definition of table `degree_stages`
--

DROP TABLE IF EXISTS `degree_stages`;
CREATE TABLE `degree_stages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DS_CODE` varchar(5) NOT NULL,
  `DS_NAME` varchar(25) NOT NULL,
  PRIMARY KEY (`DS_CODE`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree_stages`
--

/*!40000 ALTER TABLE `degree_stages` DISABLE KEYS */;
INSERT INTO `degree_stages` (`ID`,`DS_CODE`,`DS_NAME`) VALUES 
 (1,'DS000','  N/A'),
 (2,'DS001','Dissertation'),
 (3,'DS002','Thesis'),
 (4,'DS003','Comprehensives'),
 (5,'DS004','Academic Courses');
/*!40000 ALTER TABLE `degree_stages` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(15) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_code`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`,`dept_code`,`dept_name`) VALUES 
 (1,' N/A','  N/A'),
 (2,'CT','Computer Technology'),
 (3,'IS','Information System'),
 (4,'IT','Information Technology'),
 (5,'ST','Software Technology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `educ_level`
--

DROP TABLE IF EXISTS `educ_level`;
CREATE TABLE `educ_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EL_ID` varchar(5) NOT NULL,
  `EL_TITLE` varchar(35) NOT NULL,
  PRIMARY KEY (`EL_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educ_level`
--

/*!40000 ALTER TABLE `educ_level` DISABLE KEYS */;
INSERT INTO `educ_level` (`id`,`EL_ID`,`EL_TITLE`) VALUES 
 (1,'EL001','Elementary'),
 (2,'EL002','Secondary'),
 (3,'EL003','Tertiary');
/*!40000 ALTER TABLE `educ_level` ENABLE KEYS */;


--
-- Definition of table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
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
  KEY `fk_fac_account` (`ACCOUNT_ID`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_fac_dept` FOREIGN KEY (`DEPT`) REFERENCES `department` (`dept_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_fac_position` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_fac_rank` FOREIGN KEY (`RANK`) REFERENCES `rank` (`rank_code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_fac_unitcode` FOREIGN KEY (`UNIT_CODE`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` (`FID`,`PASSWORD`,`USERNAME`,`ACCOUNT_ID`,`FFNAME`,`FLNAME`,`FMNAME`,`UNIT_CODE`,`DEPT`,`CLASSIFICATION`,`RANK`,`POSITION_ID`,`ACTIVE`) VALUES 
 (1111,'5f4dcc3b5aa765d61d8327deb882cf99','staff.account','AC004','Account','Staff','S','CCS','CT','P0006',' N/A','P0005',1),
 (20001,'5f4dcc3b5aa765d61d8327deb882cf99','admin.account','AC001','Administrator','System','A','CCS',' N/A','P0003','L1','P0000',1),
 (20002,'5f4dcc3b5aa765d61d8327deb882cf99','ct.manager','AC002','Manager','CT','CT','CCS','CT','PPPPP',' N/A','PPPPP',1),
 (20003,'827ccb0eea8a706c4c34a16891f84e7b','qmo.account','AC005','QMO','QMO','QMO','CCS',' N/A','PPPPP',' N/A','PPPPP',1),
 (97000001,'54f3eeb8b394244e8e9f3968f76acb59','geanne.franco','AC003','Geanne Ross','Franco','Lunar','CCS','IS','P0003','AP2','P0003',1),
 (97011112,'5f4dcc3b5aa765d61d8327deb882cf99','sample2.faculty2','AC003','Faculty2','Sample2','Yu','CCS','ST','P0003','AP2','P0003',1),
 (97012345,'696d29e0940a4957748fe3fc9efd22a3','alexie.ballon','AC003','Alexie','Ballon','E.','CCS','CT','P0003','AP2','P0003',1);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;


--
-- Definition of table `funding_agency`
--

DROP TABLE IF EXISTS `funding_agency`;
CREATE TABLE `funding_agency` (
  `FAGENCY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FAGENCY_NAME` varchar(70) NOT NULL,
  PRIMARY KEY (`FAGENCY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funding_agency`
--

/*!40000 ALTER TABLE `funding_agency` DISABLE KEYS */;
INSERT INTO `funding_agency` (`FAGENCY_ID`,`FAGENCY_NAME`) VALUES 
 (1,'  N/A'),
 (2,'Funding Agency 1'),
 (3,'Funding Agency 2');
/*!40000 ALTER TABLE `funding_agency` ENABLE KEYS */;


--
-- Definition of table `gov_agencies`
--

DROP TABLE IF EXISTS `gov_agencies`;
CREATE TABLE `gov_agencies` (
  `GOV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AGENCY_NAME` varchar(100) DEFAULT NULL,
  `AGENCY_LOCATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GOV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gov_agencies`
--

/*!40000 ALTER TABLE `gov_agencies` DISABLE KEYS */;
INSERT INTO `gov_agencies` (`GOV_ID`,`AGENCY_NAME`,`AGENCY_LOCATION`) VALUES 
 (1,'  N/A','  N/A'),
 (2,'Social Security System','Manila'),
 (3,'Department of Social Welfare Development','Manila');
/*!40000 ALTER TABLE `gov_agencies` ENABLE KEYS */;


--
-- Definition of table `industry`
--

DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `INDUSTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INDUSTRY_NAME` varchar(45) NOT NULL,
  `IND_ACRONYM` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry`
--

/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` (`INDUSTRY_ID`,`INDUSTRY_NAME`,`IND_ACRONYM`) VALUES 
 (1,'  N/A','  N/A'),
 (2,'Digital Telecommunications Philippines','(DIGITEL)'),
 (3,'Globe Telecomm','(GLOBE)'),
 (4,'Integrated Microelectronics, Inc.','(IMI)'),
 (6,'Philippine Long Distance Company','(PLDT)');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;


--
-- Definition of table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE `institution` (
  `INSTITUTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INSTITUTION_NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INSTITUTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` (`INSTITUTION_ID`,`INSTITUTION_NAME`,`LOCATION`,`COUNTRY`) VALUES 
 (1,'  N/A','1',' N/A'),
 (2,'De La Salle University','1','PHL'),
 (3,'Ateneo De Manila University','1','PHL'),
 (4,'University of the Philippines, Diliman','1','PHL'),
 (5,'University of the Philippines, Los Banos','1','PHL'),
 (6,'Technological University of the Philippines','1','PHL'),
 (7,'University of Santo Tomas','1','PHL'),
 (9,'Colegio de San Juan de Letran','1','PHL'),
 (10,'FEU - East Asia College','1','PHL'),
 (11,'Pamantasan Ng Lungsod Ng Maynila','1','PHL');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;


--
-- Definition of table `journal_publication`
--

DROP TABLE IF EXISTS `journal_publication`;
CREATE TABLE `journal_publication` (
  `JOURNALPUB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNALPUB_TYPE` varchar(45) NOT NULL,
  PRIMARY KEY (`JOURNALPUB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_publication`
--

/*!40000 ALTER TABLE `journal_publication` DISABLE KEYS */;
INSERT INTO `journal_publication` (`JOURNALPUB_ID`,`JOURNALPUB_TYPE`) VALUES 
 (1,'  N/A'),
 (2,'ISI'),
 (4,'Scopus'),
 (5,'Abstracted And Refereed');
/*!40000 ALTER TABLE `journal_publication` ENABLE KEYS */;


--
-- Definition of table `journals`
--

DROP TABLE IF EXISTS `journals`;
CREATE TABLE `journals` (
  `JOURNAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOURNAL_TITLE` varchar(100) NOT NULL,
  `JOURNAL_TYPE` varchar(35) NOT NULL,
  `JOURNAL_PUBLICATION` varchar(35) NOT NULL,
  PRIMARY KEY (`JOURNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journals`
--

/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` (`JOURNAL_ID`,`JOURNAL_TITLE`,`JOURNAL_TYPE`,`JOURNAL_PUBLICATION`) VALUES 
 (1,'  N/A','N/A','N/A'),
 (2,'IEEE Transactions on Affective Computing','Trade Journal','International'),
 (3,'The CET Review','Academic Journal','Local'),
 (4,'The Journal of DLSU-CCS','Academic','Local');
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;


--
-- Definition of table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_NAME` varchar(45) NOT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`LOCATION_ID`,`LOCATION_NAME`,`REGION`) VALUES 
 (1,'  N/A',NULL),
 (2,'Caloocan','National Capital Region (NCR)'),
 (3,'Abra','Cordillera Administrative Region (CAR)'),
 (5,'Dagupan','Ilocos Region (Region I)');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


--
-- Definition of table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `ORG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORG_NAME` varchar(100) NOT NULL,
  `ORG_ACRONYM` varchar(25) DEFAULT NULL,
  `ORG_LOCATION` varchar(100) NOT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` (`ORG_ID`,`ORG_NAME`,`ORG_ACRONYM`,`ORG_LOCATION`) VALUES 
 (1,'  N/A','  N/A',''),
 (2,'Philippines Society of Information Technology Educators','PSITE','Manila'),
 (3,'','',''),
 (4,'Philippine Computing Organization Alliance','PCOA','DLSU Manila'),
 (5,'Computing Society of the Philippines','CSP','Manila'),
 (7,'Association Of Computing Machinery','ACM','Manila');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;


--
-- Definition of table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSITION_ID` varchar(5) NOT NULL,
  `POSITION_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`POSITION_ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` (`ID`,`POSITION_ID`,`POSITION_TITLE`) VALUES 
 (1,'P0000','Administrator'),
 (2,'P0001','Dean'),
 (3,'P0002','Chairperson'),
 (4,'P0003','Full Time - Faculty'),
 (5,'P0004','Part Time - Faculty'),
 (6,'P0005','Academic Staff'),
 (7,'P0006','Academic Service Faculty'),
 (8,'PPPPP','  N/A');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;


--
-- Definition of table `professional_acty`
--

DROP TABLE IF EXISTS `professional_acty`;
CREATE TABLE `professional_acty` (
  `PA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEADER_TYPE` int(1) NOT NULL,
  `FID` int(8) DEFAULT NULL,
  `DESIGNATION` varchar(45) DEFAULT NULL,
  `ORG_NAME` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PA_ID`),
  KEY `fk_profacty_fid` (`FID`),
  KEY `professional_acty_ibfk_1` (`ORG_NAME`),
  CONSTRAINT `fk_profacty_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional_acty`
--

/*!40000 ALTER TABLE `professional_acty` DISABLE KEYS */;
INSERT INTO `professional_acty` (`PA_ID`,`LEADER_TYPE`,`FID`,`DESIGNATION`,`ORG_NAME`,`START_DATE`,`END_DATE`) VALUES 
 (1,1,97000001,'President','Manila Journal Science','2009-06-02','On-Going'),
 (3,0,97000001,'Secretary','Manila Computation Society','2007-03-04','On-going');
/*!40000 ALTER TABLE `professional_acty` ENABLE KEYS */;


--
-- Definition of table `professional_exp`
--

DROP TABLE IF EXISTS `professional_exp`;
CREATE TABLE `professional_exp` (
  `PE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `LICENSURE_TITLE` varchar(45) DEFAULT NULL,
  `YEAR_PASSED` int(4) DEFAULT NULL,
  `LICENSE_NO` int(7) DEFAULT NULL,
  `DATE_VALIDITY` date DEFAULT NULL,
  PRIMARY KEY (`PE_ID`),
  KEY `fk_profexp_fid` (`FID`),
  CONSTRAINT `fk_profexp_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional_exp`
--

/*!40000 ALTER TABLE `professional_exp` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_exp` ENABLE KEYS */;


--
-- Definition of table `professional_prac`
--

DROP TABLE IF EXISTS `professional_prac`;
CREATE TABLE `professional_prac` (
  `PP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `WORK_NATURE` varchar(45) DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  `NO_YEARS` int(2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PP_ID`),
  KEY `fk_profprac_fid` (`FID`),
  KEY `professional_prac_ibfk_1` (`INSTITUTION`),
  CONSTRAINT `fk_profprac_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professional_prac`
--

/*!40000 ALTER TABLE `professional_prac` DISABLE KEYS */;
INSERT INTO `professional_prac` (`PP_ID`,`FID`,`WORK_NATURE`,`INSTITUTION`,`NO_YEARS`,`START_DATE`,`END_DATE`) VALUES 
 (1,97000001,'Dynamic Website','FEU',2,'2008-01-01','2009-01-01');
/*!40000 ALTER TABLE `professional_prac` ENABLE KEYS */;


--
-- Definition of table `pub_local`
--

DROP TABLE IF EXISTS `pub_local`;
CREATE TABLE `pub_local` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pub_local`
--

/*!40000 ALTER TABLE `pub_local` DISABLE KEYS */;
INSERT INTO `pub_local` (`id`,`local_type`) VALUES 
 (1,' N/A'),
 (2,'Local'),
 (3,'International');
/*!40000 ALTER TABLE `pub_local` ENABLE KEYS */;


--
-- Definition of table `publication`
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE `publication` (
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
  KEY `fk_journalpub_type` (`PUBLICATION_TYPE`),
  CONSTRAINT `fk_publication_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pub_country` FOREIGN KEY (`ISSUING_COUNTRY`) REFERENCES `country` (`COUNTRY_CODE`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_pub_pubtype` FOREIGN KEY (`PUB_TYPE`) REFERENCES `publication_type` (`PT_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`PUBLICATION_TYPE`) REFERENCES `journal_publication` (`JOURNALPUB_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
INSERT INTO `publication` (`PUB_CODE`,`FID`,`PUB_TYPE`,`PAPER_TITLE`,`WORK_TITLE`,`CONF_TITLE`,`SEMINAR_TITLE`,`JOURNAL`,`PUBLISHER`,`AUTHOR`,`VOLUME_NO`,`ISSUE_NO`,`ISBN`,`PATENT_NO`,`PAGES`,`PUBLICATION_TYPE`,`OUTPUT_TYPE`,`PAPER_TYPE`,`PLACE_PUBLICATION`,`DATE_PUBLICATION`,`START_DATE`,`END_DATE`,`ISSUING_COUNTRY`,`EDITORS`,`PUBLISHED_IN`,`VENUE_PERFORMANCE`,`REMARKS`,`LOCAL`,`CO_AUTHOR`) VALUES 
 (1,97011112,'PT001','Development Of Web-Base FIS',NULL,NULL,NULL,'4',NULL,NULL,1,'ISN1111',NULL,NULL,'4-7',5,NULL,NULL,NULL,'2008-09-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL),
 (2,97011112,'PT001','Development Of FIS',NULL,NULL,NULL,'2',NULL,NULL,1,'ISN',NULL,NULL,'4',5,NULL,NULL,NULL,'2006-02-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL),
 (3,97000001,'PT001','Development Of',NULL,NULL,NULL,'2',NULL,NULL,4,'3',NULL,NULL,'45-46',2,NULL,NULL,NULL,'2005-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL),
 (4,97000001,'PT002','Franco',NULL,NULL,NULL,'Proto',NULL,NULL,2,'1','12345',NULL,'4-5',NULL,NULL,NULL,NULL,'2007-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL),
 (6,97000001,'PT003','Patents Of New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'112233',NULL,NULL,NULL,NULL,NULL,'2001-01-01',NULL,NULL,'PHL',NULL,NULL,NULL,NULL,NULL,NULL),
 (8,97000001,'PT006','The Legend','Book Of',NULL,NULL,NULL,'Sterling',NULL,NULL,NULL,'123456',NULL,'3-4',NULL,NULL,NULL,'Manila','2005-01-01',NULL,NULL,NULL,'Lunarsss',NULL,NULL,NULL,2,NULL),
 (9,97000001,'PT007','Published Paper Of New',NULL,'International Conference',NULL,NULL,'IEEE 1122',NULL,NULL,NULL,NULL,NULL,'3-4',NULL,NULL,NULL,'India','2005-02-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,2),
 (10,97000001,'PT008','Lunar',NULL,NULL,NULL,NULL,'IEEE International',NULL,NULL,NULL,NULL,NULL,'7-10',NULL,NULL,NULL,'Kuala, Lumpur','2009-02-05',NULL,NULL,NULL,NULL,'Singapore',NULL,NULL,3,NULL),
 (11,97000001,'PT009','The Play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2006-02-03',NULL,NULL,NULL,NULL,NULL,'Cultural Center Of The Phil',NULL,NULL,NULL),
 (12,97000001,'PT010','My Special Research',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Journal List',NULL,'2009-01-03',NULL,NULL,NULL,NULL,NULL,NULL,'Anything That Can Be Processed',2,1),
 (13,97000001,'PT011',NULL,NULL,NULL,'Agile Methodology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2009-02-04','2009-02-16',NULL,NULL,NULL,'Marikina',NULL,2,NULL),
 (14,97000001,'PT005','My Book',NULL,NULL,NULL,NULL,'Pearl Publisher',NULL,NULL,NULL,'123456',NULL,NULL,NULL,NULL,NULL,'Manila','2008-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL),
 (15,97000001,'PT001','Pag-aaral',NULL,NULL,NULL,'Maligaya',NULL,NULL,5,'2',NULL,NULL,'89',4,NULL,NULL,NULL,'2009-06-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,2),
 (16,97000001,'PT002','Prototype',NULL,NULL,NULL,'Bahay Kubo',NULL,NULL,3,'5','1234BNN',NULL,'78',NULL,NULL,NULL,NULL,'2003-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (17,97000001,'PT005','My Book Book',NULL,NULL,NULL,NULL,'Published Everywhere',NULL,NULL,NULL,'465667BBBNN',NULL,NULL,NULL,NULL,NULL,'Mnila','2001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL);
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;


--
-- Definition of table `publication_type`
--

DROP TABLE IF EXISTS `publication_type`;
CREATE TABLE `publication_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PT_ID` varchar(5) NOT NULL,
  `PT_TITLE` varchar(45) NOT NULL,
  PRIMARY KEY (`PT_ID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication_type`
--

/*!40000 ALTER TABLE `publication_type` DISABLE KEYS */;
INSERT INTO `publication_type` (`id`,`PT_ID`,`PT_TITLE`) VALUES 
 (1,'PT001','Journal'),
 (2,'PT002','Prototype'),
 (3,'PT003','Patent'),
 (4,'PT004','Book'),
 (5,'PT005','Textbook'),
 (6,'PT006','Chapter'),
 (7,'PT007','Conference'),
 (8,'PT008','Other Published'),
 (9,'PT009','Screen Play'),
 (10,'PT010','Other Research'),
 (11,'PT011','Seminars');
/*!40000 ALTER TABLE `publication_type` ENABLE KEYS */;


--
-- Definition of table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_code` varchar(25) NOT NULL,
  `rank_title` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rank_code` (`rank_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` (`id`,`rank_code`,`rank_title`) VALUES 
 (1,' N/A','  N/A'),
 (2,'AP1','Assistant Professor 1'),
 (3,'AP2','Assistant Professor 2'),
 (4,'AP3','Assistant Professor 3'),
 (5,'L1','Lecturer 1'),
 (6,'L2','Lecturer 2'),
 (8,'L3','Lecturer 3'),
 (9,'AP4','Assistant Professor 4');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;


--
-- Definition of table `research_external`
--

DROP TABLE IF EXISTS `research_external`;
CREATE TABLE `research_external` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FAGENCY` varchar(45) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` float(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resext_fid` (`FID`),
  KEY `fk_resext_fagency` (`FAGENCY`),
  CONSTRAINT `fk_resext_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_external`
--

/*!40000 ALTER TABLE `research_external` DISABLE KEYS */;
INSERT INTO `research_external` (`RESEARCH_ID`,`FID`,`RESEARCH_TITLE`,`RESEARCH_TYPE`,`FUNDING_TYPE`,`FAGENCY`,`CURRENCY`,`AMOUNT`,`START_DATE`,`END_DATE`) VALUES 
 (1,97000001,'Development Of Something','Funded','External','Pag-ibig','1',25999.00,'2009-01-02','2010-02-03'),
 (2,97000001,'Creation Of New Porject','Grants','','International Of','',0.00,'2009-01-01','2010-01-01'),
 (3,97000001,'Bahay Kubo','Grants','','Kahit Munti','',0.00,'2006-02-03','On-going');
/*!40000 ALTER TABLE `research_external` ENABLE KEYS */;


--
-- Definition of table `research_internal`
--

DROP TABLE IF EXISTS `research_internal`;
CREATE TABLE `research_internal` (
  `RESEARCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `RESEARCH_TITLE` varchar(100) DEFAULT NULL,
  `RESEARCH_TYPE` varchar(45) DEFAULT NULL,
  `FUNDING_TYPE` varchar(40) DEFAULT NULL,
  `FUNDING_UNIT` varchar(20) DEFAULT NULL,
  `CURRENCY` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`RESEARCH_ID`),
  KEY `fk_resint_fid` (`FID`),
  KEY `fk_resint_fundunit` (`FUNDING_UNIT`),
  CONSTRAINT `fk_resint_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `research_internal_ibfk_1` FOREIGN KEY (`FUNDING_UNIT`) REFERENCES `unit` (`Unit_Code`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_internal`
--

/*!40000 ALTER TABLE `research_internal` DISABLE KEYS */;
INSERT INTO `research_internal` (`RESEARCH_ID`,`FID`,`RESEARCH_TITLE`,`RESEARCH_TYPE`,`FUNDING_TYPE`,`FUNDING_UNIT`,`CURRENCY`,`AMOUNT`,`START_DATE`,`END_DATE`) VALUES 
 (2,97000001,'Development Of Web','Funded','Internal','COE','PhP','25000.00','2008-01-01','On-going');
/*!40000 ALTER TABLE `research_internal` ENABLE KEYS */;


--
-- Definition of table `special_training`
--

DROP TABLE IF EXISTS `special_training`;
CREATE TABLE `special_training` (
  `ST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
  `TRAINING_TITLE` varchar(100) DEFAULT NULL,
  `VENUE` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `INSTITUTION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ST_ID`),
  KEY `fk_spectrain_fid` (`FID`),
  KEY `fk_strain_instid` (`INSTITUTION`),
  CONSTRAINT `fk_spectrain_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_training`
--

/*!40000 ALTER TABLE `special_training` DISABLE KEYS */;
INSERT INTO `special_training` (`ST_ID`,`FID`,`TRAINING_TITLE`,`VENUE`,`START_DATE`,`END_DATE`,`INSTITUTION`) VALUES 
 (1,97000001,'Agile Methodology','Caloocan, City','2009-01-06','2009-01-12','De La Salle University');
/*!40000 ALTER TABLE `special_training` ENABLE KEYS */;


--
-- Definition of table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`,`ACTIVE`) VALUES 
 (1,'Active'),
 (2,'Inactive');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Definition of table `teaching_experience`
--

DROP TABLE IF EXISTS `teaching_experience`;
CREATE TABLE `teaching_experience` (
  `TE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(8) DEFAULT NULL,
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
  KEY `fk_teachexp_pos` (`POSITION_ID`),
  CONSTRAINT `fk_teachexp_fid` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teaching_experience_ibfk_1` FOREIGN KEY (`EL_ID`) REFERENCES `educ_level` (`EL_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `teaching_experience_ibfk_2` FOREIGN KEY (`INSTITUTION_ID`) REFERENCES `institution` (`INSTITUTION_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `teaching_experience_ibfk_3` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaching_experience`
--

/*!40000 ALTER TABLE `teaching_experience` DISABLE KEYS */;
INSERT INTO `teaching_experience` (`TE_ID`,`FID`,`EL_ID`,`INSTITUTION_ID`,`NO_YEARS`,`START_DATE`,`END_DATE`,`POSITION_ID`) VALUES 
 (2,97000001,'EL003',7,2,'2012-01-01','2014-01-01','P0003');
/*!40000 ALTER TABLE `teaching_experience` ENABLE KEYS */;


--
-- Definition of table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Unit_Code` varchar(20) NOT NULL,
  `Unit_Title` varchar(75) NOT NULL,
  PRIMARY KEY (`Unit_Code`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` (`id`,`Unit_Code`,`Unit_Title`) VALUES 
 (2,'AVCAS','Office of the Associate Vice Chancellor for Academic Affairs'),
 (3,'CCS','College of Computer Studies'),
 (4,'CED','College of Education'),
 (5,'CLA','College of Liberal Arts'),
 (16,'COB','College Of Business'),
 (7,'COE','College of Engineering'),
 (8,'COL','College of Law'),
 (9,'COS','College of Science'),
 (10,'EVPERI','Executive Vice President for External Relations and Internallization'),
 (1,'N/A','  N/A'),
 (11,'OPC','Office of the President and Chancellor'),
 (12,'SoE','School of Economics'),
 (13,'STA','Student Affairs'),
 (14,'VCLMAR','Office of the Vice Chancellor for Lasallian Mission and Alumni Relations'),
 (15,'VCR','Office of the Associate Vice Chancellor for Research');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
