<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_teachexp = mysql_query("SELECT te.level, i.institution_name, te.start_date, te.end_date, te.no_years, te.position
                                    FROM teaching_experience te, institution i 
									WHERE te.fid = $fid AND te.institution_id = 'I1111' AND te.institution_id = i.institution_id");
      $list_teachexp = array();
      while($fetch_teachexp = mysql_fetch_assoc($select_teachexp)){
          $list_teachexp[] = $fetch_teachexp;
      }
      echo json_encode($list_teachexp);
    }	
?>