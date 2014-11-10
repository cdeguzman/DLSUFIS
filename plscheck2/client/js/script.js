
// function that create a cookie to establish a user session
function createSession(sessionHash){
   $.cookie('sessionCookie', sessionHash);
}

//call this to check if user session exists, if is it returns true else false
function checkSession(){
   var isSessionValid = false; // if session exists
   if( $.cookie('sessionCookie')!=undefined){
      // put additional checks for session here.
      isSessionValid = true;
   }
   return isSessionValid;
}

//call this to destroy session
function destroySession(){
   $.removeCookie('sessionCookie');
}

// unbinds and removes a view
function cleanUpView(view){
   try{
      view.unbind();
      view.remove();
   }catch(err){}
}

function showLoad(load){
   if(load){
      $('.loadingStatus').show();
   }else{
      $('.loadingStatus').hide();
   }
}