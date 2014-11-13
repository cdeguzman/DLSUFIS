<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $dlevel_id = strtoupper($_POST["dlevel_id"]);
  $dlevel_title = ucwords($_POST["dlevel_title"]); 
  $dlevel_desc = ucwords($_POST["dlevel_desc"]); 
  $id = $_POST["id"];
   
  $update_degreeLvl = mysql_query("UPDATE degree_level SET dlevel_id = '$dlevel_id', dlevel_title = '$dlevel_title', 
                                   dlevel_desc = '$dlevel_desc'
							       WHERE id = '$id'");  
?> 