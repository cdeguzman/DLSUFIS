<?php
  include("../connect.php");
  
  $select_location = mysql_query("SELECT location_id as id, location_name, region FROM location ORDER BY location_name");
  $list_location = array();
  
  while($fetch_location = mysql_fetch_assoc($select_location)){
    $list_location[] = $fetch_location; 
  }
  
  echo json_encode($list_location);
?>
