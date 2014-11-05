<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_CSOthers = mysql_query("SELECT description, others, project_site, start_date, end_date        
                                FROM community_service
					   	        WHERE cs_id = $id
								AND cs_type = 'CS004'"); 
  
  $list_CSOthers = array();
  while($fetch_CSOthers = mysql_fetch_assoc($select_CSOthers)){
     $list_CSOthers[] = $fetch_CSOthers;
  }
  echo json_encode($list_CSOthers);
?> 