<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $award_title = ucwords($_POST["award_title"]);
  $award_body = ucwords($_POST["award_body"]);
  $award_date = $_POST["award_date"];
  
  $insertAward = "INSERT INTO awards
                  (fid, award_title, award_body, award_date)
                  VALUES 
				  ('$fid', '$award_title', '$award_body', '$award_date')";
  
  mysql_query($insertAward);
  
?> 