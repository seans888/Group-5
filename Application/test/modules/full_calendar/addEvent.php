<?php

// Connecting to the database
require_once('bdd.php');
//echo $_POST['title'];
if (isset($_POST['title']) && isset($_POST['description']) && isset($_POST['venue']) && isset($_POST['start']) && isset($_POST['end']) && isset($_POST['color'])){

	$title = $_POST['title'];
	$description = $_POST['description'];
	$venue = $_POST['venue'];
	$start = $_POST['start'];
	$end = $_POST['end'];
	$color = $_POST['color'];

	/*$link = mysqli_connect("localhost", "root", "", "dbtest");

	$sql = mysqli_query($link, "SELECT person_id FROM person WHERE last_name = '{$_SESSION['last_name']}' AND first_name = '{$_SESSION['first_name']}'");
	$fetchSql = mysqli_fetch_assoc($sql);

	$sql = mysqli_query($link, "SELECT organization_id FROM organization_has_person WHERE person_id = '{$fetchSql['person_id']}'");
	$fetchSql = mysqli_fetch_assoc($sql);*/

	$sql = "INSERT INTO calendar_event(title, description, venue, start, end, color) values ('$title','$description','$venue', '$start', '$end', '$color')";
	//$req = $bdd->prepare($sql);
	//$req->execute();

	echo $sql;

	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Error prepare');
	}
	$sth = $query->execute();
	if ($sth == false) {
	 print_r($query->errorInfo());
	 die ('Error execute');
	}

}
header('Location: '.$_SERVER['HTTP_REFERER']);


?>
