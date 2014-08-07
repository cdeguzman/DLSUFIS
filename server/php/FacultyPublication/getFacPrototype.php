<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_prototype = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, j.journal_title, p.date_publication, p.volume_no, p.issue_no, p.pages, p.isbn 
                                     FROM faculty f, publication p, journals j, publication_type pt
								     WHERE p.fid = $fid 
									 AND f.fid = p.fid 
									 AND p.pub_type = pt.pt_id
									 AND p.pub_type = 'PT002'
									 AND p.journal_id = j.journal_id
									 ORDER BY p.date_publication DESC");
      $list_prototype = array();
      while($fetch_prototype = mysql_fetch_assoc($select_prototype)){
          $list_prototype[] = $fetch_prototype;
      }
      echo json_encode($list_prototype);
    }	
?>