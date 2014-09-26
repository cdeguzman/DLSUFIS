<?php
  include("../connect.php");
  
  $select_user = mysql_query(
                    "SELECT f.fid as id, f.ffname, f.flname, f.unit_code, ac.account_role 
					 FROM faculty f, account ac 
					 WHERE f.account_id = ac.account_id
					 ORDER BY f.flname, ac.account_role");
  $list_user = array();
  
  while($fetch_user = mysql_fetch_assoc($select_user)){
    $list_user[] = $fetch_user; 
  }
  
  echo json_encode($list_user);
?>