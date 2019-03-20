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
    echo "<p class='author'>".$row['Author']. ', ' . $row['Category']."</p>";
    echo "<p class='summary'>".$row['Summary']."</p>";

      echo "<p class='similar'>Vergelijkbare boeken</p>";
      $result = mysqli_query($connection, "SELECT * FROM books WHERE Id  = '$id'");
      while ($row = mysqli_fetch_array($result))

      {
          echo '<img id="bookcover_similar" src='.$row['Images'].'>';
          echo '<img id="bookcover_similar" src='.$row['Images'].'>';
          echo '<img id="bookcover_similar" src='.$row['Images'].'>';
      }
      echo "</div>";
        echo '<div id="order_footer" class="Footer_book">';
        echo "<p id='price'><a class='Buy_direct' href='#'>Koop direct</a> "."of bestel" . " kosten: €". $row['Price']."</p>";
        echo "</div>";

}
?>
