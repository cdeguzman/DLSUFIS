<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_textbook = mysql_query("SELECT f.flname, p.paper_title, p.publisher, p.place_publication, p.date_publication, p.issue_no 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Textbook'");
      $list_textbook = array();
      while($fetch_textbook = mysql_fetch_array($select_textbook)){
          $list_textbook[] = $fetch_textbook;
      }
      echo json_encode($list_textbook);
    }	
?>