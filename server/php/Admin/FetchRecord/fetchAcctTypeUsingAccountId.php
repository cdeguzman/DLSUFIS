<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $account_id = $_GET["account_id"];
   
  $select_acctType = mysql_query("SELECT account_id, account_role FROM account
							      WHERE account_id = '$account_id'"); 
  
   $list_acctType = array();
      while($fetch_acctType = mysql_fetch_assoc($select_acctType)){
          $list_acctType[] = $fetch_acctType;
      }
      echo json_encode($list_acctType);
  
  
?> 