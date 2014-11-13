<?php
  include("../connect.php");
  //$fid = $_POST["fid"];
  $id = $_POST["id"];
  $flname = ucwords($_POST["flname"]);
  $ffname = ucwords($_POST["ffname"]);
  $fmname = ucwords($_POST["fmname"]);
  $rank = $_POST["rank"];
  $unit_code = $_POST["unit_code"];
  $dept_code = $_POST["dept_code"];
  $class = $_POST["class"];
  
  $update_facInfo = mysql_query("UPDATE faculty SET flname='$flname', ffname='$ffname', fmname='$fmname', rank='$rank',
                                        unit_code='$unit_code', dept='$dept_code', classification='$class'   
                                 WHERE fid = '$id'"); 
 
?> 