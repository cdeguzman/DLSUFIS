<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $fagency = ucwords($_POST["fagency"]);
  $start_year = $_POST["start_year"];
  $end_year = ucwords($_POST["end_year"]);
  //$research_type = 'Grants';
  //$funding_type = NULL;
  //$currency = NULL;
  //$amount = NULL;  
  
  $update_grants = mysql_query("UPDATE research_external SET research_title = '$research_title', fagency = '$fagency',
                                       year_start = '$start_year', year_end = '$end_year' 
                                WHERE research_id = '$id'"); 
 
?> 