<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $venue = ucwords($_POST["venue_performance"]);
  $date_publication = $_POST["date_publication"];
  $pub_type = "PT009";
  
  $insertScreenPlay = "INSERT INTO publication
                   (pub_type, fid, paper_title, venue_performance, date_publication)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$venue', '$date_publication')";
  
  mysql_query($insertScreenPlay);
  
?> 