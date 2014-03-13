<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_books = mysql_query("SELECT f.flname, p.paper_title, p.publisher, p.place_publication, p.date_publication, p.issue_no 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Book'");
      $list_books = array();
      while($fetch_books = mysql_fetch_array($select_books)){
          $list_books[] = $fetch_books;
      }
      echo json_encode($list_books);
    }	
?>