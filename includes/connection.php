<?php

$connection = new mysqli(DBHOST, DBUSER, DBPASS, DBNAME);

if ($connection->connect_errno) 
	{ 
		echo "Failed to connect to MySQL:(" . $connection->connect_errno . ")" . $connection->connect_error;
	}
?>