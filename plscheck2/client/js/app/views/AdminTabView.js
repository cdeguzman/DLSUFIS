var AdminTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var hidePanel = App.currentFacultyId.length==4 ? " hidePanel" : ""

    var recordSection = ['userRecord','rank','department','unit','position','acctType'];
    var locationSection = ['degree','degreeLevel','academe','industry','organization','places','country'];
    var publicationSection = ['journals','journalPublication'];
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
      html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#records" data-toggle="tab">DLSU Data</a></li>';
          html +='<li><a href="#location" data-toggle="tab">Degrees, Institution & Location</a></li>';
	  html +='<li><a href="#publications" data-toggle="tab">Publication</a></li>';
      html +='</ul>';
    html +='<div class="tab-content">';
          //Tab Content
        html +='<div class="tab-pane fade in active" id="records">';
            //Sections
            recordSection.forEach(function(section){
                html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';
        html +='<div class="tab-pane fade" id="location">';
            locationSection.forEach(function(section){
            html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';
        html +='<div class="tab-pane fade" id="publications">';
            publicationSection.forEach(function(section){
            html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';
		
        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

    //Faculty Record View
    var userRecordModel = facultyProfileSectionModel.clone();
    userRecordModel.set('header','User Account Records');
    userRecordModel.set('sectionId', 'userRecordContent');
    userRecordModel.set('apiUrl', App.userRecordsUrl);
    userRecordModel.set('keys', new Array('flname', 'ffname', 'unit_code', 'account_role'));
    userRecordModel.set('collumnNames', new Array('Last Name', 'First Name', 'Department/Unit', 'Account Type'));
    userRecordModel.set('inputData', new Array(
      {inputLabel: "Employee ID", inputName: "ffid", inputType: "text"},
      {inputLabel: "Username", inputName: "username", inputType: "text"},
      {inputLabel: "Password", inputName: "passwd", inputType: "password"},
      {inputLabel: "Last Name", inputName: "flname", inputType: "text"},
      {inputLabel: "First Name", inputName: "ffname", inputType: "text"},
      {inputLabel: "Middle Initial", inputName: "fmname", inputType: "text"},
      {inputLabel: "College/School/Unit", inputName: "unit", inputType: "select", apiUrl:App.unitDropDownUrl, selectValueDisplay:{id: "id", value: "unit_title"}},
      {inputLabel: "Department/Office", inputName: "dept", inputType: "select", apiUrl:App.deptDropDownUrl, selectValueDisplay:{id: "id", value: "dept_name"}},
      {inputLabel: "Classification", inputName: "class", inputType: "select", apiUrl:App.classificationDropDownUrl, selectValueDisplay:{id: "id", value: "position_title"}},
      {inputLabel: "Rank", inputName: "rank", inputType: "select", apiUrl:App.rankDropDownUrl, selectValueDisplay:{id: "id", value: "rank_title"}},
      {inputLabel: "Account Type", inputName: "acctType", inputType: "select", apiUrl:App.acctTypeDropDownUrl, selectValueDisplay:{id: "id", value: "account_role"}},
      {inputLabel: "Position", inputName: "position", inputType: "select", apiUrl:App.positionDropDownUrl, selectValueDisplay:{id: "id", value: "position_title"}}
    ));
    userRecordModel.set('addUrl', App.adminAddNewUserUrl);
    userRecordModel.set('removeUrl', App.adminRemoveUserUrl);
    userRecordModel.set('fetchRowUrl', App.adminFetchUserUrl);
	userRecordModel.set('editUrl', App.adminUpdateUserUrl);
	userRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[0],
    model: userRecordModel
    }));

    //Rank Record View
    var rankRecordModel = facultyProfileSectionModel.clone();
    rankRecordModel.set('header','Faculty Rank');
    rankRecordModel.set('sectionId', 'rankContent');
    rankRecordModel.set('apiUrl', App.rankDropDownUrl);
    rankRecordModel.set('keys', new Array('id', 'rank_title'));
    rankRecordModel.set('collumnNames', new Array('Rank Code', 'Rank Title'));
    rankRecordModel.set('inputData', new Array(
      {inputLabel: "Rank Code", inputName: "rank_code", inputType: "text"},
	  {inputLabel: "Rank Title", inputName: "rank_title", inputType: "text"}
	));
    rankRecordModel.set('addUrl', App.adminAddNewRankUrl);
    rankRecordModel.set('removeUrl', App.adminRemoveRankUrl);
    rankRecordModel.set('fetchRowUrl', App.adminFetchRankUrl);
	rankRecordModel.set('editUrl', App.adminUpdateRankUrl);
	rankRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[1],
    model: rankRecordModel
    }));
	
	//Department Record View
    var departmentRecordModel = facultyProfileSectionModel.clone();
    departmentRecordModel.set('header','Departments');
    departmentRecordModel.set('sectionId', 'departmentContent');
    departmentRecordModel.set('apiUrl', App.deptDropDownUrl);
    departmentRecordModel.set('keys', new Array('id', 'dept_name'));
    departmentRecordModel.set('collumnNames', new Array('Department Code', 'Department Name'));
    departmentRecordModel.set('inputData', new Array(
      {inputLabel: "Department Code", inputName: "dept_code", inputType: "text"},
	  {inputLabel: "Department Name", inputName: "dept_name", inputType: "text"}
	));
    departmentRecordModel.set('addUrl', App.adminAddNewDeptUrl);
    departmentRecordModel.set('removeUrl', App.adminRemoveDeptUrl);
    departmentRecordModel.set('fetchRowUrl', App.adminFetchDeptUrl);
	departmentRecordModel.set('editUrl', App.adminUpdateDeptUrl);
	departmentRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[2],
    model: departmentRecordModel
    }));
	
	//Unit/College Record View
    var unitRecordModel = facultyProfileSectionModel.clone();
    unitRecordModel.set('header','Units/Colleges');
    unitRecordModel.set('sectionId', 'unitContent');
    unitRecordModel.set('apiUrl', App.unitDropDownUrl);
    unitRecordModel.set('keys', new Array('id', 'unit_title'));
    unitRecordModel.set('collumnNames', new Array('Unit/College Code', 'Unit/College Name'));
    unitRecordModel.set('inputData', new Array(
      {inputLabel: "Unit/College Code", inputName: "unit_code", inputType: "text"},
	  {inputLabel: "Unit/College Name", inputName: "unit_title", inputType: "text"}
	));
    unitRecordModel.set('addUrl', App.adminAddNewUnitUrl);
    unitRecordModel.set('removeUrl', App.adminRemoveUnitUrl);
    unitRecordModel.set('fetchRowUrl', App.adminFetchUnitUrl);
	unitRecordModel.set('editUrl', App.adminUpdateUnitUrl);
	unitRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[3],
    model: unitRecordModel
    }));
	
	//Position Record View
    var positionRecordModel = facultyProfileSectionModel.clone();
    positionRecordModel.set('header','Position and Classification');
    positionRecordModel.set('sectionId', 'positionContent');
    positionRecordModel.set('apiUrl', App.positionDropDownUrl);
    positionRecordModel.set('keys', new Array('id', 'position_title'));
    positionRecordModel.set('collumnNames', new Array('Position/Classification ID', 'Position/Classification'));
    positionRecordModel.set('inputData', new Array(
      {inputLabel: "Position ID", inputName: "position_id", inputType: "text"},
	  {inputLabel: "Position Name", inputName: "position_title", inputType: "text"}
	));
    positionRecordModel.set('addUrl', App.adminAddNewPositionUrl);
    positionRecordModel.set('removeUrl', App.adminRemovePositionUrl);
    positionRecordModel.set('fetchRowUrl', App.adminFetchPositionUrl);
	positionRecordModel.set('editUrl', App.adminUpdatePositionUrl);
	positionRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[4],
    model: positionRecordModel
    }));
	
	//Account Type View
    var accountTypeRecordModel = facultyProfileSectionModel.clone();
    accountTypeRecordModel.set('header','System Account Type');
    accountTypeRecordModel.set('sectionId', 'accountTypeContent');
    accountTypeRecordModel.set('apiUrl', App.acctTypeDropDownUrl);
    accountTypeRecordModel.set('keys', new Array('id', 'account_role'));
    accountTypeRecordModel.set('collumnNames', new Array('Account ID', 'Account Role'));
    accountTypeRecordModel.set('inputData', new Array(
      {inputLabel: "Account ID", inputName: "account_id", inputType: "text"},
	  {inputLabel: "Account Role Name", inputName: "account_role", inputType: "text"}
	));
    accountTypeRecordModel.set('addUrl', App.adminAddNewAcctTypeUrl);
    accountTypeRecordModel.set('removeUrl', App.adminRemoveAcctTypeUrl);
    accountTypeRecordModel.set('fetchRowUrl', App.adminFetchAcctTypeUrl);
	accountTypeRecordModel.set('editUrl', App.adminUpdateAcctTypeUrl);
	accountTypeRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+recordSection[5],
    model: accountTypeRecordModel
    }));
	
	//Degree Record View
    var degreeRecordModel = facultyProfileSectionModel.clone();
    degreeRecordModel.set('header','Degree Records/Information');
    degreeRecordModel.set('sectionId', 'degreeContent');
    degreeRecordModel.set('apiUrl', App.degreeDropDownUrl);
    degreeRecordModel.set('keys', new Array('id', 'degree_title'));
    degreeRecordModel.set('collumnNames', new Array('Degree ID', 'Degree Title'));
    degreeRecordModel.set('inputData', new Array(
      {inputLabel: "Degree Title", inputName: "degree_title", inputType: "text"}
	));
    degreeRecordModel.set('addUrl', App.adminAddNewDegreeUrl);
    degreeRecordModel.set('removeUrl', App.adminRemoveDegreeUrl);
    degreeRecordModel.set('fetchRowUrl', App.adminFetchDegreeUrl);
	degreeRecordModel.set('editUrl', App.adminUpdateDegreeUrl);
	degreeRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[0],
    model: degreeRecordModel
    }));
	
	//Degree Level Record View
    var degreeLevelRecordModel = facultyProfileSectionModel.clone();
    degreeLevelRecordModel.set('header','Degree Level Information');
    degreeLevelRecordModel.set('sectionId', 'degreeLevelContent');
    degreeLevelRecordModel.set('apiUrl', App.degreeLevelDropDownUrl);
    degreeLevelRecordModel.set('keys', new Array('id', 'dlevel_title', 'dlevel_desc'));
    degreeLevelRecordModel.set('collumnNames', new Array('Degree Level ID', 'Degree Title', 'Description'));
    degreeLevelRecordModel.set('inputData', new Array(
      {inputLabel: "Degree Level ID", inputName: "dlevel_id", inputType: "text"},
	  {inputLabel: "Degree Title", inputName: "dlevel_title", inputType: "text"},
	  {inputLabel: "Description", inputName: "dlevel_desc", inputType: "text"}
	));
    degreeLevelRecordModel.set('addUrl', App.adminAddNewDegreeLevelUrl);
    degreeLevelRecordModel.set('removeUrl', App.adminRemoveDegreeLevelUrl);
    degreeLevelRecordModel.set('fetchRowUrl', App.adminFetchDegreeLevelUrl);
	degreeLevelRecordModel.set('editUrl', App.adminUpdateDegreeLevelUrl);
	degreeLevelRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[1],
    model: degreeLevelRecordModel
    }));
	
	//Institution Record View
    var institutionRecordModel = facultyProfileSectionModel.clone();
    institutionRecordModel.set('header','Academic Institutions Records');
    institutionRecordModel.set('sectionId', 'academeContent');
    institutionRecordModel.set('apiUrl', App.institutionDropDownUrl);
    institutionRecordModel.set('keys', new Array('id', 'institution_name', 'location_name', 'country_name'));
    institutionRecordModel.set('collumnNames', new Array('ID', 'Academic Institution', 'Location', 'Country'));
    institutionRecordModel.set('inputData', new Array(
      {inputLabel: "Institution Name", inputName: "institution_name", inputType: "text"},
	  {inputLabel: "Location", inputName: "location", inputType: "select", apiUrl:App.locationDropDownUrl, selectValueDisplay:{id: "id", value: "location_name"}},
	  {inputLabel: "Country", inputName: "country", inputType: "select", apiUrl:App.countryDropDownUrl, selectValueDisplay:{id: "id", value: "country_name"}}
	));
    institutionRecordModel.set('addUrl', App.adminAddNewInstitutionUrl);
    institutionRecordModel.set('removeUrl', App.adminRemoveInstitutionUrl);
    institutionRecordModel.set('fetchRowUrl', App.adminFetchInstitutionUrl);
	institutionRecordModel.set('editUrl', App.adminUpdateInstitutionUrl);
	institutionRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[2],
    model: institutionRecordModel
    }));
	
   //Industry Records
    var industryRecordModel = facultyProfileSectionModel.clone();
    industryRecordModel.set('header','Industry Records');
    industryRecordModel.set('sectionId', 'industryRecordContent');
    industryRecordModel.set('apiUrl', App.industryDropDownUrl);
    industryRecordModel.set('keys', new Array('id', 'industry_name', 'ind_acronym'));
    industryRecordModel.set('collumnNames', new Array('Industry ID', 'Industry Name', 'Acronym'));
    industryRecordModel.set('inputData', new Array(
      {inputLabel: "Industry Name", inputName: "industry_name", inputType: "text"},
	  {inputLabel: "Acronym", inputName: "ind_acronym", inputType: "text"}
	));
    industryRecordModel.set('addUrl', App.adminAddNewIndustryUrl);
    industryRecordModel.set('removeUrl', App.adminRemoveIndustryUrl);
    industryRecordModel.set('fetchRowUrl', App.adminFetchIndustryUrl);
	industryRecordModel.set('editUrl', App.adminUpdateIndustryUrl);
	industryRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[3],
    model: industryRecordModel
    }));
	
	//Organization Records
    var orgRecordModel = facultyProfileSectionModel.clone();
    orgRecordModel.set('header','Organization Records');
    orgRecordModel.set('sectionId', 'orgRecordContent');
    orgRecordModel.set('apiUrl', App.orgDropDownUrl);
    orgRecordModel.set('keys', new Array('id', 'org_name', 'org_acronym', 'org_location'));
    orgRecordModel.set('collumnNames', new Array('ID', 'Organization Name', 'Acronym', 'Location'));
    orgRecordModel.set('inputData', new Array(
      {inputLabel: "Organization Name", inputName: "org_name", inputType: "text"},
	  {inputLabel: "Acronym", inputName: "org_acronym", inputType: "text"},
	  {inputLabel: "Location", inputName: "org_location", inputType: "text"}
	));
    orgRecordModel.set('addUrl', App.adminAddNewOrganizationUrl);
    orgRecordModel.set('removeUrl', App.adminRemoveOrganizationUrl);
    orgRecordModel.set('fetchRowUrl', App.adminFetchOrganizationUrl);
	orgRecordModel.set('editUrl', App.adminUpdateOrganizationUrl);
	orgRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[4],
    model: orgRecordModel
    }));
	 
   //Location Records
    var placesRecordModel = facultyProfileSectionModel.clone();
    placesRecordModel.set('header','Location Records');
    placesRecordModel.set('sectionId', 'locationRecordContent');
    placesRecordModel.set('apiUrl', App.locationDropDownUrl);
    placesRecordModel.set('keys', new Array('id', 'location_name', 'region'));
    placesRecordModel.set('collumnNames', new Array('Location ID', 'Location Name', 'Region'));
    placesRecordModel.set('inputData', new Array(
      {inputLabel: "Location Name", inputName: "location_name", inputType: "text"},
	  {inputLabel: "Region", inputName: "region", inputType: "text"}
	));
    placesRecordModel.set('addUrl', App.adminAddNewLocationUrl);
    placesRecordModel.set('removeUrl', App.adminRemoveLocationUrl);
    placesRecordModel.set('fetchRowUrl', App.adminFetchLocationUrl);
	placesRecordModel.set('editUrl', App.adminUpdateLocationUrl);
	placesRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[5],
    model: placesRecordModel
    }));
	
	//Country Records
    var countryRecordModel = facultyProfileSectionModel.clone();
    countryRecordModel.set('header','Country Records');
    countryRecordModel.set('sectionId', 'countryRecordContent');
    countryRecordModel.set('apiUrl', App.countryDropDownUrl);
    countryRecordModel.set('keys', new Array('id', 'country_name'));
    countryRecordModel.set('collumnNames', new Array('Country Code', 'Country Name'));
    countryRecordModel.set('inputData', new Array(
      {inputLabel: "Country Code", inputName: "country_code", inputType: "text"},
	  {inputLabel: "Country Name", inputName: "country_name", inputType: "text"}
	));
    countryRecordModel.set('addUrl', App.adminAddNewCountryUrl);
    countryRecordModel.set('removeUrl', App.adminRemoveCountryUrl);
    countryRecordModel.set('fetchRowUrl', App.adminFetchCountryUrl);
	countryRecordModel.set('editUrl', App.adminUpdateCountryUrl);
	countryRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+locationSection[6],
    model: countryRecordModel
    }));
	
	//Journal Records
    var journalsRecordModel = facultyProfileSectionModel.clone();
    journalsRecordModel.set('header','Journal Records Section');
    journalsRecordModel.set('sectionId', 'journalsContent');
    journalsRecordModel.set('apiUrl', App.journalsDropDownUrl);
    journalsRecordModel.set('keys', new Array('id', 'journal_title', 'journal_type'));
    journalsRecordModel.set('collumnNames', new Array('Journal ID', 'Journal Title', 'Journal Type'));
    journalsRecordModel.set('inputData', new Array(
       {inputLabel: "Journal Name", inputName: "journal_title", inputType: "text"},
	   {inputLabel: "Journal Type", inputName: "journal_type", inputType: "text"},
	   {inputLabel: "Publication", inputName: "journal_publication", inputType: "text"}
	));
    journalsRecordModel.set('addUrl', App.adminAddNewJournalUrl);
    journalsRecordModel.set('removeUrl', App.adminRemoveJournalUrl);
    journalsRecordModel.set('fetchRowUrl', App.adminFetchJournalUrl);
	journalsRecordModel.set('editUrl', App.adminUpdateJournalUrl);
	journalsRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+publicationSection[0],
    model:journalsRecordModel
    }));
	
	//Journal Publication Type Records
    var journalpubRecordModel = facultyProfileSectionModel.clone();
    journalpubRecordModel.set('header','Journal Publication Type');
    journalpubRecordModel.set('sectionId', 'journalpubContent');
    journalpubRecordModel.set('apiUrl', App.journalpubDropDownUrl);
    journalpubRecordModel.set('keys', new Array('id', 'journalpub_type'));
    journalpubRecordModel.set('collumnNames', new Array('ID', 'Publication Type'));
    journalpubRecordModel.set('inputData', new Array(
       {inputLabel: "Publication Type", inputName: "journalpub_type", inputType: "text"}
	 ));
    journalpubRecordModel.set('addUrl', App.adminAddNewJournalPubUrl);
    journalpubRecordModel.set('removeUrl', App.adminRemoveJournalPubUrl);
    journalpubRecordModel.set('fetchRowUrl', App.adminFetchJournalPubUrl);
	journalpubRecordModel.set('editUrl', App.adminUpdateJournalPubUrl);
	journalpubRecordModel.getData();

    this.subViews.push(new FacultyProfileSectionView({
    el: '#'+publicationSection[1],
    model:journalpubRecordModel
    }));

 //>> Add here     
 
 },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});
