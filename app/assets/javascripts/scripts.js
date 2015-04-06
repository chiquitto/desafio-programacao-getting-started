// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/*$(document).ready(function () {
	$("form").validate({
		debug: true,
		rules: {
			"user[email]": {required: true, email: true},
			"user[password]": {required: true, minlength: 6},
			"user[password_confirmation]": {required: true, equalTo: "#user_password"}
		}
	});
});*/

function validateNumber(event) {
    var key = window.event ? event.keyCode : event.which;
	if (event.keyCode == 8 || event.keyCode == 46
	 || event.keyCode == 37 || event.keyCode == 39
	 || event.keyCode == 13) {
	    return true;
	}
	else if ( key < 48 || key > 57 ) {
	    return false;
	}
	else return true;
};
