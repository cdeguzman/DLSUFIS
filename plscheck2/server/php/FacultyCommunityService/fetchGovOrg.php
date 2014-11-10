<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_govOrg = mysql_query("SELECT description, gov_id, project_site, start_date, end_date        
                                FROM community_service
					   	        WHERE cs_id = $id
								AND cs_type = 'CS003'"); 
  
  $list_govOrg = array();
  while($fetch_govOrg = mysql_fetch_assoc($select_govOrg)){
     $list_govOrg[] = $fetch_govOrg;
  }
  echo json_encode($list_govOrg);
?> 