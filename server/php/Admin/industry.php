<?php
  include("../connect.php");
  
  $select_industry = mysql_query("SELECT institution_id, institution_name, institution_type, location, country 
                                     FROM institution 
									 WHERE institution_type = 'Industry'
									 ORDER BY institution_name");
  $list_industry = array();
  
  while($fetch_institution = mysql_fetch_assoc($select_institution)){
    $list_institution[] = $fetch_institution; 
  }
  
  echo json_encode($list_institution);
?>