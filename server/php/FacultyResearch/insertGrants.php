<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $start_year = $_POST["start_year"];
  $end_year = $_POST["end_year"];
  $research_type = 'Grants';
  $funding_type = NULL;
  $currency = NULL;
  $amount = NULL;
  
  $insertGrants= "INSERT INTO research_external
                  (fid, research_title, fagency, amount, year_start, year_end, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$fagency', '$amount', '$start_year', '$end_year', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertGrants);
  
?> 