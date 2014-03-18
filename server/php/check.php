<?php
 include("connect.php");
 if(isset($_POST["loginBtn"])){
  $fid = $_POST["userName"];
  $pass = $_POST["pass"];
 
  $select_account = mysql_query("SELECT fid, password FROM faculty WHERE fid = '$fid' AND password = '$pass'");
  $count_row = mysql_num_rows($select_account); 
 
  if($count_row == '1'){
   while($disp = mysql_fetch_array($select_account)){
     echo $disp["fid"]." ";
	 echo $disp["password"];
   }
  }
  
 }
  
?>