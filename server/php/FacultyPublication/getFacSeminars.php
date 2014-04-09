<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_seminars= mysql_query("SELECT p.seminar_title, p.venue_performance, p.start_date, p.end_date 
                                     FROM faculty f, publication p, publication_type pt
								     WHERE p.fid = $fid 
									 AND f.fid = p.fid 
									 AND p.pub_type = pt.pt_id
									 AND p.pub_type='PT011'
									 ORDER BY p.start_date DESC");
      $list_seminars = array();
      while($fetch_seminars = mysql_fetch_assoc($select_seminars)){
          $list_seminars[] = $fetch_seminars;
      }
      echo json_encode($list_seminars);
    }	
?>