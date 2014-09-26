<?php
  include("../../connect.php");
  $position_id = strtoupper($_POST["position_id"]);
  $position_title = ucwords($_POST["position_title"]);
  
  $insertNewPosition = "INSERT INTO position
                  (position_id, position_title)
                  VALUES 
				  ('$position_id', '$position_title')";
  
  mysql_query($insertNewPosition);
  
?> 