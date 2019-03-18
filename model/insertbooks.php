<?php

include "includes/config.php";
include "includes/connection.php";

$Title          = $_POST["Title"];
$Category       = $_POST["Category"];
$Price          = $_POST["Price"];
$Image          = $_POST["Image"];
$Summary        = $_POST["Summary"];
$Author         = $_POST["Author"];
$PublisherName  = $_POST["PublisherName"];
$Publishdate    = $_POST["Publishdate"];
$Storage        = $_POST["Storage"];
$Sizes          = $_POST["Sizes"];
$Gram           = $_POST["Weight"];
$Languages      = $_POST["Language"];

// var_dump($mysqli);

$sql = "INSERT INTO books (Title, Category, Price, Images, Summary, Author, PublisherName, Publishdate, Storage, Sizes, Gram, Languages)
VALUES                  ('$Title', '$Category', '$Price', '$Image', '$Summary', '$Author', '$PublisherName', '$Publishdate', '$Storage', '$Sizes', '$Gram', '$Languages')";


// $sql = "INSERT INTO books (Id, Title, Category, Price, Images, Summary, Author, PublisherName, Publishdate, Storage, Sizes, Gram, Languages) 
// VALUES                   (NULL, 'gf', 'dfgdf', 'gdf', 'df', 'dfg', 'gdfg', 'dfg', 'fdg', 'dfgf', 'dgfd', 'gdfg', 'dg11111111')";


if (mysqli_query($connection, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($connection);
}


?>