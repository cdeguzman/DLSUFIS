<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_licensure = mysql_query("SELECT licensure_title, year_passed, license_no, date_validity  
                                  FROM professional_exp
					   	          WHERE pe_id = $id"); 
  
  $list_licensure = array();
  while($fetch_licensure = mysql_fetch_assoc($select_licensure)){
     $list_licensure[] = $fetch_licensure;
  }
  echo json_encode($list_licensure);
?> 