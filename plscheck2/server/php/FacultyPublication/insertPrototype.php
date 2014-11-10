<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $journal_id = $_POST["journal_id"];
  $date_publication = $_POST["date_publication"];
  $volume = $_POST["volume_no"];
  $issue_no = strtoupper($_POST["issue_no"]);
  $pages = strtoupper($_POST["pages"]);
  $isbn = strtoupper($_POST["isbn"]);
  $pub_type = "PT002";
  
  if (is_numeric($volume)){
    $volume_no = $volume;
  } else {
    $volume_no = 0;  
  }  
  
  $insertPrototype = "INSERT INTO publication
                   (pub_type, fid, paper_title, journal_id, date_publication, volume_no, issue_no, pages, isbn)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$journal_id', '$date_publication', '$volume_no', '$issue_no', '$pages', '$isbn')";
  
  mysql_query($insertPrototype);
  
?> 