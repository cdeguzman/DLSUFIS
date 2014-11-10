<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeAward = "DELETE FROM awards WHERE award_id = $id";
  mysql_query($removeAward);
  
?> 