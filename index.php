<?php include 'connection.php';?>
<!-- <?php include 'insert.php';?> -->
<?php

		$_SESSION["name"]=$_GET['name'];
		$query="select currImgId from demo_users where demo_users_name='".$_SESSION['name']."' order by iddemo_users desc limit 1";
		$result=$_SESSION["conn"]->query($query);
		$row = $result->fetch_assoc();
		if (isset($row['currImgId'])) {
			
			echo "<span hidden id='resultcurrimg'>".$row['currImgId']."</span>";
			# code...
if ($row['currImgId']==103)
			{
				$queryy="select emotion_names from demo_table where emotion_id=103 and user_name='".$_SESSION['name']."'";
				$resultt=$_SESSION["conn"]->query($queryy);
				$roww = $resultt->fetch_assoc();
				if(isset($roww['emotion_names'])){
					echo "<span hidden id='answer103'>True</span>";
				}

			}
		}
		echo "<list type='hidden' id ='imagelist'>";
		while ($row = $_SESSION["result"]->fetch_assoc()) {
			echo "<option value=/anton031/". $row['imagePath'] ." style='display:none;' id='" .$row['imageid']."'/>";
		}
	
		echo "</list>";
        //"<img sr;c=/". $row['imagePath'] ." />";

   		
		

 ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

<script type="text/javascript" src="app.js"></script>
<link rel="stylesheet" type="text/css" href="app.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<body  onload="displayFisrtImage()">
	
<nav class="navbar navbar-light bg-light">

  <a class="navbar-brand" style="font-size: 3rem;"> 
  	<i class="far fa-grin-beam"></i>
  	Vibes
  </a>
    <button class="btn btn-outline-dark my-2 my-sm-0" onclick="logout()" type="button"> <i class="fas fa-sign-out-alt"></i> Logout</button>
</nav>
		<div class="container quiz-box">
		<div>
		<p>What is the emotion depicted on the image displayed?</p>
		</div>
<div id="imageDiv">
	<img src="" id="displayImage" alt="no image found"/>
	
	 <h5>Question</h5>
	 <h4  id='imgId'></h4>	
</div>
<div>
	<p style="display: none; color: red;" id="error_message">Please select at least one option.</p>
</div>

<br/><br/>
<div style="text-align: center;font-size: 25px" >
<form id="myForm" class="container" action="" method="">
<div class="radio-toolbar">
				<input  type="radio" name="emotion" value="1" id="happy" required >
				<label  for="happy">Happy</label><br>

				<input  type="radio" name="emotion" value="3" id="fear" required>
				<label  for="fear">Fear</label><br>

				<input  type="radio" name="emotion" value="7" id="disgust" required >
				<label   for="disgust">Disgust</label><br>

				<input  type="radio" name="emotion" value="5" id="surprised" required >
				<label  for="surprised">Surprised</label><br>

				<input  type="radio" name="emotion" value="6" id="angry" required>
				<label  for="angry">Angry</label><br>

				<input  type="radio" name="emotion" value="4" id="contempt" required>
				<label  for="contempt">Contempt</label><br>

				<input  type="radio" name="emotion" value="2" id="sad" required>
				<label  for="sad">Sad</label><br>

				<input  type="radio" name="emotion" value="8" id="notsure" required>
				<label  for="notsure">Not Sure.</label><br>
			</div>
		</div>
		<div id="div2">
		<button id="btn" class="btn btn-dark" style="font-size: 2rem;"  name="insert" type="button" onclick="getImage()">Next</button>
</div>
</form>
<span id="resultspan"></span>

</body>

</html>

