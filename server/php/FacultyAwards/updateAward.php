<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $award_title = ucwords($_POST["award_title"]);
  $award_body = ucwords($_POST["award_body"]);
  $award_date = $_POST["award_date"];
  
  $update_award = mysql_query("UPDATE awards SET award_title = '$award_title', 
                                      award_body = '$award_body', award_date = '$award_date'
                               WHERE award_id = '$id'"); 
 
?> 