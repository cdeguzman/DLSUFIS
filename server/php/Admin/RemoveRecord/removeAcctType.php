<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeAcctType = "DELETE FROM account WHERE id = '$id'";
  mysql_query($removeAcctType);
  
?> 