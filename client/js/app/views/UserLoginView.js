var UserLoginView = Backbone.View.extend({

  subViews: '',

   //bind validation to view
   initialize: function(){
      this.subViews = new Array();
      this.render();
   },

   render: function(){
            this.subViews.push(new HeaderView({ // render the header
              el: "#headerContent",
              headerName: 'Login'
            }));
            this.subViews.push(new LoginBoxView({
              el: "#mainContent",
              model: new UserModel()
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
