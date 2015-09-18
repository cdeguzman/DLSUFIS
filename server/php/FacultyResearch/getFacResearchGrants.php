<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_grants = mysql_query("SELECT research_id AS id, research_title, fagency, year_start, year_end 
                                    FROM research_external 
								    WHERE fid = '$fid' 
									AND research_type = 'Grants'
									ORDER BY start_date DESC");
      $list_grants = array();
      while($fetch_grants = mysql_fetch_assoc($select_grants)){
          $list_grants[] = $fetch_grants;
      }
      echo json_encode($list_grants);
    }	
?>