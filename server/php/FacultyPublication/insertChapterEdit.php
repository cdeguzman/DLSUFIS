<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $work_title = ucwords($_POST["work_title"]); 
  $paper_title = ucwords($_POST["paper_title"]);
  $editors = ucwords($_POST["editors"]);
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $isbn = strtoupper($_POST["isbn"]);
  $local = $_POST["type"];
  $pub_type = "PT006";
  
  $insertChapterEdit = "INSERT INTO publication
                   (pub_type, fid, work_title, paper_title, editors, publisher, date_publication, place_publication, pages, isbn, local)
                   VALUES 
				   ('$pub_type', '$fid', '$work_title', '$paper_title', '$editors', '$publisher', '$date_publication', '$place_publication', '$pages', '$isbn', '$local')";
  
  mysql_query($insertChapterEdit);
  
?> 