var FacultyInformationModel = Backbone.Model.extend({
	initialize: function(){
		var self = this;
	//@Code Smell map
		$.ajax({
			   url: App.facultyProfileUrl,
			   data: {fid: App.currentFacultyId},
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
			   		self.setAttributes(data);
			   }
		});
	},

	getUpdatedFacultyInfomation: function(){
	  var self = this;
		$.ajax({
			   url: App.facultyProfileUrl,
			   data: {fid: App.currentFacultyId},
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
			   		self.setAttributes(data);
			   }
		});
	},

	setAttributes: function(data){
		var facultyData = data[0];
		if(App.currentStaffId.length!=5){
	        this.set('flname',facultyData.flname);
			this.set('ffname',facultyData.ffname);
			this.set('fmname',facultyData.fmname);
			this.set('college',facultyData.unit_code);
			this.set('deptName',facultyData.dept_name);
			this.set('unitTitle',facultyData.unit_title);
			this.set('classification',facultyData.position_title);
			this.set('rankTitle',facultyData.rank_title);
	      }

		this.trigger('fetched',{});
	}
});