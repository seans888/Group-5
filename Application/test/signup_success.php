<?php session_start(); 
	if($_SESSION['lastname'] == "" ||
		$_SESSION['firstname'] == "" ||
		$_SESSION['midname'] == "" ||
		$_SESSION['gender'] == "" ||
		$_SESSION['bday'] == ""){
			header('Location: signup.php');
		}/*else if($_SESSION['email'] == "" ||
				$_SESSION['user'] == "" ||
				$_SESSION['pswd'] == ""){
					header('Location: page3.php');
				}*/?>
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
			
			input[type="submit"]{
				border-radius:15px;
				width:150px;
				height:50px;
			}
			
			h4, h5{ color:blue; }
		</style>
	</head>
	<body>
		<div class="bgovr">
			<div class="main">
				<center><img src='images/sao.png' alt="SAO_Logo" width="200px" height="200px"/>
				<h2>APC Student Activities Management System</h2><br />
				<h4>You're all done, <?php echo $_SESSION['firstname']; ?>!</h4>
				<h5>Stay updated for any email messages you may receive confirming your account activation. Thank you.</h5><br /><br />
				<form action="" method="POST"><input type="submit" name="continue" value="CONTINUE >"></form>
			</div>
		</div>
		<?php
			if(isset($_POST['continue'])){
				header('Location: login.php');
			}
		?>
	</body>
</html>