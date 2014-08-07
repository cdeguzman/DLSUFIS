<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $ltype = '1';
  $designation = ucwords($_POST["designation"]);
  $org_id = $_POST["org_id"]; 
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  
  $insertLeadership = "INSERT INTO professional_acty
                    (fid, leader_type, designation, org_id, start_date, end_date)
                    VALUES 
					('$fid', '$ltype', '$designation', '$org_id', '$start_date', '$end_date')";
  
  mysql_query($insertLeadership);
  
?> 