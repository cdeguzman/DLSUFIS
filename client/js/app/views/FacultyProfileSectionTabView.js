var FacultyProfileSectionTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var hidePanel = App.currentFacultyId.length==4 ? " hidePanel" : ""
    var acadProfileSections = ['degreeEarned','degreePursue', 'specialTraining', 'teachExpr', 'license', 'nonTeachExp'];
    var profActivity1 = ['leadershipInProfOrg', 'membershipInProfOrg', 'awardsRecogAchievements', 'internalFundedResearch', 'externalFundedResearch', 'researchGrants'];
    var profActivity2 = ['journalPublication', 'protoypes', 'patents', 'textbooks', 'chapterBook', 'confPaper', 'publishBook', 'screenPlay' ,'otherResearch', 'conferences'];
    var comService = ['ComSrvDLSU', 'profOrg', 'govOrg', 'otherOrg'];
    var facInfo = ['facInfo', 'facPassword', 'facInfo2'];
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
        html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#academicProfile" data-toggle="tab">Profile And Experience</a></li>';
          html +='<li><a href="#professionalActivity1" data-toggle="tab">Professional Activities 1</a></li>';
          html +='<li><a href="#professionalActivity2" data-toggle="tab">Professional Activities 2</a></li>';
          html +='<li><a href="#communityService" data-toggle="tab">Community Service</a></li>';
          html +='<li><a href="#facInfo" data-toggle="tab">Profile</a></li>';
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
              html+='<div class="sectionMainDiv" id="'+section+'"></div>'
          });
      html +='</div>';
      html +='<div class="tab-pane fade" id="facInfo">';
          facInfo.forEach(function(section){
              html+='<div class="sectionMainDiv" id="'+section+'"></div>'
          });
      html +='</div>';
        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

        //Degree Earned View
        var degreeEarnedModel = facultyProfileSectionModel.clone();
        degreeEarnedModel.set('header','Degrees Earned');
        degreeEarnedModel.set('sectionId', 'degEarnedContent');
        degreeEarnedModel.set('apiUrl', App.facultyDegreeEarnedUrl);
        degreeEarnedModel.set('keys', new Array('dlevel_title', 'degree_title', 'specialization', 'year_obtained', 'institution_id', 'location_id', 'so_num'));
        degreeEarnedModel.set('collumnNames', new Array('Degree(s) Earned', 'Title of Degree', 'Area of Specialization', 'Year Obtained', 'Educational Institution', 'Location', 'S.O. Number'));
        degreeEarnedModel.set('noteFoot', 'Note: Foreign universities are exempt from S.O. Number.');
        degreeEarnedModel.set('inputData', new Array(
          {inputLabel: "Degree Level", inputName: "dlevel_id", inputType: "select", apiUrl:App.degreeLevelDropDownUrl, selectValueDisplay:{id:"dlevel_id", value:"dlevel_title"}},
  		  {inputLabel: "Degree Earned", inputName: "degree_id", inputType: "select", apiUrl:App.degreeDropDownUrl, selectValueDisplay:{id: "id", value: "degree_title"}},
          {inputLabel: "Area of Specialization", inputName: "specialization", inputType: "text"},
      	  {inputLabel: "Year Obtained", inputName: "year_obtained", inputType: "year"},
      	  {inputLabel: "Institution", inputName: "institution_id", inputType: "text"},
      	  {inputLabel: "Location", inputName: "location_id", inputType: "text"},
      	  {inputLabel: "SO Number", inputName: "so_num", inputType: "text"}
		    ));
        degreeEarnedModel.set('addUrl', App.degreeEarnedAddUrl);
        degreeEarnedModel.set('removeUrl', App.degreeEarnedRemoveUrl);
		degreeEarnedModel.set('fetchRowUrl', App.degreeEarnedFetchUrl);
		degreeEarnedModel.set('editUrl', App.degreeEarnedEditUrl);
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
        degreePursueModel.set('keys', new Array('degree_title', 'institution_id', 'ds_name', 'earned_units', 'start_date', 'end_date'));
        degreePursueModel.set('collumnNames', new Array('Degree being pursued', 'Name of Institution', 'Stage of Graduate Studies', 'No. of Units Completed', 'Start Date', 'End Date'));
        degreePursueModel.set('noteHead', 'IF PURSUING GRADUATE STUDIES, please fill up the following table: ');
        degreePursueModel.set('inputData', new Array(
          {inputLabel: "Degree Level", inputName: "dlevel_id", inputType: "select", apiUrl:App.degreeLevelDropDownUrl, selectValueDisplay:{id:"dlevel_id", value:"dlevel_title"}},
    	  {inputLabel: "Degree Being Pursued", inputName: "degree_id", inputType:"select", apiUrl:App.degreeDropDownUrl, selectValueDisplay:{id: "id", value: "degree_title"}},  
          {inputLabel: "Institution", inputName: "institution_id", inputType:"text"},
	      {inputLabel: "Stage of Graduate Studies", inputName: "degree_stages", inputType:"select",apiUrl:App.degreeStagesDropDownUrl, selectValueDisplay:{id: "ds_code", value: "ds_name"}},
	      {inputLabel: "No. of Units Completed ", inputName: "earned_units", inputType: "text"},
	      {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
	      {inputLabel: "End Date", inputName: "end_date", inputType: "text"}		   
	    ));
	   degreePursueModel.set('addUrl', App.degreePursueAddUrl);
       degreePursueModel.set('removeUrl', App.degreePursueRemoveUrl);
	   degreePursueModel.set('fetchRowUrl', App.degreePursueFetchUrl);
	   degreePursueModel.set('editUrl', App.degreePursueEditUrl);
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
        specialTrainingModel.set('keys', new Array('training_title', 'institution', 'venue', 'start_date', 'end_date'));
        specialTrainingModel.set('collumnNames', new Array('Training Title', 'Institution ', 'Venue (City,Country)', 'Start Date', 'End Date'));
        specialTrainingModel.set('inputData', new Array(
	       {inputLabel: "Training Title", inputName: "training_title", inputType:"text"},  
	       {inputLabel: "Institution/Organization", inputName: "institution", inputType: "text"},
	       {inputLabel: "Venue (City, Country)", inputName: "venue", inputType:"text"},
           {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
           {inputLabel: "End Date", inputName: "end_date", inputType: "date"}		   
        ));
	    specialTrainingModel.set('addUrl', App.specTrainingAddUrl);
        specialTrainingModel.set('removeUrl', App.specTrainingRemoveUrl);
		specialTrainingModel.set('fetchRowUrl', App.specTrainingFetchUrl);
	    specialTrainingModel.set('editUrl', App.specTrainingEditUrl);
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
        teachExpModel.set('keys', new Array('el_title', 'no_years', 'institution_id', 'start_date', 'end_date', 'position_title'));
        teachExpModel.set('collumnNames', new Array('Level', 'Number of Years ', 'Institution Name', 'Start Date', 'End Date', 'Position'));
        teachExpModel.set('inputData', new Array(
	       {inputLabel: "Level", inputName: "el_id", inputType: "select", apiUrl:App.educLevelDropDownUrl, selectValueDisplay:{id: "el_id", value: "el_title"}},
	       {inputLabel: "Academic Institution", inputName: "institution_id", inputType:"text"},
	       {inputLabel: "No. of Years", inputName: "no_years", inputType: "text"},
	       {inputLabel: "Start Date", inputName: "start_date", inputType:"date"},
           {inputLabel: "End Date", inputName: "end_date", inputType: "text"},
	       {inputLabel: "Position", inputName: "position_id", inputType: "select", apiUrl:App.positionDropDownUrl, selectValueDisplay: {id: "position_id", value: "position_title"}}
	    ));
	    teachExpModel.set('addUrl', App.teachExpAddUrl);
        teachExpModel.set('removeUrl', App.teachExpRemoveUrl);
		teachExpModel.set('fetchRowUrl', App.teachExpFetchUrl);
	    teachExpModel.set('editUrl', App.teachExpEditUrl);
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
        licenseModel.set('keys', new Array('year_passed', 'licensure_title', 'license_no', 'date_validity'));
        licenseModel.set('collumnNames', new Array('Year Passed', 'Licensure Title', 'Licensure Number ', 'Date Validity'));
        licenseModel.set('inputData', new Array(
	       {inputLabel: "Year Passed", inputName: "year_passed", inputType: "year"},
	       {inputLabel: "Licensure Examination Passed", inputName: "licensure_title", inputType: "text"},
	       {inputLabel: "License Number", inputName: "license_no", inputType: "text"},
	       {inputLabel: "Valid Until", inputName: "date_validity", inputType: "date"}
	    ));
	    licenseModel.set('addUrl', App.licenseAddUrl);
        licenseModel.set('removeUrl', App.licenseRemoveUrl);
		licenseModel.set('fetchRowUrl', App.licenseFetchUrl);
	    licenseModel.set('editUrl', App.licenseEditUrl);
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
        nonTeachExpModel.set('keys', new Array('work_nature', 'institution', 'no_years', 'start_date','end_date'));
        nonTeachExpModel.set('collumnNames', new Array('Nature of Practice/Project', 'Institution', 'Number of Years ', 'Start Date', 'End Date'));
        nonTeachExpModel.set('inputData', new Array(
	       {inputLabel: "Nature of Project/Project", inputName: "work_nature", inputType: "text"},
	       {inputLabel: "Institution/Organization", inputName: "institution", inputType:"text"},
	       {inputLabel: "No. of Years", inputName: "no_years", inputType: "text"},
	       {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
	       {inputLabel: "End Date", inputName: "end_date", inputType: "date"}
	    ));
	    nonTeachExpModel.set('addUrl', App.nonTeachExpAddUrl);
        nonTeachExpModel.set('removeUrl', App.nonTeachExpRemoveUrl);
	    nonTeachExpModel.set('fetchRowUrl', App.nonTeachExpFetchUrl);
		nonTeachExpModel.set('editUrl', App.nonTeachExpEditUrl);
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
	       {inputLabel: "Designation/Role", inputName: "designation", inputType: "text"},
	       {inputLabel: "Organization", inputName: "org_name", inputType: "text"},
	       {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
	       {inputLabel: "End Date (Present or mm/dd/yyyy)", inputName: "end_date", inputType: "text"}
	    ));
	    leadershipInOrgProfModel.set('addUrl', App.leadershipAddUrl);
        leadershipInOrgProfModel.set('removeUrl', App.leadershipRemoveUrl);
		leadershipInOrgProfModel.set('fetchRowUrl', App.leadershipFetchUrl);
	    leadershipInOrgProfModel.set('editUrl', App.leadershipEditUrl);
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
		  {inputLabel: "Designation/Role", inputName: "designation", inputType: "text"},
		  {inputLabel: "Organization", inputName: "org_name", inputType: "text"},
		  {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
		  {inputLabel: "End Date (Present or mm/dd/yyyy)", inputName: "end_date", inputType: "text"}
		));
		membershipInOrgProfModel.set('addUrl', App.membershipAddUrl);
		membershipInOrgProfModel.set('removeUrl', App.membershipRemoveUrl);
		membershipInOrgProfModel.set('fetchRowUrl', App.membershipFetchUrl);
		membershipInOrgProfModel.set('editUrl', App.membershipEditUrl);
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
		   {inputLabel: "Achievements/Awards/Recognition", inputName: "award_title", inputType:"text"},
		   {inputLabel: "Awarding Body", inputName: "award_body", inputType: "text"},
		   {inputLabel: "Date", inputName: "award_date", inputType: "date"}
		));
		awardsModel.set('addUrl', App.awardsAddUrl);
		awardsModel.set('removeUrl', App.awardsRemoveUrl);
		awardsModel.set('fetchRowUrl', App.awardsFetchUrl);
		awardsModel.set('editUrl', App.awardsEditUrl);
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
        inResFundedModel.set('keys', new Array('research_title','funding_unit', 'amount', 'start_date', 'end_date'));
        inResFundedModel.set('collumnNames', new Array('Research Projects/Activites', 'Funding Agency', 'Amount of Research Grant', 'Start Date', 'End Date'));
        inResFundedModel.set('inputData', new Array(
		  {inputLabel: "Research Projects/Activities", inputName: "research_title", inputType: "text"},
		  {inputLabel: "Funding Agency/Unit", inputName: "unit_title", inputType: "text"},
		  {inputLabel: "Amount of Research Grant", inputName: "amount", inputType: "text"},
		  {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
		  {inputLabel: "End Date (On-Going or mm/dd/yyyy)", inputName: "end_date", inputType: "text"}
		));
		inResFundedModel.set('addUrl', App.inResFundedAddUrl);
		inResFundedModel.set('removeUrl', App.inResFundedRemoveUrl);
		inResFundedModel.set('fetchRowUrl', App.inResFundedFetchUrl);
		inResFundedModel.set('editUrl', App.inResFundedEditUrl);
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
        exResFundedModel.set('keys', new Array('research_title','fagency', 'currency', 'amount','start_date', 'end_date'));
        exResFundedModel.set('collumnNames', new Array('Research Projects/Activites', 'Funding Agency', 'Currency','Amount of Research Grant', 'Start Date', 'End Date'));
        exResFundedModel.set('inputData', new Array(
			{inputLabel: "Research Project Activities", inputName: "research_title", inputType: "text"},
			{inputLabel: "Funding Agency", inputName: "fagency", inputType: "text"},
			{inputLabel: "Currency", inputName: "currency", inputType: "select", apiUrl:App.currencyDropDownUrl, selectValueDisplay:{id: "id", value: "currency_name"}},
			{inputLabel: "Amount of Research Grant", inputName: "amount", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date (On-Going or mm/dd/yyyy)", inputName: "end_date", inputType: "text"}
		));
		exResFundedModel.set('addUrl', App.exResFundedAddUrl);
		exResFundedModel.set('removeUrl', App.exResFundedRemoveUrl);
		exResFundedModel.set('fetchRowUrl', App.exResFundedFetchUrl);
		exResFundedModel.set('editUrl', App.exResFundedEditUrl);
		exResFundedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[4],
          model: exResFundedModel 
        }));
 
     // Research Grants, Fellowship, Scholarship
     var resGrantsModel = facultyProfileSectionModel.clone();
        resGrantsModel.set('header','Research Grants, Fellowships, Scholarships Received (since 2005)');
        resGrantsModel.set('sectionId', 'resGrantsContent');
        resGrantsModel.set('apiUrl', App.facResGrantsUrl);
        resGrantsModel.set('keys', new Array('research_title','fagency', 'start_date', 'end_date'));
        resGrantsModel.set('collumnNames', new Array('Research Projects/Activites', 'Funding Agency', 'Start Date', 'End Date'));
        resGrantsModel.set('inputData', new Array(
		    {inputLabel: "Research Project/Activities", inputName: "research_title", inputType: "text"},
			{inputLabel: "Funding Agency", inputName: "fagency", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date (On-Going or mm/dd/yyyy)", inputName: "end_date", inputType: "text"}
			));
		resGrantsModel.set('addUrl', App.resGrantModelAddUrl);
		resGrantsModel.set('removeUrl', App.resGrantModelRemoveUrl);
		resGrantsModel.set('fetchRowUrl', App.resGrantModelFetchUrl);
		resGrantsModel.set('editUrl', App.resGrantModelEditUrl);
		resGrantsModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[5],
          model: resGrantsModel
        }));	
	 
	 // Journal Publication
     var journalPubModel = facultyProfileSectionModel.clone();
        journalPubModel.set('header','Journal Publication (since 2005)');
        journalPubModel.set('sectionId', 'journalPubContent');
        journalPubModel.set('apiUrl', App.facJournalUrl);
        journalPubModel.set('keys', new Array('flname','paper_title', 'journal', 'date_publication', 'volume_no', 'issue_no', 'pages', 'journalpub_type'));
        journalPubModel.set('collumnNames', new Array('Author(s)', 'Title', 'Journal Name', 'Date', 'Volume Number', 'Issue Number', 'Pages', 'ISI'));
        journalPubModel.set('inputData', new Array(
	        {inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Journal Name", inputName: "journal", inputType: "text"},
			{inputLabel: "Publication Date", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Volume Number", inputName: "volume_no", inputType: "text"},
			{inputLabel: "Issue Number", inputName: "issue_no", inputType: "text"},
			{inputLabel: "Pages", inputName: "pages", inputType: "text"},
			{inputLabel: "ISI/ISBN", inputName: "isi", inputType: "select", apiUrl:App.journalpubDropDownUrl, selectValueDisplay:{id: "id", value: "journalpub_type"}},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}},
			{inputLabel: "Co-Author", inputName: "co_author", inputType: "select", apiUrl:App.coAuthorDropDownUrl, selectValueDisplay:{id:"id", value: "author_val"}}
		));
		journalPubModel.set('addUrl', App.journalPubModelAddUrl);
		journalPubModel.set('removeUrl', App.journalPubModelRemoveUrl);
		journalPubModel.set('fetchRowUrl', App.journalPubModelFetchUrl);
		journalPubModel.set('editUrl', App.journalPubModelEditUrl);
		journalPubModel.getData();
		
	this.subViews.push(new FacultyProfileSectionView({
         el: '#'+profActivity2[0],
          model: journalPubModel
        })); 
	
     // Published Prototype
     var pubPrototypeModel = facultyProfileSectionModel.clone();
        pubPrototypeModel.set('header','Prototype (since 2005)');
        pubPrototypeModel.set('sectionId', 'pubPrototypeContent');
        pubPrototypeModel.set('apiUrl', App.facPrototypeUrl);
        pubPrototypeModel.set('keys', new Array('flname','paper_title', 'journal', 'date_publication', 'volume_no', 'issue_no', 'pages', 'isbn'));
        pubPrototypeModel.set('collumnNames', new Array('Author(s)', 'Title', 'Journal Name', 'Date', 'Volume Number', 'Issue Number', 'Pages', 'ISSN/ISBN'));
        pubPrototypeModel.set('inputData', new Array(
			{inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Journal Name", inputName: "journal", inputType: "text"},
			{inputLabel: "Date", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Volume No", inputName: "volume_no", inputType: "text"},
			{inputLabel: "Issue No", inputName: "issue_no", inputType: "text"},
			{inputLabel: "Pages", inputName: "pages", inputType: "text"},
			{inputLabel: "ISSN/ISBN", inputName: "isbn", inputType: "text"}
        ));
		pubPrototypeModel.set('addUrl', App.pubPrototypeModelAddUrl);
		pubPrototypeModel.set('removeURL', App.pubProtoypeModelRemoveUrl);
		pubPrototypeModel.set('fetchRowUrl', App.pubPrototypeModelFetchUrl);
		pubPrototypeModel.set('editUrl', App.pubPrototypeModelEditUrl);
		pubPrototypeModel.getData();
        
        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[1],
          model: pubPrototypeModel
        }));
	
	 // Patents
     var patentModel = facultyProfileSectionModel.clone();
        patentModel.set('header','Patents (since 2005)');
        patentModel.set('sectionId', 'patentsContent');
        patentModel.set('apiUrl', App.facPatentsUrl);
        patentModel.set('keys', new Array('flname','paper_title','date_publication', 'issuing_country', 'patent_no'));
        patentModel.set('collumnNames', new Array('Author(s)', 'Title', 'Date', 'Issuing Country', 'Patent No'));
        patentModel.set('inputData', new Array(
			{inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Publication Date", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Issuing Country", inputName: "country_code", inputType: "select", apiUrl:App.countryDropDownUrl, selectValueDisplay:{id: "country_code", value: "country_name"}},
			{inputLabel: "Patent Number", inputName: "patent_no", inputType: "text"}
		));
		patentModel.set('addUrl', App.patentModelAddUrl);
		patentModel.set('removeUrl', App.patentModelRemoveUrl);
		patentModel.set('fetchRowUrl', App.patentModelFetchUrl);
		patentModel.set('editUrl', App.patentModelEditUrl);
		patentModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[2],
          model: patentModel
        }));
   
     // Textbooks
     var textbookModel = facultyProfileSectionModel.clone();
        textbookModel.set('header','Books and Textbooks (since 2005) ');
        textbookModel.set('sectionId', 'textbooksContent');
        textbookModel.set('apiUrl', App.facTextbooksUrl);
        textbookModel.set('keys', new Array('flname','paper_title', 'publisher', 'place_publication', 'date_publication', 'isbn'));
        textbookModel.set('collumnNames', new Array('Author(s)', 'Title', 'Publisher', 'Place of Publication','Date of Publication', 'ISBN'));
        textbookModel.set('inputData', new Array(
		   {inputLabel: "Title", inputName: "paper_title", inputType: "text"},
		   {inputLabel: "Publisher", inputName: "publisher", inputType: "text"},
		   {inputLabel: "Place of Publication", inputName: "place_publication", inputType: "text"},
		   {inputLabel: "Publication Date", inputName: "date_publication", inputType: "date"},
		   {inputLabel: "ISBN", inputName: "isbn", inputType: "text"},
		   {inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}}
		));
		textbookModel.set('addUrl', App.textBookModelAddUrl);
		textbookModel.set('removeUrl', App.textBookModelRemoveUrl);
		textbookModel.set('fetchRowUrl', App.textBookModelFetchUrl);
		textbookModel.set('editUrl', App.textBookModelEditUrl);
		textbookModel.getData();
        
		this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[3],
          model: textbookModel
        }));

     // Chapter Textbooks
     var chapTextbookModel = facultyProfileSectionModel.clone();
        chapTextbookModel.set('header','Chapter in Edited Book (since 2005)');
        chapTextbookModel.set('sectionId', 	'chaptextbooksContent');
        chapTextbookModel.set('apiUrl', App.facChaperBookUrl);
        chapTextbookModel.set('keys', new Array('flname', 'work_title', 'paper_title', 'editors', 'publisher', 'place_publication', 'date_publication', 'pages', 'isbn'));
        chapTextbookModel.set('collumnNames', new Array('Author(s)', 'Title of Work', 'Title of Book', 'Editor(s)','Publisher', 'Place of Publication', 'Date of Publication', 'Pages', 'ISBN'));
        chapTextbookModel.set('inputData', new Array(
		    {inputLabel: "Title of Work", inputName: "work_title", inputType: "text"},
			{inputLabel: "Title of Book", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Editor/s", inputName: "editors", inputType: "text"},
			{inputLabel: "Publisher", inputName: "publisher", inputType: "text"},
			{inputLabel: "Place of Publication", inputName: "place_publication", inputType: "text"},
			{inputLabel: "Date of Publication", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Pages", inputName: "pages", inputType: "text"},
			{inputLabel: "ISBN", inputName: "isbn", inputType: "text"},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}}
		));
		chapTextbookModel.set('addUrl', App.chapTextbookModelAddUrl);
		chapTextbookModel.set('removeUrl', App.chapTextbookModelRemoveUrl);
		chapTextbookModel.set('fetchRowUrl', App.chapTextbookModelFetchUrl);
		chapTextbookModel.set('editUrl', App.chapTextbookModelEditUrl);
		chapTextbookModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[4],
          model: chapTextbookModel
        }));


	 // Conference Paper
     var confPaperModel = facultyProfileSectionModel.clone();
        confPaperModel.set('header','Papers published in conference proceedings (since 2005)');
        confPaperModel.set('sectionId', 'confPaperContent');
        confPaperModel.set('apiUrl', App.facConPapUrl);
        confPaperModel.set('keys', new Array('flname','paper_title', 'conf_title','publisher', 'place_publication', 'pages', 'date_publication'));
        confPaperModel.set('collumnNames', new Array('Author(s)', 'Title of Paper', 'Title of Conference Proceedings','Publisher', 'Place of Publication', 'Pages','Date of Publication'));
        confPaperModel.set('inputData', new Array(
			{inputLabel: "Title of Paper", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Title of Conference Proceedings", inputName: "conf_title", inputType: "text"},
			{inputLabel: "Publisher", inputName: "publisher", inputType: "text"},
			{inputLabel: "Place of Publication", inputName: "place_publication", inputType: "text"},
			{inputLabel: "Pages", inputName: "pages", inputType: "text"},
			{inputLabel: "Date of Publication", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}},
			{inputLabel: "Co-Author", inputName: "co_author", inputType: "select", apiUrl:App.coAuthorDropDownUrl, selectValueDisplay:{id:"id", value: "author_val"}}
		));
		confPaperModel.set('addUrl', App.confPaperModelAddUrl);
		confPaperModel.set('removeUrl', App.confPaperModelRemoveUrl);
		confPaperModel.set('fetchRowUrl', App.confPaperModelFetchUrl);
		confPaperModel.set('editUrl', App.confPaperModelEditUrl);
		confPaperModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[5],
          model: confPaperModel
        }));

     //Published Creative Works
      var creativeWorksModel = facultyProfileSectionModel.clone();
        creativeWorksModel.set('header','Published short stories, novel, poetry, play, screenplay, creative work (since 2005)');
        creativeWorksModel.set('sectionId', 'creativeWorkContent');
        creativeWorksModel.set('apiUrl', App.facPubBookUrl);
        creativeWorksModel.set('keys', new Array('flname','paper_title', 'published_in','publisher', 'place_publication', 'pages', 'date_publication'));
        creativeWorksModel.set('collumnNames', new Array('Author(s)', 'Title', 'Published in','Publisher', 'Place of Publication', 'Pages','Date of Publication'));
        creativeWorksModel.set('inputData', new Array(
			{inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Published In", inputName: "published_in", inputType: "text"},
			{inputLabel: "Publisher", inputName: "publisher", inputType: "text"},
			{inputLabel: "Place of Publication", inputName: "place_publication", inputType: "text"},
			{inputLabel: "Pages", inputName: "pages", inputType: "text"},
			{inputLabel: "Date of Publication", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}}
		));
		
		creativeWorksModel.set('addUrl', App.creativeWorksModelAppUrl);
		creativeWorksModel.set('removeUrl', App.creativeWorksModelRemoveUrl);
		creativeWorksModel.set('fetchRowUrl', App.creativeWorksModelFetchUrl);
		creativeWorksModel.set('editUrl', App.creativeWorksModelEditUrl);
		creativeWorksModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[6],
          model: creativeWorksModel
        }));
	
     //Screen Play
      var screenPlayWorksModel = facultyProfileSectionModel.clone();
        screenPlayWorksModel.set('header','Play, screenplay, film, creative work performed or presented (since 2005)');
        screenPlayWorksModel.set('sectionId', 'screenPlayContent');
        screenPlayWorksModel.set('apiUrl', App.facScreenPlayUrl);
        screenPlayWorksModel.set('keys', new Array('flname','paper_title', 'venue_performance','date_publication'));
        screenPlayWorksModel.set('collumnNames', new Array('Author(s)', 'Title', 'Venue of Performance / Presentation','Date'));
        screenPlayWorksModel.set('inputData', new Array(
			{inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Venue of Performance/Presentation", inputName: "venue_performance", inputType: "text"},
			{inputLabel: "Date", inputName: "date_publication", inputType: "date"}
		));
		
		screenPlayWorksModel.set('addUrl', App.screenPlayWorksModelAddUrl);
		screenPlayWorksModel.set('removeUrl', App.screenPlayWorksModelRemoveUrl);
		screenPlayWorksModel.set('fetchRowUrl', App.screenPlayWorksModelFetchUrl);
		screenPlayWorksModel.set('editUrl', App.screenPlayWorksModelEditUrl);
		screenPlayWorksModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[7],
          model: screenPlayWorksModel
        }));

     //Other Research
      var otherResearchModel = facultyProfileSectionModel.clone();
        otherResearchModel.set('header','Other research outputs (working papers; research reports; conference papers/posters, etc) since 2005');
        otherResearchModel.set('sectionId', 'otherReseachContent');
        otherResearchModel.set('apiUrl', App.facOtherResearchUrl);
        otherResearchModel.set('keys', new Array('flname','paper_title', 'paper_type', 'date_publication', 'remarks'));
        otherResearchModel.set('collumnNames', new Array('Author(s)', 'Title', 'Type','Date', 'Remarks'));
        otherResearchModel.set('inputData', new Array(
			{inputLabel: "Title", inputName: "paper_title", inputType: "text"},
			{inputLabel: "Type", inputName: "paper_type", inputType: "text"},
			{inputLabel: "Date", inputName: "date_publication", inputType: "date"},
			{inputLabel: "Remarks", inputName: "remarks", inputType: "text"},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}},
			{inputLabel: "Co-Author", inputName: "co_author", inputType: "select", apiUrl:App.coAuthorDropDownUrl, selectValueDisplay:{id:"id", value: "author_val"}}
		));
		
		otherResearchModel.set('addUrl', App.otherResearchModelAddUrl);
		otherResearchModel.set('removeUrl', App.otherResearchModelRemoveUrl);
		otherResearchModel.set('fetchRowUrl', App.otherResearchModelFetchUrl);
		otherResearchModel.set('editUrl', App.otherResearchModelEditUrl);
		otherResearchModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[8],
          model: otherResearchModel
        }));

		
      //Conferences
        var conferenceModel = facultyProfileSectionModel.clone();
        conferenceModel.set('header',' Conferences, workshops, seminars, and training programs attended (since 2005)');
        conferenceModel.set('sectionId', 'conferenceContent');
        conferenceModel.set('apiUrl', App.facConferencesUrl);
        conferenceModel.set('keys', new Array('seminar_title', 'venue_performance', 'start_date','end_date'));
        conferenceModel.set('collumnNames', new Array('Conferences, Workshops, Seminars, and Training program', 'Venue', 'Start Date', 'End Date'));
		conferenceModel.set('inputData', new Array(
			{inputLabel: "Conferences, Workshops", inputName: "seminar_title", inputType: "text"},
			{inputLabel: "Venue", inputName: "venue_performance", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date", inputName: "end_date", inputType: "date"},
			{inputLabel: "Type", inputName: "type", inputType: "select", apiUrl:App.journalTypeDropDownUrl, selectValueDisplay:{id:"id", value: "local_type"}}
		));
		conferenceModel.set('addUrl', App.conferenceModelAddUrl);
		conferenceModel.set('removeUrl', App.conferenceModelRemoveUrl);
		conferenceModel.set('fetchRowUrl', App.conferenceModelFetchUrl);
		conferenceModel.set('editUrl', App.conferenceModelEditUrl);
		conferenceModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity2[9],
          model: conferenceModel
        }));

     // Community Service in DLSU
     var comServeDLSUModel = facultyProfileSectionModel.clone();
        comServeDLSUModel.set('header','In DLSU (Department, Unit, College, University) Activities (since 2005)');
        comServeDLSUModel.set('sectionId', 'comServeDLSUContent');
        comServeDLSUModel.set('apiUrl', App.facComSrvDLSUUrl);
        comServeDLSUModel.set('keys', new Array('description','unit_title', 'dept_name', 'committee', 'start_date', 'end_date'));
        comServeDLSUModel.set('collumnNames', new Array('Description of Involvement/Service/Work Done', 'Unit', 'Department', 'Committee', 'Start Date','End Date'));
        comServeDLSUModel.set('inputData', new Array(
		     {inputLabel: "Description", inputName: "description", inputType: "text"},
			 {inputLabel: "Unit", inputName: "unit_code", inputType: "select", apiUrl:App.unitDropDownUrl, selectValueDisplay:{id: "unit_code", value: "unit_title"}},
			 {inputLabel: "Department", inputName: "dept_code", inputType: "select", apiUrl:App.deptDropDownUrl, selectValueDisplay:{id: "dept_code", value: "dept_name"}},
			 {inputLabel: "Committee", inputName: "committee", inputType: "text"},
			 {inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			 {inputLabel: "End Date", inputName: "end_date", inputType: "date"}
		));
		comServeDLSUModel.set('addUrl', App.comSrvDLSUAddUrl);
		comServeDLSUModel.set('removeUrl', App.comSrvDLSURemoveUrl);
		comServeDLSUModel.set('fetchRowUrl', App.comSrvDLSUFetchUrl);
		comServeDLSUModel.set('editUrl', App.comSrvDLSUEditUrl);
		comServeDLSUModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+comService[0],
          model: comServeDLSUModel
        }));

	 //Prof Org
     var profOrgModel = facultyProfileSectionModel.clone();
        profOrgModel.set('header','In Professional Organizations (Local and International) since 2005');
        profOrgModel.set('sectionId', 'profOrgContent');
        profOrgModel.set('apiUrl', App.facProfOrgUrl);
        profOrgModel.set('keys', new Array('description','org_name', 'project_site', 'start_date', 'end_date'));
        profOrgModel.set('collumnNames', new Array('Description of Involvement/Service/Work Done', 'Professional Organization', 'Project / Activity Site', 'Start Date','End Date'));
        profOrgModel.set('inputData', new Array(
			{inputLabel: "Description", inputName: "description", inputType: "text"},
			{inputLabel: "Organization", inputName: "org_name", inputType: "text"},
			{inputLabel: "Project Site", inputName: "project_site", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date", inputName: "end_date", inputType: "date"}
		));
		profOrgModel.set('addUrl', App.profOrgModelAddUrl);
		profOrgModel.set('removeUrl', App.profOrgModelRemoveUrl);
		profOrgModel.set('fetchRowUrl', App.profOrgModelFetchUrl);
		profOrgModel.set('editUrl', App.profOrgModelEditUrl);
		profOrgModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+comService[1],
          model: profOrgModel
        }));
			
	 //Gov Org
	 var govOrgModel = facultyProfileSectionModel.clone();
        govOrgModel.set('header','With Government Organizations and Agencies (since 2005)');
        govOrgModel.set('sectionId', 'govOrgContent');
        govOrgModel.set('apiUrl', App.facGovOrgUrl);
        govOrgModel.set('keys', new Array('description','gov_name', 'project_site', 'start_date', 'end_date'));
        govOrgModel.set('collumnNames', new Array('Description of Involvement/Service/Work Done', 'Government Organization and Agencies', 'Project / Activity Site', 'Start Date','End Date'));
        govOrgModel.set('inputData', new Array(
			{inputLabel: "Description", inputName: "description", inputType: "text"},
			{inputLabel: "Agency Name", inputName: "gov_name", inputType: "text"},
			{inputLabel: "Project Site", inputName: "project_site", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date", inputName: "end_date", inputType: "date"}
		));
		govOrgModel.set('addUrl', App.govOrgModelAddUrl);
		govOrgModel.set('removeUrl', App.govOrgModelRemoveUrl);
		govOrgModel.set('fetchRowUrl', App.govOrgModelFetchUrl);
		govOrgModel.set('editUrl', App.govOrgModelEditUrl);
		govOrgModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+comService[2],
          model: govOrgModel
        }));

     //Other Org
     var otherOrgModel = facultyProfileSectionModel.clone();
        otherOrgModel.set('header','Others (e.g. NGOs, advocacy groups, neighborhood associations, local communities, Rotary, Lions, church, faith, and community) since 2005');
        otherOrgModel.set('sectionId', 'otherOrgContent');
        otherOrgModel.set('apiUrl', App.facOtherOrgUrl);
        otherOrgModel.set('keys', new Array('description','others', 'project_site', 'start_date', 'end_date'));
        otherOrgModel.set('collumnNames', new Array('Description of Involvement/Service/Work Done', 'Professional Organization', 'Project / Activity Site', 'Start Date','End Date'));
        otherOrgModel.set('inputData', new Array(
			{inputLabel: "Description", inputName: "description", inputType: "text"},
			{inputLabel: "Organization", inputName: "others", inputType: "text"},
			{inputLabel: "Project Site", inputName: "project_site", inputType: "text"},
			{inputLabel: "Start Date", inputName: "start_date", inputType: "date"},
			{inputLabel: "End Date", inputName: "end_date", inputType: "date"}
		));
		otherOrgModel.set('addUrl', App.otherOrgModelAddUrl);
		otherOrgModel.set('removeUrl', App.otherOrgModelRemoveUrl);
		otherOrgModel.set('fetchRowUrl', App.otherOrgModelFetchUrl);
		otherOrgModel.set('editUrl', App.otherOrgModelEditUrl);
		otherOrgModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+comService[3],
          model: otherOrgModel
        }));
		
	// Faculty Profile
		var facProfileModel = facultyProfileSectionModel.clone();
        facProfileModel.set('header','View/Update My Profile');
        facProfileModel.set('sectionId', 'updateProfile');
        facProfileModel.set('apiUrl', App.facultyProfileUrl);
        facProfileModel.set('keys', new Array('flname','ffname', 'fmname', 'unit_code','dept_name', 'rank_title', 'position_title'));
        facProfileModel.set('collumnNames', new Array('Last Name', 'First Name', 'Middle Name', 'Unit', 'Dept', 'Rank', 'Position'));
		facProfileModel.set('inputData', new Array(
			{inputLabel: "Last Name", inputName: "flname", inputType: "text"},
			{inputLabel: "First Name", inputName: "ffname", inputType: "text"},
			{inputLabel: "Middle Name", inputName: "fmname", inputType: "text"},
			{inputLabel: "Rank", inputName: "rank", inputType: "select", apiUrl:App.rankDropDownUrl, selectValueDisplay:{id: "rank_code", value: "rank_title"}},
			{inputLabel: "Unit/College", inputName: "unit_code", inputType: "select", apiUrl:App.unitDropDownUrl, selectValueDisplay:{id: "unit_code", value: "unit_title"}},
            {inputLabel: "Department", inputName: "dept_code", inputType: "select", apiUrl:App.deptDropDownUrl, selectValueDisplay:{id: "dept_code", value: "dept_name"}},
			{inputLabel: "Classification", inputName: "class", inputType: "select", apiUrl:App.classificationDropDownUrl, selectValueDisplay:{id: "position_id", value: "position_title"}} 
			));	
        facProfileModel.set('', App.client);
		facProfileModel.set('', App.client);
		facProfileModel.set('fetchRowUrl', App.facProfileFetchUrl);
		facProfileModel.set('editUrl', App.facProfileEditcUrl);
		facProfileModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+facInfo[1],
          model: facProfileModel
        }));


		// Change Password
		var facPasswordModel = facultyProfileSectionModel.clone();
        facPasswordModel.set('header','Change/Update Password');
        facPasswordModel.set('sectionId', 'changePassword');
        facPasswordModel.set('apiUrl', App.facultyPasswordUrl);
        facPasswordModel.set('keys', new Array('password'));
        facPasswordModel.set('collumnNames', new Array('Password'));
		facPasswordModel.set('inputData', new Array(
			{inputLabel: "New Password", inputName: "password", inputType: "password"},
			{inputLabel: "Confirm Password", inputName: "confirmPassword", inputType: "password"}
		));	
        facPasswordModel.set('', App.client);
		facPasswordModel.set('', App.client);
		facPasswordModel.set('fetchRowUrl', App.facPasswordFetchUrl);
		facPasswordModel.set('editUrl', App.facPasswordEditUrl);
		facPasswordModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+facInfo[2],
          model: facPasswordModel
        }));
	
	
//Array Tab End Here 
 },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});
