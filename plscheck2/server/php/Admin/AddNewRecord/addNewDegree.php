<?php
  include("../../connect.php");
  $degree_title = ucwords($_POST["degree_title"]); 
  
  $insertNewDegree = "INSERT INTO degree (degree_title) VALUES ('$degree_title')";
  mysql_query($insertNewDegree);
  
?> 