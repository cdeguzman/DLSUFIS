<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_screenplay = mysql_query("SELECT f.flname, p.paper_title, p.venue_performance, p.date_publication 
                                            FROM faculty f, publication p
								            WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Screen Play'");
      $list_screenplay = array();
      while($fetch_screenplay = mysql_fetch_assoc($select_screenplay)){
          $list_screenplay[] = $fetch_screenplay;
      }
      echo json_encode($list_screenplay);
    }	
?>