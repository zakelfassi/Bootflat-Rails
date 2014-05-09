function ready() {

	$(':checkbox').iCheck({
		checkboxClass: 'icheckbox_flat',
		cursor: true
	});

	$(':radio').iCheck({
		radioClass: 'iradio_flat',
		cursor: true
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);
