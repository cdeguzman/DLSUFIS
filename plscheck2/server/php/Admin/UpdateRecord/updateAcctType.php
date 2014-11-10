<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $account_id = strtoupper($_POST["account_id"]);
  $account_role = ucwords($_POST["account_role"]); 
  $id = $_GET["id"];
   
  $update_acctType = mysql_query("UPDATE account SET account_id = '$account_id', account_role = '$account_role'
							      WHERE account_id = '$id'");  
?> 