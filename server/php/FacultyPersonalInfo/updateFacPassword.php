<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_POST["id"];
  $password = md5($_POST["password"]);
  
  $update_facInfo = mysql_query("UPDATE faculty SET password = '$password'   
                                 WHERE fid = '$id'"); 
 
?> 