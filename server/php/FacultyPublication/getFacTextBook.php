<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_textbook = mysql_query("SELECT f.flname, p.paper_title, p.publisher, p.place_publication, p.date_publication, p.issue_no 
                                      FROM faculty f, publication p, publication_type pt
									  WHERE p.fid = $fid 
									  AND f.fid = p.fid 
									  AND p.pub_type = pt.pt_id
									  AND p.pub_type='PT005'
									  ORDER BY p.date_publication DESC");
      $list_textbook = array();
      while($fetch_textbook = mysql_fetch_assoc($select_textbook)){
          $list_textbook[] = $fetch_textbook;
      }
      echo json_encode($list_textbook);
    }	
?>
