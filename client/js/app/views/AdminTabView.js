var AdminTabView = Backbone.View.extend({

  initialize: function(){
    this.subViews = new Array();
    this.render();
  },

  render: function(){
    //Profile View
    var hidePanel = App.currentFacultyId.length==4 ? " hidePanel" : ""
    var adminTab1 = [];
    var html = '';
    html+='<div class="loadingStatus"><i class="fa fa-spinner fa-spin"></i> Loading...</div>';
    html +='<ul class="nav nav-tabs">';
          html +='<li class="active"><a href="#academicProfile" data-toggle="tab">Admin Tab 1</a></li>';
        html +='</ul>';
        html +='<div class="tab-content">';
          //Tab Content
          html +='<div class="tab-pane fade in active" id="academicProfile">';
            //Sections
            adminTab1.forEach(function(section){
                html+='<div class="sectionMainDiv" id="'+section+'"></div>'
            });
           html +='</div>';


        $(this.el).html(html);

        var facultyProfileSectionModel = new FacultyProfileSectionModel();

 
 },

  close: function(){
    _.each(this.subViews, function(view){view.remove()});
      this.remove();
  }
});