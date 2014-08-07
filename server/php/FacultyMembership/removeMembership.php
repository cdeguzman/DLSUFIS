<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeMembership = "DELETE FROM professional_acty WHERE pa_id = $id";
  mysql_query($removeMembership);
  
?> 