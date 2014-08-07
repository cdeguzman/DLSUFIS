<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_otherpub = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, p.published_in, p.publisher, p.place_publication , p.pages, p.date_publication 
                                        FROM faculty f, publication p, publication_type pt
								        WHERE p.fid = $fid 
										AND f.fid = p.fid
										AND p.pub_type = pt.pt_id
										AND p.pub_type='PT008'
										ORDER BY p.date_publication DESC ");
      $list_otherpub = array();
      while($fetch_otherpub = mysql_fetch_assoc($select_otherpub)){
          $list_otherpub[] = $fetch_otherpub;
      }
      echo json_encode($list_otherpub);
    }	
?>