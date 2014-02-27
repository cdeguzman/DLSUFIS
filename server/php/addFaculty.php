<html>
<head><title>CCS - Faculty Information System</title></head>
<body>
<h2> Add New Faculty Record </h2>
<hr>
<form action='<?php// echo $_SERVER["PHP_SELF"];?>' method='post'>
<table border='1' bgcolor='#ccccff'>
<tr>
 <td>ID Number : </td> <td colspan='5'> <input type='text' name='id' size='10'></td>
</tr>
<tr>
 <td>First Name : </td> <td> <input type='text' name='fname' size='30'></td>
 <td>Last Name : </td><td> <input type='text' name='lname' size='30'></td>
 <td>Middle Name: </td><td> <input type='text' name='mname' size='30'></td>
</tr>
<tr>
  <td>College/School/Unit : </td>
  <td colspan='5'>
     <select name='College'>
      <option SELECTED> -- </option>
       <?php
         $dbconnect = mysql_connect("localhost", "root", "") or die("Unable to Connect". mysql_error());
         $use = mysql_select_db(ccsfif);
         $select_unit = mysql_query("SELECT unit_code, unit_title FROM unit ORDER BY unit_code");
         while($fetch_unit = mysql_fetch_array($select_unit))
          {
            echo "<option value='$fetch_unit[unit_code]'>$fetch_unit[unit_title]</option>";
          }
       ?>
     </select> 
  </td>   
</tr>  
<tr>
<td>Department/Office : </td> 
<td colspan='5'>
  <select name='department'>
    <option SELECTED> -- </option>
      <?php
        $select_dept = mysql_query("SELECT dept_code, dept_name FROM department ORDER BY dept_code");
         while($fetch_dept = mysql_fetch_array($select_dept))
          {
            echo "<option value='$fetch_dept[dept_code]'>$fetch_dept[dept_name]</option>";
          }
      ?>
  </select>    
</td>
</tr>
<tr>
<td>Rank : </td>
<td colspan='5'>
  <select name='rank'>
    <option SELECTED> -- </option>
      <?php
        $select_rank = mysql_query("SELECT rank_code, rank_title FROM rank ORDER BY rank_code");
         while($fetch_rank = mysql_fetch_array($select_rank))
          {
            echo "<option value='$fetch_rank[rank_code]'>$fetch_rank[rank_title]</option>";
          }
      ?>
  </select>
</td>
<tr>
<td>Date Submitted: </td>
<td colspan='5'>
  <?php
    echo "<input type='text' name='date_submitted' size='30' value='". date('d F Y'). "'>";
	//print strftime('%c');
  ?> 
</td>
</tr>
</table>

<h3>ACADEMIC BACKGROUND</h3>
<table border='1'>
<tr>
<td>Degree Earned</td>
<td>Title of Degree</td>
<td>Area of Specialization</td>
<td>Year Obtained</td>
<td>Educational Institution</td>
<td>Location (City, Country)</td>
<td>Title of Degree</td>
<td>S.O. Number</td>
</tr>
<?php
  for($loop=1; $loop<=5; $loop++){
?>
<tr>
<td><select name='degree'>
<option value='Doctorate'>Doctorate</option>
<option value='Masters'>Masters</option>
<option Value='Bachelor'>Bachelor</option>
</select>
</td>
<td>
   <select name='title_degree'>
    <option value='MSCS'>Master of Science in Computer Science</option>
	<option value='MSIT'>Master of Science in Information Technology</option>
	<option value='MSCpE'>Master of Science in Computer Engineering</option>
	<option value='MSIS'>Master of Science in Information System</option>
   </select>
</td>
<td>
 <input type='text' name='specialization' size='30' />
</td>
<td>
 <select name='year_obt'>
 <?php
   $year = "1985";
  $start_date = date('Y');
   for($y=$start_date; $y>=$year; $y--){
    echo "<option value=$y>$y</option>";
   }
 ?>
 </select>
</td>
<td>
  <input type='text' name='institution' size='20' />
</td>
<td>
  <input type='text' name='location' size='20' />
</td>
<td>
  <input type='text' name='title' size='20' />
</td>
<td>
  <input type='text' name='SO' size='20' />
</td>
</tr>
<?php
 }
?>
</table>
<!-- </tr><tr><td colspan='2'><input type='submit' value='Save'> -->

<?php 
  /*
  $dbconnect = mysql_connect("localhost", "root", "") 
  or die("Unable to Connect". mysql_error());
  
  $use = mysql_select_db(dbstudent);
  
  $id = $_POST["id"];
  $name = $_POST["name"];
  $gender = $_POST["gender"];
  $bday = $_POST["Year"].$_POST["Month"].$_POST["Day"];
  

  
  if(empty($id)) {
    echo "<font color='blue'><b>Fill Up Now!</b></font></td></tr>";
  } else {
    $insert = "INSERT INTO tblStudent VALUES ('$id', '$name', '$gender', '$bday')";
    mysql_query($insert);
       if($insert) {
    	echo "<font color='blue'><b>Records has been saved. Check your database.</b></font></td></tr>";
        $id='';
	$u = 1;    }
  }

  $query = mysql_query("SELECT $id FROM tblStudent"); 
    if($u!=1){
     if($query) {
      echo " <font color='blue'><b>Record already exist!</b></font> </td></tr>";
     } 
    }

   echo "</table>";
   echo "<br /><br />";
   echo "<b>List of Students: <b><br />";
   $display = mysql_query("SELECT * FROM tblStudent ORDER BY name");
   
   echo "<table border='1' width='40%' bordercolor='red'><tr><th>ID</th><th>Name</th><th>Gender</th><th>Birth Date</th></tr>";
   while($row = mysql_fetch_array($display)) {
     echo "<tr><td>". $row["id"] . "</td>";
     echo "<td>". $row["name"]. "</td>";
     echo "<td align='center'>". $row["gender"]. "</td>";
     echo "<td align='center'>". $row["bdate"]. "</td></tr>";
   }
  echo "</table>";
mysql_close($dbconnect); */
?>
<br/>
<a href='newmain.php'> Back </a>
</form>
</body>
</html>