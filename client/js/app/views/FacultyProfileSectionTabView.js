var FacultyProfileSectionTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
		this.render();
	},

	render: function(){
    //Profile View
    var acadProfileSections = ['degreeEarned','degreePursue', 'specialTraining', 'teachExpr', 'license', 'nonTeachExp'];
	var profActivity1 = ['leadershipInProfOrg', 'membershipInProfOrg', 'awardsRecogAchiements', 'internalFundedResearch', 'externalFundedResearch', 'researchGrants'];
		var html = '';
		html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#academicProfile" data-toggle="tab">Profile And Experience</a></li>';
          html +='<li><a href="#professionalActivity1" data-toggle="tab">Professional Activities 1</a></li>';
          html +='<li><a href="#professionalActivity2" data-toggle="tab">Professional Activities 2</a></li>';
          html +='<li><a href="#communityService" data-toggle="tab">Community Service</a></li>';
        html +='</ul>';
        html +='<div class="tab-content">';
          html +='<div class="tab-pane fade in active" id="academicProfile">';
          acadProfileSections.forEach(function(section){
              html+='<div id="'+section+'"></div>'
          });
          html +='</div>';
          html +='<div class="tab-pane fade" id="professionalActivity1">';
		  profActivity1.forEach(function(section){
              html+='<div id="'+section+'"></div>'
          });
          html +='</div>';
          html +='<div class="tab-pane fade" id="professionalActivity2"></div>';
          html +='<div class="tab-pane fade" id="communityService"></div>';
        html +='</div>';
        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

        //Degree Earned View
        var degreeEarnedModel = facultyProfileSectionModel.clone();
        degreeEarnedModel.set('header','Degrees Earned');
        degreeEarnedModel.set('sectionId', 'degEarnedContent');
        degreeEarnedModel.set('apiUrl', App.facultyDegreeEarnedUrl);
        degreeEarnedModel.set('keys', new Array('degree_earned', 'degree_title', 'area_spec', 'year_obtained', 'institution_name', 'location', 'so_num'));
        degreeEarnedModel.set('collumnNames', new Array('Degree(s) Earned', 'Title of Degree', 'Area of Specialization', 'Year Obtained', 'Educational Institution', 'Location', 'S.O. Number'));
        degreeEarnedModel.set('noteFoot', 'Note: Foreign universities are exempt from S.O. Number.');
        degreeEarnedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[0],
          model: degreeEarnedModel
        }));

        //Degree Pursue View
        var degreePursueModel = facultyProfileSectionModel.clone();
        degreePursueModel.set('header','Degree being pursued');
        degreeEarnedModel.set('sectionId', 'degPursueContent');
        degreePursueModel.set('apiUrl', App.facultyDegreePursueUrl);
        degreePursueModel.set('keys', new Array('degree_title', 'institution_name', 'degree_stages', 'earned_units', 'start_date', 'end_date'));
        degreePursueModel.set('collumnNames', new Array('Degree being pursued', 'Name of Institution', 'Stage of Graduate Studies', 'No. of Units Completed', 'Start Date', 'End Date'));
        degreePursueModel.set('noteHead', 'IF PURSUING GRADUATE STUDIES, please fill up the following table: ');
        degreePursueModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[1],
          model: degreePursueModel
        }));

        //Special Training View

        var specialTrainingModel = facultyProfileSectionModel.clone();
        specialTrainingModel.set('header','SPECIAL TRAINING (e.g. post-doctoral work, post-baccalaureate diploma, post-baccalaureate certificate, etc.)');
        specialTrainingModel.set('sectionId', 'spcTrainingContent');
        specialTrainingModel.set('apiUrl', App.facultySpecialTrainingUrl);
        specialTrainingModel.set('keys', new Array('training_title', 'institution_name', 'venue', 'start_date', 'end_date'));
        specialTrainingModel.set('collumnNames', new Array('Training Title', 'Organization / Institution ', 'Venue (City,Country)', 'Start Date', 'End Date'));
        specialTrainingModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[2],
          model: specialTrainingModel
        }));
		
		//Teach Exp
		
        var teachExpModel = facultyProfileSectionModel.clone();
        teachExpModel.set('header','Teaching Experience and Length of Service');
        teachExpModel.set('sectionId', 'teachExpContent');
        teachExpModel.set('apiUrl', App.facultyTeachExpUrl);
        teachExpModel.set('keys', new Array('level', 'no_years', 'institution_name', 'start_date', 'end_date', 'position'));
        teachExpModel.set('collumnNames', new Array('Level', 'Institution Name','Number of Years ', 'Start Date', 'End Date', 'Position'));
        teachExpModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[3],
          model: teachExpModel
        }));
		
		//License
		
		var licenseModel = facultyProfileSectionModel.clone();
        licenseModel.set('header','Teaching Experience and Length of Service');
        licenseModel.set('sectionId', 'licenseContent');
        licenseModel.set('apiUrl', App.licenseUrl);
        licenseModel.set('keys', new Array('year_passed', 'licensure_title', 'licensure_no', 'date_validity'));
        licenseModel.set('collumnNames', new Array('Year Passed', 'Licensure Title','Licensure Number ', 'Date Validity'));
        licenseModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[4],
          model: licenseModel
        }));
		
		//Non Teach Exp Model
		
		var nonTeachExpModel = facultyProfileSectionModel.clone();
        nonTeachExpModel.set('header','Professional Practice, Industrial Practice, or Employment outside DLSU other than teaching ');
        nonTeachExpModel.set('sectionId', 'nonTeachExpContent');
        nonTeachExpModel.set('apiUrl', App.nonTeachExpUrl);
        nonTeachExpModel.set('keys', new Array('work_nature', 'institution_name', 'no_years', 'start_date','end_date'));
        nonTeachExpModel.set('collumnNames', new Array('Nature of Practice/Project', 'Organization/Institution' ,'Number of Years ', 'Start Date', 'End Date'));
        nonTeachExpModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[5],
          model: nonTeachExpModel
        }));
		
		//Leadership in Prof Org
		
		var leadershipInOrgProfModel = facultyProfileSectionModel.clone();
        leadershipInOrgProfModel.set('header','Leadership in professional organizations');
        leadershipInOrgProfModel.set('sectionId', 'leadershipInOrgProfContent');
        leadershipInOrgProfModel.set('apiUrl', App.facLeaderUrl);
        leadershipInOrgProfModel.set('keys', new Array('designation', 'org_name', 'start_date', 'end_date'));
        leadershipInOrgProfModel.set('collumnNames', new Array('Designation/Role', 'Organization/Institution', 'Start Date', 'End Date'));
        leadershipInOrgProfModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[0],
          model: leadershipInOrgProfModel
        }));
		
		//Membership in Prof Org
		
		var leadershipInOrgProfModel = facultyProfileSectionModel.clone();
        leadershipInOrgProfModel.set('header','Leadership in professional organizations');
        leadershipInOrgProfModel.set('sectionId', 'leadershipInOrgProfContent');
        leadershipInOrgProfModel.set('apiUrl', App.facLeaderUrl);
        leadershipInOrgProfModel.set('keys', new Array('designation', 'org_name', 'start_date', 'end_date'));
        leadershipInOrgProfModel.set('collumnNames', new Array('Designation/Role', 'Organization/Institution', 'Start Date', 'End Date'));
        leadershipInOrgProfModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+profActivity1[0],
          model: leadershipInOrgProfModel
        }));

	},

	close: function(){
	  _.each(this.subViews, function(view){view.remove()});
      this.remove();
	}
});