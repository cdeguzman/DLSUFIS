<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $fund_agency = $_POST["fagency_id"];
  $amt = $_POST["amount"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  //$research_type = 'Funded';
  //$funding_type = 'External';
  $currency = $_POST["currency"];
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $update_exResearch = mysql_query("UPDATE research_external SET research_title = '$research_title', 
                                           fagency_id = '$fund_agency', amount = '$amount', start_date = '$start_date', 
										   end_date = '$end_date', currency = '$currency' 
                                    WHERE research_id = '$id'"); 
 
?> 