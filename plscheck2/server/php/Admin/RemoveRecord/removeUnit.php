<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeUnit = "DELETE FROM unit WHERE unit_code = '$id'";
  mysql_query($removeUnit);
  
?> 