<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $dlevel_id = $_POST["dlevel_id"];
  $degree_id = $_POST["degree_id"]; 
  $specialization = ucwords($_POST["specialization"]);
  $year_obtained = $_POST["year_obtained"];
  $institution_id = $_POST["institution_id"];
  $location_id = ucwords($_POST["location_id"]);
  $so_num = strtoupper($_POST["so_num"]);
  
  
  $insertEarnedDegree = "INSERT INTO degree_earned 
                        (fid, dlevel_id, degree_id, specialization, year_obtained, institution_id, location_id, so_num)
                         VALUES 
						('$fid', '$dlevel_id', '$degree_id', '$specialization', '$year_obtained', '$institution_id', '$location_id', '$so_num')";
  
  mysql_query($insertEarnedDegree);
  
?> 