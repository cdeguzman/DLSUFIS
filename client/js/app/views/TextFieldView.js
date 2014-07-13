var TextFieldView = Backbone.View.extend({

  subViews: '',
  elementName: '',
  elementLabel: '',
  sectionId: '',
  inputType: '',
  classType: '',
  
  initialize: function(options){
  	this.elementName = options.elementName;
    this.elementLabel = options.elementLabel;
    this.sectionId = options.sectionId;
    this.classType = options.inputType;
    this.subViews = new Array();
    this.render();

  },

  render: function(){
  	var html = '';

  	html += '<tr>';
  		html += '<td><label for="'+this.elementName+'">'+this.elementLabel+'</label></td>';
  		if(this.classType==="year"){
        html += '<td><input class="form-control" type="number" name="'+this.sectionId+'_'+this.elementName+'" id="'+this.sectionId+'_'+this.elementName+'" min="'+App.minYear+'" max="'+App.maxYear+'"/></td>';
      }else{
        html += '<td><input class="form-control" type="'+this.classType+'" name="'+this.sectionId+'_'+this.elementName+'" id="'+this.sectionId+'_'+this.elementName+'"/></td>';
      }
  	html += '</tr>';
  	$(this.el).append(html);
  },

  getData: function(){

  },

  close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});