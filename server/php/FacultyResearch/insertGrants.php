<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $research_type = 'Grants';
  $funding_type = NULL;
  $currency = NULL;
  $amount = NULL;
  
  $insertGrants= "INSERT INTO research_external
                  (fid, research_title, fagency, amount, start_date, end_date, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$fagency', '$amount', '$start_date', '$end_date', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertGrants);
  
?> 