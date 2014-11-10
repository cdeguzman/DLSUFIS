<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $paper_title = ucwords($_POST["paper_title"]);
  $date_publication = $_POST["date_publication"];
  $patent_no = strtoupper($_POST["patent_no"]);
  $issuing_country = $_POST["country_code"];
  $pub_type = "PT003";
  
  $insertPatents = "INSERT INTO publication
                   (pub_type, fid, paper_title, date_publication, patent_no, issuing_country)
                   VALUES 
				   ('$pub_type', '$fid', '$paper_title', '$date_publication', '$patent_no', '$issuing_country')";
  
  mysql_query($insertPatents);
  
?> 