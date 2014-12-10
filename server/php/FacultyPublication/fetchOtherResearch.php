<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_otherResearch = mysql_query("SELECT paper_title, paper_type, date_publication, remarks, local as type, co_author     
                                   FROM publication
					   	           WHERE pub_code = '$id'
								   AND pub_type = 'PT010'"); 
  
  $list_otherResearch = array();
  while($fetch_otherResearch = mysql_fetch_assoc($select_otherResearch)){
     $list_otherResearch[] = $fetch_otherResearch;
  }
  echo json_encode($list_otherResearch);
?> 