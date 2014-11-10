<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $published_in = ucwords($_POST["published_in"]); 
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $pub_type = "PT008";
  
  $insertOtherPub = "INSERT INTO publication
                   (pub_type, fid, paper_title, published_in, publisher, date_publication, place_publication, pages)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$published_in', '$publisher', '$date_publication', '$place_publication', '$pages')";
  
  mysql_query($insertOtherPub);
  
?> 