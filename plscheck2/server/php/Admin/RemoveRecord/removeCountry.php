<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeCountry = "DELETE FROM country WHERE country_code = '$id'";
  mysql_query($removeCountry);
  
?> 