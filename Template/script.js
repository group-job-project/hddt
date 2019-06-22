
var jsLogin = {

    // set focus fill
    setFocusLoginPage: function(){
        var elemUsername = document.getElementById("inputidentity");
        var userid = elemUsername.value;

        var elemPassword = document.getElementById("inputpassword");
        var pass = elemPassword.value;

        if(userid != null && userid != "")
        {
          elemUsername.focus();
          elemPassword.focus();
        }
        else
        {
          elemUsername.focus();
        }
    },

    setFocusModal: function(idModal, idInput){
         $('#'+idModal).on('shown.bs.modal', function () {
             // get the locator for an input in your modal. Here I'm focusing on
             // the element with the id of myInput
             $('#'+idInput).focus()
         })
    }
};
