<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
   
      $select_csdlsu= mysql_query("SELECT cs.description, u.unit_title, d.dept_name, cs.start_date, cs.end_date
								   FROM community_service cs, unit u, faculty f, cs_type cst, department d
								   WHERE cs.fid = $fid
								   AND cs.fid = f.fid
								   AND cs.unit_code = u.unit_code
								   AND cs.dept_code = d.dept_code
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