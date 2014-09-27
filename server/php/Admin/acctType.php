<?php
  include("../connect.php");
  
  $select_acct = mysql_query("SELECT account_id as id, account_role 
                              FROM account ORDER BY account_role");
  $list_acct = array();
  
  while($fetch_acct = mysql_fetch_assoc($select_acct)){
    $list_acct[] = $fetch_acct; 
  }
  
  echo json_encode($list_acct);
?>