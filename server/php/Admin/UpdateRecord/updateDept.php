<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $dept_code = strtoupper($_POST["dept_code"]);
  $dept_name = ucwords($_POST["dept_name"]);
  $id = $_GET["id"];
   
  $update_department = mysql_query("UPDATE department SET dept_code = '$dept_code', dept_name = '$dept_name'
							        WHERE dept_code = '$id'");  
?> 