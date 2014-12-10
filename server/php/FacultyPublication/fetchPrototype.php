<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_prototype = mysql_query("SELECT paper_title, journal, date_publication, volume_no, issue_no, pages, isbn    
                                 FROM publication
					   	         WHERE pub_code = '$id'
								 AND pub_type = 'PT002'"); 
  
  $list_prototype = array();
  while($fetch_prototype = mysql_fetch_assoc($select_prototype)){
     $list_prototype[] = $fetch_prototype;
  }
  echo json_encode($list_prototype);
?> 