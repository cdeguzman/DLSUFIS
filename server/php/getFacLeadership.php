<?php
  include("connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_profacty1 = mysql_query("SELECT pa.designation, o.org_name, pa.start_date, pa.end_date
                                  FROM professional_acty pa, organization o 
								  WHERE pa.fid = $fid AND pa.org_id = o.org_id AND pa.designation != 'Member'");
      $list_profacty1 = array();
      while($fetch_profacty1 = mysql_fetch_array($select_profacty1)){
          $list_profacty1[] = $fetch_profacty1;
      }
      echo json_encode($list_profacty1);
    }	
?>