window.App = {
   currentFacultyId: '', //Current Logged in Faculty
   currentStaffId: '',
   facultyInformationModel: '',
   minYear: 1900,
   maxYear: 2020,
   currentMode: '',


   /*Api URL's*/

   loginUrl: '../server/php/check.php',

   facultyProfileUrl: '../server/php/FacultyPersonalInfo/getFacInfo.php', //Get Faculty Information
   facultyDegreeEarnedUrl: '../server/php/FacultyAcademicBackground/getFacEarnedDegree.php', //Get Degree Earned
   facultyDegreePursueUrl: '../server/php/FacultyAcademicBackground/getFacDegreePursue.php', //Get Degree Pursue
   facultySpecialTrainingUrl: '../server/php/FacultySpecialTraining/getFacSpecTrain1.php', // Faculty Special Training
   facultyTeachExpUrl: '../server/php/FacultyTeachingExperience/getFacTeachExp.php', // Faculty Teaching Exp
   licenseUrl: '../server/php/FacultyLicensure/getFacProfExp.php', // Faculty Licensure
   nonTeachExpUrl: '../server/php/FacultyNon-Teaching/getFacProfPrac1.php', // Non Teaching Exp 
   facLeaderUrl: '../server/php/FacultyMembership/getFacLeadership.php', // Faculty Leader
   facMemberUrl:'../server/php/FacultyMembership/getFacMembership.php', // Faculty Member
   facAwardsUrl:'../server/php/FacultyAwards/getFacAwards.php', // Faculty Awards
   facInFundedUrl:'../server/php/FacultyResearch/getFacInResearch.php', // Internally Funded Research
   facExFundedUrl:'../server/php/FacultyResearch/getFacExResearch.php', // Externally Funded Research
   facResGrantsUrl:'../server/php/FacultyResearch/getFacResearchGrants.php', // Research Grants
   facJournalUrl:'../server/php/FacultyPublication/getFacJournal.php',   // Journal Publication
   facPrototypeUrl:'../server/php/FacultyPublication/getFacPrototype.php', // Published Prototype
   
   facComSrvDLSUUrl:'../server/php/FacultyCommunityService/getFacComSrvDLSU.php', // Community Service in DLSU
   facPatentsUrl: '../server/php/FacultyPublication/getFacPatents.php', // Patents
   facTextbooksUrl: '../server/php/FacultyPublication/getFacTextBook.php', //Textbooks
   facChaperBookUrl: '../server/php/FacultyPublication/getFacChaptBook.php', //Chapter Books
   facConPapUrl: '../server/php/FacultyPublication/getFacConferencePaper.php', //Conference Paper
   facPubBookUrl: '../server/php/FacultyPublication/getFacOtherPublished.php', //Published Creative
   facScreenPlayUrl: '../server/php/FacultyPublication/getFacScreenPlay.php', // Screen Plays
   facOtherResearchUrl: '../server/php/FacultyPublication/getFacOtherResearch.php', // Other Research
   facConferencesUrl: '../server/php/FacultyPublication/getFacSeminars.php', // Conferences

   facProfOrgUrl: '../server/php/FacultyCommunityService/getFacCSProfOrg.php', //Prof Org
   facGovOrgUrl: '../server/php/FacultyCommunityService/getFacCSGovOrg.php', // Gov Org
   facOtherOrgUrl: '../server/php/FacultyCommunityService/getFacCSOthers.php', //Other Orgs

   //Dropdowns

   degreeDropDownUrl: '../server/php/Admin/degree.php',
   degreeLevelDropDownUrl: '../server/php/Admin/degree_level.php',
   specializationDropDownUrl: '../server/php/Admin/specialization.php',
   institutionDropDownUrl: '../server/php/Admin/institution.php',
   industryDropDownUrl: '../server/php/Admin/industry.php',
   yearDropDownUrl: '../server/php/Admin/year.php',
   orgDropDownUrl: '../server/php/Admin/organization.php',
   educLevelDropDownUrl: '../server/php/Admin/educLevel.php',
   unitDropDownUrl: '../server/php/Admin/unit.php',
   fagencyDropDownUrl: '../server/php/Admin/fundingAgency.php',
   locationDropDownUrl: '../server/php/Admin/location.php',
   degreeStagesDropDownUrl: '../server/php/Admin/degree_stages.php',
   positionDropDownUrl: '../server/php/Admin/position.php',
   journalsDropDown: '../server/php/Admin/journals.php',
   countryDropDown: '../server/php/Admin/country.php',
   deptDropDownUrl: '../server/php/Admin/department.php',
   gov_agencyDropDownUrl: '../server/php/Admin/gov_agency.php',
   
   //Add Remove Edit
   degreeEarnedAddUrl: '../server/php/FacultyAcademicBackground/insertEarnedDegree.php',
   degreeEarnedRemoveUrl: '../server/php/FacultyAcademicBackground/removeEarnedDegree.php',
   degreePursueAddUrl: '../server/php/FacultyAcademicBackground/insertDegreePursue.php',
   degreePursueRemoveUrl: '../server/php/FacultyAcademicBackground/removeDegreePursue.php',
   facultyListUrl: '../server/php/Admin/faculty.php',
   specTrainingAddUrl: '../server/php/FacultySpecialTraining/insertSpecTraining.php',
   specTrainingRemoveUrl: '../server/php/FacultySpecialTraining/removeSpecTraining.php',
   teachExpAddUrl: '../server/php/FacultyTeachingExperience/insertTeachExp.php',
   teachExpRemoveUrl: '../server/php/FacultyTeachingExperience/removeTeachExp.php',
   licenseAddUrl: '../server/php/FacultyLicensure/insertLicensure.php',
   licenseRemoveUrl: '../server/php/FacultyLicensure/removeLicensure.php',
   nonTeachExpAddUrl: '../server/php/FacultyNon-Teaching/insertNonTeachExp.php',
   nonTeachExpRemoveUrl: '../server/php/FacultyNon-Teaching/removeNonTeachExp.php',
   leadershipAddUrl: '../server/php/FacultyMembership/insertLeadership.php',
   leadershipRemoveUrl: '../server/php/FacultyMembership/removeLeadership.php',
   membershipAddUrl: '../server/php/FacultyMembership/insertMembership.php',
   membershipRemoveUrl: '../server/php/FacultyMembership/removeMembership.php',
   awardsAddUrl: '../server/php/FacultyAwards/insertAward.php',
   awardsRemoveUrl: '../server/php/FacultyAwards/removeAward.php',
   inResFundedAddUrl: '../server/php/FacultyResearch/insertInResearch.php',
   inResFundedRemoveUrl: '../server/php/FacultyResearch/removeInResearch.php',
   exResFundedAddUrl: '../server/php/FacultyResearch/insertExResearch.php',
   exResFundedRemoveUrl: '../server/php/FacultyResearch/removeExResearch.php',
   resGrantModelAddUrl: '../server/php/FacultyResearch/insertGrants.php',
   resGrantModelRemoveUrl: '../server/php/FacultyResearch/removeGrants.php',
   journalPubModelAddUrl: '../server/php/FacultyPublication/insertJournal.php',
   journalPubModelRemoveUrl: '../server/php/FacultyPublication/removeJournal.php',
   pubPrototypeModelAddUrl: '../server/php/FacultyPublication/insertPrototype.php',
   pubPrototypeModelRemoveUrl: '../server/php/FacultyPublication/removePrototype.php',
   patentModelAddUrl: '../server/php/FacultyPublication/insertPatents.php',
   patentModelRemoveUrl: '../server/php/FacultyPublication/removePatents.php',
   textBookModelAddUrl: '../server/php/FacultyPublication/insertTextBook.php',
   textBookModelRemoveUrl: '../server/php/FacultyPublication/removeTextBook.php',
   chapTextbookModelAddUrl: '../server/php/FacultyPublication/insertChapterEdit.php',
   chapTextbookModelRemoveUrl: '../server/php/FacultyPublication/removeChapterEdit.php',
   confPaperModelAddUrl: '../server/php/FacultyPublication/insertConfPaper.php',
   confPaperModelRemoveUrl: '../server/php/FacultyPublication/removeConfPaper.php',
   creativeWorksModelAppUrl: '../server/php/FacultyPublication/insertOtherPub.php',
   creativeWorksModelRemoveUrl: '../server/php/FacultyPublication/removeOtherPub.php',
   screenPlayWorksModelAddUrl: '../server/php/FacultyPublication/insertScreenPlay.php',
   screenPlayWorksModelRemoveUrl: '../server/php/FacultyPublication/removeScreenPlay.php',
   otherResearchModelAddUrl: '../server/php/FacultyPublication/insertOtherResearch.php',
   otherResearchModelRemoveUrl: '../server/php/FacultyPublication/removeOtherResearch.php',
   conferenceModelAddUrl: '../server/php/FacultyPublication/insertSeminars.php',
   conferenceModelRemoveUrl: '../server/php/FacultyPublication/removeSeminars.php',
   comSrvDLSUAddUrl: '../server/php/FacultyCommunityService/insertComSrvDLSU.php',
   comSrvDLSURemoveUrl: '../server/php/FacultyCommunityService/removeComSrvDLSU.php',
   profOrgModelAddUrl: '../server/php/FacultyCommunityService/insertProfOrg.php',
   profOrgModelRemoveUrl: '../server/php/FacultyCommunityService/removeProfOrg.php',
   govOrgModelAddUrl: '../server/php/FacultyCommunityService/insertGovOrg.php',
   govOrgModelRemoveUrl: '../server/php/FacultyCommunityService/removeGovOrg.php',
   otherOrgModelAddUrl: '../server/php/FacultyCommunityService/insertCSOthers.php',
   otherOrgModelRemoveUrl: '../server/php/FacultyCommunityService/removeCSOthers.php',
   
   //Administrator URL
   facultyRecordsUrl: '../server/php/Admin/faculty.php'
 };
