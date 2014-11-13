<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $country_code = strtoupper($_POST["country_code"]);
  $country_name = ucwords($_POST["country_name"]);
  $id = $_POST["id"];
   
  $update_country = mysql_query("UPDATE country SET country_code = '$country_code', country_name = '$country_name' 
							     WHERE id = '$id'");  
?> 