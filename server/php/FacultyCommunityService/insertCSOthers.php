<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $description = ucwords($_POST["description"]);
  $others = ucwords($_POST["others"]);
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $cs_type = "CS004";
  
  $insertCSOthers = "INSERT INTO community_service
                   (cs_type, fid, description, others, project_site, start_date, end_date)
                   VALUES 
				   ('$cs_type', '$fid', '$description', '$others', '$project_site', '$start_date', '$end_date')";
  
  mysql_query($insertCSOthers);
  
?> 