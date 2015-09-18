<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_inResearch = mysql_query("SELECT research_title, funding_unit as unit_title, amount, year_start, year_end
									FROM research_internal
					   	            WHERE research_id = '$id'
									AND funding_type = 'Internal'"); 
  
  $list_inResearch = array();
  while($fetch_inResearch = mysql_fetch_assoc($select_inResearch)){
     $list_inResearch[] = $fetch_inResearch;
  }
  echo json_encode($list_inResearch);
?> 