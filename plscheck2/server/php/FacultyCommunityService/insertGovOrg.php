<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $description = ucwords($_POST["description"]);
  $gov_id = $_POST["gov_id"];
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $cs_type = "CS003";
  
  $insertGovOrg = "INSERT INTO community_service
                      (cs_type, fid, description, gov_id, project_site, start_date, end_date)
                      VALUES 
				      ('$cs_type', '$fid', '$description', '$gov_id', '$project_site', '$start_date', '$end_date')";
  
  mysql_query($insertGovOrg);
  
?> 