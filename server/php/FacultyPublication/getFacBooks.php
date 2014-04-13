<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_books = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, p.publisher, p.place_publication, p.date_publication, p.issue_no 
                                    FROM faculty f, publication p, publication_type pt
								    WHERE p.fid = $fid 
									AND f.fid = p.fid
									AND p.pub_type = pt.pt_id
									AND p.pub_type='PT004'
									ORDER BY p.date_publication DESC");
      $list_books = array();
      while($fetch_books = mysql_fetch_assoc($select_books)){
          $list_books[] = $fetch_books;
      }
      echo json_encode($list_books);
    }	
?>