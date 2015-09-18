<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $research_title = ucwords($_POST["research_title"]);
  $funding_unit = ucwords($_POST["unit_title"]);
  $amt = $_POST["amount"];
  $start_year = $_POST["start_year"];
  $end_year = $_POST["end_year"];
  //$research_type = 'Funded';
  //$funding_type = 'Internal';
  //$currency = 'PhP';
  
  $update_inResearch = mysql_query("UPDATE research_internal SET research_title = '$research_title', 
                                           funding_unit = '$funding_unit', amount = '$amt', year_start = '$start_year', 
										   year_end = '$end_year' 
                                    WHERE research_id = '$id'"); 
 
?> 