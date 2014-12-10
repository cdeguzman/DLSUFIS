<?php
  include("../../connect.php");
  $id = $_POST["id"];
  $currency_name = ucwords($_POST["currency_name"]);
  $country = $_POST["country"];
  
  $updateCurrency = "UPDATE currency SET currency_name = '$currency_name', country = '$country'
                     WHERE id='$id'");
                 
  
  mysql_query($updateCurrency);
  
?> 