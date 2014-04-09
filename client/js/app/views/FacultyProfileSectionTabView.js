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
          html +='<div class="tab-pane fade" id="professionalActivity2">';
      profActivity2.forEach(function(section){
              html+='<div id="'+section+'"></div>'
          });
      html +='</div>';
          html +='<div class="tab-pane fade" id="communityService">';
          comService.forEach(function(section){
              html+='<div id="'+section+'"></div>'
          });
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
        degreeEarnedModel.set('inputData', new Array(
          {inputLabel: "Degree Earned", inputName:"degree_id", inputType: "select", apiUrl:App.degreeDropDownUrl, selectValueDisplay:{id: "degree_id", value: "degree_title",}}
          ));
        degreeEarnedModel.set('addUrl', App.degreeEarnedAddUrl);
        degreeEarnedModel.set('removeUrl', App.degreeEarnedRemoveUrl);
        degreeEarnedModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+acadProfileSections[0],
          model: degreeEarnedModel
        }));
  },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});