<?php
  include("../connect.php");
  $fid = $_POST["fid"];
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
  
  $insertTeachExp = "INSERT INTO teaching_experience 
                        (fid, el_id, no_years, institution_id, start_date, end_date, position_id)
                         VALUES 
						('$fid', '$el_id', '$no_years', '$institution_id', '$start_date', '$end_date', '$position')";
  
  mysql_query($insertTeachExp);
  
?> 