<?php
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=dbtest;charset=utf8', 'root', '');
}
catch(Exception $e)
{
        die('Error : '.$e->getMessage());
}
