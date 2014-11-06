<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_location = mysql_query("SELECT location_name, region FROM location
							      WHERE location_id = '$id'"); 
  
   $list_location = array();
      while($fetch_location = mysql_fetch_assoc($select_location)){
          $list_location[] = $fetch_location;
      }
      echo json_encode($list_location);
  
  
?> 