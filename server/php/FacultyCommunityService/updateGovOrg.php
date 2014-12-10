<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $desc = ucwords($_POST["description"]);
  $gov_name= ucwords($_POST["gov_name"]);
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
    
  $update_CSgovOrg = mysql_query("UPDATE community_service SET description = '$desc', gov_name = '$gov_name', 
                                          project_site = '$project_site', start_date = '$start_date', end_date = '$end_date'
							      WHERE cs_id = '$id'"); 
 
?> 