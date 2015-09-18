<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $amt = $_POST["amount"];
  $start_year = $_POST["start_year"];
  $end_year = $_POST["end_year"];
  //$research_type = 'Funded';
  //$funding_type = 'External';
  $currency = $_POST["currency"];
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $update_exResearch = mysql_query("UPDATE research_external SET research_title = '$research_title', 
                                           fagency = '$fagency', amount = '$amount', year_start = '$start_year', 
										   year_end = '$end_year', currency = '$currency' 
                                    WHERE research_id = '$id'"); 
 
?> 