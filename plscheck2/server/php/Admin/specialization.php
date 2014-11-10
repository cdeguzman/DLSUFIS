<?php
  include("../connect.php");
  
  $select_specialization = mysql_query("SELECT as_code, as_title FROM area_spec ORDER BY as_title");
  $list_specialization = array();
  
  while($fetch_specialization = mysql_fetch_assoc($select_specialization)){
    $list_specialization[] = $fetch_specialization; 
  }
  
  echo json_encode($list_specialization);
?>