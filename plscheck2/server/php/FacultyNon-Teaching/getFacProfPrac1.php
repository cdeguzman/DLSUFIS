<?php
  include("../connect.php");
    if($_GET["fid"]!= NULL){ 
 	  $fid = $_GET["fid"]; 
  
       $select_profprac1 = mysql_query("SELECT pp_id AS id, pp.work_nature, i.institution_name, o.org_acronym, ind.ind_acronym, pp.no_years, pp.start_date, pp.end_date
                                        FROM professional_prac pp, institution i, organization o, industry ind    
									    WHERE pp.fid = $fid 
										AND pp.institution_id = i.institution_id
										AND pp.org_id = o.org_id
										AND pp.industry_id = ind.industry_id");
       $list_profprac1 = array();
        while($fetch_profprac1 = mysql_fetch_assoc($select_profprac1)){
           $list_profprac1[] = $fetch_profprac1;
        }
       echo json_encode($list_profprac1);
	  
	}
?>