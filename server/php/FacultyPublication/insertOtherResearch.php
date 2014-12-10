<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $paper_type = ucwords($_POST["paper_type"]);
  $date_publication = $_POST["date_publication"];
  $local = $_POST["type"];
  $remarks = ucwords($_POST["remarks"]);
  $co_author = $_POST["co_author"];
  $pub_type = "PT010";
  
  $insertOtherResearch = "INSERT INTO publication
                   (pub_type, fid, paper_title, paper_type, date_publication, remarks, local, co_author)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$paper_type', '$date_publication', '$remarks', '$local', '$co_author')";
  
  mysql_query($insertOtherResearch);
  
?> 