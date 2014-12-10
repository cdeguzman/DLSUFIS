<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $start_date = $_POST["start_date"];
  $end_date = ucwords($_POST["end_date"]);
  //$research_type = 'Grants';
  //$funding_type = NULL;
  //$currency = NULL;
  //$amount = NULL;  
  
  $update_grants = mysql_query("UPDATE research_external SET research_title = '$research_title', fagency = '$fagency',
                                       start_date = '$start_date', end_date = '$end_date' 
                                WHERE research_id = '$id'"); 
 
?> 