<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csproforg= mysql_query("SELECT cs.cs_id AS id, cs.description, o.org_name, cs.project_site, cs.start_date, cs.end_date 
                                      FROM community_service cs, organization o, cs_type cst
								      WHERE cs.fid = $fid 
									  AND cs.cs_type = cst.cstype_code
									  AND cs.cs_type ='CS002' 
									  AND cs.org_id  = o.org_id");
      $list_csproforg = array();
      while($fetch_csproforg = mysql_fetch_assoc($select_csproforg)){
          $list_csproforg[] = $fetch_csproforg;
      }
      echo json_encode($list_csproforg);
    }	
?>