var FacultyProfileSectionModel = Backbone.Model.extend({
	initialize: function(){

	},

	getData: function(data){
		var self = this;
		$.ajax({
			   url: this.get('apiUrl'),
			   data: {fid: App.currentFacultyId},
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
			   		var facultyData = data;
					var valueArr = new Array();
					_.each(facultyData, function(d){
						valueArr.push(d);
					});
					self.set('values', valueArr);
					self.trigger('fetched',{});
			   }
		});
	}
});