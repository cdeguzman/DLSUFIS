<?php
  include("../connect.php");
  
  $select_stat = mysql_query("SELECT id, active 
                              FROM status ORDER BY id");
  $list_stat = array();
  
  while($fetch_stat = mysql_fetch_assoc($select_stat)){
    $list_stat[] = $fetch_stat; 
  }
  
  echo json_encode($list_stat);
?>
