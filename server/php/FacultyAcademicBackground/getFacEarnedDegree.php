<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];

      $select_degree = mysql_query("SELECT de.de_id as id, dl.dlevel_title, CONCAT (dl.dlevel_desc, ' ', d.degree_title) as degree_title, spec.as_title, de.year_obtained, i.institution_name, l.location_name, de.so_num  
                                    FROM degree_level dl, degree d, degree_earned de, institution i, location l, area_spec spec
									WHERE fid = $fid 
									AND dl.dlevel_id = de.dlevel_id
									AND de.degree_id = d.degree_id
									AND de.specialization = spec.as_code
									AND de.location_id = l.location_id
									AND de.institution_id = i.institution_id");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>