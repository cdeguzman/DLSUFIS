<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $research_title = ucwords($_POST["research_title"]);
  $funding_unit = ucwords($_POST["unit_title"]);
  $amt = $_POST["amount"];
  $start_year = $_POST["start_year"];
  $end_year = $_POST["end_year"];
  $research_type = 'Funded';
  $funding_type = 'Internal';
  $currency = 'PhP';
  
  $insertInResearch = "INSERT INTO research_internal
                  (fid, research_title, funding_unit, amount, year_start, year_end, research_type, funding_type, currency)
                  VALUES 
				  ('$fid', '$research_title', '$funding_unit', '$amt', '$start_year', '$end_year', '$research_type', '$funding_type', '$currency')";
  
  mysql_query($insertInResearch);
  
?> 