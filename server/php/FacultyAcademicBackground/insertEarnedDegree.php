<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $degree_id = $_POST["degree_id"]; 
  $as_code = $_POST["as_code"];
  $year_obtained = $_POST["year_obtained"];
  $institution_id = $_POST["institution_id"];
  $so_num = $_POST["so_num"];
  
  
  $insertEarnedDegree = "INSERT INTO degree_earned (fid, degree_id, year_obtained, institution_id, so_num)
                         VALUES ('$fid', '$degree_id', '$year_obtained', '$institution_id', '$so_num')";
  
  mysql_query($insertEarnedDegree);
  
?> 