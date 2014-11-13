<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_GET["id"];
   
  $select_patents = mysql_query("SELECT paper_title, date_publication, patent_no, issuing_country as country_code    
                                 FROM publication
					   	         WHERE pub_code = $id
								 AND pub_type = 'PT003'"); 
  
  $list_patents = array();
  while($fetch_patents = mysql_fetch_assoc($select_patents)){
     $list_patents[] = $fetch_patents;
  }
  echo json_encode($list_patents);
?> 