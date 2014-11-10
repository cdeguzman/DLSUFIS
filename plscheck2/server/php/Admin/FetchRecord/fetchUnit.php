<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_unit = mysql_query("SELECT unit_code, unit_title FROM unit
							  WHERE unit_code = '$id'"); 
  
   $list_unit = array();
      while($fetch_unit = mysql_fetch_assoc($select_unit)){
          $list_unit[] = $fetch_unit;
      }
      echo json_encode($list_unit);
  
  
?> 