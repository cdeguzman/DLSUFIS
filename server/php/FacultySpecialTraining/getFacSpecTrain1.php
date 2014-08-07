<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_sptrain1 = mysql_query("SELECT sp.st_id AS id, sp.training_title, acad.institution_name, ind.industry_name, o.org_name, sp.venue, sp.start_date, sp.end_date
                                      FROM special_training sp, institution acad, organization o, industry ind     
									  WHERE sp.fid = $fid 
									  AND sp.institution_id = acad.institution_id
									  AND sp.industry_id = ind.industry_id
									  AND sp.org_id = o.org_id");
									
      $list_sptrain1 = array();
      while($fetch_sptrain1 = mysql_fetch_assoc($select_sptrain1)){
          $list_sptrain1[] = $fetch_sptrain1;
      }
      echo json_encode($list_sptrain1);
	  
    }	
?>