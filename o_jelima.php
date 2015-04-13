<?php
	session_start();
	$lang = 'hr';
	if(isset($_SESSION['lang'])) {
		$lang = $_SESSION['lang'];
	}
	
	$dbc = mysqli_connect( 'localhost', 'root', 'root', 'wakewok' ) or die('Pogreška kod spajanja na bazu podataka.');
	$sql = "SELECT categories.id, categories.name FROM categories JOIN food ON food.category = categories.id WHERE categories.description IS NOT NULL GROUP BY categories.id ORDER BY categories.name;";
	$navigationCategories = mysqli_query($dbc, $sql);
	$sql = "SELECT `name`, `image`, `lat`, `long`, `description` FROM categories WHERE id = ".$_GET['id'].";";

	$category = mysqli_query($dbc, $sql);
	$category = mysqli_fetch_array($category);
	mysqli_close( $dbc );
?>
<!doctype html>
<html lang="en">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"></meta>
	<title><?php print $category['name'] ?> | WakeWok</title>
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
							<a class="dropdown-toggle active" type="button" id="dropdownMenuFood" data-toggle="dropdown" aria-expanded="true">O jelima <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuFood">
								<?php
									while( $row = mysqli_fetch_array( $navigationCategories ) ) { 
										print '<li role="presentation"><a '.(($row[0] == $_GET['id']) ? 'class="active" ' : '').'href="o_jelima.php?id='.$row[0].'" role="menuitem" tabindex="-1" href="#">'.$row[1].'</a></li>';
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
		<div class="row">
			<div class="col-md-12 page-title">
				<h1><?php print $category['name']; ?></h1>
				<img src="<?php print $category['image']; ?>" alt="<?php print $category['name']; ?>">
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d9315.612055079815!2d<?php print isset($category['long']) ? $category['long'] : '15.9486582' ?>!3d<?php print isset($category['long']) ? $category['lat'] : '45.7845132' ?>!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2shr!4v1428898320808" frameborder="0" style="border:0"></iframe>
				</div>
			</div>
			<div class="col-md-6">
				<?php print $category['description']; ?>
			</div>
		</div>
	</article>
	<footer>
		<span>Copyright by WakeWok, 2015</span>
	</footer>
</body>
</html>