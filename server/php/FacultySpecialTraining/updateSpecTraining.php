<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $training_title = ucwords($_POST["training_title"]);
  $institution = $_POST["institution"]; 
  //$industry_id = $_POST["industry_id"];
  //$org_id = $_POST["org_id"];
  $venue = ucwords($_POST["venue"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  
  $update_specTrain = mysql_query("UPDATE special_training SET training_title = '$training_title', 
                                       venue = '$venue', institution = '$institution', start_date = '$start_date', end_date = '$end_date'   
                                   WHERE st_id = '$id'"); 
 
?> 