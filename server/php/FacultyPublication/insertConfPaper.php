<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $conf_title = ucwords($_POST["conf_title"]); 
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $local = $_POST["type"];
  $co_author = $_POST["co_author"];
  $pub_type = "PT007";
  
  $insertConfPaper = "INSERT INTO publication
                   (pub_type, fid, conf_title, paper_title, publisher, date_publication, place_publication, pages, local, co_author)
                   VALUES 
				   ('$pub_type', '$fid', '$conf_title', '$paper_title', '$publisher', '$date_publication', '$place_publication', '$pages', '$local', '$co_author')";
  
  mysql_query($insertConfPaper);
  
?> 