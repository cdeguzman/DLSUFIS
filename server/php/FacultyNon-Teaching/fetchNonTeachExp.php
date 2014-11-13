<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_nonTeachExp = mysql_query("SELECT work_nature, institution_id, industry_id, org_id, no_years, start_date, end_date   
                                     FROM professional_prac
					   	             WHERE pp_id = $id"); 
  
  $list_nonTeachExp = array();
  while($fetch_nonTeachExp = mysql_fetch_assoc($select_nonTeachExp)){
     $list_nonTeachExp[] = $fetch_nonTeachExp;
  }
  echo json_encode($list_nonTeachExp);
?> 