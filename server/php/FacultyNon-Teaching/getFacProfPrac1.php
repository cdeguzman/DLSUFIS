<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"]; 
  
       $select_profprac1 = mysql_query("SELECT pp_id AS id, work_nature, institution, no_years, start_date, end_date
                                        FROM professional_prac  
									    WHERE fid = '$fid'"); 
									
       $list_profprac1 = array();
        while($fetch_profprac1 = mysql_fetch_assoc($select_profprac1)){
           $list_profprac1[] = $fetch_profprac1;
        }
       echo json_encode($list_profprac1);
	  
	}
?>