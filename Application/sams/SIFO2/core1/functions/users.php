<?php

function change_password($user_id, $password) {
	$user_id = (int)$user_id;
	$password = md5($password);

	mysql_query("UPDATE `users` SET `password` = '$password' WHERE `user_id` = $user_id");
}



function email($to, $subject , $body) {

	mail($to, $subject, $body, 'From: sao@apc.edu.ph');
}



function recover($mode, $email) {
	$mode 		= sanitize($mode);
	$email		= sanitize($email);
	
	$user_data = user_data(user_id_from_email($email), 'user_id', 'first_name', 'username');

	if ($mode == 'password'){
	
	$generated_password = substr(md5(rand(999, 999999)), 0, 8);
	die($generated_password);
	change_password($user_data['user_id'], $generated_password);
	email($email, 'Your password recovery', "Hello " . $user_data['first_name'] . ",\n\nYour new password: " . $generated_password . "\n\n-apceduph");
	}


}



function register_user($register_data){
	
	array_walk($register_data, 'array_sanitize');
	$register_data['password'] = md5($register_data['password']);
	
	$fields = '`' . implode('`, `', array_keys($register_data)) . '`';
	$data = '\'' . implode('\', \'', $register_data) . '\'';
	
	mysql_query("INSERT INTO `users` ($fields) VALUES ($data)");
	email($register_data['email'], ' Activate your account', "Hello ". $register_user['first_name'].", You need to activate your account, so use the link below: 
	\n\n http://localhost/ForgotPass/activate.php?email=" . $register_data['email'] . "&email_code=" . $register_data['email_code'] . "\n\n - SAO apc");
	

}
function user_data($user_id){
	$data = array();
	$user_id = (int) $user_id;
	
	$func_num_args = func_num_args();
	$func_get_args = func_get_args();
	
	if($func_num_args > 1) {
		unset($func_get_args[0]);
		
		$fields = '`' .implode('`,`', $func_get_args) . '`';
		
		$data = mysql_fetch_assoc(mysql_query("SELECT $fields FROM `users` WHERE `user_id` = $user_id"));
				
		return $data;
	}


}


function logged_in(){
	return (isset($_SESSION['user_id'])) ? true : false;
}


function user_exists($username){
	
	$username = sanitize($username);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username'"),0)==1) ? true : false;
}

function email_exists($email){
	
	$email = sanitize($email);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `email` = '$email'"),0)==1) ? true : false;
}


function user_active($username){
	
	$username = sanitize($username);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username' AND `active` = 1"),0)==1) ? true : false;
}

function user_id_from_username($username){
	$username = sanitize($username);
	return mysql_result(mysql_query("SELECT `user_id` FROM `users` WHERE `username` = '$username'"), 0 ,'user_id');

}

function user_id_from_email($email){
	$username = sanitize($email);
	return mysql_result(mysql_query("SELECT `user_id` FROM `users` WHERE `email` = '$email'"), 0 ,'user_id');

}

function login($username, $password){
	$user_id = user_id_from_username($username);
	
	$username = sanitize($username);
	$password = md5($password);
	
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username' AND `password` = '$password'"),0) ==1) ? $user_id : false;


}
?>