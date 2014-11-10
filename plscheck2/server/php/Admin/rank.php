<?php
  include("../connect.php");
  
  $select_rank = mysql_query("SELECT rank_uid as id, rank_code, rank_title 
                              FROM rank ORDER BY rank_title");
  $list_rank = array();
  
  while($fetch_rank = mysql_fetch_assoc($select_rank)){
    $list_rank[] = $fetch_rank; 
  }
  
  echo json_encode($list_rank);
?>