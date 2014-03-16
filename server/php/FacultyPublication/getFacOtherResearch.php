<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_otherOutput = mysql_query("SELECT f.flname, p.paper_title, p.output_type, p.date_publication, p.remarks 
                                            FROM faculty f, publication p
								            WHERE p.fid = $fid AND f.fid = p.fid AND p.paper_type='Other Output'");
      $list_otherOutput = array();
      while($fetch_otherOutput = mysql_fetch_assoc($select_otherOutput)){
          $list_otherOutput[] = $fetch_otherOutput;
      }
      echo json_encode($list_otherOutput);
    }	
?>