<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
       $select_profprac1 = mysql_query("SELECT pp.work_nature, i.institution_name, pp.no_years, pp.start_date, pp.end_date
                                        FROM professional_prac pp, institution i   
									    WHERE pp.fid = $fid AND pp.institution_id = i.institution_id");
       $list_profprac1 = array();
        while($fetch_profprac1 = mysql_fetch_assoc($select_profprac1)){
           $list_profprac1[] = $fetch_profprac1;
        }
       echo json_encode($list_profprac1);
	  
	}
?>