
<?php 
include 'connection.php';
$feedback = $_POST['feedback'];
$name=$_SESSION["name"];

$sssql="INSERT INTO feedback (feedbackcomment,user_name) VALUES ('$feedback','$name')";
$result = $_SESSION["conn"]->query($sssql);
print_r($result);
if($result)
{
	header('Location: end_message.php');
}
else
{
	header('Location: end_message.php');
}
//echo $emotion;
  ?>

