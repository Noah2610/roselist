
function switch_button() {
	if (!$('#new_entry_button').hasClass("hidden")) {
		$('#new_entry_button').addClass("hidden");
		$('#update_list_label').removeClass("hidden");
	}
}

$('#list_title')[0].addEventListener("keydown", switch_button);

