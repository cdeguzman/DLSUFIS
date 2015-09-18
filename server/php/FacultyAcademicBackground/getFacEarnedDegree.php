<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];

      $select_degree = mysql_query("SELECT de.de_id as id, dl.dlevel_title, CONCAT (dl.dlevel_desc, ' ', d.degree_title) as degree_title, de.specialization, de.year_obtained, de.institution_id, de.location_id, de.so_num  
                                    FROM degree_level dl, degree d, degree_earned de
									WHERE fid = $fid 
									AND dl.dlevel_id = de.dlevel_id
									AND de.degree_id = d.degree_id");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>