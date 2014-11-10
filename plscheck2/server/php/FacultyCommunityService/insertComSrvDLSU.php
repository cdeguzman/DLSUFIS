<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $description = ucwords($_POST["description"]);
  $unit_code = $_POST["unit_code"];
  $dept_code = $_POST["dept_code"];
  $committee = ucwords($_POST["committee"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $cs_type = "CS001";
  
  $insertComSrvDLSU = "INSERT INTO community_service
                   (cs_type, fid, description, unit_code, dept_code, committee, start_date, end_date)
                   VALUES 
				   ('$cs_type', '$fid', '$description', '$unit_code', '$dept_code', '$committee', '$start_date', '$end_date')";
  
  mysql_query($insertComSrvDLSU);
  
?> 