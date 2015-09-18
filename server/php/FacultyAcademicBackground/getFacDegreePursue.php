<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_degree = mysql_query("SELECT dp.dp_id as id, CONCAT(dl.dlevel_desc,' ',d.degree_title) as degree_title, dp.institution_id, ds.ds_name, dp.earned_units, dp.start_date, dp.end_date
                                    FROM degree_pursue dp, degree d, degree_level dl, degree_stages ds  
									WHERE dp.fid = $fid 
									AND dp.degree_id = d.degree_id 
									AND dp.dlevel_id = dl.dlevel_id
									AND dp.degree_stages = ds.ds_code");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>