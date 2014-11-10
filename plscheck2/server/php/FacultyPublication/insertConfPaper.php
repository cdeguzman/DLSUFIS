<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $conf_title = ucwords($_POST["conf_title"]); 
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $pub_type = "PT007";
  
  $insertConfPaper = "INSERT INTO publication
                   (pub_type, fid, conf_title, paper_title, publisher, date_publication, place_publication, pages)
                   VALUES 
				   ('$pub_type', '$fid', '$conf_title', '$paper_title', '$publisher', '$date_publication', '$place_publication', '$pages')";
  
  mysql_query($insertConfPaper);
  
?> 