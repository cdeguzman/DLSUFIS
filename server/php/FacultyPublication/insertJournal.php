<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $journal = ucwords($_POST["journal"]);
  $date_publication = $_POST["date_publication"];
  $volume = ucwords($_POST["volume_no"]);
  $issue_no = strtoupper($_POST["issue_no"]);
  $pages = strtoupper($_POST["pages"]);
  $publication_type = $_POST["isi"];
  $local = $_POST["type"];
  $co_author = $POST["co_author"];
  $pub_type = "PT001";
  
  if (is_numeric($volume)){
    $volume_no = $volume;
  } else {
    $volume_no = 0;  
  }  
  
  $insertJournal = "INSERT INTO publication
                   (pub_type, fid, paper_title, journal, date_publication, volume_no, issue_no, pages, publication_type, local, co_author)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$journal', '$date_publication', '$volume_no', '$issue_no', '$pages', '$publication_type', '$local', '$co_author')";
  
  mysql_query($insertJournal);
  
?> 