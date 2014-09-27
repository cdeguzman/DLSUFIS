<?php
  include("../../connect.php");
<<<<<<< HEAD
=======
  $institution_id = $_POST["institution_id"];
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  $institution_name = ucwords($_POST["institution_name"]);
  $location = ucwords($_POST["location"]);
  $country = $_POST["country"];
  
  $insertNewInstitution = "INSERT INTO institution
<<<<<<< HEAD
                  (institution_name, location, country)
                  VALUES 
				  ('$institution_name', '$location', '$country')";
=======
                  (institution_id, institution_name, location, country)
                  VALUES 
				  ('$institution_id', '$institution_name', '$location', '$country')";
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  
  mysql_query($insertNewInstitution);
  
?> 