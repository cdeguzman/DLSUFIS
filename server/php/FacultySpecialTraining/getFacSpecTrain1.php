<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_sptrain1 = mysql_query("SELECT st_id AS id, training_title, institution, venue, start_date, end_date
                                      FROM special_training    
									  WHERE fid = '$fid'"); 
									 
									
      $list_sptrain1 = array();
      while($fetch_sptrain1 = mysql_fetch_assoc($select_sptrain1)){
          $list_sptrain1[] = $fetch_sptrain1;
      }
      echo json_encode($list_sptrain1);
	  
    }	
?>