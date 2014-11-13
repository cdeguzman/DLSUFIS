<?php
  include("../connect.php");
  
  $select_dept = mysql_query("SELECT id, dept_code, dept_name FROM department ORDER BY dept_name");
  $list_dept = array();
  
  while($fetch_dept = mysql_fetch_assoc($select_dept)){
    $list_dept[] = $fetch_dept; 
  }
  
  echo json_encode($list_dept);
?>