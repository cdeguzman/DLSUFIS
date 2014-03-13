<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_seminars= mysql_query("SELECT f.flname, p.seminar_title, p.venue_performance, p.date_publication, p.end_date 
                                         FROM faculty f, publication p
								         WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Seminars'");
      $list_seminars = array();
      while($fetch_seminars = mysql_fetch_array($select_seminars)){
          $list_seminars[] = $fetch_seminars;
      }
      echo json_encode($list_seminars);
    }	
?>