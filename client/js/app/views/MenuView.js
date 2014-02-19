
var MenuView = Backbone.View.extend({

   events:{
     'click [name~="musage"]' : 'showUsageSummary', // Usage summary primary link
     'click [name~="mgenkey"]' : 'showUsageGenerateKey' // Generate key primary link
   },
   
   //handler for usage summary primary link
   showUsageSummary: function(){
     $('[name="mgenkey"]').removeClass('active'); //remove highlight from other menu links
     $('[name="musage"]').addClass('active');  //set highlight to current link
     $('#usageSummary').fadeIn(0);
     $('#generateKey').fadeOut(0);
     $('#successKey').css('display','none');
     $('#failKey').css('display','none');
   },
   //handler for generate key primary link
   showUsageGenerateKey: function(){
      $('[name="musage"]').removeClass('active'); //remove highlight from other menu links
      $('[name="mgenkey"]').addClass('active');  //set highlight to current link
      $('#usageSummary').fadeOut(0);
      $('#generateKey').fadeIn(0);
   }

});
