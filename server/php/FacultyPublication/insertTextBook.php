<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $isbn = strtoupper($_POST["isbn"]);
  $local = $_POST["type"];
  $pub_type = "PT004";
  
  $insertTextBook = "INSERT INTO publication
                   (pub_type, fid, paper_title, publisher, date_publication, place_publication, isbn, local)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$publisher', '$date_publication', '$place_publication', '$isbn', '$local')";
  
  mysql_query($insertTextBook);
  
?> 