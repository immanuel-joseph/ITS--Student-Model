<?php
include 'connection.php';
$name=$_POST['user'];
// $password=$_POST[password];
$query="select * from users where username='$name'";
$result=$_SESSION["conn"]->query($query);
$num=mysqli_num_rows($result);
$messagee="Incorrect username.";
if($num)
{
	header('Location: index.php?name='.$name);
}
else
{
	header('Location: login_register.php?messagee='.$messagee);
}

?>