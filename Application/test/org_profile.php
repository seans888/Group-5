<?php
	require 'path.php';
	init_cobalt();
	
	if(isset($_SESSION['logged']) && $_SESSION['logged'] == "Logged"){
		$hostname="localhost";
		$username = "root";
		$password = "projDb_2016";
		$db = "dbtest";
		
		$dir = 'c:/xampp/tmp/uploads';
		
		@mysqli_connect($hostname, $username, $password, $db);
	}else{
		header('Location: login.php');
	}
?>
<html>
	<head>
		<?php
			$query = "SELECT name FROM organization WHERE id = (SELECT organization_id FROM organization_has_person WHERE person_id = (SELECT person_id FROM person WHERE last_name = '{$_SESSION['last_name']}' AND first_name = '{$_SESSION['first_name']}'))";
			$resultName = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
			$rowName = mysqli_fetch_assoc($resultName);
			echo "<title>" . $rowName['name'] . " | Organizational Profile</title>";
		?>
	</head>
	<body>
		<?php
			$query = "SELECT id FROM organization WHERE name = (SELECT name FROM organization WHERE id = (SELECT organization_id FROM organization_has_person WHERE person_id = (SELECT person_id FROM person WHERE last_name = '{$_SESSION['last_name']}' AND first_name = '{$_SESSION['first_name']}')))";
			$resultId = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
			$rowId = mysqli_fetch_assoc($resultId);
			
			echo '<img src="' . $dir . '/' . "org" . $rowId['id'] . '" width="100px" height="100px"/>';
			echo "<br /><br />";
			echo "<p><b>" . $rowName['name'] . "</b></p>";
			echo "<br /><br />";
			
			$query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'President') AND organization_id = '{$rowId['id']}')";
			$resultPres = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
			$rowPres = mysqli_fetch_assoc($resultPres);
			
			$query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'Vice President for Internal Affairs') AND organization_id = '{$rowId['id']}')";
			$resultVpi = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
			$rowVpi = mysqli_fetch_assoc($resultVpi);
			
			$query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'Vice President for External Affairs') AND organization_id = '{$rowId['id']}')";
			$resultVpe = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
			$rowVpe = mysqli_fetch_assoc($resultVpe);
			
			echo "<p>Organizational Heads</p><br />";
			echo "<p>President: " . $rowPres['last_name'] . ", " . $rowPres['first_name'] . "</p><br />";
			echo "<p>Vice President for Internal Affairs: " . $rowVpi['last_name'] . ", " . $rowVpi['first_name'] . "</p><br />";
			echo "<p>Vice President for External Affairs: " . $rowVpe['last_name'] . ", " . $rowVpe['first_name'] . "</p><br />";	
		?>
	</body>
</html>