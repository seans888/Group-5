<?php
$user = "root";
$password = "";
$database = "sampdbase1";
@mysql_connect(localhost, $user, $password);
@mysql_select_db($database) or die ("Unable to select database");
$query =" INSERT INTO EMPLOYEE (Eid, Efname, Elname, Eadd, Ebday, Ehired)
		  VALUES ( 201103, 'Ferdinand', 'Marcos', 'Ilocos Norte', '1930-01-02',
		  '1960-05-06'), (201104, 'Diosdado', 'Macapagal', 'Pampanga', '1920-07-08', 						 	
		  '1945-07-07'), (201105, 'Manuel', 'Roxas', 'Bulacan',	'1910-10-08', 
		  '1940-02-03'), (201106, 'Emilio', 'Aguinaldo',	'Imus Cavite', '1890-10-10',
		  '1920-01-02'), (201107, 'Corazon', 'Aquino', 'Tarlac City',	'1930-02-02',
		  '1980-03-04'), (201108, 'Carlos', 'Garcia', 'Bataan City', '1920-03-03',
		  '1935-01-01'), (201109, 'Jose', 'Laurel',	'Zamboanga', '1925-05-06',	
 		  '1950-01-04'), (201110, 'Manuel', 'Quezon', 'Quezon City', '1910-02-02',
		  '1925-05-06'), (201111, 'Sergio', 'Osmena', 'Pasay City',	'1915-10-10',
		  '1955-05-10'), (201112, 'Ramon', 'Magsaysay', 'Caloocan City', '1935-07-10',
		  '1965-05-01')";
echo "Data is added. Check your table.";
mysql_query($query);
mysql_close();


?>