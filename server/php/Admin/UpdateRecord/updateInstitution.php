<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $institution_name = ucwords($_POST["institution_name"]);
  $location = ucwords($_POST["location"]);
  $country = $_POST["country"]; 
  $id = $_GET["id"];
   
  $update_institution = mysql_query("UPDATE institution SET institution_name = '$institution_name', 
                                     location = '$location', country = '$country'
							         WHERE institution_id = '$id'");  
?> 