var LoginBoxView = Backbone.View.extend({

	initialize: function(){
		Backbone.Validation.bind(this,{
         valid: function(view, attr){
             $('#errorUsername').css('display', 'none');
             $('#errorPassword').css('display', 'none');
             $('#errorPasswordLen').css('display', 'none');
             $('#errorLogin').css('display', 'none');
         },
         invalid: function(view, attr, error){
            $('#success').css('display', 'none');
            if(attr=="userName"){
               $('#errorUsername').css('display', 'block');
            }
           if(attr=="passWord"){
               if(error=="Pass word must be at least 6 characters"){
                  $('#errorPasswordLen').css('display', 'block');
               }else{
                  $('#errorPassword').css('display', 'block');
               }
                
           }
         }
      });
		this.render();
	},

	render: function(){
		var html = '';
         html+='<!--Start Enter Creds-->';
           html+='<div class="well" style="border:none; box-shadow:none;background-color:white;">';
            html+='<h2>';
              html+='<span class="stepIcon" style="position: relative; margin-left: 43px;"><i class="fa fa-users"></i></span>';
              html+='<span class="stepHeading">Welcome, please enter your credentials</span>';
            html+='</h2>';
            html+='<div class="stepContent" style="padding-left:90px;">';
                 html+='<div id="errorLogin" class="alert alert-danger errorHidden"><i class="fa fa-exclamation-circle"></i> Invalid Login Credentials</div>';
               html+='<div id="errorUsername" class="alert alert-danger errorHidden"><i class="fa fa-exclamation-circle"></i>  Plese check your username</div>';
               html+='<div class="input-group margin-bottom-sm">';
                 html+='<span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>';
                 html+='<input class="form-control" name="userName" type="text" placeholder="Enter your username">';
               html+='</div>';
               html+='<br/>';
                 html+='<div id="errorPassword" class="alert alert-danger errorHidden"><i class="fa fa-exclamation-circle"></i> Plese check your password</div>';
                 html+='<div id="errorPasswordLen" class="alert alert-danger errorHidden"><i class="fa fa-exclamation-circle"></i> Password must contain at least six characters</div>';

                html+='<div class="input-group margin-bottom-sm">';
                 html+='<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>';
                 html+='<input class="form-control" name="passWord" type="password" placeholder="Enter your password">';
               html+='</div>';
            html+='</div>';
           html+='</div>';
            html+='<!--End Enter Creds-->';
           html+='<!--Start Choose email-->';
           html+='<div class="well" style="border:none; box-shadow:none;background-color:white;">';
               html+='<div class="stepContent" style="padding-left: 488px;">';
                html+='<button class="btn btn-lg btn-default btnHover" name="userLogin">Log me in</button>';
               html+='</div>';
           html+='</div>';
            html+='<!--End Choose email-->';
            html+='<br><br>';
            $(this.el).html(html);
	},

	
   //bind verify
   events: {
      'click [name~="userLogin"]' : 'login', // Log me in
      'click [name~="register"]' : 'register' // Create Account
   },


   //handler for login account
   login: function(){
      $('#errorLogin').css('display', 'none');// hide login error
      this.model.set({
         userName: $('[name~="userName"]').val(), //this is needed for login
         passWord: $('[name~="passWord"]').val(),  //this is needed for login
         confirmPassword: $('[name~="passWord"]').val(),//dummy data to bypass model validation
         emailAddress: '1@1.com', //dummy data to bypass model validation
         clusterId: 1,   //dummy data to bypass model validation
         termsOfUse: true,   //dummy data to bypass model validation
      },{validate: true});

      if(this.model.isValid()){
        var self = this;
        $.ajax({
           url: App.loginUrl,
           data: {username:self.model.get('userName'), password:self.model.get('passWord')},
           type: 'POST',
           success: function(data) {
            var response = eval ("["+data+"]");
            var userData = response[0];
            if(data!=false){
              //@Code Smell TODO Move this to app.js
              var validMode = false;
              if(userData.position_id=="P0000"){
                //Enable Staff Mode /Admin Mode
                App.currentStaffId = response;
                validMode = true;
                App.currentMode = "Admin";
              }else if(userData.position_id=="P0003" || userData.position_id=="P0004"){
                App.currentFacultyId = data;
                validMode = true;
                App.currentMode = "Faculty";
              }else if(userData.position_id=="P0005"){
                  validMode = true;
                  App.currentMode = "Staff";
                }

              if(validMode){
                 var sessionHash = userData.fid; // use this to put a unique session has pref from the server
                 createSession(sessionHash);// create a sesssion
                 Backbone.history.navigate('profile', {trigger:true});//trigger redirect route
              }else{
                $('#errorLogin').css('display', 'block');// show login error
              }
             
             }else{
                $('#errorLogin').css('display', 'block');// show login error
             }
           }
        });
      }
   },

   //handler for account registration redirect

   register: function(){
      Backbone.history.navigate('#register', {trigger:true});
   },

	close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});