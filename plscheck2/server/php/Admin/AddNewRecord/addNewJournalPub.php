<?php
  include("../../connect.php");
  $journalpub_type = ucwords($_POST["journalpub_type"]);
 
  $insertNewJournalPub = "INSERT INTO journal_publication
                     (journalpub_type) VALUES 
					 ('$journalpub_type')";

  mysql_query($insertNewJournalPub);
  
?> 