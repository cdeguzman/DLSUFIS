<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeUnit = "DELETE FROM unit WHERE id = '$id'";
  mysql_query($removeUnit);
  
?> 