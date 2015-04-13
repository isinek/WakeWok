<?php
if(isset($_GET['email']) && isset($_GET['subject']) && isset($_GET['body']) && strlen($_GET['email']) > 0 && strlen($_GET['subject']) > 0 && strlen($_GET['body']) > 0) {
	$headers = 'From: isinek@gmail.com\r\nCC: isinek@gmail.com';
	if(mail($_GET['email'],$_GET['subject'],$_GET['body'], $headers))
		echo 'Upit je uspješno poslan.';
	else
		echo 'Na žalost, nismo u mogućnosti poslati upit. Molimo, probajte kasnije.';
} elseif(isset($_GET['name']) && isset($_GET['telephone']) && isset($_GET['date']) && isset($_GET['time']) && strlen($_GET['name']) > 0 && strlen($_GET['telephone']) > 0 && strlen($_GET['date']) > 0 && strlen($_GET['time']) > 0) {
	if(mail('isinek@gmail.com','Upit sa homepage-a.',$_GET['name'].'<br>'.$_GET['telephone'].'<br>'.$_GET['date'].'<br>'.$_GET['time']))
		echo 'Upit je uspješno poslan.';
	else
		echo 'Na žalost, nismo u mogućnosti poslati upit. Molimo, probajte kasnije.';
} else {
	echo 'Niste popunili sva polja!';
}
?>