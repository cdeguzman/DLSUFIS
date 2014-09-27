<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeDept = "DELETE FROM department WHERE dept_code = '$id'";
  mysql_query($removeDept);
  
?> 