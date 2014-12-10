<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $seminar_title = ucwords($_POST["seminar_title"]);
  $venue_performance = ucwords($_POST["venue_performance"]);
  $start_date = $_POST["start_date"];
  $end_date = $_POST["end_date"];
  $local = $_POST["type"];
  
  $update_seminar = mysql_query("UPDATE publication SET seminar_title = '$seminar_title', venue_performance = '$venue_performance',
                                        start_date = '$start_date', end_date = '$end_date', local = '$local'
							     WHERE pub_code = '$id' AND pub_type ='PT011'"); 
 
?> 