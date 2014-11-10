var PageHeaderModel = Backbone.Model.extend({
	initialize: function(pageName){
		this.set("pageName", pageName);
	}
});