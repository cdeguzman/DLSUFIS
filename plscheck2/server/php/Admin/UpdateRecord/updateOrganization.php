<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $org_name = ucwords($_POST["org_name"]);
  $org_acrnoym = strtoupper($_POST["org_acronym"]); 
  $org_location = ucwords($_POST["org_locationa'"]); 
  $id = $_GET["id"];
   
  $update_organization = mysql_query("UPDATE organization SET org_name = '$org_name', org_acronym = '$org_acronym' 
                                      org_location = '$org_location' 
							          WHERE org_id = '$id'");  
?> 