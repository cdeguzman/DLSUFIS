<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $degree_title = ucwords($_POST["degree_title"]);
  $id = $_POST["id"];
   
  $update_degree = mysql_query("UPDATE degree SET degree_title = '$degree_title'
							    WHERE degree_id = '$id'");  
?> 