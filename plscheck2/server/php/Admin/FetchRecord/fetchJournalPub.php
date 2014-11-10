<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_journalpub = mysql_query("SELECT journalpub_type FROM journal_publication
							      WHERE journalpub_id = '$id'"); 
  
   $list_journalpub = array();
      while($fetch_journalpub = mysql_fetch_assoc($select_journalpub)){
          $list_journalpub[] = $fetch_journalpub;
      }
      echo json_encode($list_journalpub);
  
  
?> 