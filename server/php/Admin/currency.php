<?php
  include("../connect.php");
  
  $select_currency = mysql_query("SELECT id, currency_name, country FROM currency ORDER BY currency_name");
  $list_currency = array();
  
  while($fetch_currency = mysql_fetch_assoc($select_currency)){
    $list_currency[] = $fetch_currency; 
  }
  
  echo json_encode($list_currency);
?>