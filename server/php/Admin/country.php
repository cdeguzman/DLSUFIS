<?php
  include("../connect.php");
  
  $select_country = mysql_query("SELECT id, country_code, country_name FROM country ORDER BY country_name");
  $list_country = array();
  
  while($fetch_country = mysql_fetch_assoc($select_country)){
    $list_country[] = $fetch_country; 
  }
  
  echo json_encode($list_country);
?>