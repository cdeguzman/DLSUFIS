<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeJournal = "DELETE FROM journals WHERE journal_id = '$id'";
  mysql_query($removeJournal);
  
?> 