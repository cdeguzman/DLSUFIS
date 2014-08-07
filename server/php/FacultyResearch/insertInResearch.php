<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $funding_unit = $_POST["unit_title"];
  $amt = $_POST["amount"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $research_type = 'Funded';
  $funding_type = 'Internal';
  $currency = 'PhP';
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $insertInResearch = "INSERT INTO research_internal
                  (fid, research_title, funding_unit, amount, start_date, end_date, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$funding_unit', '$amount', '$start_date', '$end_date', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertInResearch);
  
?> 