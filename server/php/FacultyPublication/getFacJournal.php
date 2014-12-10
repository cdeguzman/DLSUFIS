<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_journal = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, p.journal, p.date_publication, p.volume_no, p.issue_no, p.pages, jp.journalpub_type, pl.local_type 
									 FROM faculty f, publication p, journal_publication jp, pub_local pl 
									 WHERE p.fid = '$fid' 
									 AND pub_type='PT001' 
									 AND p.fid = f.fid
									 AND p.publication_type = jp.journalpub_id 
									 AND p.local = pl.id
	                                 ORDER BY p.date_publication DESC");
									 
      $list_journal = array();
      while($fetch_journal = mysql_fetch_assoc($select_journal)){
          $list_journal[] = $fetch_journal;
      }
      echo json_encode($list_journal);
    }	
?>