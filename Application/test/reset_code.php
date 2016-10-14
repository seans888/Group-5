<?php	
	$username = "root";
	$password = "projDb_2016";
	$hostname = "localhost";
	$db = "dbtest";
	
	@mysqli_connect($hostname, $username, $password, $db);
	@mysqli_select_db(mysqli_connect($hostname, $username, $password, $db), "user");
?>

<html>
	<head>
		<title>Forgotten Password - SAMS_TEST</title>
	</head>
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
				margin-top:15px;
			}
			
			input.submit{
				height:40px;
				width:50%;
				margin-top:10px;
				border-radius:30px;
				margin-top:15px;
			}
			
			img.logo{ margin-top:-190px;}
			p{ font-size:12px; margin-top:-7px; color:rgb(7,6,191); }
			label{ font-size:15px; }
	</style>
	<body>
		<center>
			<div class="main">
				<img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px"class="logo"/>
				<p><b>Student Activities Management System<br>Password Reset Page</b></p><br />
				<form action="" method="POST">
					<label>Please enter the Code sent to your email to reset your Password: </label><br />
					<input type="text" name="reset_code" class="txbox"/><br />
					<input type="submit" name="btnNext" value="Continue" class="submit"/>
				</form>
			</div>
		</center>
		
		<?php
			if(isset($_POST['btnNext'])){				
				$reset = $_POST['reset_code'];
				
				$query = "SELECT username FROM user WHERE password_reset_code='$reset'";
				$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
				$row = mysqli_fetch_row($result);
				
				if(mysqli_num_rows($result) > 0){
					header('Location: new_password.php');
				}else{
					echo "Sorry, that password token you entered is not associated with any account. Please request a new code and try again.";
				}
				
				/*$query = "SELECT password_reset_code FROM user WHERE username='$user'";
				$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
				$row = mysqli_fetch_row($result);
				
				if($row[0] == $reset){
					header('Location: new_password.php');
				}else{
					echo "That is not the correct reset code for account '" . $user . "'. Please try again.";
				}*/
			}
		?>
	</body>
</html>