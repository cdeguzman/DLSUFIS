<?php
  include("../../connect.php");
  //$fid = $_GET["fid"];
  $journalpub_type = ucwords($_POST["journalpub_type"]);
  $id = $_GET["id"];
   
  $update_journalPub = mysql_query("UPDATE journal_publication SET journalpub_type = '$journalpub_type'
                                    WHERE journalpub_id = '$id'");  
?> 