<?php 

include 'core1/init.php';


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
			'phone' 		=> $_POST['phone'],
			'address' 		=> $_POST['address'],
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
<li id="active1">Account Setup</li>
<li id="active2">Personal Details</li>
</ul>
<!-- Fieldsets -->

		<form action ="" method="post">

<fieldset id="first">
		<h1 class="title">Step 1</h1>
		
		<input type="text" name="username" class="form-control" placeholder="Enter Username"  />
             <input type="password" name="password" class="form-control" placeholder="Enter Password"  />
			 <input type="password" name="password_again" class="form-control" placeholder="Confirm Password"  />
			 <input type="text" name="email" class ="form-control" placeholder="Email address"  />
	
		<input id="next_btn1" onclick="next_step1()" type="button" value="Next">
</fieldset>

<fieldset id="second">
		<h2 class="title">Step 2</h2>
             <input type="text" name="first_name" class="form-control" placeholder="First Name"  />
             <input type="text" name="last_name" class="form-control" placeholder="Last Name"  />
			 <input type="text" name="phone" class ="form-control" placeholder="Phone"  />
			 <input type="text" name="address" class ="form-control" placeholder="Address"  />
      
			 
			  <br>
		<input id="pre_btn2" onclick="prev_step1()" type="button" value="Previous">
		
			<input type="submit" value="Register">
		 
</fieldset>

	
</form>
</div>
</div>
</body>
</center>
</html>


<?php 
}
 ?>