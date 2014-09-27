<?php
  include("../connect.php");
  
<<<<<<< HEAD
  $select_position = mysql_query("SELECT position_id as id, position_title FROM position ORDER BY position_title");
=======
  $select_position = mysql_query("SELECT position_id as id, position_title FROM position ORDER BY position_id");
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
  $list_position = array();
  
  while($fetch_position = mysql_fetch_assoc($select_position)){
    $list_position[] = $fetch_position; 
  }
  
  echo json_encode($list_position);
?>