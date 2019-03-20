<?php

// while($row = mysqli_fetch_array($result))//assoc maken
// {
//     echo '<a href="?page=book&id='. $row['Id'] .'">';

$id = isset($_GET['id'])?$_GET['id']:'2';
$id = preg_replace("/[^0-9]/","",$id);

$result = mysqli_query($connection, "SELECT * FROM books WHERE Id  = '$id'");

while ($row = mysqli_fetch_array($result))

{
    echo '<div id="book_1" class="Display_book">';
    echo '<img id="bookcover" src='.$row['Images'].'>';
    echo "<h2 class='Title_book'>".htmlentities($row['Title'])."</h2>";
    echo "<p class='author'>".$row['Author']. $row['Category']."</p>";
    echo "<p class='summary'>".$row['Summary']."</p>";
    echo "</div>";
      echo "<p class='similar'>"lorem ipsum"</p>";
    echo "<p id='price'>"."kosten: €".$row['Price']."</p>";

}
?>
