<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $desc = ucwords($_POST["description"]);
  $gov_id = $_POST["gov_id"];
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
    
  $update_CSgovOrg = mysql_query("UPDATE community_service SET description = '$desc', gov_id = '$gov_id', 
                                          project_site = '$project_site', start_date = '$start_date', end_date = '$end_date'
							      WHERE cs_id = '$id'"); 
 
?> 