<?php 

$connection = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

if ($connection->connect_errno) {
    echo "Failed to connect to MySQL: 
    (" . $connection->connect_errno . ") " . $connection->connect_error;
}