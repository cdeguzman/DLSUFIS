<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeDegree = "DELETE FROM degree WHERE degree_id = '$id'";
  mysql_query($removeDegree);
  
?> 