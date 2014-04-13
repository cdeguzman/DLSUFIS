<?php
  include("../connect.php");
  
  $selectAgency = mysql_query("SELECT fagency_id, fagency_name
                               FROM funding_agency
							   ORDER BY fagency_name");
  $list_fagency = array();
  
  while($fetch_fagency = mysql_fetch_assoc($selectAgency)){
    $list_fagency[] = $fetch_fagency; 
  }
  
  echo json_encode($list_fagency);
?>