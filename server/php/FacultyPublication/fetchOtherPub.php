<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_otherPub = mysql_query("SELECT paper_title, published_in, publisher, date_publication, place_publication, pages, local as type     
                                   FROM publication
					   	           WHERE pub_code = $id
								   AND pub_type = 'PT008'"); 
  
  $list_otherPub = array();
  while($fetch_otherPub = mysql_fetch_assoc($select_otherPub)){
     $list_otherPub[] = $fetch_otherPub;
  }
  echo json_encode($list_otherPub);
?> 