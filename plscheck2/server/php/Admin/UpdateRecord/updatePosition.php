<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $position_id = strtoupper($_POST["position_id"]);
  $position_title = ucwords($_POST["position_title"]);
  $id = $_GET["id"];
   
  $update_position = mysql_query("UPDATE position SET position_id = '$position_id', position_title = '$position_title'
							      WHERE position_id = '$id'");  
?> 