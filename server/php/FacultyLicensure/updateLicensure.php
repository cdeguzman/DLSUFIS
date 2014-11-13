<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $year_passed = $_POST["year_passed"];
  $licensure_title = ucwords($_POST["licensure_title"]);
  $license = $_POST["license_no"]; 
  $date_validity = $_POST["date_validity"];
  
  if (is_numeric($license)){
    $license_no = $license;
  } else {
    $license_no = 0;  
  }  
  
  $update_licensure = mysql_query("UPDATE professional_exp SET year_passed = '$year_passed', 
                                         licensure_title = '$licensure_title', license_no = '$license_no', 
										 date_validity = '$date_validity'
                                  WHERE pe_id = '$id'"); 
 
?> 