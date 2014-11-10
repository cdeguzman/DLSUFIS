<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $dlevel_id = strtoupper($_POST["dlevel_id"]);
  $dlevel_title = ucwords($_POST["dlevel_title"]); 
  $dlevel_desc = ucwords($_POST["dlevel_desc"]); 
  $id = $_GET["id"];
   
  $update_degreeLvl = mysql_query("UPDATE degree SET dlevel_id = '$dlevel_id', dlevel_title = '$dlevel_title', 
                                   dlevel_desc = '$dlevel_desc'
							       WHERE dlevel_id = '$id'");  
?> 