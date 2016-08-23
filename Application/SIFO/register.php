<?php 

include 'core/init.php';
include 'includes/overall/header.php'; 

if (empty($_POST) === false){
	$required_fields = array('username','password','password_again','first_name','last_name','email');
	foreach($_POST as $key => $value){
		if(empty($value) && in_array($key, $required_fields) === true){
			$errors[] = 'Fields marked with an asterisk are required';
			break 1;
		
		}
	}
	if(empty($errors) === true) {
		if(user_exists($_POST['username']) === true){
			$errors[] = 'Sorry, the username \'' . $_POST['username'] . '\' is already taken.';	
		}
		
		if(preg_match("/\\s/", $_POST['username']) == true){
			$regular_expression = preg_match("/\\s/", $_POST['username']);
			
			var_dump($regular_expression);
			$errors[] = ' Your username must not contain any spaces.';
		}
		
		if(strlen($_POST['password']) < 6){
		$errors[] = ' Your password must be at least 6 characters.';
		}
		
		if($_POST['password'] !==$_POST['password_again']){
		$errors[] = ' Your password do not match.';
		}
		
		if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL === false)){
		$errors[] = 'A valid email address is required';
		}
		
		if(email_exists($_POST['email']) === true){
		$errors[] = 'Sorry, the email \''. $_POST['email'] . '\' is already in use';
		}
		
	}
}


?>
<h1> Register</h1>

<?php

if(isset($_GET['success']) && empty($_GET['success'])) {
	echo 'You\'ve been registered successfully! Please check your email to activate your account.';

}else {


	if(empty($_POST) === false && empty ($errors) === true){
		$register_data = array(
			'username' 		=> $_POST['username'],
			'password' 		=> $_POST['password'],
			'first_name' 	=> $_POST['first_name'],
			'last_name' 	=> $_POST['last_name'],
		    'email' 		=> $_POST['email'],
			'email_code'	=>md5($_POST['username'] + microtime())
		);
		
		register_user($register_data);
		header('Location: register.php?success');
		exit();
	
	}	else if (empty($errors) === false ){
			echo output_errors($errors);

	}

		
?>


<!DOCTYPE html>
<html>
<head>
<title>SAO Documents Library Management System</title>
<meta content="noindex, nofollow" name="robots">
<!-- Including CSS File Here -->
<link href="screen.css" rel="stylesheet" type="text/css">
<!-- Including JS File Here -->
<script src="java.js" type="text/javascript"></script>

<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	
}

div {
    text-align: justify;
    text-justify: inter-word;
}




</style>

</head>
<body>
<center>


<div class="content">
<!-- Multistep Form -->
<div class="main">
<!-- Progressbar -->
<ul id="progressbar">
<li id="active1">Instructions</li>
<li id="active2">Recommendation</li>
<li id="active3">Create Account</li>
</ul>
<!-- Fieldsets -->

		<form action ="" method="post">

<fieldset id="first">
		<h1 class="title">Instructions</h1>
		<font color="red"><h2>About the SAO Documents Library Management System</h2></font>
<div>SAO Documents Library Management System 
is developed to promote ease of transaction 
between the Student Activities Office (SAO) 
and all extra-curricular organizations in Asia 
Pacific College. This project aims to lessen 
the paper works for document processing and 
empower the collaboration among the members of the institution, 
specifically, the organization's officers and office directors

<font color="red"><h2>Project Objectives</h2></font>

To develop collaboration between the Office Directors and Organizations' 
Representative/s. To be able to promote the use of newer technology to 
lessen paperworks and other workloads. To provide the Student's Activities 
Office (SAO), a Document Library Management System, an efficient way to handle 
document transactions and event handling operations
</div>
		<input id="next_btn1" onclick="next_step1()" type="button" value="Next">
</fieldset>

<fieldset id="second">
		<h2 class="title">Recommendations</h2>
		<div> 
		In the advancement of technology, though some companies still adopt 
		the old method of performing their tasks, those methods could not anymore
		support the way the office handle its operation because of growing demand 
		coming from different organizations. As the Student Activities Management 
		System is about to be implemented, the Student Activities Office and Organization 
		Representatives are assured of better document and event handling experience 
		because this system incorporates the different transactions being performed from 
		in and outside the office.
		
	
		
		</div>
		 <br>
		 <input id="pre_btn1" onclick="prev_step1()" type="button" value="Previous">
		 <input id="next_btn2" name="next" onclick="next_step2()" type="button" value="Next">
		 
</fieldset>


<fieldset id="third">
<h2 class="title">Create your account</h2>
<p class="subtitle">Step 3</p>
   
             <input type="text" name="username" class="form-control" placeholder="Enter Username"  />
             <input type="password" name="password" class="form-control" placeholder="Enter Password"  />
			 <input type="password" name="password_again" class="form-control" placeholder="Confirm Password"  />
             <input type="text" name="first_name" class="form-control" placeholder="First Name"  />
             <input type="text" name="last_name" class="form-control" placeholder="Last Name"  />
			 <input type="text" name="email" class ="form-control" placeholder="Email address"  />
      
			 
			  <br>
		<input id="pre_btn2" onclick="prev_step2()" type="button" value="Previous">
		
			<input type="submit" value="Register">
		
		
	
</form>
</div>
</div>
</body>
</center>
</html>


<?php 
}
 ?>