var HeaderView = Backbone.View.extend({

	viewParams: '',

	initialize: function(options){
		this.viewParams = options;
		this.render();
	},

	render: function(){
		var changePasswordBtn = checkSession() && App.currentUserData.access_type!=="0"?' <button name="change-password" type="button" class="btn btn-info"><i class="fa fa-lock"></i></button>':'';
		var logoutBtn = checkSession()?'<button name="logout" type="button" class="btn btn-danger"><i class="fa fa-share"></i></button>':'';
		var topMenu = '<div class="btn-group">'+changePasswordBtn + logoutBtn+' </div>'
		var html = '';
		html+='<img src="img/logo.png" class="logo">';
        html+='<span class="systemTitle">DLSU CCS - Faculty Information System</span>';
        html+='<span class="pageHeader">'+this.viewParams.headerName+' '+topMenu+'</span>';
        $(this.el).addClass("pageHeaderFill");
    	$(this.el).html(html);
	},

	events:{
		"click [name~=logout]" : "doLogout",
		"click [name~=change-password]" : "showChangePassword"
	},

	doLogout: function(){
		destroySession();
		location.href = "";
	},

	showChangePassword: function(){
			//@Todo use templates
			var passwordForm = '<form class="form-horizontal">'+
								  '<div class="form-group">'+
								    '<label for="inputPassword" class="col-sm-2 control-label">New Password</label>'+
								    '<div class="col-sm-10">'+
								      '<input type="password" class="form-control" id="inputPassword" placeholder="New Password">'+
								    '</div>'+
								  '</div>'+
								  '<div class="form-group">'+
								    '<label for="confirmInputPassword" class="col-sm-2 control-label">Confirm New Password</label>'+
								    '<div class="col-sm-10">'+
								      '<input type="password" class="form-control" id="confirmInputPassword" placeholder="Confirm New Password">'+
								    '</div>'+
								  '</div>'+
								  '<div id="pw-success" class="alert alert-success hidePanel" role="alert"></div>'+
								  '<div id="pw-error" class="alert alert-danger hidePanel" role="alert"></div>'+
								'</form>';

		   BootstrapDialog.show({
            title: 'Change Pasword',
            message: $(passwordForm),
            buttons: [{
                label: 'Change Password',
                cssClass: 'btn-primary',
                action: function(mdl) {
                  $('#pw-error').hide();
                  $('#pw-success').hide();
                  var password = $("#inputPassword").val();
		          var confirmPassword = $("#confirmInputPassword").val();
		          var message ="";
		          var isValidData = true;
		          //check if both passwords have input
		          if(password=="" || password==-1 || confirmPassword=="" || confirmPassword ==-1){
		            isValidData = false;
		            message = "Please fill up all fields";
		          }
		          //check if they match
		          if(password!==confirmPassword){
		            isValidData = false;
		            message = "New and confirm does not match";
		          }
		          if(isValidData){
		          	  mdl.enableButtons(false);
				      $.ajax({
				           url: App.facPasswordEditUrl,
				           data: {id: App.currentFacultyId, password: password},
				           type: 'POST',
				           success: function(data) {
				             if(eval(data)){
				               message = "Password changed.";
				               $('#pw-success').html(message);
		          			   $('#pw-success').show();
				             }else{
				               $('#pw-error').html('Change password failed. Please try again in a few minutes.');
		          			   $('#pw-error').show();
				             }
				           },error: function(data){
				              showLoad(false);
				              $('#pw-error').html("Request Timeout. Cannot Reach the server. Please check your connection and try again");
		          			  $('#pw-error').show();
				            }
				      }); 
		          }else{
		          	$('#pw-error').html(message);
		          	$('#pw-error').show();
		          	mdl.enableButtons(true);
		          }
                }
            }]
        });
	},

	close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});