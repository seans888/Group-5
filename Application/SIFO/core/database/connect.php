<?php

$connect_error = 'Sorry, we are experiencing connection problem.';
mysql_connect('localhost','root','') or die($connect_error);
mysql_select_db('user') or die($connect_error);


?>