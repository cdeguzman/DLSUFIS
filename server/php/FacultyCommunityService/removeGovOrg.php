<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeGovOrg = "DELETE FROM community_service WHERE cs_id = $id";
  mysql_query($removeGovOrg);
  
?> 