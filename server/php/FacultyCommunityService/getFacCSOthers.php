<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csothers= mysql_query("SELECT cs.description, o.org_name, cs.project_site, cs.start_date, cs.end_date 
                                   FROM community_service cs, organization o
								   WHERE fid = $fid AND cs.cs_type='Others' AND cs.org_id=o.org_id");
      $list_csothers = array();
      while($fetch_csothers = mysql_fetch_assoc($select_csothers)){
          $list_csothers[] = $fetch_csothers;
      }
      echo json_encode($list_csothers);
    }	
?>