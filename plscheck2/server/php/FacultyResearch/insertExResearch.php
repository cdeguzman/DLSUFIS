<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $fund_agency = $_POST["fagency_id"];
  $amt = $_POST["amount"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $research_type = 'Funded';
  $funding_type = 'External';
  $currency = $_POST["currency"];
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $insertExResearch = "INSERT INTO research_external
                  (fid, research_title, fagency_id, amount, start_date, end_date, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$fund_agency', '$amount', '$start_date', '$end_date', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertExResearch);
  
?> 