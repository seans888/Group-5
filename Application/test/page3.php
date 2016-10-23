<?php
	require 'path.php';
	init_cobalt();

	if($_SESSION['lastname'] == "" ||
		$_SESSION['firstname'] == "" ||
		$_SESSION['midname'] == "" ||
		$_SESSION['gender'] == "" ||
		$_SESSION['bday'] == "" ||
		$_SESSION['contact_num' == ""]){
			header('Location: signup.php');
		}else if($_SESSION['org'] == "" ||
				$_SESSION['committee'] == ""){
			header('Location: page2.php');
		}else{
			echo $_SESSION['org'];
			echo $_SESSION['committee'];
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
					<label>E-Mail Address: </label>
					<input type="text" name="email" required/><br><br>
					<label>Username: </label>
					<input type="text" name="username" required/><br><br>
					<label>Password: </label>
					<input type="password" name="pswd" required/><br><br>
					<div class="agreement">
						<h4>By clicking "submit" button, You are bound to agree to the registration requirements of the system that you must be a:</h4>
						<ul>
							<li>Bonafide member or officer of an Organization within the Institution</li>
						</ul>
					</div>
					<center><input type="submit" name="next" class="btnext" value="SUBMIT" /></center>
				</form>
			</div>
		</div>
		
		<?php		
			if(isset($_POST['next'])){
				$username = "root";
				$password = "projDb_2016";
				$hostname = "localhost";
				$db = "dbtest";
				
				$email = $_POST['email'];
				$user = $_POST['username'];
				$password = $_POST['pswd'];
				
				$salt = uniqid(mt_rand(), true);
				//$phsh = 
				//$real_pass = '$2y$12$' + $salt + ;
				@mysqli_connect($hostname, $username, $password, $db);
				
				$query = "INSERT INTO person(last_name, first_name, middle_name, gender, birthday, contact_num, org_position)
							VALUES ('{$_SESSION['lastname']}', '{$_SESSION['firstname']}', '{$_SESSION['midname']}', '{$_SESSION['gender']}',
							'{$_SESSION['bday']}', '{$_SESSION['contact_num']}')";
				@mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
				
				header('Location: signup_success.php');
			}
		?>
	</body>
</html>