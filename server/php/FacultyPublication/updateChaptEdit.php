<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $work_title = ucwords($_POST["work_title"]); 
  $paper_title = ucwords($_POST["paper_title"]);
  $editors = ucwords($_POST["editors"]);
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $isbn = strtoupper($_POST["isbn"]); 
  $local = $_POST["type"];
  
  $update_chapterEdit = mysql_query("UPDATE publication SET work_title = '$work_title', paper_title = '$paper_title', 
                                            editors = '$editors', publisher = '$publisher', date_publication = '$date_publication',
											place_publication = '$place_publication', pages = '$pages', isbn = '$isbn', local = '$local' 
                                WHERE pub_code = '$id' AND pub_type ='PT006'"); 
 
?> 