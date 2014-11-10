<?php
  include("../connect.php");
  $iyear = date("Y");
  $syear = array("y1" => $iyear, "y2" => "2013", "y3" => "2012");
  
  /*foreach($syear as $ylabel => $yearvalue ){
    $disp_year[] = $ylabel => $yearvalue;
  }
  */
  echo json_encode($syear);
?>