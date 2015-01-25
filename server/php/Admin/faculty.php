<?php
  include("../connect.php");

  $access_type = $_GET["access_type"];
  $dept_code = $_GET["dept_code"];
  //Display All faculty
  $select_faculty = mysql_query(
                    "SELECT fid, ffname, flname, fmname, unit_code 
					 FROM faculty 
					 WHERE account_id='AC003' 
					 ORDER BY flname;");

  $access_type = $_GET["access_type"];
  $dept_code = $_GET["dept_code"];

  //Managers can only view same department as them
  if($access_type=="1"){
    $select_faculty = mysql_query(
                    "SELECT fid, ffname, flname, fmname, unit_code 
           FROM faculty 
           WHERE account_id='AC003' AND dept='$dept_code'   
           ORDER BY flname;");
  }


  $list_faculty = array();
  
  while($fetch_faculty = mysql_fetch_assoc($select_faculty)){
    $list_faculty[] = $fetch_faculty; 
  }
  
  echo json_encode($list_faculty);
?>