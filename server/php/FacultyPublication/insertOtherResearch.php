<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $paper_type = ucwords($_POST["paper_type"]);
  $date_publication = $_POST["date_publication"];
  $remarks = ucwords($_POST["remarks"]);
  $pub_type = "PT010";
  
  $insertOtherResearch = "INSERT INTO publication
                   (pub_type, fid, paper_title, paper_type, date_publication, remarks)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$paper_type', '$date_publication', '$remarks')";
  
  mysql_query($insertOtherResearch);
  
?> 