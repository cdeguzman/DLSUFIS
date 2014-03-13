<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_otherpublished = mysql_query("SELECT f.flname, p.paper_title, p.published_in, p.publisher, p.place_publication, p.pages, p.date_publication 
                                            FROM faculty f, publication p
								            WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='OtherPublished'");
      $list_otherpublished = array();
      while($fetch_otherpublished = mysql_fetch_array($select_otherpublished)){
          $list_otherpublished[] = $fetch_otherpublished;
      }
      echo json_encode($list_otherpublished);
    }	
?>