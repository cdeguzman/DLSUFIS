<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_organization = mysql_query("SELECT org_name, org_acronym, org_location FROM organization
							          WHERE org_id = '$id'"); 
  
   $list_organization = array();
      while($fetch_organization = mysql_fetch_assoc($select_organization)){
          $list_organization[] = $fetch_organization;
      }
      echo json_encode($list_organization);
  
  
?> 