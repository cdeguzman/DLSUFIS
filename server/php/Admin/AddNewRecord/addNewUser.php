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
  
  $insertNewUser = "INSERT INTO faculty
                  (fid, username, password, flname, ffname, fmname, unit_code, dept, classification, rank, account_id, position_id)
                  VALUES 
				  ('$ffid', '$username', '$passwd', '$flname', '$ffname', '$fmname', '$unit', '$dept', '$classification', '$rank', '$acctType', '$position')";
  
  mysql_query($insertNewUser);
  
?> 