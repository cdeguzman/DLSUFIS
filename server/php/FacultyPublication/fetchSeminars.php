<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_seminars = mysql_query("SELECT seminar_title, venue_performance, start_date, end_date      
                                   FROM publication
					   	           WHERE pub_code = $id
								   AND pub_type = 'PT011'"); 
  
  $list_seminars = array();
  while($fetch_seminars = mysql_fetch_assoc($select_seminars)){
     $list_seminars[] = $fetch_seminars;
  }
  echo json_encode($list_seminars);
?> 