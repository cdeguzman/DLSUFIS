<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_institution = mysql_query("SELECT institution_name, location, country FROM institution
							         WHERE institution_id = '$id'"); 
  
   $list_institution = array();
      while($fetch_institution = mysql_fetch_assoc($select_institution)){
          $list_institution[] = $fetch_institution;
      }
      echo json_encode($list_institution);
  
  
?> 