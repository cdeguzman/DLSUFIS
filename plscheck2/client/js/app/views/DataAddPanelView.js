var DataAddPanelView = Backbone.View.extend({
  
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
  	html += '<table class="table" id="'+this.model.get('sectionId')+"AddTable"+'"></table>';
  	$(this.el).append(html);
  	this.model.get('inputData').forEach(function(inputData){
  		if(inputData.inputType=="text" || inputData.inputType=="date" || inputData.inputType=="year"){
          self.subViews.push(new TextFieldView({
            el: "#"+self.model.get('sectionId')+"AddTable",
            elementName: inputData.inputName,
            elementLabel: inputData.inputLabel,
            sectionId: self.model.get('sectionId'),
            inputType: inputData.inputType,
            mode: 'add'
          }));
  		}else if(inputData.inputType=="select"){
			self.subViews.push(new SelectboxView({
  				el: "#"+self.model.get('sectionId')+"AddTable",
  				elementName: inputData.inputName,
    			elementLabel: inputData.inputLabel,
    			sectionId: self.model.get('sectionId'),
    			apiUrl: inputData.apiUrl,
    			selectIndex: inputData.selectValueDisplay,
          mode: 'add'
  			}));
  		}
  	});
    html = '<button type="button" id="'+this.model.get('sectionId')+"_AddDataBtn"+'" class="btn btn-success"><i class="fa fa-plus"></i> Add</button>';
    $(this.el).append(html);
    var self = this;
    $("#"+this.model.get('sectionId')+"_AddDataBtn").on("click", function(){
        self.addData();
    });

  },

  addData: function(){
    var self = this;
    var isValidData = true;
    this.model.get('inputData').forEach(function(inputData){
      var value = $("#"+self.model.get('sectionId')+'_'+inputData.inputName).val();
      if(value=="" || value==-1){
        isValidData = false;
      }
    })
    if(isValidData){
      var dataAdded = "{";
      this.model.get('inputData').forEach(function(inputData){
        var value = $("#"+self.model.get('sectionId')+'_'+inputData.inputName).val();
        var key = inputData.inputName;
        dataAdded+=key+": \""+value+"\",";
      })
      dataAdded += "fid:"+App.currentFacultyId;
      dataAdded += "}";
      eval('var dataTransfer='+dataAdded);
      showLoad(true);
      $.ajax({
           url: self.model.get('addUrl'),
           data: dataTransfer,
           type: 'POST',
           success: function(data) {
             showLoad(false);
             BootstrapDialog.alert("Data has been added");
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