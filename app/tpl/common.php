<?php 
	$home=(isset($_SESSION['user']))?APP_W.'dashboard':'home';
?>
<body>
<div class="container-fluid">
<header>
	<nav class="navbar-default">
		<h1><a href="<?= $home;?>">
		<?= $title; ?></a></h1>
	
	<?php 
		if (!isset($_SESSION['user'])){
			echo '<div class="login">
					<form class="form-log" method="POST" action="'.APP_W.'home/log">
						<label for="email">User:<input type="text" name="email"></label>
						<label for="password">Password:<input type="password" name="password"></label>
						<input type="submit" class="btn btn-default" id="login-button" value="Entra">
					</form>';
		}else{
			echo '<div class="head-msg">';
			echo '<p>'.$_SESSION['user']->email.' | <a href="'.APP_W.'home/logout" >Logout</a></p>';

		}
	?>
	</div>
	</nav>
	
</header>