<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removePosition = "DELETE FROM position WHERE position_id = '$id'";
  mysql_query($removePosition);
  
?> 