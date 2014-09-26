<?php
  include("../../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  
  $removeInstitution = "DELETE FROM institution WHERE institution_id = '$id'";
  mysql_query($removeInstitution);
  
?> 