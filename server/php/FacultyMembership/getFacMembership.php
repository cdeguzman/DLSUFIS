<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_profacty2 = mysql_query("SELECT pa_id AS id, designation, org_name, start_date, end_date
                                       FROM professional_acty 
								       WHERE fid = '$fid' AND leader_type = '0'");
      $list_profacty2 = array();
      while($fetch_profacty2 = mysql_fetch_assoc($select_profacty2)){
          $list_profacty2[] = $fetch_profacty2;
      }
      echo json_encode($list_profacty2);
    }	
?>