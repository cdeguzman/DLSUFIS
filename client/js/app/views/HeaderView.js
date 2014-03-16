var HeaderView = Backbone.View.extend({

	viewParams: '',

	initialize: function(options){
		this.viewParams = options;
		this.render();
	},

	render: function(){
		var html = '';
		html+='<img src="img/logo.png" class="logo">';
        html+='<span class="systemTitle">DLSU CCS - Faculty Information System</span>';
        html+='<span class="pageHeader">'+this.viewParams.headerName+'</span>';
        $(this.el).addClass("pageHeaderFill");
    	$(this.el).html(html);
	},

	close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});