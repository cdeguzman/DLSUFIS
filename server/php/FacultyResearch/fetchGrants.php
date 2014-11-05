<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_grants = mysql_query("SELECT research_title, fagency_id, amount, start_date, end_date    
                                FROM research_external
					   	        WHERE research_id = $id
								AND funding_type = 'Grants'"); 
  
  $list_grants = array();
  while($fetch_grants = mysql_fetch_assoc($select_grants)){
     $list_grants[] = $fetch_grants;
  }
  echo json_encode($list_grants);
?> 