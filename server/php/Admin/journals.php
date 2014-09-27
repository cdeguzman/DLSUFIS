<?php
  include("../connect.php");
  $select_journal = mysql_query("SELECT journal_id as id, journal_title, journal_type, journal_publication
                                 FROM journals
								 ORDER BY journal_title");
  $list_journal = array();
  
  while($fetch_journal = mysql_fetch_assoc($select_journal)){
    $list_journal[] = $fetch_journal; 
  }
  
  echo json_encode($list_journal);
?>