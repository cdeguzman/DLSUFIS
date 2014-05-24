var FacultyProfileSectionTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var acadProfileSections = ['degreeEarned','degreePursue', 'specialTraining', 'teachExpr', 'license', 'nonTeachExp'];
  var profActivity1 = ['leadershipInProfOrg', 'membershipInProfOrg', 'awardsRecogAchievements', 'internalFundedResearch', 'externalFundedResearch', 'researchGrants'];
  var profActivity2 = ['journalPublication', 'protoypes', 'patents', 'textbooks', 'chapterBook', 'confPaper', 'publishBook', 'screenPlay' ,'otherResearch', 'conferences'];
  var comService = ['ComSrvDLSU', "profOrg", "govOrg", "otherOrg"];
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
    html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#academicProfile" data-toggle="tab">Profile And Experience</a></li>';
          html +='<li><a href="#professionalActivity1" data-toggle="tab">Professional Activities 1</a></li>';
          html +='<li><a href="#professionalActivity2" data-toggle="tab">Professional Activities 2</a></li>';
          html +='<li><a href="#communityService" data-toggle="tab">Community Service</a></li>';
        html +='</ul>';
        html +='<div class="tab-content">';
          html +='<div class="tab-pane fade in active" id="academicProfile">';
          acadProfileSections.forEach(function(section){
              html+='<div class="sectionMainDiv" id="'+section+'"></div>'
          });
          html +='</div>';
          html +='<div class="tab-pane fade" id="professionalActivity1">';
      profActivity1.forEach(function(section){
              html+='<div class="sectionMainDiv" id="'+section+'"></div>'
          });
          html +='</div>';
          html +='<div class="tab-pane fade" id="professionalActivity2">';
      profActivity2.forEach(function(section){
              html+='<div class="sectionMainDiv" id="'+section+'"></div>'
          });
      html +='</div>';
          html +='<div class="tab-pane fade" id="communityService">';
          comService.forEach(function(section){
              html+='<div class="sectionMainDiv id="'+section+'"></div>'
          });
      html +='</div>';
        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

        //Degree Earned View
        var degreeEarnedModel = facultyProfileSectionModel.clone();
        degreeEarnedModel.set('header','Degrees Earned');
        degreeEarnedModel.set('sectionId', 'degEarnedContent');
        degreeEarnedModel.set('apiUrl', App.facultyDegreeEarnedUrl);
        degreeEarnedModel.set('keys', new Array('dlevel_title', 'degree_title', 'area_spec', 'year_obtained', 'institution_name', 'location', 'so_num'));
        degreeEarnedModel.set('collumnNames', new Array('Degree(s) Earned', 'Title of Degree', 'Area of Specialization', 'Year Obtained', 'Educational Institution', 'Location', 'S.O. Number'));
        degreeEarnedModel.set('noteFoot', 'Note: Foreign universities are exempt from S.O. Number.');
        degreeEarnedModel.set('inputData', new Array(
          {inputLabel: "Degree Earned", inputName:"degree_id", inputType: "select", apiUrl:App.degreeDropDownUrl, selectValueDisplay:{id: "degree_id", value: "degree_title",}},
          {inputLabel: "Area of Specialization", inputName:"as_code", inputType: "select", apiUrl:App.specializationDropDownUrl, selectValueDisplay:{id: "as_code", value: "as_title",}},
		  {inputLabel: "Year Obtained", inputType: "text", inputName:"year_obtained",},
		  {inputLabel: "Institution", inputName:"institution_id", inputType: "select", apiUrl:App.institutionDropDownUrl, selectValueDisplay:{id: "institution_id", value: "institution_name",}},
		  {inputLabel: "SO Number", inputType: "text", inputName:"so_num",}
		  ));
        degreeEarnedModel.set('addUrl', App.degreeEarnedAddUrl);
        degreeEarnedModel.set('removeUrl', App.degreeEarnedRemoveUrl);
        degreeEarnedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[0],
          model: degreeEarnedModel
        }));

		//Degree Pursue View
    var degreePursueModel = facultyProfileSectionModel.clone();
        degreePursueModel.set('header','Degree being pursued');
        degreePursueModel.set('sectionId', 'degPursueContent');
        degreePursueModel.set('apiUrl', App.facultyDegreePursueUrl);
        degreePursueModel.set('keys', new Array('degree_title', 'institution_name', 'degree_stages', 'earned_units', 'start_date', 'end_date'));
        degreePursueModel.set('collumnNames', new Array('Degree being pursued', 'Name of Institution', 'Stage of Graduate Studies', 'No. of Units Completed', 'Start Date', 'End Date'));
        degreePursueModel.set('noteHead', 'IF PURSUING GRADUATE STUDIES, please fill up the following table: ');
          degreePursueModel.set('inputData', new Array(
		   {inputLabel: "Degree Being Pursued", inputName: "degree_id", inputType:"select", apiUrl:App.degreeDropDownUrl, selectValueDisplay:{id: "degree_id", value: "degree_title",}},  
		   {inputLabel: "Institution", inputName: "institution_id", inputType:"select", apiUrl:App.institutionDropDownUrl, selectValueDisplay:{id: "institution_id", value: "institution_name",}},
           {inputLabel: "Stage of Graduate Studies", inputName: "degree_stages", inputType:"text",},
           {inputLabel: "No. of Units Completed ", inputName: "earned_units", inputType:"text",},
           {inputLabel: "Start Date", inputName: "start_date", inputType:"text",},
           {inputLabel: "End Date", inputName: "end_date", inputType:"text",}		   
		  ));
		degreePursueModel.set('addUrl', App.degreePursueAddUrl);
        degreePursueModel.set('removeUrl', App.degreePursueRemoveUrl);
		degreePursueModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[1],
          model: degreePursueModel
        }));

        //Special Training
    var specialTrainingModel = facultyProfileSectionModel.clone();
        specialTrainingModel.set('header','SPECIAL TRAINING (e.g. post-doctoral work, post-baccalaureate diploma, post-baccalaureate certificate, etc.)');
        specialTrainingModel.set('sectionId', 'spcTrainingContent');
        specialTrainingModel.set('apiUrl', App.facultySpecialTrainingUrl);
        specialTrainingModel.set('keys', new Array('training_title', 'institution_name', 'venue', 'start_date', 'end_date'));
        specialTrainingModel.set('collumnNames', new Array('Training Title', 'Organization / Institution ', 'Venue (City,Country)', 'Start Date', 'End Date'));
        specialTrainingModel.set('inputData', new Array(
		   {inputLabel: "Training Title", inputName: "training_title", inputType:"text",},  
		   {inputLabel: "Institution", inputName: "institution_id", inputType:"select", apiUrl:App.institutionDropDownUrl, selectValueDisplay:{id: "institution_id", value: "institution_name",}},
		   {inputLabel: "Organization", inputName: "org_id", inputType: "select", apiUrl:App.orgDropDownUrl, selectValueDisplay:{id: "org_id", value: "org_name",}},
           {inputLabel: "Venue (City, Country)", inputName: "venue", inputType:"text",},
           {inputLabel: "Start Date", inputName: "start_date", inputType:"text",},
           {inputLabel: "End Date", inputName: "end_date", inputType:"text",}		   
		  ));
		specialTrainingModel.set('addUrl', App.specTrainingAddUrl);
        specialTrainingModel.set('removeUrl', App.specTrainingRemoveUrl);
		specialTrainingModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[2],
          model: specialTrainingModel
        }));

		//Teaching Experience
	var teachExpModel = facultyProfileSectionModel.clone();
        teachExpModel.set('header','Teaching Experience and Length of Service');
        teachExpModel.set('sectionId', 'teachExpContent');
        teachExpModel.set('apiUrl', App.facultyTeachExpUrl);
        teachExpModel.set('keys', new Array('el_title', 'no_years', 'institution_name', 'start_date', 'end_date', 'position'));
        teachExpModel.set('collumnNames', new Array('Level', 'Number of Years ', 'Institution Name', 'Start Date', 'End Date', 'Position'));
        teachExpModel.set('inputData', new Array(
		   {inputLabel: "Level", inputName: "el_title", inputType: "select", apiUrl:App.educLevelDropDownUrl, selectValueDisplay:{id: "el_id", value: "el_title",}},
		   {inputLabel: "Institution", inputName: "institution_id", inputType:"select", apiUrl:App.institutionDropDownUrl, selectValueDisplay:{id: "institution_id", value: "institution_name",}},
		   {inputLabel: "No. of Year", inputName: "no_years", inputType: "text",},
		   {inputLabel: "Start Date", inputName: "start_date", inputType:"text",},
           {inputLabel: "End Date", inputName: "end_date", inputType:"text",}
		));
		teachExpModel.set('addUrl', App.teachExpAddUrl);
        teachExpModel.set('removeUrl', App.teachExpRemoveUrl);
		teachExpModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[3],
          model: teachExpModel
        }));
 
		//Professional Experience/Licensure
	var licenseModel = facultyProfileSectionModel.clone();
        licenseModel.set('header','Professional Experience');
        licenseModel.set('sectionId', 'licenseContent');
        licenseModel.set('apiUrl', App.licenseUrl);
        licenseModel.set('keys', new Array('year_passed', 'licensure_title', 'licensure_no', 'date_validity'));
        licenseModel.set('collumnNames', new Array('Year Passed', 'Licensure Title','Licensure Number ', 'Date Validity'));
        licenseModel.set('inputData', new Array(
		  {inputLabel: "Year Passed", inputName:"year_passed", inputType:"text",},
		  {inputLabel: "Licensure Examination Passed", inputName:"licensure_title", inputType:"text",},
		  {inputLabel: "License Number", inputName:"licensure_no", inputType:"text",},
		  {inputLabel: "Valid Until", inputName:"date_validity", inputType:"text",}
		));
		licenseModel.set('addUrl', App.licenseAddUrl);
        licenseModel.set('removeUrl', App.licenseRemoveUrl);
		licenseModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[4],
          model: licenseModel
        }));

		//Non-Teaching Experience
	var nonTeachExpModel = facultyProfileSectionModel.clone();
        nonTeachExpModel.set('header','Professional Practice, Industrial Practice, or Employment outside DLSU other than teaching ');
        nonTeachExpModel.set('sectionId', 'nonTeachExpContent');
        nonTeachExpModel.set('apiUrl', App.nonTeachExpUrl);
        nonTeachExpModel.set('keys', new Array('work_nature', 'institution_name', 'no_years', 'start_date','end_date'));
        nonTeachExpModel.set('collumnNames', new Array('Nature of Practice/Project', 'Organization/Institution' ,'Number of Years ', 'Start Date', 'End Date'));
        nonTeachExpModel.set('inputData', new Array(
		  {inputLabel: "Nature of Project/Project", inputName: "work_nature", inputType: "text",},
		  {inputLabel: "Institution", inputName: "institution_id", inputType:"select", apiUrl:App.institutionDropDownUrl, selectValueDisplay:{id: "institution_id", value: "institution_name",}},
		  {inputLabel: "Organization", inputName: "org_id", inputType: "select", apiUrl:App.orgDropDownUrl, selectValueDisplay:{id: "org_id", value: "org_name",}},
		  {inputLabel: "No. of Years", inputName: "no_years", inputType: "text",},
		  {inputLabel: "Start Date", inputName: "start_date", inputType: "text",},
		  {inputLabel: "End Date", inputName: "end_date", inputType: "text",}
		));
		nonTeachExpModel.set('addUrl', App.nonTeachExpAddUrl);
        nonTeachExpModel.set('removeUrl', App.nonTeachExpRemoveUrl);
		nonTeachExpModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[5],
          model: nonTeachExpModel
        }));

		//Leadership in Professional Organization
	var leadershipInOrgProfModel = facultyProfileSectionModel.clone();
        leadershipInOrgProfModel.set('header','Leadership in professional organizations');
        leadershipInOrgProfModel.set('sectionId', 'leadershipInOrgProfContent');
        leadershipInOrgProfModel.set('apiUrl', App.facLeaderUrl);
        leadershipInOrgProfModel.set('keys', new Array('designation', 'org_name', 'start_date', 'end_date'));
        leadershipInOrgProfModel.set('collumnNames', new Array('Designation/Role', 'Professional Organization', 'Start Date', 'End Date'));
        leadershipInOrgProfModel.set('inputData', new Array(
		   {inputLabel: "Designation/Role", inputName: "designation", inputType: "text", },
		   {inputLabel: "Organization", inputName: "org_id", inputType: "select", apiUrl:App.orgDropDownUrl, selectValueDisplay:{id: "org_id", value: "org_name",}},
		   {inputLabel: "Start Date", inputName: "start_date", inputType: "text",},
		   {inputLabel: "End Date", inputName: "end_date", inputType: "text",}
		));
		leadershipInOrgProfModel.set('addUrl', App.leadershipAddUrl);
        leadershipInOrgProfModel.set('removeUrl', App.leadershipRemoveUrl);
		leadershipInOrgProfModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[0],
          model: leadershipInOrgProfModel
        }));
		
		//Membership in Professional Organization
	var membershipInOrgProfModel = facultyProfileSectionModel.clone();
        membershipInOrgProfModel.set('header','Membership in professional organizations');
        membershipInOrgProfModel.set('sectionId', 'membershipInOrgProfContent');
        membershipInOrgProfModel.set('apiUrl', App.facMemberUrl);
        membershipInOrgProfModel.set('keys', new Array('designation', 'org_name', 'start_date', 'end_date'));
        membershipInOrgProfModel.set('collumnNames', new Array('Designation/Role', 'Professional Organization', 'Start Date', 'End Date'));
        membershipInOrgProfModel.set('inputData', new Array(
		  {inputLabel: "Designation/Role", inputName: "designation", inputType: "text",},
		  {inputLabel: "Organization", inputName: "org_id", inputType: "select", apiUrl:App.orgDropDownUrl, selectValueDisplay:{id: "org_id", value: "org_name",}},
		  {inputLabel: "Start Date", inputName: "start_date", inputType: "text",},
		  {inputLabel: "End Date", inputName: "end_date", inputType: "text",}
		));
		
		membershipInOrgProfModel.set('addUrl', App.membershipAddUrl);
		membershipInOrgProfModel.set('removeUrl', App.membershipRemoveUrl);
		membershipInOrgProfModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[1],
          model: membershipInOrgProfModel
        }));
	
	
		//Faculty Awards
	var awardsModel = facultyProfileSectionModel.clone();
        awardsModel.set('header','Outstanding Achievements/Awards/Recognition Received since 2005');
        awardsModel.set('sectionId', 'awardsContent');
        awardsModel.set('apiUrl', App.facAwardsUrl);
        awardsModel.set('keys', new Array('award_title', 'award_body', 'award_date'));
        awardsModel.set('collumnNames', new Array('Achievements/Awards', 'Awarding Body', 'Award Date'));
        awardsModel.set('inputData', new Array(
		   {inputLabel: "Achievements/Awards/Recognition", inputName: "award_title", inputType:"text",},
		   {inputLabel: "Awarding Body", inputName: "award_body", inputType:"text",},
		   {inputLabel: "Date", inputName: "award_date", inputType:"text",}
		));
		awardsModel.set('addUrl', App.awardsAddUrl);
		awardsModel.set('removeUrl', App.awardsRemoveUrl);
		awardsModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[2],
          model: awardsModel
        }));
	
        //Internally Funded Research
	var inResFundedModel = facultyProfileSectionModel.clone();
        inResFundedModel.set('header','Internally Funded Research Projects/Activities (since 2005)');
        inResFundedModel.set('sectionId', 'inResFundedContent');
        inResFundedModel.set('apiUrl', App.facInFundedUrl);
        inResFundedModel.set('keys', new Array('research_title','unit_title', 'amount', 'start_date', 'end_date'));
        inResFundedModel.set('collumnNames', new Array('Research Projects/Activites', 'Funding Agency', 'Amount of Research Grant', 'Start Date', 'End Date'));
        inResFundedModel.set('inputData', new Array(
		  {inputLabel: "Research Projects/Activities", inputName: "research_title", inputType: "text",},
		  {inputLabel: "Funding Agency/Unit", inputName: "unit_title", inputType: "select", apiUrl:App.unitDropDownUrl, selectValueDisplay:{id: "unit_code", value: "unit_title",}},
		  {inputLabel: "Amount of Research Grant", inputName: "amount", inputType: "text",},
		  {inputLabel: "Start Date", inputName: "start_date", inputType: "text",},
		  {inputLabel: "End Date", inputName: "end_date", inputType: "text",}
		));
		inResFundedModel.set('addUrl', App.inResFundedAddUrl);
		inResFundedModel.set('removeUrl', App.inResFundedRemoveUrl);
		inResFundedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[3],
          model: inResFundedModel
        }));
     
     //Externally Funded Research
	var exResFundedModel = facultyProfileSectionModel.clone();
        exResFundedModel.set('header','Externally Funded Research Projects/Activities (since 2005)');
        exResFundedModel.set('sectionId', 'exResFundedContent');
        exResFundedModel.set('apiUrl', App.facExFundedUrl);
        exResFundedModel.set('keys', new Array('research_title','fagency_name', 'currency', 'amount','start_date', 'end_date'));
        exResFundedModel.set('collumnNames', new Array('Research Projects/Activites', 'Funding Agency', 'Currency','Amount of Research Grant', 'Start Date', 'End Date'));
        exResFundedModel.set('inputData', new Array(
		   {inputLabel: "Research Project Activities", inputName: "research_title", inputType: "text",},
		   {inputLabel: "Funding Agency", inputName: "fagency_name", inputType: "select", apiUrl:App.fagencyDropDownUrl, selectValueDisplay:{id: "fagency_id", value: "fagency_name",}}
		));
		
		exResFundedModel.set('addUrl', App.exResFundedAddUrl);
		exResFundedModel.set('removeUrl', App.exResFundedRemoveUrl);
		exResFundedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[4],
          model: exResFundedModel 
        }));
		
		
	 
//^^
 
 },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});