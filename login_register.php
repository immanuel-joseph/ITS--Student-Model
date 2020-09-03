
<!DOCTYPE html>
<html>
<head>
	<title>User Registration and Login</title>
</head>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<link rel="stylesheet" type="text/css" href="styless.css">

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/3920bba72c.js" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&display=swap" rel="stylesheet">

<body>
<div class="container">
	<div class="login-box">
	<div class="row">
		<div class="col-md-6 login-left">	
			<h2> Login Here </h2>
			<form action="validation.php" method="post">
				<div class="form-group">
					<label>Username</label>
					<input type="text" name="user" class="form-control" required>
					</div>
				<button type="submit" class="btn btn-primary">Login</button>
			</form>

		</div>
		<div class="col-md-6 login-right">	
			<h2> Register Here </h2>
			<form action="registration.php" method="post">
				<div class="form-group">
					<label>Username</label>
					<input type="text" name="user" class="form-control" required>
					</div>
				<button type="submit" class="btn btn-primary">Register</button>
			</form>
			<h4>
			<?php
			if (!empty($_GET['message'])) {
			$message=$_GET['message'];
			echo $message;
			}
			
			  ?>
		</h4>
		</div>
		<h4>
			<?php
			if (!empty($_GET['messagee'])) {
			$messagee=$_GET['messagee'];
			echo $messagee;
			}
			
			  ?>
		</h4>
		
		
		
	</div>


</div>	
</div>

<div id=emoticons class=" align-items-center text-center">
	<h1 style="font-family: 'Amatic SC', cursive; font-size:11rem;">Vibes</h1>

<i class="fas fa-laugh hoverover "></i>
<i class="fas fa-surprise hoverover"></i>
<i class="fas fa-angry hoverover"></i>
<i class="fas fa-frown hoverover"></i>
<i class="fas fa-tired hoverover"></i>
<i class="fas fa-meh hoverover"></i>
<i class="fas fa-flushed hoverover"></i>


</div>
</body>
</html>