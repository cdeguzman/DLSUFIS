<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_patents = mysql_query("SELECT f.flname, p.paper_title, p.date_publication, p.issuing_country, p.patent_no 
                                    FROM faculty f, publication p
								    WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Patent'");
      $list_patents = array();
      while($fetch_patents = mysql_fetch_array($select_patents)){
          $list_patents[] = $fetch_patents;
      }
      echo json_encode($list_patents);
    }	
?>