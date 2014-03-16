var FacultyInformationView = Backbone.View.extend({

  initialize: function(){
      this.subViews = new Array();
      this.model.on("fetched", this.render, this);
  },
  
  render: function(){
      var html ='';
          html +='<div id="facultyInformation" class="jumbotron">';
                html +='<div class="panel panel-default">';
                  html +='<!-- Default panel contents -->';
                  html +='<div class="panel-heading">'+App.currentFacultyId+" - "+this.model.get('flname')+', ' + this.model.get('ffname')+' '+this.model.get('fmname')+'</div>';
                  html +='<div class="panel-body">';
                      html +='<h3>'+this.model.get('college')+' - '+this.model.get('unitTitle')+'</h3>';
                      html +='<h4>'+this.model.get('deptName')+'</h4>';
                      html +='<h4>'+this.model.get('classification') + ' - ' + this.model.get('rankTitle')+'</h4>';
                  html +='</div>';
                  html +='<!-- Table -->';
                html +='</div>';
            html +='</div>';
            html +='<div id="profileContent"></div>'
            
            $(this.el).append(html);
              this.subViews.push(new FacultyProfileSectionTabView({
              el: "#profileContent"
            }));
      },
    close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});