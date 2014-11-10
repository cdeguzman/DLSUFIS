<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeLocation = "DELETE FROM location WHERE location_id = '$id'";
  mysql_query($removeLocation);
  
?> 