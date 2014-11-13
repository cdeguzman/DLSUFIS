<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_degreeLvl = mysql_query("SELECT dlevel_id, dlevel_title, dlevel_desc FROM degree_level
							       WHERE id = '$id'"); 
  
   $list_degreeLvl = array();
      while($fetch_degreeLvl = mysql_fetch_assoc($select_degreeLvl)){
          $list_degreeLvl[] = $fetch_degreeLvl;
      }
      echo json_encode($list_degreeLvl);
  
  
?> 