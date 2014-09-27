<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeRank = "DELETE FROM rank WHERE rank_code = '$id'";
  mysql_query($removeRank);
  
?> 