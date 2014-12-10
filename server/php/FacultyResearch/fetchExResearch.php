<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_exResearch = mysql_query("SELECT research_title, fagency, currency, amount, start_date, end_date    
                                    FROM research_external
					   	            WHERE research_id = '$id'
									AND funding_type = 'External'"); 
  
  $list_exResearch = array();
  while($fetch_exResearch = mysql_fetch_assoc($select_exResearch)){
     $list_exResearch[] = $fetch_exResearch;
  }
  echo json_encode($list_exResearch);
?> 