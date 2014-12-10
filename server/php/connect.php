<?php
  $dbconnect = mysql_connect("localhost", "root", "") or die("Unable to Connect". mysql_error());
  mysql_select_db("ccsfif", $dbconnect);
  
  $year = 1980;
  $start_date = date('Y');
  $end_date = date('Y');
  
?>
