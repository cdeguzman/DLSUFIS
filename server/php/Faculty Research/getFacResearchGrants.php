<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_grants = mysql_query("SELECT research_title, funding_agency, start_date, end_date 
                                    FROM research
								    WHERE fid = $fid AND research_type != 'Funded'");
      $list_grants = array();
      while($fetch_grants = mysql_fetch_array($select_grants)){
          $list_grants[] = $fetch_grants;
      }
      echo json_encode($list_grants);
    }	
?>