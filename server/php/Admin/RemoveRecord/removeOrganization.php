<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeOrg = "DELETE FROM organization WHERE org_id = '$id'";
  mysql_query($removeOrg);
  
?> 