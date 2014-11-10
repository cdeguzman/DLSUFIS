<?php
  include("../../connect.php");
  $country_code = strtoupper($_POST["country_code"]);
  $country_name = ucwords($_POST["country_name"]); 
   
  $insertNewCountry = "INSERT INTO country
                     (country_code, country_name) VALUES 
					 ('$country_code', '$country_name')";

   mysql_query($insertNewCountry);
  
?> 