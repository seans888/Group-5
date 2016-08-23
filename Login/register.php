<?php
ob_start();
session_start();
if( isset($_SESSION['user'])!="" ){
 header("Location: home.php");
}
include_once 'dbconnect.php';

if(isset($_POST['btn-signup'])) {
  
 $uname = trim($_POST['uname']);
 $email = trim($_POST['email']);
 $upass = trim($_POST['pass']);
 $fname = trim($_POST['fname']);
 $lname = trim($_POST['lname']);
 $address = trim($_POST['address']);
 
	/*if($uname){
		if($upass){
		
			require("dbconnect.php");
			
			$upass = md5(md5("kjfiufj". $upass."Fj56j"));
			//make sure login info 
			$query = mysql_query("SELECT * FROM users where uname='$uname'");
			$numrows = mysql_num_rows($query);
			
			if($numrows == 1) {
				$row = mysql_fetch_assoc($query);
				$dbuser = $row['uname'];
				$dbuser = $row['upass'];
				$dbactive = $row['active'];
			
			
				if($upass == $dbpass){
					if($dbactive ==1) {
					
					} 
					else 
						echo "You must activate your account to login";
				
				}
				else
					echo "You did not enter the correct password";
			
			}
		
		
		
		}
	}*/
 
 
 $uname = strip_tags($uname);
 $email = strip_tags($email);
 $upass = strip_tags($upass);
 $fname = strip_tags($fname);
 $lname = strip_tags($lname);
 $address = strip_tags($address);
 
 // password encrypt using SHA256();
 $password = hash('sha256', $upass);
 
 // check email exist or not
 $query = "SELECT userEmail FROM users WHERE userEmail='$email'";
 $result = mysql_query($query);
 
 $count = mysql_num_rows($result); // if email not found then proceed
 
 if ($count==0) {
  
  $query = "INSERT INTO users(userName, userFname, userLname, userAddress, userEmail, userPass) VALUES('$uname','$fname','$lname', '$address', '$email', '$password')";
  $res = mysql_query($query);
  
  if ($res) {
   $errTyp = "success";
   $errMSG = "successfully registered, you may login now";
  } else {
   $errTyp = "danger";
   $errMSG = "Something went wrong, try again later..."; 
  } 
   
 } else {
  $errTyp = "warning";
  $errMSG = "Sorry Email already in use ...";
 }
 
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

  <form method="post" autocomplete="off">
    
     
            
            <?php
   if ( isset($errMSG) ) {
    
    ?>
    <div class="form-group">
             <div class="alert alert-<?php echo ($errTyp=="success") ? "success" : $errTyp; ?>">
    <?php echo $errMSG; ?>
                </div>
             </div>
                <?php
   }
   ?>
   
   

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
   
             <input type="text" name="uname" class="form-control" placeholder="Enter Username" required />
             <input type="password" name="pass" class="form-control" placeholder="Enter Password" required />
			 <input type="text" name="email" class ="form-control" placeholder="Email address" required />
             <input type="text" name="fname" class="form-control" placeholder="First Name" required />
             <input type="text" name="lname" class="form-control" placeholder="Last Name" required />
             <input type="text" name="address" class="form-control" placeholder="Address" required />
			 
			  <br>
		<input id="pre_btn2" onclick="prev_step2()" type="button" value="Previous">
		
		 <button type="submit" class="button button1" name="btn-signup">Submit</button>
		 
			
            <div class="form-group">
             <a href="index.php">Sign in Here...</a>
			 
</fieldset>
	
	

</form>
</div>
</div>
</body>
</center>
</html>