<?php
  include("connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_degree = mysql_query("SELECT degree_earned, degree_title, area_spec, year_obtained, institution_name, location, so_num  
                                    FROM academic_bg WHERE fid = $fid");
      $list_degree = array();
      while($fetch_degree = mysql_fetch_array($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
    }	
?>