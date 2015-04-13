<?php
	session_start();
	$lang = 'hr';
	if(isset($_SESSION['lang'])) {
		$lang = $_SESSION['lang'];
	}
	
	$dbc = mysqli_connect( 'localhost', 'root', 'root', 'wakewok' ) or die('Pogreška kod spajanja na bazu podataka.');
	$sql = "SELECT categories.id, categories.name FROM categories JOIN food ON food.category = categories.id WHERE categories.description IS NOT NULL GROUP BY categories.id ORDER BY categories.name;";
	$allCategories = mysqli_query($dbc, $sql);
	mysqli_close( $dbc );
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>WakeWok</title>
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
									while( $row = mysqli_fetch_array( $allCategories ) ) { 
										print '<li role="presentation"><a href="o_jelima.php?id='.$row[0].'" role="menuitem" tabindex="-1" href="#">'.$row[1].'</a></li>';
									}
								?>
							</ul>
						</li>
						<li><a href="rezervacije.php">Rezervacije</a></li>
						<li><a href="o_nama.php">O nama</a></li>
						<li><a href="kontakt.php">Kontakt</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<article class="content container">
		<div class="row page-title">
			<div class="col-md-12">
				<h1 style="display: none;">WakeWok</h1>
				<img src="images/54b3ab521c712.jpg" alt="WakeWok Wrap">
			</div>
		</div>
		<div class="row">
			<article class="homepage-article col-md-6">
				<div class="row">
					<div class="col-sm-6 article-picture"><img src="images/homepage-article-1.jpg" alt="Jelovnik"></div>
					<div class="col-sm-6">
						<a href="jelovnik.php"><h2>Jelovnik</h2></a>
						<p>Zanima Vas kolika je cijena dobre i svježe hrane?<br />
						Kod nas možete jesti kvalitetno i jeftino uz vrhunsku uslugu.</p>
					</div>
				</div>
			</article>
			<article class="homepage-article col-md-6">
				<div class="row">
					<div class="col-sm-6 article-picture"><img src="images/homepage-article-2.jpg" alt="O jelima"></div>
					<div class="col-sm-6">
						<h2>O jelima</h2>
						<p>Odabirom kategorije jela saznajte više o jelima koje nudimo, od kud potječu, od čega se sastoje i slično.</p>
					</div>
				</div>
			</article>
		</div>
		<div class="row">
			<article class="homepage-article col-md-6">
				<div class="row">
					<div class="col-sm-6 article-picture"><img src="images/homepage-article-3.png" alt="O nama"></div>
					<div class="col-sm-6">
						<a href="o_nama.php"><h2>O nama</h2></a>
						<p>Ne znate gdje se nalazimo? Želite znati više o tome kako smo nastali i čime se zapravo bavimo? Ovo je onda stranica za Vas.</p>
					</div>
				</div>
			</article>
			<div class="col-md-6">
				<table id="registration-form">
					<thead>
						<tr>
							<th colspan="2">
								<h2>Rezerviraj mjesto</h2>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Ime i prezime: </td>
							<td><input type="text" name="name" id="name" required/></td>
						</tr>
						<tr>
							<td>Broj telefona: </td>
							<td><input type="text" name="telephone" id="telephone" required/></td>
						</tr>
						<tr>
							<td>Željeni datum: </td>
							<td><input type="text" name="date" id="date" required/></td>
						</tr>
						<tr>
							<td>Željeno vrijeme: </td>
							<td><input type="text" name="time" id="time" required/></td>
						</tr>
						<tr>
							<td>Posebna napomena: </td>
							<td><textarea name="name" id="name" required></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><button id="send-reservation" class="simple-button" onclick="sendRequestHomepage(jQuery(this));">Pošalji upit</button></td>
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