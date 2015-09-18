<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
<<<<<<< HEAD
      $select_inproj = mysql_query("SELECT research_id AS id, research_title, funding_unit, amount, year_start, year_end 
=======
      $select_inproj = mysql_query("SELECT research_id AS id, research_title, funding_unit, amount, start_date, end_date 
>>>>>>> 1caa0c8503922b9b3836b99a256934322bfa3de8
                                    FROM research_internal
								    WHERE fid = $fid 
									ORDER BY start_date DESC");
      $list_inproj = array();
      while($fetch_inproj = mysql_fetch_assoc($select_inproj)){
          $list_inproj[] = $fetch_inproj;
      }
      echo json_encode($list_inproj);
    }	
?>