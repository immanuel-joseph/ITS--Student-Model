<?php
session_start();
$servername = "simba.cs.csusm.edu";
$username = "anton031";
$password = "anton031";
$dbName = "anton031";

// Create connection
$_SESSION["conn"] = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($_SESSION["conn"]->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";
$sql = "SELECT imageid, imagePath, emotion FROM pictures_data";
$result = $_SESSION["conn"]->query($sql);
$_SESSION["result"]=$result;
// print_r($result->fetch_assoc());
//$_SESSION["conn"]->close();
?>