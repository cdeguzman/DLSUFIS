var FacultyProfileSectionView = Backbone.View.extend({
	 initialize: function(){
	   this.model.on("fetched", this.render, this);
	 },

	 render: function(){
	 	var keys = this.model.get('keys');
	 	var values = this.model.get('values');
	 	var header = this.model.get('header');
	 	var collumnNames = this.model.get('collumnNames');
	 	var sectionId = this.model.get('sectionId');
        var noteHead = this.model.get('noteHead')
        var noteFoot = this.model.get('noteFoot');
		var menu = '<div class="btn-group"><button type="button" class="btn btn-default"><i class="fa fa-pencil"></i></button><button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i></button></div>'
	 	var html ='';
	 	html+='<div class="tableSection" id="'+sectionId+'">';
          html+='<h4 class="tableSectionHeader">'+header+'</h4>';
            html+='<h5>'+(noteHead!=undefined ? '*'+noteHead: '')+'</h5>'
            html+='<table class="table table-striped">';
            	html+='<thead><tr>';
            	_.each(collumnNames, function(collumnName){html+='<th>'+collumnName+'</th>';});
            	html+='<td>&nbsp;</td></tr></thead>';
            	html+='<tbody>';
            	for(var i=0; i<values.length; i++){
            		html+='</tr>';
            			_.each(keys, function(key){
							var val = eval('values['+i+'].'+key)!=null?eval('values['+i+'].'+key):'N/A';
            				html+='<td>'+val+'</td>';
            			})
					html+='<td class="rowMenu">'+menu+'</td>'
            		html+='</tr>';
            	}
            	html+='</tbody>';
            html+='</table>'
            html+='<h5>'+(noteFoot!=undefined ? '*'+noteFoot: '')+'</h5>'
        html+='</div>'
        $(this.el).html(html);
	 },

	 close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});