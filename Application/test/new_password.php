<?php
	require 'path.php';
	init_cobalt();
	
	$username = "root";
	$password = "";
	$hostname = "localhost";
	$db = "dbtest";
	
	@mysqli_connect($hostname, $username, $password, $db);
	@mysqli_select_db(mysqli_connect($hostname, $username, $password, $db), $db);
	
	$query = "UPDATE user SET password_reset_code = '' WHERE username = '{$_SESSION['user']}'";
	@mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
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
			p.err{
				font-size:10sp;
				margin-top:-50px;
			}
	</style>
	<body>
		<center>
			<div class="main">
				<img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px"class="logo"/>
				<p><b>Student Activities Management System<br>Password Reset Page</b></p>
				<form action="" method="POST">
					<label>Please enter your new password: </label><br /><br />
					<input type="password" name="new_password" class="txbox" placeholder="New Password" required="required"/><br /><br />
					<input type="password" name="confirm_password" class="txbox" placeholder="Confirm Password" required="required"/><br />
					<input type="submit" name="btnContinue" value="Continue" class="submit"/>
				</form>
			</div>
		</center>
		
		<?php
			if(isset($_POST['btnContinue'])){
				$password = $_POST['new_password'];
				$confirm = $_POST['confirm_password'];
				$username = $_SESSION['user'];
				
				if($password != $confirm){
					echo '<p class="err"><font size="2" color="red"><b><center>The passwords did not match. Please try again.</b></font></p></center>';
				}else{
					require 'core/password_crypto.php';
					
					$passhash = cobalt_password_hash('NEW', $password, $username, $new_salt, $new_iteration, $new_method);
					
					$salt = $new_salt;
					$iteration = $new_iteration;
					$method = $new_method;
					
					$data_con = new data_abstraction;
					$data_con->set_query_type('UPDATE');
					$data_con->set_table('user');
					$data_con->set_update("`password`='$passhash', `salt`='$new_salt', `iteration`='$new_iteration', `method`='$new_method'");
					$data_con->set_where("username='" . $_SESSION['user'] . "'");
					$data_con->make_query();
					
					session_destroy();
					header('Location: login.php');
				}
			}
		?>
	</body>
</html>