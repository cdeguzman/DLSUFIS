<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_screenPlay = mysql_query("SELECT paper_title, venue_performance, date_publication     
                                   FROM publication
					   	           WHERE pub_code = '$id'
								   AND pub_type = 'PT009'"); 
  
  $list_screenPlay = array();
  while($fetch_screenPlay = mysql_fetch_assoc($select_screenPlay)){
     $list_screenPlay[] = $fetch_screenPlay;
  }
  echo json_encode($list_screenPlay);
?> 