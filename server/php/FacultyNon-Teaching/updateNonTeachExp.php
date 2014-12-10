<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $work_nature = ucwords($_POST["work_nature"]);
  $institution = $_POST["institution"];
  //$industry_id = $_POST["industry_id"];
  //$org_id = $_POST["org_id"]; 
  $years = $_POST["no_years"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  
  if (is_numeric($years)){
    $no_years = $years;
  } else {
    $no_years = 0;  
  }  
 
  
  $update_nonTeachExp = mysql_query("UPDATE professional_prac SET work_nature = '$work_nature', 
                                            institution = '$institution', no_years = '$years', start_date = '$start_date', 
											end_date = '$end_date'
                                  WHERE pp_id = '$id'"); 
 
?> 