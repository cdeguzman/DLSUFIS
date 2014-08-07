<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $training_title = ucwords($_POST["training_title"]);
  $institution_id = $_POST["institution_id"]; 
  $org_id = $_POST["org_id"];
  $venue = ucwords($_POST["venue"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  
  
  $insertSpecTraining = "INSERT INTO special_training 
                        (fid, training_title, venue, institution_id, org_id, start_date, end_date)
                         VALUES 
						('$fid', '$training_title', '$venue', '$institution_id', '$org_id', '$start_date', '$end_date')";
  
  mysql_query($insertSpecTraining);
  
?> 