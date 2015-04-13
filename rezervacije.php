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
						<li><a class="active" href="rezervacije.php">Rezervacije</a></li>
						<li><a href="o_nama.php">O nama</a></li>
						<li><a href="kontakt.php">Kontakt</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<article class="content container">
		<div class="row">
			<div class="col-md-12 page-title">
				<h1>Rezervacije</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<table id="reservationTable">
					<tbody>
						<tr>
							<td><b>1.</b> Odabrati datum rezervacije: </td>
							<td><input type="text" id="reservationDate" name="reservationDate" value="10.04.2015" /></td>
						</tr>
						<tr>
							<td><b>2.</b> Odabrati vrijeme rezervacije: </td>
							<td><input type="text" id="reservationTime" name="reservationTime" value="12:00" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<p><b>3.</b> Odabrati željeni stol.</p>
				<p>Zeleni stolovi su <span style="color: #0f0">slobodni</span>, a crveni <span style="color: #f00">zauzeti</span>.</p>
			</div>
		</div>
		<div class="row">
			<div id="table-choosing" class="col-md-12">
				<img src="images/restaurant.jpg" alt="Tlocrt restorana">
			</div>
		</div>
	</article>
	<footer>
		<span>Copyright by WakeWok, 2015</span>
	</footer>
</body>
</html>