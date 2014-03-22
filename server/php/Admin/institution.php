<?php
  include("../connect.php");
  
  $select_institution = mysql_query("SELECT institution_id, institution_name, institution_type, location, country 
                                     FROM institution ORDER BY institution_name");
  $list_institution = array();
  
  while($fetch_institution = mysql_fetch_assoc($select_institution)){
    $list_institution[] = $fetch_institution; 
  }
  
  echo json_encode($list_institution);
?>