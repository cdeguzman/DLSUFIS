<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_exproj = mysql_query("SELECT re.research_title, fa.fagency_name, re.currency, re.amount, re.start_date, re.end_date 
                                    FROM research_external re, funding_agency fa
								    WHERE fid = $fid 
									AND funding_type='External'
									AND re.fagency_id = fa.fagency_id ");
      $list_exproj = array();
      while($fetch_exproj = mysql_fetch_assoc($select_exproj)){
          $list_exproj[] = $fetch_exproj;
      }
      echo json_encode($list_exproj);
    }	
?>