<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_specTraining = mysql_query("SELECT training_title, institution, venue, start_date, end_date  
                                      FROM special_training
								      WHERE st_id = '$id'"); 
  
  $list_specTraining = array();
  while($fetch_specTraining = mysql_fetch_assoc($select_specTraining)){
     $list_specTraining[] = $fetch_specTraining;
  }
  echo json_encode($list_specTraining);
?> 