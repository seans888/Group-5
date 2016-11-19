<form name='eventform' method='POST' action="<?php $_SERVER['PHP_SELF']; ?>?month=<?php echo $month;?>&day=<?php echo $day;?>&year=<?php echo $year; ?>&v=true&add=true">
<table width='400px' border='0'>
<tr>
<td width='150px'>Title</td>
<td width='250px'><input type='text' name='txttitle'</td>
</tr>
<tr>
<td width='150px'>Detail</td>
<td width='250px'><textarea name='txtdetail'></textarea></td>
</tr>
<tr>
<td width='150px'>Venue</td>
<td width='250px'><textarea name='txtvenue'></textarea></td>
</tr>
<tr>
<td width='150px'>Time</td>
<td>
<select name='txteventtime'>
  <option value="7:30am">7:30am</option>
  <option value="8:00am">8:00am</option>
  <option value="8:30am">8:30am</option>
  <option value="9:00am">9:00am</option>
  <option value="7:30am">9:30am</option>
  <option value="8:00am">10:00am</option>
  <option value="8:30am">10:30am</option>
  <option value="9:00am">11:00am</option>
  <option value="7:30am">11:30am</option>
  <option value="8:00am">12:00pm</option>
  <option value="8:30am">12:30pm</option>
  <option value="9:00am">1:00pm</option>
  <option value="8:30am">1:30pm</option>
  <option value="8:00am">2:00pm</option>
  <option value="8:30am">2:30pm</option>
  <option value="8:00am">3:00pm</option>
  <option value="8:30am">3:30pm</option>
  <option value="8:00am">4:00pm</option>
  <option value="8:30am">4:30pm</option>
  <option value="8:00am">5:00pm</option>
  <option value="8:30am">5:30pm</option>
  <option value="8:00am">6:00pm</option>
  <option value="8:30am">6:30pm</option>
  <option value="8:00am">7:00pm</option>
  <option value="8:30am">7:30pm</option>
  <option value="8:00am">8:00pm</option>
  <option value="8:30am">8:30pm</option>
  <option value="8:00am">9:00pm</option>
  <option value="8:30am">9:30pm</option>
  <option value="8:00am">10:00pm</option>
  <option value="8:30am">10:30pm</option>
  <option value="8:00am">11:00pm</option>
  <option value="8:30am">11:30pm</option>
</select>
</td>
</tr>
<tr>
<td colspan='2' align='center'><input type='submit' name='btnadd' value='Add Event'></td>
</tr>
</table>
</form>