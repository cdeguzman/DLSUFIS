<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_dept = mysql_query("SELECT dept_code, dept_name FROM department
							  WHERE dept_code = '$id'"); 
  
   $list_dept = array();
      while($fetch_dept = mysql_fetch_assoc($select_dept)){
          $list_dept[] = $fetch_dept;
      }
      echo json_encode($list_dept);
  
  
?> 