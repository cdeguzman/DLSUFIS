<?php
  include("../connect.php");
  
  $select_unit = mysql_query("SELECT unit_code, unit_title 
                              FROM unit ORDER BY unit_title");
  $list_unit = array();
  
  while($fetch_unit = mysql_fetch_assoc($select_unit)){
    $list_unit[] = $fetch_unit; 
  }
  
  echo json_encode($list_unit);
?>