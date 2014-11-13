<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $dlevel_id = $_POST["dlevel_id"];
  $degree_id = $_POST["degree_id"];
  $degree_stages = $_POST["degree_stages"];
  $earned_units = $_POST["earned_units"];
  $institution_id = $_POST["institution_id"];
  $start_date = $_POST["location_id"];
  $end_date = $_POST["so_num"];
  
  $update_degree = mysql_query("UPDATE degree_pursue SET dlevel_id = '$dlevel_id', degree_id = '$degree_id', 
                                       institution_id = '$institution_id', degree_stages = '$degree_stages', 
									   earned_units = '$earned_units', start_date = '$start_date', end_date = '$end_date'   
                                WHERE dp_id = '$id'"); 
 
?> 