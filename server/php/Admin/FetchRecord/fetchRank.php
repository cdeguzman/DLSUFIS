<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_rank = mysql_query("SELECT rank_code, rank_title FROM rank
							  WHERE rank_code = '$id'"); 
  
   $list_rank = array();
      while($fetch_rank = mysql_fetch_assoc($select_rank)){
          $list_rank[] = $fetch_rank;
      }
      echo json_encode($list_rank);
  
  
?> 