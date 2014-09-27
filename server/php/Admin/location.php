<?php
  include("../connect.php");
  
<<<<<<< HEAD
  $select_location = mysql_query("SELECT location_id as id, location_name, region FROM location ORDER BY location_name");
=======
  $select_location = mysql_query("SELECT location_id as id, location_name FROM location ORDER BY location_name");
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  $list_location = array();
  
  while($fetch_location = mysql_fetch_assoc($select_location)){
    $list_location[] = $fetch_location; 
  }
  
  echo json_encode($list_location);
?>