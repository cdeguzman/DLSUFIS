<?php
  include("../../connect.php");
  $fid = $_GET["fid"];
  $rank_code = strtoupper($_GET["rank_code"]);
  $rank_title = ucwords($_GET["rank_title"]);
  $id = $_GET["id"];
   
  $select_rank = mysql_query("UPDATE rank SET rank_code = '$rank_code', rank_title = '$rank_title'
							  WHERE rank_code = '$id'"); 
  
   $list_rank = array();
      while($fetch_rank = mysql_fetch_assoc($select_rank)){
          $list_rank[] = $fetch_rank;
      }
      echo json_encode($list_rank);
  
  
?> 