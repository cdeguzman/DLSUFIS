<?php
  include("../../connect.php");
  $location_name = ucwords($_POST["location_name"]);
  $region = ucwords($_POST["region"]); 
   
  $insertNewLocation = "INSERT INTO location
                     (location_name, region) VALUES 
					 ('$location_name', '$region')";

   mysql_query($insertNewLocation);
  
?> 