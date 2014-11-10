<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_textbook = mysql_query("SELECT paper_title, publisher, date_publication, place_publication, isbn     
                                 FROM publication
					   	         WHERE pub_code = $id
								 AND pub_type = 'PT005'"); 
  
  $list_textbook = array();
  while($fetch_textbook = mysql_fetch_assoc($select_textbook)){
     $list_textbook[] = $fetch_textbook;
  }
  echo json_encode($list_textbook);
?> 