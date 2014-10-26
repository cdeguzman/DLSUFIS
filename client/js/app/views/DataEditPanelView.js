var DataEditPanelView = Backbone.View.extend({
  
  subViews: '',
  panelData: '',

  
  initialize: function(options){
    this.subViews = new Array();
    this.render();
    this.panelData = options.panelData;
  },

  render: function(){
  	var self = this;
  	var html = '';
  	html += '<table class="table" id="'+this.model.get('sectionId')+"EditTable"+'"></table>';
  	$(this.el).append(html);
  	this.model.get('inputData').forEach(function(inputData){
  		if(inputData.inputType=="text" || inputData.inputType=="date" || inputData.inputType=="year"){
          self.subViews.push(new TextFieldView({
            el: "#"+self.model.get('sectionId')+"EditTable",
            elementName: inputData.inputName+'_Edit',
            elementLabel: inputData.inputLabel,
            sectionId: self.model.get('sectionId'),
            inputType: inputData.inputType,
            dataKey: inputData.inputName,
            mode: 'edit'
          }));
  		}else if(inputData.inputType=="select"){
			self.subViews.push(new SelectboxView({
  				el: "#"+self.model.get('sectionId')+"EditTable",
  				elementName: inputData.inputName+'_Edit',
    			elementLabel: inputData.inputLabel,
    			sectionId: self.model.get('sectionId'),
    			apiUrl: inputData.apiUrl,
    			selectIndex: inputData.selectValueDisplay,
          dataKey: inputData.inputName,
          mode: 'edit'
  			}));
  		}
  	});
    html = '<button type="button" id="'+this.model.get('sectionId')+"_EditDataBtn"+'" class="btn btn-info" data-edit-id=""><i class="fa fa-pencil"></i> Edit</button>';
    $(this.el).append(html);
    var self = this;
    $("#"+this.model.get('sectionId')+"_EditDataBtn").on("click", function(){
        var id = $(this).attr('data-edit-id');
        self.editData(id);
    });
  },

  editData: function(id){
    var self = this;
    var isValidData = true;
    this.model.get('inputData').forEach(function(inputData){
      var value = $("#"+self.model.get('sectionId')+'_'+inputData.inputName+'_Edit').val();
      if(value=="" || value==-1){
        isValidData = false;
      }
    })
    if(isValidData){
      var dataEdited = "{";
      this.model.get('inputData').forEach(function(inputData){
        var value = $("#"+self.model.get('sectionId')+'_'+inputData.inputName+'_Edit').val();
        var key = inputData.inputName;
        dataEdited+=key+": \""+value+"\",";
      })
      dataEdited += "fid:"+App.currentFacultyId;
      dataEdited += "id:"+id;
      dataEdited += "}";
      eval('var dataTransfer='+dataEdited);
      showLoad(true);
      $.ajax({
           url: self.model.get('editUrl'),
           data: dataTransfer,
           type: 'POST',
           success: function(data) {
             showLoad(false);
             BootstrapDialog.alert("Data has been edited");
             self.model.getData();
           },
           error: function(data){
              showLoad(false);
              BootstrapDialog.alert("Request Timeout. Cannot Reach the server. Please check your connection and try again");
            }
      }); 
    }else{
      BootstrapDialog.alert('Please Fill Up All Fields');
    }
  },

  close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});