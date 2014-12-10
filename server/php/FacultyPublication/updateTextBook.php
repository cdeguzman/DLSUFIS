<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $publisher = ucwords($_POST["publisher"]);
  $date_publication = $_POST["date_publication"];
  $place_publication = ucwords($_POST["place_publication"]);
  $isbn = strtoupper($_POST["isbn"]);
  $local = $_POST["type"];  
  
  $update_textBook = mysql_query("UPDATE publication SET paper_title = '$paper_title', publisher = '$publisher',
                                        date_publication = '$date_publication', place_publication = '$place_publication', 
										isbn = '$isbn', local = '$local'
                                WHERE pub_code = '$id' AND pub_type ='PT005'"); 
 
?> 