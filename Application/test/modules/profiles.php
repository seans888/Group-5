<?php
	require 'path.php';
	init_cobalt('View organization profile');
    require_once 'global_config.php';
    require 'subclasses/organization.php';
    require 'subclasses/organization_html.php';

    $link = mysqli_connect(DEFAULT_DB_HOST, DEFAULT_DB_USER, DEFAULT_DB_PASS, DEFAULT_DB_USE);
    $html = new organization_html();

	if(isset($_SESSION['logged']) && $_SESSION['logged'] == "Logged"){
		$dir = 'c:/xampp/tmp/uploads';
        $error = "Cannot connect to database, Please try again later...";
	}else{
		redirect("../login.php");
	}

    if(isset($_POST['submit'])){
            move_uploaded_file($_FILES['file']['tmp_name'],"pictures/".$_FILES['file']['name']);
            $q = mysqli_query($link,"UPDATE org_profile SET image = '".$_FILES['file']['name']."' WHERE username = '".$_SESSION['user']."'");
    }
?>

<html>
	<head>
		<?php
			$query = "SELECT name FROM organization WHERE id = (SELECT organization_id FROM organization_has_person WHERE person_id = (SELECT person_id FROM person WHERE last_name = '{$_SESSION['last_name']}' AND first_name = '{$_SESSION['first_name']}'))";
			$resultName = mysqli_query(mysqli_connect(DEFAULT_DB_HOST, DEFAULT_DB_USER, DEFAULT_DB_PASS, DEFAULT_DB_USE), $query);
			$rowName = mysqli_fetch_assoc($resultName);
			echo "<title>" . $rowName['name'] . " | Organizational Profile</title>";
		?>
    <style type="text/css" >
        h1, h2, h3 {
            margin: 0;
            padding: 0;
            font-weight: normal;
            color: #333333;
        }

        h1 {
            font-size: 2em;
        }

        h2 {
            font-size: 2.4em;
        }

        h3 {
            font-size: 1.6em;
        }

        p, ul, ol {
            margin-top: 0;
            line-height: 180%;
        }

        a {
            text-decoration: none;
            color: #9D151A;
        }

        #wrapper {
            width: 960px;
            margin: 0 auto;
            padding: 0;
        }

        /* Header */

        #header {
            width: 940px;
            height: 148px;
            margin: 0 auto;
        }

        /* Logo */

        #logo {
            float: left;
            height: 90px;
            margin-top: -50px;
            padding-top: 100px;
            margin-left:100px;
            padding-bottom: 20px;
            color: #000000;
        }

        #logo h1, #logo p {
            margin-left:200px;
            margin-right:200px;
            padding: 0;

        }

        #logo h1 {
            float: left;
            padding-left: 120px;
            letter-spacing: -1px;
            font-size: 3.8em;
        }

        #logo p {
            float: left;
            margin: 0;
            padding: 26px 0 0 10px;
            font: normal 14px Georgia, "Times New Roman", Times, serif;
            font-style: italic;
            color: #5E4E38;
            padding-top: 300px;
        }

        #logo p a {
            color: #5E4E38;
        }

        #logo a {
            border: none;
            background: none;
            text-decoration: none;
            color: #A83A01;
        }

        #page {
            width: 940px;
            margin-bottom: 100px
            padding: 0;
        }

        #page-bgtop {
            padding: 20px;
        }

        #file-container{
            margin-top:-10px;
        }

        #document-container{
            margin-top:-10px;
        }
        /* Content */

        #content {
            float: right;
            width: 620px;
            padding: 30px 0px 0px 0px;
        }

        .post {
            margin-bottom: 15px;
            margin-top: 55px;
        }

        .post .title {
            margin-bottom: 10px;
            padding: 12px 0 0 0px;
            letter-spacing: -1px;
            color: #000000;
        }

        .post .title a {
            color: #333333;
            border: none;
        }

        .post .meta {
            height: 30px;
            background: url(images/img03.jpg) no-repeat left top;
            margin: 0px;
            padding: 0px 20px 0px 20px;
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
        }

        .post .meta .date {
            float: left;
            height: 24px;
            padding: 3px 0px;
            color: #FFFFFF;
        }

        .post .meta .posted {
            float: right;
            height: 24px;
            padding: 3px 15px;
            border-left: 1px solid #FFFFFF;
            color: #FFFFFF;
        }

        .post .meta a {
            color: #FFFFFF;
        }

        .post .entry {
            padding: 0px 0px 20px 0px;
            padding-bottom: 20px;
            text-align: justify;
        }

        .links {
            padding-top: 20px;
            font-size: 12px;
            font-weight: bold;
        }

        .org-title{
            margin-top:-105px;
            font-size: 50px;
        }

        /* Sidebar */


        /* Footer */

        #footer {
            width: 940px;
            height: 50px;
            margin: 0 auto;
            padding: 0px 0 15px 0;
            border-top: 4px solid #EBE6D1;
            font-family: Arial, Helvetica, sans-serif;
        }

        #footer p {
            margin: 0;
            padding-top: 20px;
            line-height: normal;
            font-size: 10px;
            text-transform: uppercase;
            text-align: center;
            color: #444444;
        }

        #footer a {
            color: #464032;
        }

        </style>
	</head>

	<body>
		<?php
			$query = "SELECT id FROM organization WHERE name = (SELECT name FROM organization WHERE id = (SELECT organization_id FROM organization_has_person WHERE person_id = (SELECT person_id FROM person WHERE last_name = '{$_SESSION['last_name']}' AND first_name = '{$_SESSION['first_name']}')))";
			$resultId = mysqli_query($link, $query);
			$rowId = mysqli_fetch_assoc($resultId);

			echo "<div id='logo'>";
                echo "<form action='' method='post' enctype='multipart/form-data'>";
                    $q = mysqli_query($link,"SELECT * FROM org_profile");
                    while($row = mysqli_fetch_assoc($q)){
                        if($row['image'] == ""){
                            echo "<img width='200' height='200' src='../modules/pictures/default.jpg' alt='Default Profile Pic'>";
                        } else {
                            echo "<img width='200' height='200' src='../modules/pictures/".$row['image']."' alt='Profile Pic'>";
                        }
                        echo "<br>";
                    }

                    echo "<br>";
                    echo"<br>";
                    echo"<input type='file' name='file'><br>";
                    echo"<br>";
                    echo"<br>";
                    echo"<input type='submit' name='submit'>";
                echo "<form>";
            echo "</div>";
			
                $query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'President') AND organization_id = '{$rowId['id']}')";
                $resultPres = mysqli_query($link, $query);
                $rowPres = mysqli_fetch_assoc($resultPres);

                $query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'Vice President for Internal Affairs') AND organization_id = '{$rowId['id']}')";
                $resultVpi = mysqli_query($link, $query);
                $rowVpi = mysqli_fetch_assoc($resultVpi);

                $query = "SELECT last_name, first_name FROM person WHERE person_id = (SELECT person_id FROM organization_has_person WHERE org_position_id = (SELECT id FROM org_position WHERE name = 'Vice President for External Affairs') AND organization_id = '{$rowId['id']}')";
                $resultVpe = mysqli_query($link, $query);
                $rowVpe = mysqli_fetch_assoc($resultVpe);
	
			echo "<div id='page'>";
       	 	    echo "<div id='page-bgtop'>";
        	        echo "<div id='page-bgbtm'>";
                        echo "<div id='content'>";
                           echo "<h1 class='org-title'><a href='#'>" . ucfirst($rowName['name']) . "</a></h1>";
                                echo  "<div class='post'>";
                                    echo "<h2 class='title'><a href='#'>Organizational Heads </a></h2>";
                                    echo "<p class='meta'><span class='date'></span><span class='posted'> <a href='#'></a></span></p>";
                                    echo "<div style='clear: both;'>&nbsp;</div>";
                                    echo " <div class='entry'>";
                                        echo "<p>President:" . $rowPres['last_name'] . ", " . $rowPres['first_name'] . "<br/></p>" ;
                                        echo "<p>VP for Internal:". $rowVpi['last_name'] . ", " . $rowVpi['first_name'] ."<br/></p>";
                                        echo "<pr>VP for External:" . $rowVpe['last_name'] . ", " . $rowVpe['first_name'] ." <br/></p>";
                                    echo "</div>";
                                echo "</div>";

                        echo "<div class='post' id='file-container'>";
                            echo "<h2 class='title'><a href='#'>Organization's Files</a></h2>";
                            echo "<p class='meta'><span class='date'></span><span class='posted'><a href='#''></a></span></p>";
                            echo "<div style='clear: both;''>&nbsp;</div>";
                                echo "<div class='entry'>";
                                    echo "<p>List of Files here:<br/></p>";
                                    echo "<p>List of Files here:<br/></p>";
                                    echo " <p>List of Files here:<br/></p>";
                                    echo "<p>List of Files here:<br/></p>";
                                    echo " <p>List of Files here:<br/></p>";
                                echo "</div>";
                        echo "</div>";

                        echo "<div class='post' id='document-container'>";
                        echo "<h2 class='title'><a href='#'>". ucfirst("Shared Documents")."</a></h2>";
                        echo "<p class='meta'><span class='date'></span><span class='posted'><a href='#''></a></span></p>";
                        echo "<div style='clear: both;''>&nbsp;</div>";
                           echo "<div class='entry'>";
                                       echo "<p>Documents here:<br/></p>";
                                       echo "<p>Documents here:<br/></p>";
                                       echo "<p>Documents here:<br/></p>";
                                       echo "<p>Documents here:<br/></p>";
                                       echo "<p>Documents here:<br/></p>";
                                        
                              echo "</div>";
                        echo "</div>";
                
                            echo  "<div style='clear: both;'>&nbsp;</div>";
                            echo "</div>";

                            echo "<div style='clear: both;'>&nbsp;</div>";
                        echo " </div>";
                    echo " </div>";
                echo "</div>";
            echo "</div>";

            echo "<div id='footer'>";
                echo " <p>Copyright (c) 2016 Asia Pacific College</p>";
            echo "</div>";
		?>
	</body>
</html>