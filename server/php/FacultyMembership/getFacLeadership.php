<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_profacty1 = mysql_query("SELECT pa_id AS id, designation, org_name, start_date, end_date
                                       FROM professional_acty 
								       WHERE fid = '$fid' AND leader_type='1'");
									 
      $list_profacty1 = array();
      while($fetch_profacty1 = mysql_fetch_assoc($select_profacty1)){
          $list_profacty1[] = $fetch_profacty1;
      }
      echo json_encode($list_profacty1);
    }	
?>