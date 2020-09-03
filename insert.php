
<?php 
include 'connection.php';
$emotion = $_POST['emotion'];
$emotion_id = $_POST['imgId'];
$name=$_SESSION["name"];
print_r($emotion_id);
$ssql="INSERT INTO demo_table (emotion_names,emotion_id,user_name) VALUES ('$emotion','$emotion_id','$name')";
$result = $_SESSION["conn"]->query($ssql);
print_r($result);
if($result)
	echo "success";
else
	echo "Failed";
//echo $emotion;
  ?>