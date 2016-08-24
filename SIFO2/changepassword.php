
<?php 

include 'core/init.php';

if(empty($_POST) === false){
	$required_fields = array('current_password','password','password_again');
	foreach($_POST as $key => $value){
		if(empty($value) && in_array($key, $required_fields) === true){
			$errors[] = 'Fields marked with an asterisk are required';
			break 1;
		
		}
	}
	
	echo $user_data['password'];
	
	print_r($errors);

}

include 'includes/overall/header.php';
?>
<h1> Change Password</h1>

<form action="" method="post">
	<ul>
		<li>
			Current password*:<br>
			<input type="password" name="current_password">
		
		</li>
	
		<li>
			New password*:<br>
			<input type="password" name="password">
			
		</li>
	
		<li>
			Current password*:<br>
			<input type="password" name="password_again">
		
		</li>

		<li>
			
			<input type="submit" value="Change password">
		
		</li>

	</ul>
</form>



<?php include 'includes/overall/footer.php'; ?>