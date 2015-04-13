<?php
	session_start();
	$lang = 'hr';
	if(isset($_SESSION['lang'])) {
		$lang = $_SESSION['lang'];
	}
	
	$dbc = mysqli_connect( 'localhost', 'root', 'root', 'wakewok' ) or die('Pogreška kod spajanja na bazu podataka.');
	$sql = "SELECT categories.id, categories.name FROM categories JOIN food ON food.category = categories.id WHERE categories.description IS NOT NULL GROUP BY categories.id ORDER BY categories.name;";
	$navigationCategories = mysqli_query($dbc, $sql);
	mysqli_close( $dbc );
?>
<!doctype html>
<html lang="en">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"></meta>
	<title>Kontakt | WakeWok</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</head>
<body>
	<header class="container">
		<div class="row">
			<div class="col-md-4 hidden-sm hidden-xs header-side-picture"><img src="images/Wok-cooking.jpg" alt="Wok cooking"></div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-sm-6 header-logo"><a href="index.php"><img src="images/logo.png" alt="WakeWok logo"></a></div>
					<div class="col-sm-2 hidden-xs">&nbsp;</div>
					<div class="col-sm-4 hidden-xs">
						<table class="login-form">
							<tbody>
								<tr>
									<td><?php if(isset($_SESSION['username'])) print '<input type="text" id="username" name="username" placeholder="Username">'; ?></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><?php if(isset($_SESSION['username'])) print '<input type="password" id="password" name="password" placeholder="Password">'; ?></td>
									<td><?php if(isset($_SESSION['username'])) print '<button id="submit" class="simple-button">LogIn</button>'; else print '<button id="submit" class="simple-button">LogOut</button>'; ?></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<nav class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#large-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</nav>
				<nav class="collapse navbar-collapse" id="large-navbar-collapse">
					<ul class="nav nav-pills nav-justified">
						<li><a href="jelovnik.php">Jelovnik</a></li>
						<li>
							<a class="dropdown-toggle" type="button" id="dropdownMenuFood" data-toggle="dropdown" aria-expanded="true">O jelima <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuFood">
								<?php
									while( $row = mysqli_fetch_array( $navigationCategories ) ) { 
										print '<li role="presentation"><a href="o_jelima.php?id='.$row[0].'" role="menuitem" tabindex="-1" href="#">'.$row[1].'</a></li>';
									}
								?>
							</ul>
						</li>
						<li><a href="rezervacije.php">Rezervacije</a></li>
						<li><a href="o_nama.php">O nama</a></li>
						<li><a class="active" href="kontakt.php">Kontakt</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<article class="content container">
		<div class="row">
			<div class="col-md-12 page-title">
				<h1>Kontakt</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2329.483792909644!2d15.947165000000012!3d45.784449000000016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDXCsDQ3JzA0LjAiTiAxNcKwNTYnNDkuOCJF!5e1!3m2!1sen!2shr!4v1428181750470" height="250" frameborder="0" style="border:0; width: 100%;"></iframe>
			</div>
			<div class="col-md-4">
				<table id="email-form">
					<thead>
						<tr>
							<th colspan="2">
								<h2>Rezerviraj mjesto</h2>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Vaš email: </td>
							<td><input type="email" name="email" id="email" required/></td>
						</tr>
						<tr>
							<td>Naslov email-a: </td>
							<td><input type="text" name="subject" id="subject" required/></td>
						</tr>
						<tr>
							<td>Poruka za nas: </td>
							<td><textarea name="name" id="name" required></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><button id="send-email" class="simple-button" onclick="sendRequest(jQuery(this));">Pošalji email</button></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4 about-us-picture">
				<table class="about-us-table">
					<tbody>
						<tr>
							<td>Adresa: </td>
							<td>Jarunska 2</td>
						</tr>
						<tr>
							<td>Grad: </td>
							<td>Zagreb </td>
						</tr>
						<tr>
							<td>Telefon: </td>
							<td>01 234 5678</td>
						</tr>
						<tr>
							<td>Mobitel: </td>
							<td>091 234 5678</td>
						</tr>
						<tr>
							<td>Email: </td>
							<td><a href="mailto:info@wakewok.hr">info@wakewok.hr</a></td>
						</tr>
						<tr>
							<td>Radno vrijeme: </td>
							<td>ponedjeljak - petak<br />
								09:00 - 22:00<br /><br />
								subota<br />
								10:00 - 00:00</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
	<footer>
		<span>Copyright by WakeWok, 2015</span>
	</footer>
</body>
</html>