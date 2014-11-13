<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $description = ucwords($_POST["description"]);
  $org_id = $_POST["org_id"];
  $project_site = ucwords($_POST["project_site"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $id = $_POST["id"];
  
  $update_CSprofOrg = mysql_query("UPDATE community_service SET description = '$description', org_id = '$org_id',
                                          project_site = '$project_site', start_date = '$start_date', end_date = '$end_date'
							      WHERE cs_id = '$id'"); 
 
?> 