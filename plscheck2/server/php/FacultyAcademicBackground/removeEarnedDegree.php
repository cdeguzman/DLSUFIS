<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  //echo "The id $id is now deleted";
  
  $removeEarnedDegree = "DELETE FROM degree_earned WHERE de_id = $id";
  mysql_query($removeEarnedDegree);
  
?> 