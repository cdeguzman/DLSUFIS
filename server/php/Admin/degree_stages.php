<?php
  include("../connect.php");
  
  $select_stages = mysql_query("SELECT ds_code, ds_name FROM degree_stages ORDER BY ds_name");
  $list_stages = array();
  
  while($fetch_stages = mysql_fetch_assoc($select_stages)){
    $list_stages[] = $fetch_stages; 
  }
  
  echo json_encode($list_stages);
?>