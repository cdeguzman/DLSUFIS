<?php      
	include("../connect.php");
	if($_GET["fid"]!= NULL){ 
 	   $fid = $_GET["fid"];
 	   
	   $select_sptrain2 = mysql_query("SELECT sp.training_title, o.org_name, sp.venue, sp.start_date, sp.end_date
                                       FROM special_training sp, organization o   
									   WHERE sp.fid = $fid AND sp.org_id = o.org_id");
       $list_sptrain2 = array();
         while($fetch_sptrain2 = mysql_fetch_assoc($select_sptrain2)){
             $list_sptrain2[] = $fetch_sptrain2;
         }
       echo json_encode($list_sptrain2);
	}   
?>