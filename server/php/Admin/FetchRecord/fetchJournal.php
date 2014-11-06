<?php
  include("../../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_journal = mysql_query("SELECT journal_title, journal_type, journal_publication FROM journals
							      WHERE journal_id = '$id'"); 
  
   $list_journal = array();
      while($fetch_journal = mysql_fetch_assoc($select_journal)){
          $list_journal[] = $fetch_journal;
      }
      echo json_encode($list_journal);
  
  
?> 