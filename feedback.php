<!DOCTYPE html>
<html>
<head>
	<title>Feedback Form</title>
</head>

<?php 
// Unset all of the session variables.
$_SESSION = array();
// Finally, destroy the session.
session_destroy();


$message = "A new user has finished your quiz. Time to run the ML-model. CHOP CHOP!";

mail("aij.immanuel@gmail.com","Time to do learning-ML",$message);
mail("ryoshii@csusm.edu","Time to do learning-ML",$message);


?>



<link rel="stylesheet" type="text/css" href="bootstrap.css">
<body style="background-color: lightblue;">
<div class="container" style="width: 300px; border: 15px solid white; padding: 50px; margin: auto; width: 50%;
display: block; margin-top: 100px" >
	<form action="comment_save.php" method="POST">
		<label for="feedback" style="text-align: center; font-size: 30px; font-family: impact;">Feedback</label>
		<textarea id="feedback" name="feedback" placeholder="Optional.." style="height: 200px; width:100%;"></textarea>
		<input type="submit" value="submit">

		
	</form>
	
</div>
</body>
</html>