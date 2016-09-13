<?php
$user = "root";
$password = "";
$database = "sampdbase1";
@mysql_connect(localhost, $user, $password);
@mysql_select_db($database) or die ("Unable to select database");
$query =" CREATE TABLE EMPLOYEE (Eid int(6) NOT NULL, Efname varchar (15) NOT NULL,
		  Elname varchar(15) NOT NULL, Eadd varchar (30), Ebday date, Ehired date,
		  PRIMARY KEY (Eid))";
echo "Table is Created. Check your phpmyadmin";
mysql_query($query);
mysql_close();


?>