<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_screenplay = mysql_query("SELECT f.flname, p.paper_title, p.venue_performance, p.date_publication 
                                            FROM faculty f, publication p, publication_type pt
								            WHERE p.fid = $fid 
											AND f.fid = p.fid 
											AND p.pub_type = pt.pt_id
											AND p.pub_type='PT009'
											ORDER BY p.date_publication DESC ");
      $list_screenplay = array();
      while($fetch_screenplay = mysql_fetch_assoc($select_screenplay)){
          $list_screenplay[] = $fetch_screenplay;
      }
      echo json_encode($list_screenplay);
    }	
?>