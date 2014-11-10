<?php
  include("../../connect.php");
  $ffid = $_POST["ffid"];
  $username = strtolower($_POST["username"]);
  $passwd = md5($_POST["passwd"]);
  $flname = ucwords($_POST["flname"]);  
  $ffname = ucwords($_POST["ffname"]);  
  $fmname = ucwords($_POST["fmname"]); 
  $unit = $_POST["unit"];
  $dept = $_POST["dept"];
  $classification = $_POST["class"];
  $rank = $_POST["rank"];  
  $acctType = $_POST["acctType"];
  $position = $_POST["position"];
  $id = $_POST["id"];
   
  $update_user = mysql_query("UPDATE faculty SET fid = '$ffid', username = '$username', password = '$passwd', 
                             flname = '$flname', ffname = '$ffname', fmname = '$fmname', unit_code = '$unit', 
							 dept = '$dept', classification = '$classification', rank = '$rank', account_id = '$acctType',
							 position_id = '$position' 
							 WHERE fid = '$id'");  
?> 