<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $amt = $_POST["amount"];
  $start_year = $_POST["start_year"];
  $end_year = $_POST["end_year"];
  $research_type = 'Funded';
  $funding_type = 'External';
  $currency = $_POST["currency"];
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $insertExResearch = "INSERT INTO research_external
                  (fid, research_title, fagency, amount, year_start, year_end, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$fagency', '$amount', '$start_year', '$end_year', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertExResearch);
  
?> 