<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $published_in = ucwords($_POST["published_in"]); 
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $pages = $_POST["pages"];
  
  $update_otherPub = mysql_query("UPDATE publication SET paper_title = '$paper_title', published_in = '$published_in', 
                                         publisher = '$publisher', date_publication = '$date_publication',
										 place_publication = '$place_publication', pages = '$pages' 
                                  WHERE pub_code = '$id' AND pub_type ='PT008'"); 
 
?> 