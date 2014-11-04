<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_degree = mysql_query("SELECT dlevel_id, degree_id, institution_id, degree_stages, earned_units, start_date, end_date   
                                    FROM degree_pursue
									WHERE dp_id = $id"); 
  
   $list_degree = array();
      while($fetch_degree = mysql_fetch_assoc($select_degree)){
          $list_degree[] = $fetch_degree;
      }
      echo json_encode($list_degree);
  
  
?> 