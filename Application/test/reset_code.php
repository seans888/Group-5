<?php	
	$username = "root";
	$password = "";
	$hostname = "localhost";
	$db = "dbtest";
	
	@mysqli_connect($hostname, $username, $password, $db);
	@mysqli_select_db(mysqli_connect($hostname, $username, $password, $db), "user");
	
	require 'path.php';
	init_cobalt();

    if(isset($_SESSION['logged']) && $_SESSION['logged'] == "Logged"){
        redirect('start.php');
    }else{

    }
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
				
				$query = "SELECT password_reset_code FROM user WHERE username='{$_SESSION['user']}'";
				$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
				$row = mysqli_fetch_row($result);
				
				if($row[0] == $reset){
					header('Location: new_password.php');
				}else{
					echo "<p style='color:red; text-align:center; margin-top:-50px;'><b>Invalid reset code for account '" . $_SESSION['user'] . "'. Please try again.</b></p>";
				}
			}
		?>
	</body>
</html>