<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_degree = mysql_query("SELECT de.de_id, dl.dlevel_title, d.degree_title, de.specialization, de.year_obtained, i.institution_name, i.location, de.so_num  
                                    FROM degree_level dl, degree d, degree_earned de, institution i, faculty f 
									WHERE de.fid = $fid 
									AND dl.dlevel_id = d.dlevel_id
									AND de.degree_id = d.degree_id
									AND de.institution_id = i.institution_id ");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>