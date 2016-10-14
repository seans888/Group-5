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
				height:100%;
				padding-top:130px;
				padding-left:320px;
				padding-right:0px;
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
				min-height:100px;
			}
			
			div.orgmem{
				padding-top:18px;
				padding-bottom:18px;
				padding-left:0px;
				padding-right:0px;
				margin-bottom:60px;
				width:33%;
				background-color:rgb(139,24,27);
				text-align:center;
				color:white;
			}
			
			div.personal, div.usrcred{
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
				margin-top:25px;
			}
			
			select{
				height:5%;
				width:80%;
				border-radius:5px;
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
			
				<form action="page3.php" method="POST">
					<label>Your Organizations</label><br><hr />
					<select>
						<?php
							$username = "root";
							$password = "projDb_2016";
							$hostname = "localhost";
							$db = "dbtest";
							
							@mysqli_connect($hostname, $username, $password);
							@mysqli_select_db(mysqli_connect($hostname, $username, $password), $db);
							
							$query = "SELECT name FROM organization";
							$result = mysqli_query(mysqli_connect($hostname, $username, $password, $db), $query);
							$row = mysqli_fetch_row($result);
							$count = mysqli_num_rows($result);
							
							for($i = 0; $i < mysqli_num_rows($result); $i++){
								echo '<option>' . $row[$i] . '</option>';
							}
						?>
					</select>
					<center><input type="submit" name="next" class="btnext" value="NEXT >" /></center>
				</form>
			</div>
		</div>
	</body>
</html>