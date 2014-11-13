<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $unit_code = strtoupper($_POST["unit_code"]);
  $unit_title = ucwords($_POST["unit_title"]);
  $id = $_POST["id"];
   
  $update_unit = mysql_query("UPDATE unit SET unit_code = '$unit_code', unit_title = '$unit_title'
							  WHERE id = '$id'");  
?> 