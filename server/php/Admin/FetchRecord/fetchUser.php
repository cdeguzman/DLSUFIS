<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_userAcct = mysql_query("SELECT fid as ffid, username, password as passwd, flname, ffname, fmname, 
                                         unit_code as unit, dept, classification as class, rank, account_id as acctType, position_id as position, active 
                                  FROM faculty
								  WHERE fid = $id"); 
  
   $list_userAcct = array();
      while($fetch_userAcct = mysql_fetch_assoc($select_userAcct)){
          $list_userAcct[] = $fetch_userAcct;
      }
      echo json_encode($list_userAcct);
  
  
?> 