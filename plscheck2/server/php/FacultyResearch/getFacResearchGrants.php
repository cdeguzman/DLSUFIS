<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_grants = mysql_query("SELECT re.research_id AS id, re.research_title, fa.fagency_name, re.start_date, re.end_date 
                                    FROM research_external re, funding_agency fa
								    WHERE fid = $fid 
									AND research_type = 'Grants'
									AND re.fagency_id = fa.fagency_id
									ORDER BY re.start_date DESC");
      $list_grants = array();
      while($fetch_grants = mysql_fetch_assoc($select_grants)){
          $list_grants[] = $fetch_grants;
      }
      echo json_encode($list_grants);
    }	
?>