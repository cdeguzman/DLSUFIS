<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_teachexp = mysql_query("SELECT el.el_title, te.institution_id, te.start_date, te.end_date, te.no_years, p.position_title
                                    FROM teaching_experience te, educ_level el, position p  
									WHERE te.fid = $fid 
									AND te.institution_id = 'De La Salle University' 
									AND el.el_id = te.el_id
									AND te.position_id = p.position_id ");
                  
      $list_teachexp = array();
      while($fetch_teachexp = mysql_fetch_assoc($select_teachexp)){
          $list_teachexp[] = $fetch_teachexp;
      }
      echo json_encode($list_teachexp);
    }	
?>