<?php
  include("../../connect.php");
  $fid = $_GET["fid"];
  $rank_code = strtoupper($_POST["rank_code"]);
  $rank_title = ucwords($_POST["rank_title"]);
  $id = $_POST["id"];
   
  $update_rank = mysql_query("UPDATE rank SET rank_code = '$rank_code', rank_title = '$rank_title'
							  WHERE rank_code = '$id'");  
?> 