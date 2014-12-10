<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_profOrg = mysql_query("SELECT description, org_name, project_site, start_date, end_date        
                                   FROM community_service
					   	           WHERE cs_id = '$id'
								   AND cs_type = 'CS002'"); 
  
  $list_profOrg = array();
  while($fetch_profOrg = mysql_fetch_assoc($select_profOrg)){
     $list_profOrg[] = $fetch_profOrg;
  }
  echo json_encode($list_profOrg);
?> 