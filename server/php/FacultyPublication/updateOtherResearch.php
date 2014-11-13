<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $paper_type = ucwords($_POST["paper_type"]);
  $date_publication = $_POST["date_publication"];
  $remarks = ucwords($_POST["remarks"]);
  
  $update_otherResearch = mysql_query("UPDATE publication SET paper_title = '$paper_title', paper_type = '$paper_type', 
                                              date_publication = '$date_publication', remarks = '$remarks'
							           WHERE pub_code = '$id' AND pub_type ='PT010'"); 
 
?> 