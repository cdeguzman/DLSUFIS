<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_sptrain1 = mysql_query("SELECT sp.training_title, i.institution_name, sp.venue, sp.start_date, sp.end_date
                                    FROM special_training sp, institution i   
									WHERE sp.fid = $fid AND sp.institution_id = i.institution_id
									UNION
									SELECT sp.training_title, o.org_name, sp.venue, sp.start_date, sp.end_date
                                       FROM special_training sp, organization o   
									   WHERE sp.fid = $fid AND sp.org_id = o.org_id");
      $list_sptrain1 = array();
      while($fetch_sptrain1 = mysql_fetch_assoc($select_sptrain1)){
          $list_sptrain1[] = $fetch_sptrain1;
      }
      echo json_encode($list_sptrain1);
	  
    }	
?>