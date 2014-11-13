<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $funding_unit = $_POST["unit_title"];
  $amt = $_POST["amount"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  //$research_type = 'Funded';
  //$funding_type = 'Internal';
  //$currency = 'PhP';
  
  if (is_numeric($amt)){
    $amount = $amt;
  } else {
    $amount = 0.00;  
  }  
  
  $update_inResearch = mysql_query("UPDATE research_internal SET research_title = '$research_title', 
                                           funding_unit = '$funding_unit', amount = '$amount', start_date = '$start_date', 
										   end_date = '$end_date' 
                                    WHERE research_id = '$id'"); 
 
?> 