<?php
  include("../../connect.php");
  $institution_name = ucwords($_POST["institution_name"]);
  $location = ucwords($_POST["location"]);
  $country = $_POST["country"];
  
  $insertNewInstitution = "INSERT INTO institution
                  (institution_name, location, country)
                  VALUES 
				  ('$institution_name', '$location', '$country')";
  
  mysql_query($insertNewInstitution);
  
?> 