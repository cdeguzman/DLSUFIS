<?php
  include("../connect.php");
  $fid = $_POST["fid"];
  $id = $_POST["id"];
  $paper_title = ucwords($_POST["paper_title"]);
  $date_publication = $_POST["date_publication"];
  $patent_no = strtoupper($_POST["patent_no"]);
  $issuing_country = $_POST["country_code"];
  
  $update_patents = mysql_query("UPDATE publication SET paper_title = '$paper_title', 
                                        date_publication = '$date_publication', patent_no = '$patent_no', 
										issuing_country = '$issuing_country' 
                                WHERE pub_code = '$id' AND pub_type ='PT003'"); 
 
?> 