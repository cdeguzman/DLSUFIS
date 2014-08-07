<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeExResearch = "DELETE FROM research_external WHERE research_id = $id";
  mysql_query($removeExResearch);
  
?> 