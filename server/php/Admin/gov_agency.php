<?php
  include("../connect.php");
  
  $select_agency = mysql_query("SELECT gov_id, agency_name, agency_location 
                                FROM gov_agencies ORDER BY agency_name");
  $list_agency = array();
  
  while($fetch_agency = mysql_fetch_assoc($select_agency)){
    $list_agency[] = $fetch_agency; 
  }
  
  echo json_encode($list_agency);
?>