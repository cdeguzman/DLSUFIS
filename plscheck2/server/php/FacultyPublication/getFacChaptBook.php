<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_chapter = mysql_query("SELECT p.pub_code AS id, f.flname, p.work_title, p.paper_title, p.editors, p.publisher, p.place_publication, p.date_publication, p.pages, p.isbn 
                                     FROM faculty f, publication p, publication_type pt
								     WHERE p.fid = $fid 
									 AND f.fid = p.fid 
									 AND p.pub_type = pt.pt_id
									 AND p.pub_type='PT006'
									 ORDER BY p.date_publication DESC");
      $list_chapter = array();
      while($fetch_chapter = mysql_fetch_assoc($select_chapter)){
          $list_textchapter[] = $fetch_chapter;
      }
      echo json_encode($list_textchapter);
    }	
?>