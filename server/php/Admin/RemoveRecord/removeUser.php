<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeUser = "DELETE FROM faculty WHERE fid = $id";
  mysql_query($removeUser);
  
?> 