function sendRequest(obj) {
	$.ajax({
		url: '../mail.php?email='+jQuery('input#email').val()+'&subject='+jQuery('input#subject').val()+'&body='+jQuery('input#body').val(),
		success: function (data) {
			alert(data);
		},
		error: function () {
			alert('Na žalost, nismo u mogućnosti poslati upit. Molimo, probajte kasnije.');
		}
	});
}

function sendRequestHomepage(obj) {
	$.ajax({
		url: '../mail.php?name='+jQuery('input#name').val()+'&telephone='+jQuery('input#telephone').val()+'&date='+jQuery('input#date').val()+'&time='+jQuery('input#time').val(),
		success: function (data) {
			alert(data);
		},
		error: function () {
			alert('Na žalost, nismo u mogućnosti poslati upit. Molimo, probajte kasnije.');
		}
	});
}