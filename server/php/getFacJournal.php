<?php
  include("connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_journal = mysql_query("SELECT f.flname, p.paper_title, p.journal_name, p.date_publication, p.volume_no, p.issue_no, p.pages, p.publication_type 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Journal'");
      $list_journal = array();
      while($fetch_journal = mysql_fetch_array($select_journal)){
          $list_journal[] = $fetch_journal;
      }
      echo json_encode($list_journal);
    }	
?>