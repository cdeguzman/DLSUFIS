<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_journal = mysql_query("SELECT paper_title, journal_id, date_publication, volume_no, issue_no, pages, publication_type as type    
                                FROM publication
					   	        WHERE pub_code = $id
								AND pub_type = 'PT001'"); 
  
  $list_journal = array();
  while($fetch_journal = mysql_fetch_assoc($select_journal)){
     $list_journal[] = $fetch_journal;
  }
  echo json_encode($list_journal);
?> 