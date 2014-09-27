<?php
  include("../connect.php");
  
  $select_classification = mysql_query("SELECT position_id as id, position_title 
                                  FROM position 
<<<<<<< HEAD
								  WHERE position_id IN ('PPPPP', 'P0003', 'P0004', 'P0006')
=======
								  WHERE position_id IN ('P0003', 'P0004', 'P0006')
>>>>>>> 096f9638e8c7ded8143b7803077027d6582c9cde
								  ORDER BY position_id");
  $list_classification = array();
  
  while($fetch_classification = mysql_fetch_assoc($select_classification)){
    $list_classification[] = $fetch_classification; 
  }
  
  echo json_encode($list_classification);
?>