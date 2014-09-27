<?php
  include("../connect.php");
  
<<<<<<< HEAD
  $select_acct = mysql_query("SELECT account_id as id, account_role 
                              FROM account ORDER BY account_role");
=======
  $select_acct = mysql_query("SELECT account_id, account_role 
                              FROM account ORDER BY account_id");
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  $list_acct = array();
  
  while($fetch_acct = mysql_fetch_assoc($select_acct)){
    $list_acct[] = $fetch_acct; 
  }
  
  echo json_encode($list_acct);
?>