<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_inproj = mysql_query("SELECT research_title, funding_agency, amount, start_date, end_date 
                                    FROM research
								    WHERE fid = $fid AND funding_type='Internal'");
      $list_inproj = array();
      while($fetch_inproj = mysql_fetch_array($select_inproj)){
          $list_inproj[] = $fetch_inproj;
      }
      echo json_encode($list_inproj);
    }	
?>