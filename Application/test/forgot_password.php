<?php require 'path.php'; init_cobalt(); ?>
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
			$password = "";
			$hostname = "localhost";
			$db = "dbtest";
			
			@mysqli_connect($hostname, $username, $password);
			@mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);
		
			if(isset($_POST['btnSubmit'])){
				if($_POST['username'] == ""){
					echo '<center><p style="margin-top:-30px; color:red;"><b>No input detected. Please enter your username and try again.</b></p></center>';
				}else{
					$user = $_POST['username'];
					
					$_SESSION['user'] = $user;
					
					$s = substr(str_shuffle(str_repeat("0123456789abcdefghijklmnopqrstuvwxyz", 5)), 0, 5);
					$query = "SELECT email FROM user WHERE username='$user'";
					$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
					$msg = "<p>Good Day! Here is the Code you need to reset your password to access APC-Student Activities Management System. \n Just enter the code in the Password Reset Code field and you're good to go!</p><br/><div style='width:150px; min-height:30px; border: 1px solid #b6b6b4; padding: 10px; background-color: #e5e4e2; margin-left: 150px;'><b style='font-size:20px;'>CODE: &nbsp;&nbsp;&nbsp;" . $s . "</b></div><br/><p>If you think this email message was sent by mistake, please disregard this message.</p>";

					$header = 'MIME-Version: 1.0' . "\r\n";
					$header .= 'Content-Type: text/html; charset=UTF-8' . "\r\n";
					$header .= "From: Student Activities Management System <apcsams.noreply@gmail.com>";
					
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
						echo '<center><p style="margin-top:-30px; color:red;"><b>Sorry, account for ' . $user . ' does not exist.</b></p></center>';
					}
				}
			}else if(isset($_POST['btnLogIn'])){
				header('Location: login.php');
			}
		?>
	</body>
</html>