<?php
 include("connect.php");
  $fid = $_POST["fid"];
  $pass = $_POST["password"];
 
  $select_account = mysql_query("SELECT fid, password 
                                 FROM faculty 
								 WHERE fid = '$fid' 
								 AND password = '$pass'");
  $disp = mysql_fetch_assoc($select_account);
  echo $disp["fid"];
?>