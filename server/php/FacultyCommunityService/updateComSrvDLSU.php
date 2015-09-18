<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $desc = ucwords($_POST["description"]);
  $committee = ucwords($_POST["committee"]);
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  
  $update_comSrvDLSU = mysql_query("UPDATE community_service SET description='$desc', committee='$committee', start_date='$start_date', 
									      end_date='$end_date'
							        WHERE cs_id = '$id'"); 
 
?> 