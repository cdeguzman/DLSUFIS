<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeTeachExp = "DELETE FROM teaching_experience WHERE te_id = $id";
  mysql_query($removeTeachExp);
  
?> 