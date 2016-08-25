<?php

$connect_error = 'Sorry, we are experiencing connection problem.';
mysqli_connect('localhost','root','projDb_2016') or die($connect_error);
mysqli_select_db(mysqli_connect('localhost','root','projDb_2016'), 'sams_db') or die($connect_error);


?>