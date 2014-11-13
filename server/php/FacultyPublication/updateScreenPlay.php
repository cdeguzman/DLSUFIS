<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $venue = ucwords($_POST["venue_performance"]);
  $date_publication = $_POST["date_publication"];
  
  $update_screenPlay = mysql_query("UPDATE publication SET paper_title = '$paper_title', venue_performance = '$venue', 
                                         date_publication = '$date_publication'
							        WHERE pub_code = '$id' AND pub_type ='PT009'"); 
 
?> 