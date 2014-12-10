<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_degree = mysql_query("SELECT dlevel_id, degree_id, specialization, year_obtained, institution_id, location_id, so_num  
                                FROM degree_earned
								WHERE de_id = '$id'"); 
  
   $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
  
  
?> 