<?php
    require 'path.php';
    init_cobalt('View organization profile');
    require_once 'global_config.php';
?>
<html>
<head>
    <title>Student Activities Management System | Organization Profile</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <style>
        body {
            margin: 0;
        }

        .no-content {
            background-color: rgb(0, 191, 226);
            height: 50%;
        }

        .main {
            background-color: white;
            width: 70%;
            height: 100%;
            margin: 0 auto;
            margin-top: -100px;
            border: 0.5px solid #d3d3d3;
        }

        .left-content {
            /*background-color:white;*/
            width: 25%;
            height: 50%;
            margin-top: -150px;
            position: absolute;
        }

        .right-content {
            /*background-color: orange;*/
            width: 64.5%;
            min-height: 60%;
            top: 90%;
            padding: 10px;
            float: right;
            text-align: left;
            padding-top:75px;
        }

        .header-line{
            border: 0;
            height:3px;
            background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
            background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
            background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
            background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
        }

        img {
            border: 5px double black;
            margin-top: 20%;
            background-color: white;
            box-shadow: 3px 3px 3px black;
        }

        #left {
            margin-left: 65px;
            font-family: century;
            font-size: 30px;
        }

        #right-header{
            font-family:Century;
            margin-left:25px;
            font-size:20px;
        }

        #right-content{
            margin-left:40px;
            font-size:15px;
            font-family:Century;
        }

        #doc-link{
            padding:10px;
            border-radius: 5px;
            margin-left:40px;
            margin-bottom:5px;
        }

        #doc-link:hover{
            background-color:lightgrey;
            text-decoration:none;
        }
    </style>
</head>
<body>
<div class='no-content'></div>
<div class='main'>
    <div class='left-content'>
        <?php
        $data_con = new data_abstraction();
        $result = $data_con->execute_query("SELECT * FROM organization_has_person WHERE person_id = '{$_SESSION['person_id']}'")->result;
        $fetch = $result->fetch_assoc();

        $result = $data_con->execute_query("SELECT * FROM organization WHERE id = '{$fetch['organization_id']}'")->result;
        $fetchOrg = $result->fetch_assoc();

        //debug($fetch);
        ?>
        <center><img src='<?php echo 'http://localhost/test/tmp/'.$fetchOrg['logo'];?>' width='200' height='200'/></center>
        <br/>
        <p id='left'><?php echo $fetchOrg['name']; ?></p><br/>
        <?php
            echo "<a href='http://localhost/test/modules/organization/edit_organization.php?filter_field_used=&filter_used=&filter_sort_asc=&filter_sort_desc=&page_from=1&id={$fetchOrg['id']}' class='btn btn-success' style='margin-left: 65px'>Edit Organization Profile</a><br/><br/>";
            echo "<a href='http://localhost/test/modules/document/add_document.php?filter_field_used=&filter_used=&filter_sort_asc=&filter_sort_desc=&page_from=1' class='btn btn-warning' style='margin-left: 65px'><i class='fa fa-file-word-o'></i> &nbsp;&nbsp;&nbsp;Upload a Document</a>";
            ?>
    </div>
    <div class='right-content' align="right">
        <p id="right-header">Organizational Heads</p>
        <hr class="header-line"/><br/>

        <?php
            $result = $data_con->execute_query("SELECT * FROM org_position")->result;

            while($fetch=$result->fetch_assoc()){
                $result = $data_con->execute_query("SELECT person_id FROM organization_has_person WHERE organization_id = '{$fetchOrg['id']}' AND org_position_id = '{$fetch['id']}'")->result;
                $fetchPersonId = $result->fetch_assoc();

                /*$result = $data_con->execute_query("SELECT * FROM person WHERE person_id = '{$fetchPersonId['person_id']}'")->result;
                $fetchPerson = $result->fetch_assoc();*/

                echo "<p id='right-content'>" . $fetch['name'] . ": </p>";
            }
        ?>

        <br/><br/>
        <p id="right-header">Private Documents</p>
        <hr class="header-line"/><br/>
        <?php
            $result = $data_con->execute_query("SELECT id FROM share_option WHERE name = 'This Organization only'")->result;
            $fetch = $result->fetch_assoc();

            $result = $data_con->execute_query("SELECT * FROM document WHERE share_option_id = '{$fetch['id']}' AND uploader_organization = '{$fetchOrg['id']}'")->result;

            while($fetch=$result->fetch_assoc()){
                echo "<a href='http://localhost/test/modules/document/edit_document.php?filter_field_used=&filter_used=&filter_sort_asc=&filter_sort_desc=&page_from=1&id={$fetch['id']}' id='doc-link'>" . $fetch['name'] . "</a>";
            }
        ?>
        <br/><br/>
        <p id="right-header">Shared Documents</p>
        <hr class="header-line"/><br/>
        <?php
            $result = $data_con->execute_query("SELECT id FROM share_option WHERE name = 'All Organizations' AND name = 'Specific Organization'")->result;
            $fetch = $result->fetch_assoc();

            $result = $data_con->execute_query("SELECT * FROM `document` WHERE share_option_id = 1 AND organization_id = '{$fetchOrg['id']}' OR share_option_id = 2 OR uploader_organization = '{$fetchOrg['id']}' AND share_option_id = 1 OR share_option_id = 2")->result;

            while($fetch=$result->fetch_assoc()){
                if($fetch['uploader_organization'] == $fetchOrg['id']){
                    echo "<a href='http://localhost/test/modules/document/edit_document.php?filter_field_used=&filter_used=&filter_sort_asc=&filter_sort_desc=&page_from=1&id={$fetch['id']}' id='doc-link'>" . $fetch['name'] . "</a>";
                }else{
                    echo "<a href='http://localhost/test/download_generic.php?filename={$fetch['name']}' id='doc-link'>" . $fetch['name'] . "</a>";
                }
            }
        ?>
    </div>
</div>
</body>
</html>
