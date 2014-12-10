<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
 // $ltype = '1';
  $designation = ucwords($_POST["designation"]);
  $org_name = ucwords($_POST["org_name"]); 
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  
  $update_leadership = mysql_query("UPDATE professional_acty SET designation = '$designation', 
                                           org_name = '$org_name', start_date = '$start_date', end_date = '$end_date'
                                    WHERE pa_id = '$id' AND leader_type = '1'"); 
 
?> 