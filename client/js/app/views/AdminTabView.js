var AdminTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var hidePanel = App.currentFacultyId.length==4 ? " hidePanel" : ""
    var recordSection = ['facultyRecord'];
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
      html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#records" data-toggle="tab">Records</a></li>';
      html +='</ul>';
    html +='<div class="tab-content">';
          //Tab Content
        html +='<div class="tab-pane fade in active" id="records">';
            //Sections
            recordSection.forEach(function(section){
                html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
        html +='</div>';


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
			{inputLabel: "Faculty ID", inputName: "fid", inputType: "text"}
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