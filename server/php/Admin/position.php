<?php
  include("../connect.php");
  
  $select_position = mysql_query("SELECT position_id, position_title FROM position ORDER BY position_id");
  $list_position = array();
  
  while($fetch_position = mysql_fetch_assoc($select_position)){
    $list_position[] = $fetch_position; 
  }
  
  echo json_encode($list_position);
?>