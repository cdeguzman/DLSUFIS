<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_conference = mysql_query("SELECT f.flname, p.paper_title, p.conf_title, p.publisher, p.place_publication, p.pages, p.date_publication 
                                       FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Conference'");
      $list_conference = array();
      while($fetch_conference = mysql_fetch_assoc($select_conference)){
          $list_conference[] = $fetch_conference;
      }
      echo json_encode($list_conference);
    }	
?>