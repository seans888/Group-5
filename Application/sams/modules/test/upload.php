<?php
	$user = "root";
	$pass = "projDb_2016";
	$db = "sams_db";
	$link = mysqli_connect("localhost", $user, $pass);
	
	@mysqli_connect("localhost", $user, $pass);
	@mysqli_select_db($link, $db);
	
	if(isset($_FILES['file'])){
		$file = $_FILES['file'];
		$desc = $_POST['desc'];
		
		//File Properties
		$file_name = $file['name'];
		$file_tmp = $file['tmp_name'];
		$file_size = $file['size'];
		$file_error = $file['error'];
		
		//Work out the file extension
		$file_ext = explode('.', $file_name);
		$file_ext = strtolower(end($file_ext));
		
		$allowed = array('docx','doc','xlsx','xls','pdf');
		$dir = 'c:/xampp/tmp';
		
		if(in_array($file_ext, $allowed)){
			if($file_error === 0){
				if($file_size <= 2097152){
					$file_name_new = uniqid('', true) . '.' . $file_ext;
					$file_destination = $dir . '/uploads/' . $file_name_new;
					
					$query = "INSERT INTO document(`Doc_Name`, `Doc_Description`) VALUES($file_name, $desc)";
					@mysqli_query($link, $query);
					
					if(move_uploaded_file($file_tmp, $file_destination)){
						echo "Your file was successfully uploaded!";
					}
				}else{
					echo "The file uploaded has exceeded the maximum upload size limit. Your file was not uploaded. Please try again.";
				}
			}else{
				echo "An error was found on your file. Please upload another file and try again";
			}
		}else{
			echo "Sorry, only DOCX, DOC, XLSX, XLS and PDF are allowed to be uploaded.";
		}
		@mysqli_close($link);
	}

?>