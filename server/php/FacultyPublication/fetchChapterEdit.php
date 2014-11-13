<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_chaptBook = mysql_query("SELECT work_title, paper_title, editors, publisher, date_publication, place_publication, pages, isbn     
                                   FROM publication
					   	           WHERE pub_code = $id
								   AND pub_type = 'PT006'"); 
  
  $list_chaptBook = array();
  while($fetch_chaptBook = mysql_fetch_assoc($select_chaptBook)){
     $list_chaptBook[] = $fetch_chaptBook;
  }
  echo json_encode($list_chaptBook);
?> 