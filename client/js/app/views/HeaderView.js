var HeaderView = Backbone.View.extend({

	viewParams: '',

	initialize: function(options){
		this.viewParams = options;
		this.render();
	},

	render: function(){
		var logoutBtn = checkSession()?' <div class="btn-group"> <button name="logout" type="button" class="btn btn-danger"><i class="fa fa-share"></i></button></div>':'';
		var html = '';
		html+='<img src="img/logo.png" class="logo">';
        html+='<span class="systemTitle">DLSU CCS - Faculty Information System</span>';
        html+='<span class="pageHeader">'+this.viewParams.headerName+' '+logoutBtn+'</span>';
        $(this.el).addClass("pageHeaderFill");
    	$(this.el).html(html);
	},

	events:{
		"click [name~=logout]" : "doLogout"
	},

	doLogout: function(){
		destroySession();
		location.href = "";
	},

	close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});