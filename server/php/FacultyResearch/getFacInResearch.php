<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_inproj = mysql_query("SELECT ri.research_title, u.unit_title, ri.amount, ri.start_date, ri.end_date 
                                    FROM research_internal ri, unit u
								    WHERE ri.fid = $fid 
									AND u.unit_code = ri.funding_unit 
									ORDER BY ri.start_date DESC");
      $list_inproj = array();
      while($fetch_inproj = mysql_fetch_assoc($select_inproj)){
          $list_inproj[] = $fetch_inproj;
      }
      echo json_encode($list_inproj);
    }	
?>