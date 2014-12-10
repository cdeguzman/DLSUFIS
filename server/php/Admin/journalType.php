<?php
  include("../connect.php");
  
  $select_jtype = mysql_query("SELECT id, local_type
                                 FROM pub_local");
  $list_jtype = array();
  
  while($fetch_jtype = mysql_fetch_assoc($select_jtype)){
    $list_jtype[] = $fetch_jtype; 
  }
  
  echo json_encode($list_jtype);
?>