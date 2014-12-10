<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $conf_title = ucwords($_POST["conf_title"]); 
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  $local = $_POST["type"];
  $co_author = $_POST["co_author"];
  
  $update_confPaper = mysql_query("UPDATE publication SET conf_title = '$conf_title', paper_title = '$paper_title', 
                                          publisher = '$publisher', date_publication = '$date_publication',
										  place_publication = '$place_publication', pages = '$pages', local = '$local',
                                          co_author = '$co_author'										  
                                   WHERE pub_code = '$id' AND pub_type ='PT007'"); 
 
?> 