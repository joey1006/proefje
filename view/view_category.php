<?php
include "../includes/config.php";
include "../includes/connection.php";
$id=$_GET['id'];
if($id=='thriller') {
   $query23="SELECT * FROM books WHERE category='thriller' ";
}
elseif($id=='fantasy') {
   $query23="SELECT * FROM books WHERE category='fantasy' ";
}
elseif($id=='erotic') {
   $query23="SELECT * FROM books WHERE category='erotic' ";
}
elseif($id=='biografie') {
   $query23="SELECT * FROM books WHERE category='biografie' ";
}
else {
$query23="SELECT * FROM books";
}

// $connection = mysqli_connect("localhost", "root", "", "proef");
$sql_10=mysqli_query($connection, $query23);
while($row=mysqli_fetch_array($sql_10))
{
  echo $row['Title']."</br>";  
}

?>