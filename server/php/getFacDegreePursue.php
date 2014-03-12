<?php
  include("connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_degree = mysql_query("SELECT d.degree_title, i.institution_name, dp.degree_stages, dp.earned_units, dp.start_date, dp.end_date
                                    FROM degree_pursue dp, institution i, degree d  
									WHERE dp.fid = $fid AND dp.degree_id = d.degree_id AND dp.institution_id = i.institution_id");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_array($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>