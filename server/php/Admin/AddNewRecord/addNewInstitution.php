<?php
  include("../../connect.php");
  $institution_id = $_POST["institution_id"];
  $institution_name = ucwords($_POST["institution_name"]);
  $location = ucwords($_POST["location"]);
  $country = $_POST["country"];
  
  $insertNewInstitution = "INSERT INTO institution
                  (institution_id, institution_name, location, country)
                  VALUES 
				  ('$institution_id', '$institution_name', '$location', '$country')";
  
  mysql_query($insertNewInstitution);
  
?> 