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
        App.currentFacultyId = $.cookie('sessionCookie');
        this.loadView(new FacultyProfileView({
         el: '#mainContent'
      }));
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
