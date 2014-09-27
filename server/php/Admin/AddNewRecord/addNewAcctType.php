<?php
  include("../../connect.php");
  $account_id = strtoupper($_POST["account_id"]);
  $account_role = ucwords($_POST["account_role"]); 
  
  $insertNewAcctType = "INSERT INTO account
                  (account_id, account_role)
                  VALUES 
				  ('$account_id', '$account_role')";
  
  mysql_query($insertNewAcctType);
  
?> 