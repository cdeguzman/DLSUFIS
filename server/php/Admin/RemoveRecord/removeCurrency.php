<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeCurrency = "DELETE FROM currency WHERE id = '$id'";
  mysql_query($removeCurrency);
  
?> 