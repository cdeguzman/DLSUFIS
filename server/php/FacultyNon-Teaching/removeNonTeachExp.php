<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeProfPrac = "DELETE FROM professional_prac WHERE pp_id = $id";
  mysql_query($removeProfPrac);
  
?> 