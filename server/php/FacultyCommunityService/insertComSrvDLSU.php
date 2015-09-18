<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $description = ucwords($_POST["description"]);
  $committee = ucwords($_POST["committee"]);
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  $cs_type = "CS001";
  
  $insertComSrvDLSU = "INSERT INTO community_service
                   (cs_type, fid, description, committee, start_date, end_date)
                   VALUES 
				   ('$cs_type', '$fid', '$description', '$committee', '$start_date', '$end_date')";
  
  mysql_query($insertComSrvDLSU);
  
?> 