<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_comSrvDLSU = mysql_query("SELECT description, unit_code, dept_code, committee, start_date, end_date        
                                   FROM community_service
					   	           WHERE cs_id = '$id'
								   AND cs_type = 'CS001'"); 
  
  $list_comSrvDLSU = array();
  while($fetch_comSrvDLSU = mysql_fetch_assoc($select_comSrvDLSU)){
     $list_comSrvDLSU[] = $fetch_comSrvDLSU;
  }
  echo json_encode($list_comSrvDLSU);
?> 