<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeIndustry = "DELETE FROM industry WHERE industry_id = '$id'";
  mysql_query($removeIndustry);
  
?> 