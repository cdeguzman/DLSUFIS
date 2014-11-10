<?php
  include("../../connect.php");
  $dept_code = strtoupper($_POST["dept_code"]);
  $dept_name = ucwords($_POST["dept_name"]);
  
  $insertNewDept= "INSERT INTO department
                  (dept_code, dept_name)
                  VALUES 
				  ('$dept_code', '$dept_name')";
  
  mysql_query($insertNewDept);
  
?> 