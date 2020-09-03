<?php
 // session_start();
include 'connection.php';

$name=$_POST['user'];
// $password=$_POST['password'];

$s="select * from users where username = '$name'";
$result=$_SESSION["conn"]->query($s);
$num=mysqli_num_rows($result);
$message="Registration sucessful";
if ($num==1) {
	# code...
	$message="Username already taken.";
	header('Location: login_register.php?message='.$message);
}
else
{
	$reg="insert into users(username) values ('$name')";
	$_SESSION["conn"]->query($reg);
	header('Location: login_register.php?message='.$message);
}
 ?>
