<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $journal_id = $_POST["journal_id"];
  $date_publication = $_POST["date_publication"];
  $volume = $_POST["volume_no"];
  $issue_no = strtoupper($_POST["issue_no"]);
  $pages = strtoupper($_POST["pages"]);
  $isbn = strtoupper($_POST["isbn"]);
  
  if (is_numeric($volume)){
    $volume_no = $volume;
  } else {
    $volume_no = 0;  
  }  
  
  $update_prototype = mysql_query("UPDATE publication SET paper_title = '$paper_title', 
                                          journal_id = '$journal_id', date_publication = '$date_publication', 
										  volume_no = '$volume', issue_no = '$issue_no', pages = '$pages', isbn = '$isbn' 
                                WHERE pub_code = '$id' AND pub_type ='PT002'"); 
 
?> 