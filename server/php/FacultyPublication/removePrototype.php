<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removePrototype = "DELETE FROM publication WHERE pub_code = $id";
  mysql_query($removePrototype);
  
?> 