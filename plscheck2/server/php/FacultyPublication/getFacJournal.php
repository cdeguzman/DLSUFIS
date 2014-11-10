<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_journal = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, j.journal_title, p.date_publication, p.volume_no, p.issue_no, p.pages, jp.journalpub_type 
                                     FROM faculty f, publication p, journals j, publication_type pt, journal_publication jp
								     WHERE p.fid = $fid 
									 AND f.fid = p.fid 
									 AND p.pub_type = pt.pt_id
									 AND p.pub_type = 'PT001'
									 AND p.journal_id = j.journal_id
									 AND p.publication_type = jp.journalpub_id
									 ORDER BY p.date_publication DESC");
      $list_journal = array();
      while($fetch_journal = mysql_fetch_assoc($select_journal)){
          $list_journal[] = $fetch_journal;
      }
      echo json_encode($list_journal);
    }	
?>