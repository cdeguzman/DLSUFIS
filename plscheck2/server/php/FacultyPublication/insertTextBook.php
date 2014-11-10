<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $isbn = strtoupper($_POST["isbn"]);
  $pub_type = "PT005";
  
  $insertTextBook = "INSERT INTO publication
                   (pub_type, fid, paper_title, publisher, date_publication, place_publication, isbn)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$publisher', '$date_publication', '$place_publication', '$isbn')";
  
  mysql_query($insertTextBook);
  
?> 