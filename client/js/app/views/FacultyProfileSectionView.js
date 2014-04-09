var FacultyProfileSectionView = Backbone.View.extend({
	 
     initialize: function(){
       this.subViews = new Array();
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
        var menuTop = '<div class="btn-group"><button id="'+this.model.get('sectionId')+'ShowAddBtn" type="button" class="btn btn-success"><i class="fa fa-plus"></i></button></div>';
	 	var html ='';
        html+='<div style="display:none;" class="tableSection" id="'+sectionId+'AddPanel">';
        html+='<h4>'+header+'<button type="button" class="close" aria-hidden="true" id="'+this.model.get('sectionId')+'HideAddBtn">&times;</button><h4>';
        html+='</div>'
	 	html+='<div class="tableSection" id="'+sectionId+'">';
          html+='<h4 class="tableSectionHeader">'+menuTop+' '+header+'</h4>';
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
                    var menu = '<div class="btn-group"><button type="button" class="btn btn-info"><i class="fa fa-pencil"></i></button><button type="button" class="btn btn-danger '+this.model.get('sectionId')+"RemoveBtn"+'" data-value="'+values[i].id+'"><i class="fa fa-trash-o"></i></button></div>';
					html+='<td class="rowMenu">'+menu+'</td>'
            		html+='</tr>';
            	}
            	html+='</tbody>';
            html+='</table>'
            html+='<h5>'+(noteFoot!=undefined ? '*'+noteFoot: '')+'</h5>'
        html+='</div>'
        $(this.el).html(html);
        var self = this;

        this.subViews.push(new DataAddPanelView({
            el: "#"+sectionId+"AddPanel",
            model: this.model,
        }));

        $("#"+this.model.get('sectionId')+"ShowAddBtn").on("click", function(){
            $("#"+self.model.get('sectionId')).slideUp();
            $("#"+self.model.get('sectionId')+"AddPanel").slideDown();
        })
         $("#"+this.model.get('sectionId')+"HideAddBtn").on("click", function(){
            $("#"+self.model.get('sectionId')).slideDown();
            $("#"+self.model.get('sectionId')+"AddPanel").slideUp();
        })

        $("."+this.model.get('sectionId')+"RemoveBtn").on("click", function(){
            var id = $(this).attr('data-value');
            self.removeData(id);
        });
	 },

     removeData: function(idVal){
      var self = this;
      var confirm = window.confirm("Do you want to remove the selected row");
      if(confirm){
         $.ajax({
             url: self.model.get('removeUrl'),
             data: {id:idVal},
             type: 'POST',
             success: function(data) {
               window.alert("Data has been removed");
               self.model.getData();
             }
        }); 
      }
     },

	 close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});