<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $year_passed = $_POST["year_passed"];
  $licensure_title = ucwords($_POST["licensure_title"]);
  $license = ucwords($_POST["license_no"]); 
  $date_validity = $_POST["date_validity"];
  
  if (is_numeric($license)){
    $license_no = $license;
  } else {
    $license_no = 0;  
  }  
  
  $insertLicensure = "INSERT INTO professional_exp 
                      (fid, year_passed, licensure_title, license_no, date_validity)
                      VALUES 
					  ('$fid', '$year_passed', '$licensure_title', '$license', '$date_validity')";
  
  mysql_query($insertLicensure);
  
?> 