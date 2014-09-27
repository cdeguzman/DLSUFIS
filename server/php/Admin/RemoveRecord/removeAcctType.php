<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeAcctType = "DELETE FROM account WHERE account_id = '$id'";
  mysql_query($removeAcctType);
  
?> 