<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_industry = mysql_query("SELECT industry_name, ind_acronym FROM industry
							      WHERE industry_id = '$id'"); 
  
   $list_industry = array();
      while($fetch_industry = mysql_fetch_assoc($select_industry)){
          $list_industry[] = $fetch_industry;
      }
      echo json_encode($list_industry);
  
  
?> 