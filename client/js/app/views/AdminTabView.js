var AdminTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var hidePanel = App.currentFacultyId.length==4 ? " hidePanel" : ""
    var recordSection = ['facultyRecord'];
<<<<<<< HEAD
	var staffSection = ['staff'];
	var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
      html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#records" data-toggle="tab">Records</a></li>';
		  html +='<li><a href="#staff" data-toggle="tab">Staff</a></li>';
=======
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
      html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#records" data-toggle="tab">Records</a></li>';
>>>>>>> b81c7d2a6fad26f5fc09d324619e27b5139adfa1
      html +='</ul>';
    html +='<div class="tab-content">';
          //Tab Content
        html +='<div class="tab-pane fade in active" id="records">';
            //Sections
            recordSection.forEach(function(section){
                html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';
<<<<<<< HEAD
        html +='<div class="tab-pane fade" id="staff">';
            //Sections
            staffSection.forEach(function(section){
                html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';
=======

>>>>>>> b81c7d2a6fad26f5fc09d324619e27b5139adfa1

        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

		//Faculty Record View
		var facultyRecordModel = facultyProfileSectionModel.clone();
		facultyRecordModel.set('header','Faculty Records');
        facultyRecordModel.set('sectionId', 'facRecordContent');
		facultyRecordModel.set('apiUrl', App.facultyRecordsUrl);
		facultyRecordModel.set('keys', new Array('fid', 'flname', 'ffname', 'fmname', 'unit_code'));
		facultyRecordModel.set('collumnNames', new Array('Faculty ID', 'Last Name', 'First Name', 'Middle Name', 'Department/Unit'));
		facultyRecordModel.set('inputData', new Array(
<<<<<<< HEAD
			{inputLabel: "Faculty ID", inputName: "fid", inputType: "text"},
			{inputLabel: "Last Name", inputName: "flname", inputType: "text"}
=======
			{inputLabel: "Faculty ID", inputName: "fid", inputType: "text"}
>>>>>>> b81c7d2a6fad26f5fc09d324619e27b5139adfa1
		));
		facultyRecordModel.set('addUrl', App.facultyRecordAddUrl);
        facultyRecordModel.set('removeUrl', App.facultyRecordRemoveUrl);
        facultyRecordModel.getData();

        this.subViews.push(new FacultyProfileSectionView({
          el: '#'+recordSection[0],
          model: facultyRecordModel
        }));
 
 //>> Add here		 
 
 },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});