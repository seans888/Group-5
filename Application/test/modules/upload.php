<html>
	<head>
		<title>Upload a File</title>
		<style>
			body{
				background-color:rgb(105,102,109);
				font-family:arial;
			}
			
			hr{
				color:#000000;
				width:50%;
				margin-left:10px;
			}
			
			h2{
				padding-top:10px;
				padding-left:10px;
				color:white;
			}
			
			div.main{
				width:50%;
				background-color:white;
				padding-left:20px;
				padding-top:30px;
				padding-bottom:25px;
				margin:auto;
			}
			
			div.header{
				width:50%;
				height:10%;
				background-color:rgb(70,69,74);
				padding-left:20px;
				padding-top:3px;
				padding-bottom:5px;
				border-radius:5px 5px 0px 0px;
				color:rgb(189,172,0);
				margin:auto;
			}
			
			div.footer{
				width:50%;
				height:10%;
				background-color:rgb(70,69,74);
				padding-left:20px;
				padding-top:10px;
				border-radius:0px 0px 5px 5px;
				margin:auto;
			}
			
			input[type="submit"]:hover{
				background-color:rgb(189,172,0);
				color:rgb(139,24,27);
			}
			
			textarea{ 
				border-radius:5px;
				width:50%;
				height:25%;
				padding:5px;
			}
		</style>
	</head>
	<body bgcolor="gray">
		<h2>Add Document</h2><br>
		<div class="header">
			<p><b>Upload Document</b></p>
		</div>
		<div class="main">
		<form action="upload.php" method="post" enctype="multipart/form-data">
			<input type="file" name="file"><br><br>
			<label>Share with: </label>
			<select name="share_options">
				<option value="1">Only Me</option>
				<option value="2">All Organizations</option>
				<option value="3">Public</option>
			</select><br /><br />
			<label>Description: </label><br>
			<textarea name="desc" required="required"></textarea><br>
		</div>
		<div class="footer">
			<input type="submit" value="UPLOAD" />&nbsp;&nbsp;&nbsp;
			<input type="submit" value="CANCEL" />
			</div>
		</form>
	</body>
</html>

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
		$shareOption = $_POST['share_options'];
		
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
					
					//$query = "INSERT INTO document(`Doc_Name`, `Doc_Description`) VALUES($file_name, $desc)";
					//@mysqli_query($link, $query);
					
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
			echo "Sorry, only DOCX, DOC, XLSX, XLS and PDF files are allowed to be uploaded.";
		}
		@mysqli_close($link);
	}

?>