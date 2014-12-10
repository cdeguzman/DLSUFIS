<?php
  include("../../connect.php");
  $id = $_GET["id"];
   
   $select_currency = mysql_query("SELECT currency_name, country FROM currency
							      WHERE id = '$id'"); 
  
   $list_currency = array();
      while($fetch_currency = mysql_fetch_assoc($select_currency)){
          $list_currency[] = $fetch_currency;
      }
      echo json_encode($list_currency);
  
?> 