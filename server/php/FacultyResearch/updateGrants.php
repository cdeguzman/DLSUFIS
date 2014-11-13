<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $fund_agency = $_POST["fagency_id"];
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  //$research_type = 'Grants';
  //$funding_type = NULL;
  //$currency = NULL;
  //$amount = NULL;  
  
  $update_grants = mysql_query("UPDATE research_external SET research_title = '$research_title', fagency_id = '$fund_agency',
                                       start_date = '$start_date', end_date = '$end_date' 
                                WHERE research_id = '$id'"); 
 
?> 