var FacultyProfileView = Backbone.View.extend({
	  subViews: '',

   //bind validation to view
   initialize: function(){
      this.subViews = new Array();
   },

   render: function(){
      var html = '';
      html+='<!--Stripped bar on top-->';
      html+='<div id="headerContent"></div>';
      html+='<div id="mainContent"></div>';
      html+='<!--Start Footer-->';
      html+='<div id="footerContent"></div>';
      $('#mainPanel').html(html);
      App.currentStaffId.length==4 ? "Staff Mode" : "Faculty Profile"
      var headerName = "Faculty Profile";
      //CODE SMELL @ Refactor to depend on PID
      if(App.currentStaffId.length==4){
        headerName = "Staff Mode";
      }else if(App.currentStaffId.length==5){
        headerName = "Administrator Mode";
      }
      this.subViews.push(new HeaderView({ // render the header
        el: "#headerContent",
        headerName: headerName
      }));
      var facultyInformationModel = new FacultyInformationModel();
      App.facultyInformationModel = facultyInformationModel;
      this.subViews.push(new FacultyInformationView({
        el: "#mainContent",
        model: facultyInformationModel
      }));

      this.subViews.push(new TermsAndPrivacyView({ //render the footer
        el:"#footerContent"
      }));

   },

   close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});