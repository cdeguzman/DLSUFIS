<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csdlsu= mysql_query("SELECT cs.cs_id AS id, cs.description, cs.committee, cs.start_date, cs.end_date
								   FROM community_service cs, faculty f, cs_type cst
								   WHERE cs.fid = $fid
								   AND cs.fid = f.fid
								   AND cs.cs_type = cst.cstype_code
								   AND cs.cs_type = 'CS001'
								   ORDER BY cs.start_date DESC");
      $list_csdlsu = array();
      while($fetch_csdlsu = mysql_fetch_assoc($select_csdlsu)){
          $list_csdlsu[] = $fetch_csdlsu;
      }
      echo json_encode($list_csdlsu);
    }	
?>