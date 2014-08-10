var ApplicationRouter = Backbone.Router.extend({
   
   routes:{
      '' : 'login', //route for default
      'login' : 'login', //route show user login
      'success' : 'acceptLogin', //route for successfull login
      'register' : 'registerAccount',
      'profile' : 'getProfile'
   },

   //callback for login route
   login: function(){
     var userModel = new UserModel();
     this.currentUser = userModel;
     this.loadView(new UserLoginView({
         model: userModel,
         el: '#mainContent'
      }));
   },

   //redirect for successfull login
   getProfile: function(){
      if(checkSession()){
         App.currentStaffId = $.cookie('sessionCookie');
         App.currentFacultyId = $.cookie('sessionCookie');
         var self = this;
          $.ajax({
               url: App.facultyProfileUrl,
               data: {fid: App.currentFacultyId},
               dataType:"json",
               type: 'GET',
               contentType: "application/json",
               success: function(data) {
                var userData = data[0];
                var validMode = false;
                if(userData.position_id=="P0000"){
                  //Enable Staff Mode /Admin Mode
                  validMode = true;
                  App.currentMode = "Admin";
                }else if(userData.position_id=="P0003" || userData.position_id=="P0004"){
                  validMode = true;
                  App.currentMode = "Faculty";
                }else if(userData.position_id=="P0005"){
                  validMode = true;
                  App.currentMode = "Staff";
                }
                if(validMode){
                  self.loadView(new FacultyProfileView({
                   el: '#mainContent'
                  }));
                 }else{
                  self.login();
                }





              }
          });
      }else{
        location.href = "";
      }
   },
   //redirect to register page
   registerAccount: function(){
      
   },

 //view utils
  loadView: function(view){
    view.render();
    this.view && (this.view.close ? this.view.close() : this.view.remove());
    this.view = view;
  }

});
