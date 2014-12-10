<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_awards = mysql_query("SELECT award_title, award_body, award_date   
                                     FROM awards
					   	             WHERE award_id = $id"); 
  
  $list_awards = array();
  while($fetch_awards = mysql_fetch_assoc($select_awards)){
     $list_awards[] = $fetch_awards;
  }
  echo json_encode($list_awards);
?> 