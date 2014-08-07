<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeSeminars = "DELETE FROM publication WHERE pub_code = $id";
  mysql_query($removeSeminars);
  
?> 