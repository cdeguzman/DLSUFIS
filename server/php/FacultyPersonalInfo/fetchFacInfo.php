<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
      $select_info = mysql_query("SELECT fid as id, flname, ffname, fmname, unit_code, dept as dept_code, rank, classification as class, account_id  
                                  FROM faculty
								  WHERE fid = '$id'");
      $list_info = array();
      while($fetch_info = mysql_fetch_assoc($select_info)){
          $list_info[] = $fetch_info;
      }
      echo json_encode($list_info);
?> 