<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_grants = mysql_query("SELECT research_title, fagency, year_start, year_end    
                                FROM research_external
					   	        WHERE research_id = '$id'"); 
  
  $list_grants = array();
  while($fetch_grants = mysql_fetch_assoc($select_grants)){
     $list_grants[] = $fetch_grants;
  }
  echo json_encode($list_grants);
?> 