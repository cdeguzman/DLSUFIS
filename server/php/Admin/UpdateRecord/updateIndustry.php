<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $industry_name = ucwords($_POST["industry_name"]);
  $ind_acronym = ucwords($_POST["ind_acronym"]);
  $id = $_POST["id"];
   
  $update_industry = mysql_query("UPDATE industry SET industry_name = '$industry_name', ind_acronym = '$ind_acronym'
							      WHERE industry_id = '$id'");  
?> 