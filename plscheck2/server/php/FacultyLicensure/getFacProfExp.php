<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"];
  
       $select_profexp = mysql_query("SELECT pe_id AS id, year_passed, licensure_title, license_no, date_validity
                                      FROM professional_exp   
									  WHERE fid = $fid");
       $list_profexp = array();
        while($fetch_profexp = mysql_fetch_assoc($select_profexp)){
           $list_profexp[] = $fetch_profexp;
        }
       echo json_encode($list_profexp);
	  
	  
	}
?>