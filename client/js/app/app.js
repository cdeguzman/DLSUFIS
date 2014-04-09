window.App = {
   currentFacultyId: '', //Current Logged in Faculty

   /*Api URL's*/

   loginUrl: '../server/php/check.php',

   facultyProfileUrl: '../server/php/FacultyPersonalInfo/getFacInfo.php', //Get Faculty Information
   facultyDegreeEarnedUrl: '../server/php/FacultyAcademicBackground/getFacEarnedDegree.php', //Get Degree Earned
   facultyDegreePursueUrl: '../server/php/FacultyAcademicBackground/getFacDegreePursue.php', //Get Degree Pursue
   facultySpecialTrainingUrl: '../server/php/FacultySpecialTraining/getFacSpecTrain1.php', // Faculty Special Training
   facultyTeachExpUrl: '../server/php/FacultyTeachingExperience/getFacTeachDLSU.php', // Faculty Teaching Exp
   licenseUrl: '../server/php/FacultyLicensure/getFacProfExp.php', // Faculty Licensure
   nonTeachExpUrl: '../server/php/FacultyNon-Teaching%20Exp/getFacProfPrac1.php', // Non Teaching Exp 
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
   facOtherOrgUrl: '../server/php/FacultyCommunityService/getFacCSGovOrg.php', //Other Orgs



   //Dropdows

   degreeDropDownUrl: '../server/php/Admin/degree.php',
   institutionDropDownUrl: '../server/php/Admin/institution.php',

   //Add Remove Edit
   degreeEarnedAddUrl: '../client/json/newdata.json',
   degreeEarnedRemoveUrl: '../client/json/newdata.json'

 };
