<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
      $select_password = mysql_query("SELECT fid as id, password 
                                  FROM faculty
								  WHERE fid = '$id'");
      $list_password = array();
      while($fetch_password = mysql_fetch_assoc($select_password)){
          $list_password[] = $fetch_password;
      }
      echo json_encode($list_password);
?> 