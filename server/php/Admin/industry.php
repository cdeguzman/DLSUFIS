<?php
  include("../connect.php");
  
  $select_industry = mysql_query("SELECT industry_id, industry_name, ind_acronym 
                                  FROM industry 
								  ORDER BY industry_name");
  $list_industry = array();
  
  while($fetch_industry = mysql_fetch_assoc($select_industry)){
    $list_industry[] = $fetch_industry; 
  }
  
  echo json_encode($list_industry);
?>