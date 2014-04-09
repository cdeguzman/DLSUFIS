var TextFieldView = Backbone.View.extend({

  subViews: '',
  elementName: '',
  elementLabel: '',
  sectionId: '',
  
  initialize: function(options){
  	this.elementName = options.elementName;
    this.elementLabel = options.elementLabel;
    this.sectionId = options.sectionId;
    this.subViews = new Array();
    this.render();

  },

  render: function(){
  	var html = '';
  	html += '<tr>';
  		html += '<td><label for="'+this.elementName+'">'+this.elementLabel+'</label></td>';
  		html += '<td><input class="form-control" type="text" name="'+this.sectionId+'_'+this.elementName+'" id="'+this.sectionId+'_'+this.elementName+'"/></td>';
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