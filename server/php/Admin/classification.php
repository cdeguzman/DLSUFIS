<?php
  include("../connect.php");
  
  $select_classification = mysql_query("SELECT position_id as id, position_title 
                                  FROM position 
								  WHERE position_id IN ('PPPPP', 'P0003', 'P0004', 'P0006')
								  ORDER BY position_id");
  $list_classification = array();
  
  while($fetch_classification = mysql_fetch_assoc($select_classification)){
    $list_classification[] = $fetch_classification; 
  }
  
  echo json_encode($list_classification);
?>