<?php
  include("../../connect.php");
  $rank_code = strtoupper($_POST["rank_code"]);
  $rank_title = ucwords($_POST["rank_title"]);
  
  $insertNewRank= "INSERT INTO rank
                  (rank_code, rank_title)
                  VALUES 
				  ('$rank_code', '$rank_title')";
  
  mysql_query($insertNewRank);
  
?> 