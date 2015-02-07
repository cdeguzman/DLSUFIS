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
        if(this.model.get('sectionId')=="changePassword" || this.model.get('sectionId')=="updateProfile" || App.currentUserData.read_only==="1"){
            //There is no Add in changePassword and updatePassword
            menuTop ="";
        }
        html+='<div id="viewPanel'+this.model.get('sectionId')+'"><h4><button id="view-section'+this.model.get('sectionId')+'" data-section-view="'+this.model.get('sectionId')+'" type="button" class="btn btn-info"><i class="fa fa-arrow-right"></i></button> '+header+'</h4></div>';
        html+='<div style="display:none;" class="tableSection" id="'+sectionId+'AddPanel">';
        html+='<h4>'+header+'<button type="button" class="close" aria-hidden="true" id="'+this.model.get('sectionId')+'HideAddBtn">&times;</button><h4>';
        html+='</div>'
        html+='<div style="display:none;" class="tableSection" id="'+sectionId+'EditPanel">';
        html+='<h4>'+header+'<button type="button" class="close" aria-hidden="true" id="'+this.model.get('sectionId')+'HideEditBtn">&times;</button><h4>';
        html+='</div>'
	 	html+='<div style="display:none;" class="tableSection" id="'+sectionId+'">';
          html+='<h4 class="tableSectionHeader">'+menuTop+' '+header+'<button type="button" class="close" aria-hidden="true" id="'+this.model.get('sectionId')+'HideSectionBtn" data-section-view="'+this.model.get('sectionId')+'">&times;</button></h4>';
            html+='<h5>'+(noteHead!=undefined ? '*'+noteHead: '')+'</h5>'
            html+='<div><table class="table table-striped">';
            	html+='<thead><tr>';
            	_.each(collumnNames, function(collumnName){html+='<th>'+collumnName+'</th>';});
            	html+='<td>&nbsp;</td></tr></thead>';
            	html+='<tbody>';
            	for(var i=0; i<values.length; i++){
            		html+='</tr>';
            			_.each(keys, function(key){
							var val = eval('values['+i+'].'+key)!=null?eval('values['+i+'].'+key):'N/A';
            				if(key=="password"){
            					html+='<td><i>******************</i></td>';
            				}else{
            					html+='<td>'+val+'</td>';
            				}
            			})
                    var menu = '<div class="btn-group"><button type="button" class="btn btn-info ' +this.model.get('sectionId')+"ShowEditBtn"+'" data-value="'+values[i].id+'" data-section-view="'+this.model.get('sectionId')+'"><i class="fa fa-pencil"></i></button><button type="button" class="btn btn-danger '+this.model.get('sectionId')+"RemoveBtn"+'" data-value="'+values[i].id+'"><i class="fa fa-trash-o"></i></button></div>';
					if(this.model.get('sectionId')=="changePassword" || this.model.get('sectionId')=="updateProfile"){
                         //There is no Remove in changePassword and updateProfile
                         menu = '<div class="btn-group"><button type="button" class="btn btn-info ' +this.model.get('sectionId')+"ShowEditBtn"+'" data-value="'+values[i].id+'" data-section-view="'+this.model.get('sectionId')+'"><i class="fa fa-pencil"></i></button></div>';
                    }
                    if(App.currentUserData.read_only==="1"){
                        menu = "";
                    }

                    html+='<td class="rowMenu">'+menu+'</td>'
            		html+='</tr>';
            	}
            	html+='</tbody>';
            html+='</table>'
            html+='<span>'+(noteFoot!=undefined ? '*'+noteFoot: '')+'</span>'
        html+='</div></div>'
        $(this.el).html(html);
        var self = this;

        this.subViews.push(new DataAddPanelView({
            el: "#"+sectionId+"AddPanel",
            model: this.model,
        }));
        
        this.subViews.push(new DataEditPanelView({
            el: "#"+sectionId+"EditPanel",
            model: this.model,
        }));

        $("#"+this.model.get('sectionId')+"ShowAddBtn").on("click", function(){
            $("#"+self.model.get('sectionId')).slideUp();
            $("#"+self.model.get('sectionId')+"AddPanel").slideDown();
        });

        $("#"+this.model.get('sectionId')+"HideAddBtn").on("click", function(){
            $("#"+self.model.get('sectionId')).slideDown();
            $("#"+self.model.get('sectionId')+"AddPanel").slideUp();
        });

        $("#"+this.model.get('sectionId')+"HideEditBtn").on("click", function(){
            $("#"+self.model.get('sectionId')).slideDown();
            $("#"+self.model.get('sectionId')+"EditPanel").slideUp();
        });

        $("."+this.model.get('sectionId')+"RemoveBtn").on("click", function(){
            var id = $(this).attr('data-value');
            self.removeData(id);
        });

        $('#view-section'+this.model.get('sectionId')).on("click", function(){
            var sectionId = $(this).attr('data-section-view');
            $('#viewPanel'+sectionId).slideUp();
            $("#"+sectionId).slideDown();
        });

         $("#"+this.model.get('sectionId')+"HideSectionBtn").on("click", function(){
            var sectionId = $(this).attr('data-section-view');
            $('#viewPanel'+sectionId).slideDown();
            $("#"+sectionId).slideUp();
        });
         
         $("."+this.model.get('sectionId')+"ShowEditBtn").on("click", function(){
             var id = $(this).attr('data-value');
             var sid = $(this).attr('data-section-view');
             $("#"+sid+"_EditDataBtn").attr('data-edit-id',id);
             self.fetchRowData(id, sid);
             $("#"+self.model.get('sectionId')).slideUp();
             $("#"+self.model.get('sectionId')+"EditPanel").slideDown();
         })
	 },

     removeData: function(idVal){
      var self = this;
      var confirm = window.confirm("Do you want to remove the selected row");
      if(confirm){
        showLoad(true);
         $.ajax({
             url: self.model.get('removeUrl'),
             data: {id:idVal},
             type: 'POST',
             success: function(data) {
               showLoad(false);
               window.alert("Data has been removed");
               self.model.getData();
             },
             error: function(data){
               showLoad(false);
               window.alert("Request Timeout. Cannot Reach the server. Please check your connection and try again");
             }
        }); 
      }
     },

    fetchRowData: function(idVal, sid){
       var self = this;
       showLoad(true);
         $.ajax({
             url: self.model.get('fetchRowUrl'),
             data: {id:idVal},
             type: 'GET',
             success: function(data) {
               showLoad(false);
               data = eval(data);
               data = data[0];
               $('[data-sid="'+sid+'"][data-mode="edit"]').each(function(itt){
                    var key = $(this).attr('data-key');
                    var value = eval("data."+key);
                    $(this).val(value);
               });
             },
             error: function(data){
               showLoad(false);
               window.alert("Request Timeout. Cannot Reach the server. Please check your connection and try again");
             }
        }); 
    },

	 close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});