<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeInResearch = "DELETE FROM research_internal WHERE research_id = $id";
  mysql_query($removeInResearch);
  
?> 