<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $journal = ucwords($_POST["journal"]);
  $date_publication = $_POST["date_publication"];
  $volume = ucwords($_POST["volume_no"]);
  $issue_no = strtoupper($_POST["issue_no"]);
  $pages = strtoupper($_POST["pages"]);
  $publication_type = $_POST["isi"];
  $local = $_POST["type"];
  $co_author = $_POST["co_author"];
  
  if (is_numeric($volume)){
    $volume_no = $volume;
  } else {
    $volume_no = 0;  
  } 
  
  $update_journal = mysql_query("UPDATE publication SET paper_title = '$paper_title', 
                                       journal = '$journal', date_publication = '$date_publication', 
									   volume_no = '$volume', issue_no = '$issue_no', pages = '$pages', 
									   publication_type = '$publication_type', local = '$local', co_author ='$co_author' 
                                WHERE pub_code = '$id' AND pub_type ='PT001'"); 
 
?> 