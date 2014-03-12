<?php
  include("connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_prototype = mysql_query("SELECT f.flname, p.paper_title, p.journal_name, p.date_publication, p.volume_no, p.issue_no, p.pages, p.publication_type 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Prototype'");
      $list_prototype = array();
      while($fetch_prototype = mysql_fetch_array($select_prototype)){
          $list_prototype[] = $fetch_prototype;
      }
      echo json_encode($list_prototype);
    }	
?>