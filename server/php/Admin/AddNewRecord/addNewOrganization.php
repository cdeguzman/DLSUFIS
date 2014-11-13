<?php
  include("../../connect.php");
  $org_name = ucwords($_POST["org_name"]);
  $org_acronym = strtoupper($_POST["org_acronym"]); 
  $org_location = ucwords($_POST["org_location"]); 
  
  $insertNewOrg = "INSERT INTO organization
                   (org_name, org_acronym, org_location) VALUES 
		 		   ('$org_name', '$org_acronym', '$org_location')";

   mysql_query($insertNewOrg);
  
?> 