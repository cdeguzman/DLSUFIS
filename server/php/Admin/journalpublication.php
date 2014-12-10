<?php
  include("../connect.php");
  
  $select_journalpub = mysql_query("SELECT journalpub_id as id, journalpub_type 
                                 FROM journal_publication 
								 ORDER BY journalpub_type");
  $list_journalpub = array();
  
  while($fetch_journalpub = mysql_fetch_assoc($select_journalpub)){
    $list_journalpub[] = $fetch_journalpub; 
  }
  
  echo json_encode($list_journalpub);
?>