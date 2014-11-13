<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $description = ucwords($_POST["description"]);
  $others = ucwords($_POST["others"]);
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
    
  $update_CSOthers = mysql_query("UPDATE community_service SET description = '$description', others = '$others', 
                                         project_site = '$project_site', start_date = '$start_date', end_date = '$end_date'
							      WHERE cs_id = '$id'"); 
 
?> 