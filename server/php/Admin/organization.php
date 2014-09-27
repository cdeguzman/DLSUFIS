<?php
  include("../connect.php");
  
  $select_org = mysql_query("SELECT org_id as id, org_name, org_acronym, org_location 
                             FROM organization ORDER BY org_name");
  $list_org = array();
  
  while($fetch_org = mysql_fetch_assoc($select_org)){
    $list_org[] = $fetch_org; 
  }
  
  echo json_encode($list_org);
?>