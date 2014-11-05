<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_confPaper = mysql_query("SELECT conf_title, paper_title, publisher, date_publication, place_publication, pages     
                                   FROM publication
					   	           WHERE pub_code = $id
								   AND pub_type = 'PT007'"); 
  
  $list_confPaper = array();
  while($fetch_confPaper = mysql_fetch_assoc($select_confPaper)){
     $list_confPaper[] = $fetch_confPaper;
  }
  echo json_encode($list_confPaper);
?> 