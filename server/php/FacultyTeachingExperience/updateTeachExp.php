<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $el_id = $_POST["el_id"];
  $years = $_POST["no_years"];
  $institution_id = ucwords($_POST["institution_id"]); 
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  $position = $_POST["position_id"];
  
  if (is_numeric($years)){
    $no_years = $years;
  } else {
    $no_years = 0;  
  }  
  
  $update_teachExp = mysql_query("UPDATE teaching_experience SET fid = '$fid', el_id = '$el_id', no_years = '$years', 
                                         institution_id = '$institution_id', start_date = '$start_date', end_date = '$end_date',
										 position_id = '$position' 
                                  WHERE te_id = '$id'"); 
 
?> 