<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $dlevel_id = $_POST["dlevel_id"];
  $degree_id = $_POST["degree_id"];
  $as_code = $_POST["as_code"];
  $year_obtained = $_POST["year_obtained"];
  $institution_id = $_POST["institution_id"];
  $location_id = $_POST["location_id"];
  $so_num = strtoupper($_POST["so_num"]);
  
  $update_degree = mysql_query("UPDATE degree_earned
                                SET dlevel_id = '$dlevel_id', degree_id = '$degree_id', specialization = '$as_code', 
								year_obtained = '$year_obtained', institution_id = '$institution_id', 
								location_id = '$location_id', so_num = '$so_num'  
                                WHERE de_id = $id"); 
 
?> 