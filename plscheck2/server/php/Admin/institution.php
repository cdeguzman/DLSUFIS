<?php
  include("../connect.php");
  
  $select_institution = mysql_query("SELECT i.institution_id as id, i.institution_name, l.location_name, c.country_name 
                                     FROM institution i, country c, location l
									 WHERE i.country = c.country_uid AND
									 i.location = l.location_id
									 ORDER BY i.institution_name");
  $list_institution = array();
  
  while($fetch_institution = mysql_fetch_assoc($select_institution)){
    $list_institution[] = $fetch_institution; 
  }
  
  echo json_encode($list_institution);
?>