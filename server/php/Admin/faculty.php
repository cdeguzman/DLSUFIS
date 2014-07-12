<?php
  include("../connect.php");
  
  $select_faculty = mysql_query("SELECT fid, ffname, flname, fmname, unit_code FROM faculty WHERE LENGTH(fid)!=4 ORDER BY flname;");
  $list_faculty = array();
  
  while($fetch_faculty = mysql_fetch_assoc($select_faculty)){
    $list_faculty[] = $fetch_faculty; 
  }
  
  echo json_encode($list_faculty);
?>