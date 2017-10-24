
function toggle_new_list_dialog() {
	if ($('.new_list_dialog').hasClass("hidden")) {
		$('.new_list_dialog').removeClass("hidden");
		$(this).addClass("active");
		// Workaround for autofocus input field on mobile
		$('.new_list_dialog .form-group input.input--transparent').focus();
	} else {
		$('.new_list_dialog').addClass("hidden");
		$(this).removeClass("active");
	}
}

$('#new_list_button')[0].addEventListener("click", toggle_new_list_dialog);

