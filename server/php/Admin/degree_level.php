<?php
  include("../connect.php");
  $select_dlevel = mysql_query("SELECT dlevel_id as id, dlevel_title, dlevel_desc FROM degree_level ORDER BY dlevel_id");
  $list_dlevel = array();
  
  while($fetch_dlevel = mysql_fetch_assoc($select_dlevel)){
    $list_dlevel[] = $fetch_dlevel; 
  }
  
  echo json_encode($list_dlevel);
?>