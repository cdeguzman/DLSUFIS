<?php
  include("../connect.php");
  
  $select_degree = mysql_query("SELECT degree_id as id, degree_title FROM degree ORDER BY degree_title");
  $list_degree = array();
  
  while($fetch_degree = mysql_fetch_assoc($select_degree)){
    $list_degree[] = $fetch_degree; 
  }
  
  echo json_encode($list_degree);
?>