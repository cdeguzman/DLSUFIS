<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeLicensure = "DELETE FROM professional_exp WHERE pe_id = $id";
  mysql_query($removeLicensure);
  
?> 