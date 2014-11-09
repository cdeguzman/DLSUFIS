<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $location_name = ucwords($_POST["location_name"]);
  $region = ucwords($_POST["region"]); 
  $id = $_GET["id"];
   
  $update_location = mysql_query("UPDATE location SET location_name = '$location_name', region = '$region' 
							      WHERE location_id = '$id'");  
?> 