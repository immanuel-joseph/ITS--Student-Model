<?php include 'connection.php'?>
<?php

	
		echo "<list type='hidden' id ='imagelist'>";
		while ($row = $_SESSION["result"]->fetch_assoc()) {
			echo "<option value=/anton031/". $row['imagePath'] ." style='display:none;' />";
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
	
<div>
<h1>Answer the following question!</h1>
<p>What is the emotion depicted on the image displayed?</p>
</div>
<form class="container" action="" method="post">

<div id="imageDiv">
	<img src="" id="displayImage" alt="no image found"/>
</div>
<br/><br/>
<div style="text-align: center;font-size: 25px" >

<input class="emotion" type="radio" name="emo" value="happy" id="happy" >
<label class="emotion" for="happy">Happy</label><br>

<input class="emotion" type="radio" name="emo" value="fear" id="fear" >
<label class="emotion" for="fear">Fear</label><br>

<input class="emotion" type="radio" name="emotion" value="disgust" id="disgust" >
<label  class="emotion" for="disgust">Disgust</label><br>

<input class="emotion" type="radio" name="emotion" value="surprised" id="surprised" >
<label class="emotion" for="surprised">Surprised</label><br>

<input class="emotion" type="radio" name="emotion" value="angry" id="angry" >
<label class="emotion" for="angry">Angry</label><br>

<input class="emotion" type="radio" name="emotion" value="contempt" id="contempt" >
<label class="emotion" for="contempt">Contempt</label><br>

<input class="emotion" type="radio" name="emotion" value="sad" id="sad" >
<label class="emotion" for="sad">Sad</label><br>

</div>
<div id="div2">
<button type="button" onclick="getReverseImage(")>Previous</button>
<button type="button" onclick="getImage()">Next</button>
</div>
</form>

</body>

</html>

