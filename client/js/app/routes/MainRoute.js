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
                App.currentUserData = userData;
                 $.ajax({
                   url: App.adminFetchAcctTypeUsingAccountIdUrl,
                   data: {account_id: userData.account_id},
                   dataType:"json",
                   type: 'GET',
                   contentType: "application/json",
                   success: function(data) {
                    var accountData = data[0];
                    App.currentMode = accountData.account_role;
                    self.loadView(new FacultyProfileView({
                      el: '#mainContent'
                    }));
                  }
                });
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
