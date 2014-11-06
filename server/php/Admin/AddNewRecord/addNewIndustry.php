<?php
  include("../../connect.php");
  $industry_name = ucwords($_POST["industry_name"]);
  $ind_acronym = ucwords($_POST["ind_acronym"]);
   
  $insertNewIndustry = "INSERT INTO industry
                        (industry_name, ind_acronym)
                         VALUES 
		                ('$industry_name', '$ind_acronym')";

  mysql_query($insertNewIndustry);
  
?> 
