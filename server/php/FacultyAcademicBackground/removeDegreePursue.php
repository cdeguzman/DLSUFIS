<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  //echo "The id $id is now deleted";
  
  $removeDegreePursue = "DELETE FROM degree_pursue WHERE dp_id = $id";
  mysql_query($removeDegreePursue);
  
?> 