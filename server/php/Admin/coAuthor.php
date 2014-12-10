<?php
  include("../connect.php");
  
  $select_coAuthor = mysql_query("SELECT id, author_val 
                              FROM co_author");
  $list_coAuthor = array();
  
  while($fetch_coAuthor = mysql_fetch_assoc($select_coAuthor)){
    $list_coAuthor[] = $fetch_coAuthor; 
  }
  
  echo json_encode($list_coAuthor);
?>
