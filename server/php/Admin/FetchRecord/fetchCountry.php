<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_country = mysql_query("SELECT country_code, country_name FROM country
							      WHERE country_code = '$id'"); 
  
   $list_country = array();
      while($fetch_country = mysql_fetch_assoc($select_country)){
          $list_country[] = $fetch_country;
      }
      echo json_encode($list_country);
  
  
?> 