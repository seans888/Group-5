<?php session_start(); ?>
<html>
	<head>
		<title>Forgotten Password - SAMS_TEST</title>
		<style>
			body{
				font-family:arial;
				background-color:rgb(27,61,85);
			}
		
			div.main{
				background-color:rgb(232,192,32);
				border:1px solid black;
				width:30%;
				height:45%;
				padding-top:225px;
				margin-top:80px;
			}
			
			input.txbox{
				height:40px;
				width:75%;
				border-radius:10px;
				font-size:20px;
				padding-left:8px;
				margin-top:5px;
			}
			
			input.submit{
				height:40px;
				width:50%;
				margin-top:10px;
				border-radius:30px;
			}
			
			img.logo{ margin-top:-190px;}
			p{ font-size:12px; margin-top:-7px; color:rgb(7,6,191); }
			label{ font-size:15px; }
		</style>
	</head>
	<body>
		<center>
			<div class="main">
				<img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px"class="logo"/>
				<p><b>Student Activities Management System<br>Password Reset Page</b></p>
				<form action="" method="POST">
					<label>Please enter your username to continue:</label><br /><br />
					<input type="text" name="username" class="txbox"/><br /><br />
					<input type="submit" value="Continue" name="btnSubmit" class="submit"/><br />
					<input type="submit" value="Log In" name="btnLogIn" class="submit"/><br />
				</form>
			</div>
		</center>
		
		<?php
			$username = "root";
			$password = "projDb_2016";
			$hostname = "localhost";
			$db = "dbtest";
			
			@mysqli_connect($hostname, $username, $password);
			@mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);
		
			if(isset($_POST['btnSubmit'])){
				if($_POST['username'] == ""){
					echo "No input detected. Please enter your username and try again.";
				}else{
					$user = $_POST['username'];
					$row;
					
					$s = substr(str_shuffle(str_repeat("0123456789abcdefghijklmnopqrstuvwxyz", 5)), 0, 5);
					$query = "SELECT username FROM user WHERE username='$user'";
					$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
					$msg = "Good Day! Here is the Code you need to reset your password to access the APC-Student Activities Management System. \n
							 Just enter the code in the Password Reset Code field and you're good to go! \n\n\n\t\tCODE: " . $s . ".";
							 
					$header = "From: webmaster@example.com";
					
					if(mysqli_num_rows($result) > 0){
						$query1 = "SELECT email FROM user WHERE username='$user'";
						$result1 = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query1);
						
						if(mysqli_num_rows($result1) > 0){
							$row = mysqli_fetch_row($result1)[0];
							$query2 = "UPDATE user SET password_reset_code='$s' WHERE username='$user'";
							$result2 = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query2);
							mail($row, "Password Reset Code - APC-Student Activities Management System",$msg,$header);
							header('Location: reset_code.php');
						}
					}else{
						echo "Sorry, user with username '" . $user . "' does not exist.";
					}
				}
			}else if(isset($_POST['btnLogIn'])){
				header('Location: login.php');
			}
		?>
	</body>
</html>