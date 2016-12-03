<html>
	<head>
		<title>Error - Student Activities Management System</title>
		<style>
			body{
				background-color:rgb(27,61,85);
				overflow:hidden;
				margin:0;
				padding:0;
				font-family:arial;
			}
		
			div.bgovr{
				width:100%;
				min-height:100px;
				padding-top:100px;
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
				background-color:rgb(232,192,32);;
				margin-bottom:130px;
			}
			
			h4, h5{ color:red; }
		</style>
	</head>
	<body>
		<?php
			require 'core/global_config.php';
			
			$hostname = DEFAULT_DB_HOST;
			$username = DEFAULT_DB_USER;
			$password = DEFAULT_DB_PASS;
			$db = DEFAULT_DB_USE;
			
			@mysqli_connect($hostname, $username, $password, $db);
			
			if(mysqli_connect_error()){
				echo '<div class="bgovr">';
					echo '<div class="main">';
						echo '<center><img src="images/sao.png" alt="SAO_Logo" width="200px" height="200px"/>';
						echo '<h2>APC Student Activities Management System</h2>';
						echo '<h4>Error!</h4>';
						echo '<h5>Sorry, there was an error occurred while connecting to the Database. This may have caused by server overload or any other causes. <br />Please contact the System Administrator to address this problem to continue using the system. Thank you.</h5>';
					echo '</div>';
				echo '</div>';
			}else{
				header('Location: login.php');
			}
		?>
	</body>
</html>