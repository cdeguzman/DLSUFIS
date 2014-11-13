<?php
  include("../connect.php");
  
  $select_educ = mysql_query("SELECT id, el_id, el_title 
                              FROM educ_level ORDER BY el_id");
  $list_educ = array();
  
  while($fetch_educ = mysql_fetch_assoc($select_educ)){
    $list_educ[] = $fetch_educ; 
  }
  
  echo json_encode($list_educ);
?>