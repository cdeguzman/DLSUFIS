<?php
  include("../../connect.php");
  $currency_name = ucwords($_POST["currency_name"]);
  $country = $_POST["country"];
  
  $insertNewCurrency = "INSERT INTO currency
                  (currency_name, country)
                  VALUES 
				  ('$currency_name', '$country')";
  
  mysql_query($insertNewCurrency);
  
?> 