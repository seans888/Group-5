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
				background-color:rgb(232,192,32);;
				margin-bottom:130px;
			}
			
			div.personal{
				padding-top:18px;
				padding-bottom:18px;
				padding-left:5px;
				padding-right:5px;
				margin-bottom:60px;
				width:39%;
				background-color:rgb(139,24,27);
				color:white;
				text-align:center;
			}
			
			div.orgmem, div.usrcred{
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
			
			input[type="text"]{
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
				<center><img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px"/>
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
			
				<form action="page2.php" method="POST">
					<label>Lastname: </label>
					<input type="text" name="last" required/><br><br>
					<label>Firstname: </label>
					<input type="text" name="first" required/><br><br>
					<label>Middle Name: </label>
					<input type="text" name="middle" /><br><br>
					<label>Gender: </label>
						<input type="radio" name="gender" value="male">Male
						<input type="radio" name="gender" value="female">Female<br><br>
					<label>Birthdate: </label>
					<input type="date" name="bday" required/><br><br>
					<center><input type="submit" name="next" class="btnext" value="NEXT >" /></center>
				</form>
			</div>
		</div>
	</body>
</html>