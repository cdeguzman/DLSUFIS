<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_info = mysql_query("SELECT f.fid as id,f.flname, f.ffname, f.fmname, f.unit_code ,u.unit_title, d.dept_name, p.position_title, r.rank_title, p.position_id 
                                    FROM faculty f, unit u, department d, rank r, position p
									WHERE f.fid = $fid 
									AND f.unit_code = u.unit_code 
									AND f.dept = d.dept_code 
									AND f.rank = r.rank_code
									AND f.position_id = p.position_id");
      $list_info = array();
      while($fetch_info = mysql_fetch_assoc($select_info)){
          $list_info[] = $fetch_info;
      }
      echo json_encode($list_info);
    }	
?>