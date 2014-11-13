<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeDept = "DELETE FROM department WHERE id = '$id'";
  mysql_query($removeDept);
  
?> 