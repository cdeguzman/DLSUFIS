<?php
  include("../../connect.php");
  $dlevel_id = strtoupper($_POST["dlevel_id"]);
  $dlevel_title = ucwords($_POST["dlevel_title"]); 
  $dlevel_desc = ucwords($_POST["dlevel_desc"]); 
  
  $insertNewDegreeLevel = "INSERT INTO degree_level
                     (dlevel_id, dlevel_title, dlevel_desc) VALUES 
					 ('$dlevel_id', '$dlevel_title', '$dlevel_desc')";

   mysql_query($insertNewDegreeLevel);
  
?> 