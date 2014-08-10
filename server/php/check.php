<?php
 include("connect.php");
  $username = $_POST["username"];
  $pass = $_POST["password"];
 
  $select_account = mysql_query("SELECT fid, position_id   
                                 FROM faculty 
								 WHERE username = '$username' 
								 AND password = '$pass'");
  $disp = mysql_fetch_assoc($select_account);
  echo json_encode($disp);
?>