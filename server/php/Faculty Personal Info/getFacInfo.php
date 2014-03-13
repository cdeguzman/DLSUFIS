<?php
  include("/server/php/connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
      $select_info = mysql_query("SELECT f.flname, f.ffname, f.fmname, f.college, u.unit_title, d.dept_name, f.classification, r.rank_title
                                    FROM faculty f, unit u, department d, rank r 
									WHERE f.fid = $fid AND f.college = u.unit_code AND f.dept = d.dept_code AND f.rank = r.rank_code");
      $list_info = array();
      while($fetch_info = mysql_fetch_array($select_info)){
          $list_info[] = $fetch_info;
      }
      echo json_encode($list_info);
    }	
?>