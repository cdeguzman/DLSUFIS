var SelectboxView = Backbone.View.extend({

   subViews: '',
   elementName: '',
   elementLabel: '',
   sectionId: '',
   apiUrl: '',
   selectIndex: '',
   dataKey: '',
   mode: '',

   initialize: function(options){
  	this.elementName = options.elementName;
    this.elementLabel = options.elementLabel;
    this.sectionId = options.sectionId;
    this.apiUrl = options.apiUrl;
    this.selectIndex = options.selectIndex;
    this.dataKey = options.dataKey;
    this.mode = options.mode;
    this.subViews = new Array();
    this.render();

  },

  render: function(){
  	var html = '';
  	html += '<tr>';
  		html += '<td><label for="'+this.elementName+'">'+this.elementLabel+'</label></td>';
  		html += '<td><select id="'+this.sectionId+'_'+this.elementName+'" name="'+this.sectionId+'_'+this.elementName+'" class="form-control" data-sid="'+this.sectionId+'" data-key="'+this.dataKey+'" data-mode="'+this.mode+'"/></select</td>';
  	html += '</tr>';
  	$(this.el).append(html);
  	this.getData();
  },

  getData: function(){
  		var self = this;
		$.ajax({
			   url: self.apiUrl,
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
			   		self.setAttributes(data);
			   }
		});
  },

  setAttributes: function(data){
  	var self = this;
    var rowData = '<option value="-1">Please Select One.</option>';
    $("#"+self.sectionId+'_'+self.elementName).append(rowData);
  	//console.log(data);
  	data.forEach(function(row){
  		//console.log(row);
  		rowData = '<option value="'+eval("row."+self.selectIndex.id)+'">'+eval("row."+self.selectIndex.value)+'</option>';
  		$("#"+self.sectionId+'_'+self.elementName).append(rowData);
  	});
  },


  close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});