<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeJournalPub = "DELETE FROM journal_publication WHERE journalpub_id = '$id'";
  mysql_query($removeJournalPub);
  
?> 