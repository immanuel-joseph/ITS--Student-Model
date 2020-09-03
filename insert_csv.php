<?php
include 'connection.php';
$name=$_SESSION["name"];
echo $name;
$query= "select   features.idnew_table, features.eyes, features.eyebrows, features.forehead, features.nose, features.mouth, features.origin_value, users.userId , demo_table.emotion_names  from demo_table join features on demo_table.emotion_id = features.idnew_table join users on users.username = demo_table.user_name where demo_table.user_name='".$name."'" ;
$result = $_SESSION["conn"]->query($query);
$fields =$result->field_count;
$filename= '/var/www/html/anton031/csv/'.$name.'.csv';
print_r($filename);
// file creation
$file = fopen($filename,"w","/var/www/html/anton031/csv/" );
print_r($file);
$csv_export='fgdfh';
$field_info = array();
for ($i=0; $i < $fields ; $i++) { 
	# code...
	$field_info[$i] = $result->fetch_field()->name;
	
}
fputcsv($file, $field_info );

//print_r($csv_export);

while ($row = $result->fetch_assoc()) {

	fputcsv($file, $row );

}

fclose($file);

// header("Content-type: text/x-csv");
// header("Content-Disposition: attachment; filename=".$filename );
// file_put_contents("/csv" . $filename, "$csv_export");
header('Location:feedback.php');




  ?>

 