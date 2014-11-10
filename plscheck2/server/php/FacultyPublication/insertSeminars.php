<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $seminar_title = ucwords($_POST["seminar_title"]);
  $venue_performance = ucwords($_POST["venue_performance"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $pub_type = "PT011";
  
  $insertSeminars = "INSERT INTO publication
                   (pub_type, fid, seminar_title, venue_performance, start_date, end_date)
                   VALUES 
				   ('$pub_type', '$fid', '$seminar_title', '$venue_performance', '$start_date', '$end_date')";
  
  mysql_query($insertSeminars);
  
?> 