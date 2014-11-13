<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeCountry = "DELETE FROM country WHERE id = '$id'";
  mysql_query($removeCountry);
  
?> 