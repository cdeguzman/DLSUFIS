<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $ltype = '1';
  $designation = ucwords($_POST["designation"]);
  $org_name = ucwords($_POST["org_name"]); 
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  
  $insertLeadership = "INSERT INTO professional_acty
                    (fid, leader_type, designation, org_name, start_date, end_date)
                    VALUES 
					('$fid', '$ltype', '$designation', '$org_name', '$start_date', '$end_date')";
  
  mysql_query($insertLeadership);
  
?> 