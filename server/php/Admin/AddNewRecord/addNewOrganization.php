<?php
  include("../../connect.php");
  $journal_title = ucwords($_POST["journal_title"]);
  $journal_type = ucwords($_POST["journal_type"]); 
  $journal_publication = ucwords($_POST["journal_publication"]); 
  
  $insertNewJournal = "INSERT INTO journals
                     (journal_title, journal_type, journal_publication) VALUES 
					 ('$journal_title', '$journal_type', '$journal_publication')";

   mysql_query($insertNewJournal);
  
?> 