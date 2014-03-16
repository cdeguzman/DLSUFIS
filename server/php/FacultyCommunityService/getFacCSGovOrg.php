<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csgovorg= mysql_query("SELECT cs.description, g.agency_name, cs.project_site, cs.start_date, cs.end_date 
                                   FROM community_service cs, gov_agencies g
								   WHERE fid = $fid AND cs.cs_type='Government' AND cs.gov_id=g.gov_id");
      $list_csgovorg = array();
      while($fetch_csgovorg = mysql_fetch_assoc($select_csgovorg)){
          $list_csgovorg[] = $fetch_csgovorg;
      }
      echo json_encode($list_csgovorg);
    }	
?>