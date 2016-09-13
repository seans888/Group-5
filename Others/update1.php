<?php
$user = "root";
$password = "";
$database = "sampdbase1";
@mysql_connect(localhost, $user, $password);
@mysql_select_db($database) or die ("Unable to select database");
$query =" UPDATE EMPLOYEE
		  SET Elname = 'Ferrer',
		  Efname = 'Ken'
		  WHERE Eid = '201102'";
echo "Table is UPDATED !";
mysql_query($query);
mysql_close();


?>