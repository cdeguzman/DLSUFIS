<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_patents = mysql_query("SELECT p.pub_code AS id, f.flname, p.paper_title, p.date_publication, p.issuing_country, p.patent_no 
                                    FROM faculty f, publication p, publication_type pt
								    WHERE p.fid = $fid 
									AND f.fid = p.fid 
									AND p.pub_type = pt.pt_id
									AND p.pub_type = 'PT003'
									ORDER BY p.date_publication DESC");
      $list_patents = array();
      while($fetch_patents = mysql_fetch_assoc($select_patents)){
          $list_patents[] = $fetch_patents;
      }
      echo json_encode($list_patents);
    }	
?>