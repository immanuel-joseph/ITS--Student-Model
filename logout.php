<?php 
include 'connection.php';
$name=$_SESSION['name'];
$currImgId = $_GET['currImgId'];
$datee = new DateTime();
$datee = $datee->getTimestamp();
$sssql="INSERT INTO demo_users (demo_users_name,demo_users_time,currImgId) VALUES ('$name','$datee','$currImgId')";
$resultt = $_SESSION["conn"]->query($sssql);

print_r($resultt);
if($resultt==1)
{
		if($currImgId == 103)
		{
			$queryy="select emotion_names from demo_table where emotion_id=103 and user_name='".$_SESSION['name']."'";
			$resultt=$_SESSION["conn"]->query($queryy);
			$roww = $resultt->fetch_assoc();
			if(isset($roww['emotion_names'])){
					header('Location: insert_csv.php');
					}
			else{
				header('Location: logout_message.php');
			}			
		}
		else
		{
		
		header('Location: logout_message.php');
		}
}
else
{
	echo "jdbsakjdbc";
}



 ?>