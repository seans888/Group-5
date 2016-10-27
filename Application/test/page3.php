<?php
	require 'path.php';
	init_cobalt();

	if($_SESSION['lastname'] == "" ||
		$_SESSION['firstname'] == "" ||
		$_SESSION['midname'] == "" ||
		$_SESSION['gender'] == "" ||
		$_SESSION['bday'] == "" ||
		$_SESSION['contact'] == ""){
			header('Location: signup.php');
		}else if($_SESSION['org'] == ""){
			header('Location: page2.php');
		}else{
			
		}
?>
<html>
	<head>
		<title>Create your new Account - SAMS</title>
		<style>
			body{
				background-color:rgb(27,61,85);
				overflow-x:hidden;
				margin:0;
				padding:0;
				font-family:arial;
			}
			
			.personal, .orgmem, .usrcred{
				display: inline-block;
			}
		
			div.bgovr{
				width:100%;
				min-height:100px;
				padding-top:130px;
				padding-left:320px;
				padding-right:0px;
				position:absolute;
			}
			
			div.main{
				padding-bottom:40px;
				padding-top:40px;
				padding-left:40px;
				padding-right:40px;
				width:50%;
				vertical-align:middle;
				border:1px solid black;
				background-color:rgb(232,192,32);
				margin-bottom:115px;
			}
			
			div.usrcred{
				padding-top:18px;
				padding-bottom:18px;
				padding-left:5px;
				padding-right:5px;
				margin-bottom:60px;
				width:34%;
				background-color:rgb(139,24,27);
				text-align:center;
				color:white;
			}
			
			div.personal, div.orgmem{
				border-style:double;
				border-color:rgb(139,24,27);
				padding-top:15px;
				padding-bottom:15px;
				padding-left:15px;
				padding-right:15px;
				text-align:center;
			}
			
			input.btnext{
				border-radius:15px;
				width:100px;
				height:50px;
			}
			
			div.agreement{
				border:1px solid #ccc;
				overflow:auto;
				margin-top:20px;
				margin-bottom:20px;
				padding-left:20px;
			}
			
			input[type="text"], [type="password"]{
				border-radius:5px;
				height:30px;
				width:50%;
				font-size:15px;
				padding-left:3px;
			}
		</style>
	</head>
	<body>
		<div class="bgovr">
			<div class="main">
				<center><img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px" />
				<h2>APC Student Activities Management System</h2>
				<h3>Sign-up</h3></center>
				<div class="hdinf">
					<div class="personal">
						<label>PERSONAL INFORMATION</label>
					</div>
			
					<div class="orgmem">
						<label>ORG MEMBERSHIP</label>
					</div>
			
					<div class="usrcred">
						<label>LOGIN CREDENTIALS</label>
					</div>
				</div>
			
				<form action="" method="POST">
					<label>E-mail Address: &nbsp;&nbsp;&nbsp;</label>
					<input type="text" name="email" required/><br><br>
					<label>Username: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input type="text" name="username" required/><br><br>
					<label>Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input type="password" name="pswd" required/><br><br>
					<div class="agreement">
						<h4>By clicking "submit" button, You are bound to agree to the registration requirements of the system that you must be a:</h4>
						<ul>
							<li>Bonafide member or officer of an Organization within the Institution</li>
						</ul>
					</div>
					<center><input type="submit" name="next" class="btnext" value="SUBMIT" /></center>
				</form>
				<?php		
					if(isset($_POST['next'])){
						$username = "root";
						$password = "projDb_2016";
						$hostname = "localhost";
						$db = "dbtest";
						
						$email = $_POST['email'];
						$user = $_POST['username'];
						$password = $_POST['pswd'];
						
						//Password Hashing for the new User
						require_once 'password_config.php';
						require '/core/password_crypto.php';
						$phsh = cobalt_password_hash('NEW', $password, $username, $new_salt, $new_iteration, $new_method);
						@mysqli_connect($hostname, $username, $password, $db);
						@mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);
						
						$link = new mysqli($hostname, $username, 'projDb_2016', $db);

						//Adding data to the Person Table in the Database
						$data_con = new data_abstraction;
						$data_con->execute_query("INSERT into PERSON (`last_name`, `first_name`, `middle_name`, `gender`, `birthday`, `contact_num`) VALUES ('{$_SESSION['lastname']}', '{$_SESSION['firstname']}', '{$_SESSION['midname']}', '{$_SESSION['gender']}', '{$_SESSION['bday']}', '{$_SESSION['contact']}')");

						//Getting id values in Organization_has_Person
						$query1 = "SELECT id FROM organization WHERE name = '{$_SESSION['org']}'";
						$result1 = "mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query1)";
						
						$query2 = "SELECT person_id FROM person WHERE last_name = '{$_SESSION['lastname']}' AND first_name = '{$_SESSION['firstname']}'";
						$result2 = "mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query2)";
						
						$query3 = "SELECT id FROM org_position WHERE name = '{$_SESSION['org_pos']}'";
						$result3 = "mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query3)";
						
						$query4 = "SELECT role_id FROM user_role WHERE role = 'Standard User'";
						$result4 = "mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query4)";
						
						$query5 = "SELECT skin_id FROM system_skins WHERE skin_name = 'Cobalt Default'";
						$result5 = "mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query5)";
						
						//Adding data to the Organization_has_Person in the Database
						$data_con = new data_abstraction;						
						$data_con->execute_query("INSERT into ORGANIZATION_HAS_PERSON SET `organization_id` = (SELECT id FROM organization WHERE name = '{$_SESSION['org']}'), `person_id` = (SELECT person_id FROM person WHERE last_name = '{$_SESSION['lastname']}' AND first_name = '{$_SESSION['firstname']}'), `org_position_id` = (SELECT id FROM org_position WHERE name = '{$_SESSION['org_pos']}')");
						
						$data_con = new data_abstraction;
						$data_con->execute_query("INSERT into `USER` (`username`, `password`, `email`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES ('$user', '$phsh', '$email', '$new_salt', '$new_iteration', '$new_method', (SELECT person_id FROM person WHERE last_name = '{$_SESSION['lastname']}' AND first_name = '{$_SESSION['firstname']}'), (SELECT role_id FROM user_role WHERE role = 'Standard User'), (SELECT skin_id FROM system_skins WHERE skin_name = 'Cobalt Default'))");
						
						header('Location: login.php');
					}
				?>
			</div>
		</div>
	</body>
</html>