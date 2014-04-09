<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_awards = mysql_query("SELECT award_title, award_body, award_date
                                    FROM awards 
								    WHERE fid = $fid
									ORDER BY award_date DESC");
      $list_awards = array();
      while($fetch_awards = mysql_fetch_assoc($select_awards)){
          $list_awards[] = $fetch_awards;
      }
      echo json_encode($list_awards);
    }	
?>