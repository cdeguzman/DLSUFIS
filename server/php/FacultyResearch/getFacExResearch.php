<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_exproj = mysql_query("SELECT research_title, funding_agency, currency, amount, start_date, end_date 
                                    FROM research
								    WHERE fid = $fid AND funding_type='External'");
      $list_exproj = array();
      while($fetch_exproj = mysql_fetch_assoc($select_exproj)){
          $list_exproj[] = $fetch_exproj;
      }
      echo json_encode($list_exproj);
    }	
?>