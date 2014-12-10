<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $dlevel_id = $_POST["dlevel_id"];
  $degree_id = $_POST["degree_id"]; 
  $institution_id = $_POST["institution_id"];
  $degree_stages = $_POST["degree_stages"];
  $units = $_POST["earned_units"];
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  
  if (is_numeric($units)){
    $earned_units = $units;
  } else {
    $earned_units = 0;  
  }  
  
  $insertDegreePursue = "INSERT INTO degree_pursue 
                        (fid, degree_id, dlevel_id, institution_id, degree_stages, earned_units, start_date, end_date)
                         VALUES 
						('$fid', '$degree_id', '$dlevel_id', '$institution_id', '$degree_stages', '$earned_units', '$start_date', '$end_date')";
  
  mysql_query($insertDegreePursue);
  
?> 