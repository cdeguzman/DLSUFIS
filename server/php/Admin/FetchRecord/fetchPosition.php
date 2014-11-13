<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_position = mysql_query("SELECT id, position_id, position_title FROM position
							      WHERE id = '$id'"); 
  
   $list_position = array();
      while($fetch_position = mysql_fetch_assoc($select_position)){
          $list_position[] = $fetch_position;
      }
      echo json_encode($list_position);
  
  
?> 