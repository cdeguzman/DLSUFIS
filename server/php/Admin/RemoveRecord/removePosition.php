<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removePosition = "DELETE FROM position WHERE id = '$id'";
  mysql_query($removePosition);
  
?> 