<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csdlsu= mysql_query("SELECT description, committee, start_date, end_date 
                                   FROM community_service
								   WHERE fid = $fid AND cs_type='DLSU'");
      $list_csdlsu = array();
      while($fetch_csdlsu = mysql_fetch_assoc($select_csdlsu)){
          $list_csdlsu[] = $fetch_csdlsu;
      }
      echo json_encode($list_csdlsu);
    }	
?>