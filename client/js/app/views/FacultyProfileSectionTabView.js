var FacultyProfileSectionTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
		this.render();
	},

	render: function(){
		var html = '';
		html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#academicProfile" data-toggle="tab">Profile And Experience</a></li>';
          html +='<li><a href="#professionalActivity1" data-toggle="tab">Professional Activities 2</a></li>';
          html +='<li><a href="#professionalActivity2" data-toggle="tab">Professional Activities 2</a></li>';
          html +='<li><a href="#communityService" data-toggle="tab">Community Service</a></li>';
        html +='</ul>';
        html +='<div class="tab-content">';
          html +='<div class="tab-pane fade in active" id="academicProfile"><div id="degreeEarned"></div><div id="degreePursue"></div></div>';
          html +='<div class="tab-pane fade" id="professionalActivity1"></div>';
          html +='<div class="tab-pane fade" id="professionalActivity2"></div>';
          html +='<div class="tab-pane fade" id="communityService"></div>';
        html +='</div>';
        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

        var degreeEarnedModel = facultyProfileSectionModel.clone();
        degreeEarnedModel.set('header','Degrees Earned');
        degreeEarnedModel.set('sectionId', 'degEarnedContent');
        degreeEarnedModel.set('apiUrl', App.facultyDegreeEarnedUrl);
        degreeEarnedModel.set('keys', new Array('degree_earned', 'degree_title', 'area_spec', 'year_obtained', 'institution_name', 'location', 'so_num'));
        degreeEarnedModel.set('collumnNames', new Array('Degree(s) Earned', 'Title of Degree', 'Area of Specialization', 'Year Obtained', 'Educational Institution', 'Location', 'S.O. Number'));
        degreeEarnedModel.set('noteFoot', 'Note: Foreign universities are exempt from S.O. Number.');
        degreeEarnedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#degreeEarned',
          model: degreeEarnedModel
        }));

        var degreePursueModel = facultyProfileSectionModel.clone();
        degreePursueModel.set('header','Degree being pursued');
        degreeEarnedModel.set('sectionId', 'degPursueContent');
        degreePursueModel.set('apiUrl', App.facultyDegreePursueUrl);
        degreePursueModel.set('keys', new Array('degree_title', 'institution_name', 'degree_stages', 'earned_units', 'start_date', 'end_date'));
        degreePursueModel.set('collumnNames', new Array('Degree being pursued', 'Name of Institution', 'Stage of Graduate Studies', 'No. of Units Completed', 'Start Date', 'End Date'));
        degreePursueModel.set('noteHead', 'IF PURSUING GRADUATE STUDIES, please fill up the following table: ');
        degreePursueModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#degreePursue',
          model: degreePursueModel
        }));

	},

	close: function(){
	  _.each(this.subViews, function(view){view.remove()});
      this.remove();
	}
});