<?php
  include("../../connect.php");
  $unit_code = strtoupper($_POST["unit_code"]);
  $unit_title = ucwords($_POST["unit_title"]);
  
  $insertNewUnit = "INSERT INTO unit
                  (unit_code, unit_title)
                  VALUES 
				  ('$unit_code', '$unit_title')";
  
  mysql_query($insertNewUnit);
  
?> 