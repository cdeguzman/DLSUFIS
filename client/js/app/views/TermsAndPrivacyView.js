

var TermsAndPrivacyView = Backbone.View.extend({

   initialize: function(){
      this.render();
   },

   render: function(){
      var html = '';
       html+='<div id="footer" class="app-footer-region"><div>';
         html+='<br><br><hr>';
            html+='<div class="row">';
               html+='<div class="col-md-12">';
               html+='<div class="col-md-12"></div>';
               html+='<div class="col-md-12">';
               html+='<p class="text-muted pull-left clickable create" name="register">Create an Account</p>';
                  html+='<p class="text-muted pull-left">&nbsp;&nbsp;&#124;&nbsp;&nbsp;</p>';
                  html+='<p class="text-muted pull-left clickable create" name="terms">Terms of Use</p>';
                  html+='<p class="text-muted pull-left">&nbsp;&nbsp;&#124;&nbsp;&nbsp;</p>';
                  html+='<p class="text-muted pull-left clickable create" name="privacy">Privacy Policy</p>';
               html+='<p class="text-muted pull-right">© 2014 <a href="#" target="_blank">DLSU</a> College of Computer Studies</p>';
              html+='</div>';
               html+='</div>';
            html+='</div>';
            html+='</div>';
          html+='</div>';
           html+=' <!--End Footer-->';
            html+='<!--Form Data-->';
            html+='<div id="form-container"></div>';
      html+='</div>';
         html+='<!--End Main Div of Registration Page-->';
 html+='<div id="curtain" class="curtain">';
     html+='<!--Start Div of Terms-->';
     html+='<div id="terms" class="subSection">';
            html+='<div class="pageHeaderFill">';
              html+='<img src="img/logo.png" class="logo">';
            html+='<span class="pageHeader">Terms of Use</span>';
            html+='</div>';
            
        html+='<!--Start Footer-->';
         html+='<div id="footer" class="app-footer-region"><div>';
         html+='<hr>';
            html+='<div class="row footerModal">';
               html+='<div class="col-md-12">';
               html+='<div class="col-md-12"></div>';
               html+='<div class="col-md-12">';
                  html+='<p class="text-muted pull-left clickable create" name="closeTerms">Back</p>';
                 html+='<p class="text-muted pull-right">© 2014 <a href="#" target="_blank">DLSU</a> College of Computer Studies</p>';
               html+='</div>';
               html+='</div>';
            html+='</div>';
            html+='</div>';
          html+='</div>';
            html+='<!--End Footer-->';
      html+='</div>';
      html+='<!--End Div of Terms-->';
       html+='<!--Start Div of Privacy-->';
     html+='<div id="privacy" class="subSection">';
            html+='<div class="pageHeaderFill">';
              html+='<img src="img/logo.png" class="logo">';
            html+='<span class="pageHeader">Privacy Policy</span>';
            html+='</div>';
            
         html+='<!--Start Footer-->';
         html+='<div id="footer" class="app-footer-region"><div>';
         html+='<hr>';
            html+='<div class="row footerModal">';
               html+='<div class="col-md-12">';
               html+='<div class="col-md-12"></div>';
               html+='<div class="col-md-12">';
                  html+='<p class="text-muted pull-left clickable create" name="closePrivacy">Back</p>';
                  html+='<p class="text-muted pull-right">© 2014 <a href="#" target="_blank">DLSU</a> College of Computer Studies</p>';
               html+='</div>';
               html+='</div>';
            html+='</div>';
            html+='</div>';
          html+='</div>';
            html+='<!--End Footer-->';
      html+='</div>';
      html+='<!--End Div of Privacy-->';
     html+='</div> <!-- Silloutte Div-->';
     $(this.el).html(html);
   },



   //DOM Event Handlers
   events: {
      'click [name~="privacy"]' : 'showPrivacy', // show privacy policy
      'click [name~="terms"]' : 'showTerms', //show terms of use
      'click [name~="closePrivacy"]' : 'closePrivacy', // hide privacy policy
      'click [name~="closeTerms"]' : 'closeTerms' //hide terms of use
   },

   //callback for show terms of use
   showTerms: function(){
      //show curtain
      $('#terms').fadeIn(1000);
      $('.curtain').fadeIn(1000);
      $('.sectionContact').css('overflow','hidden');
   },

   //callback for show privacy policy
   showPrivacy: function(){
       //show curtain
      $('#privacy').fadeIn(1000);
      $('.curtain').fadeIn(1000);
      $('.sectionContact').css('overflow','hidden');
   },
   
   //callback for closeTerms
   closeTerms: function(){
      //show curtain
      $('#terms').fadeOut(1000);
      $('.curtain').fadeOut(1000);
      $('.sectionContact').css('overflow','visible');
      $('html, body').animate({
        scrollTop: $("#termsAnchor").offset().top
      }, 0);
   },

   closePrivacy: function(){
      //show curtain
      $('#privacy').fadeOut(1000);
      $('.curtain').fadeOut(1000);
      $('.sectionContact').css('overflow','visible');
      $('html, body').animate({
        //scrollTop: $("#privacyAnchor").offset().top
      }, 0);
   },

   close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});
