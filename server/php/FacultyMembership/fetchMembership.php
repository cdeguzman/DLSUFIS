<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_membership = mysql_query("SELECT designation, org_name, start_date, end_date   
                                     FROM professional_acty
					   	             WHERE leader_type = '0' AND pa_id = '$id'"); 
  
  $list_membership = array();
  while($fetch_membership = mysql_fetch_assoc($select_membership)){
     $list_membership[] = $fetch_membership;
  }
  echo json_encode($list_membership);
?> 