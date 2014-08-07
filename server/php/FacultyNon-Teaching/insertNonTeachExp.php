<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $work_nature = ucwords($_POST["work_nature"]);
  $institution_id = $_POST["institution_id"];
  $industry_id = $_POST["industry_id"];
  $org_id = $_POST["org_id"]; 
  $years = $_POST["no_years"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  
  if (is_numeric($years)){
    $no_years = $years;
  } else {
    $no_years = 0;  
  }  
  
  $insertProfPrac = "INSERT INTO professional_prac
                    (fid, work_nature, institution_id, industry_id, org_id, no_years, start_date, end_date)
                    VALUES 
					('$fid', '$work_nature', '$institution_id', '$industry_id', '$org_id', '$no_years', '$start_date', '$end_date')";
  
  mysql_query($insertProfPrac);
  
?> 