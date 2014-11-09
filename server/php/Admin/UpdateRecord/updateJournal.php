<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $journal_title = ucwords($_POST["journal_title"]);
  $journal_type = ucwords($_POST["journal_type"]); 
  $journal_publication = ucwords($_POST["journal_publication"]); 
  $id = $_GET["id"];
   
  $update_journal = mysql_query("UPDATE journals SET journal_title = '$journal_title', journal_type = '$journal_type',
                                journal_publication = '$journal_publication' 
							    WHERE journal_id = '$id'");  
?> 