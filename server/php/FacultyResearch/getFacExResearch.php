<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_exproj = mysql_query("SELECT re.research_id AS id, re.research_title, re.fagency, c.currency_name, re.amount, re.year_start, re.year_end 
                                    FROM research_external re, currency c
								    WHERE fid = '$fid' 
									AND research_type = 'External'
									AND re.currency = c.id");
      $list_exproj = array();
      while($fetch_exproj = mysql_fetch_assoc($select_exproj)){
          $list_exproj[] = $fetch_exproj;
      }
      echo json_encode($list_exproj);
    }	
?>