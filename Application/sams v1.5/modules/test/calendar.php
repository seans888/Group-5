<?php
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$dbname = "sao-dlms";
	$error = "Cannot connect to databasae, Please try again later...";
	
	mysqli_connect($hostname,$username,$password) or die ($error);
	mysqli_select_db (mysqli_connect($hostname,$username,$password),$dbname) or die ($error);
?>
<html>
	<head>
		<script>
		function goLastMonth(month, year){
		if(month == 1) {
		--year;
		month = 13;
		}
		--month
		var monthstring= ""+month+"";
		var monthlength = monthstring.length;
		if(monthlength <=1){
		monthstring = "0" + monthstring;
		}
		document.location.href ="<?php $_SERVER['PHP_SELF'];?>?month="+monthstring+"&year="+year;
		}
		function goNextMonth(month, year){
		if(month == 12) {
		++year;
		month = 0;
		}
		++month
		var monthstring= ""+month+"";
		var monthlength = monthstring.length;
		if(monthlength <=1){
		monthstring = "0" + monthstring;
		}
		document.location.href ="<?php $_SERVER['PHP_SELF'];?>?month="+monthstring+"&year="+year;
		}
		</script>
		<style>
		.today{
		background-color: #00ff00;
		}
		.event{
		background-color: #ffa31a;
		}
</style>
	</head>

<body bgcolor="#E6E6FA">
<?php
if (isset($_GET['day'])){
$day = $_GET['day'];
} else {
$day = date("j");
}
if(isset($_GET['month'])){
$month = $_GET['month'];
} else {
$month = date("n");
}
if(isset($_GET['year'])){
$year = $_GET['year'];
}else{
$year = date("Y");
}
$currentTimeStamp = strtotime( "$day-$month-$year");
$monthName = date("F", $currentTimeStamp);
$numDays = date("t", $currentTimeStamp);
$counter = 0;
?>

<?php
if(isset($_GET['add'])){
$title =$_POST['txttitle'];
$detail =$_POST['txtdetail'];
$eventdate = $month."/".$day."/".$year;
$sqlinsert = "insert into calevent(calEvent_Name,calEvent_Detail,calEvent_Date,calDate_Added) values ('".$title."','".$detail."','".$eventdate."',now())";
$resultinginsert = mysqli_query(mysqli_connect($hostname,$username,$password,$dbname),$sqlinsert);
if($resultinginsert ){
echo "Event was successfully Added...";
}else{
echo "Event Failed to be Added....";
}
}
?>

<table border='1' style='border-collapse:collapse;' align="center">
<tr>
<td><input style='width:50px;' type='button' value='<'name='previousbutton' onclick ="goLastMonth(<?php echo $month.",".$year;?>)"></td>
<td colspan='5'><?php echo $monthName.", ".$year; ?></td>
<td><input style='width:50px;' type='button' value='>'name='nextbutton' onclick ="goNextMonth(<?php echo $month.",".$year;?>)"></td>
</tr>
<tr>
<td width='100px'>Sunday</td>
<td width='100px'>Monday</td>
<td width='100px'>Tueday</td>
<td width='100px'>Wednesday</td>
<td width='100px'>Thursday</td>
<td width='100px'>Friday</td>
<td width='100px'>Saturday</td>
</tr>
<?php
echo "<tr>";
for($i = 1; $i < $numDays+1; $i++, $counter++){
$timeStamp = strtotime("$year-$month-$i");
if($i == 1) {
 $firstDay = date("w", $timeStamp);
 for($j = 0; $j < $firstDay; $j++, $counter++) {
 echo "<td> </td>";
 }
}
if($counter % 7 == 0) {
echo"</tr><tr>";
}
$monthstring = $month;
$monthlength = strlen($monthstring);
$daystring = $i;
$daylength = strlen($daystring);
if($monthlength <= 1){
$monthstring = "0".$monthstring;
}
if($daylength <=1){
$daystring = "0".$daystring;
}
$todaysDate = date("m/d/Y");
$dateToCompare = $monthstring. '/' . $daystring. '/' . $year;
echo "<td align='center' ";
if ($todaysDate == $dateToCompare){
echo "class ='today'";
} else{
$sqlCount = "select * from calevent where calEvent_Date='".$dateToCompare."'";
$noOfEvent = mysqli_num_rows(mysqli_query(mysqli_connect($hostname,$username,$password,$dbname),$sqlCount));
if($noOfEvent >= 1){
echo "class='event'";
}
}
echo "><a href='".$_SERVER['PHP_SELF']."?month=".$monthstring."&day=".$daystring."&year=".$year."&v=true'>".$i."</a></td>";
}
echo "</tr>";
?>
</table>
<?php
if(isset($_GET['v'])) {
echo "<hr>";
echo "<a href='".$_SERVER['PHP_SELF']."?month=".$month."&day=".$day."&year=".$year."&v=true&f=true'>Add Event</a>";
if(isset($_GET['f'])) {
include("eventform.php");
/*}
$sqlEvent = "select * FROM eventcalendar where eventDate='".$month."/".$day."/".$year."'";
$resultEvents = mysql_query($sqlEvent);
echo "<hr>";
while ($events = mysql_fetch_array($resultEvents)){
echo "Title: ".$events['Title']."<br>";
echo "Detail: ".$events['Detail']."<br>";*/
}
}
?>
</body>
</html> 
