<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_teachExp = mysql_query("SELECT el_id, institution_id, no_years, start_date, end_date, position_id  
                                  FROM teaching_experience
					   	          WHERE te_id = $id"); 
  
  $list_teachExp = array();
  while($fetch_teachExp = mysql_fetch_assoc($select_specTraining)){
     $list_teachExp[] = $fetch_teachExp;
  }
  echo json_encode($list_teachExp);
?> 