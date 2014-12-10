<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_leadership = mysql_query("SELECT designation, org_name, start_date, end_date   
                                     FROM professional_acty
					   	             WHERE leader_type = '1' AND pa_id = '$id'"); 
  
  $list_leadership = array();
  while($fetch_leadership = mysql_fetch_assoc($select_leadership)){
     $list_leadership[] = $fetch_leadership;
  }
  echo json_encode($list_leadership);
?> 