<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_chapter = mysql_query("SELECT f.flname, p.work_title, p.paper_title, p.editors, p.publisher, p.place_publication, p.date_publication, p.pages, p.issue_no 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Chapter'");
      $list_chapter = array();
      while($fetch_chapter = mysql_fetch_assoc($select_chapter)){
          $list_textchapter[] = $fetch_chapter;
      }
      echo json_encode($list_textchapter);
    }	
?>