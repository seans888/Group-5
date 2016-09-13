<?php
$user = "root";
$password = "";
$database = "sampdbase1";
@mysql_connect(localhost, $user, $password);
@mysql_select_db($database) or die ("Unable to select database");
$query =" DELETE FROM EMPLOYEE
		  WHERE Eid = '0'";
echo "Table is DELETED !";
mysql_query($query);
mysql_close();


?>