<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeSpecTraining = "DELETE FROM special_training WHERE st_id = $id";
  mysql_query($removeSpecTraining);
  
?> 