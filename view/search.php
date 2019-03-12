<?php
//include "../includes/config.php";
//include "../includes/database.php";
//als iemand op de knop zoeken drukt voer dan volgende code uit
if (isset($_POST['submit'])) {
    //$connection = new mysqli(host "localhost", username "root", passwd "", dbname "books");
    //in de variable q word opgeslagen wat de user invult in het input veld, real escape string beveiligd het invoerveld
    $q = $connection->real_escape_string($_POST['q']);
    $column = $connection->real_escape_string($_POST['q']);
    
    //checken welke tabel de gebruiker wilt doorzoeken
    // als een column leeg is of column matched niet met firstname of lastname word dan default en dat is firstname
    if ($column == "" || ($column != "Title" && $column != "Author"))
        //default 
        $column = "Title";
    
    $sql = $connection->query("SELECT Title FROM books WHERE $column LIKE '%$q%'");
    if ($sql->num_rows > 0) {
        while ($data = $sql->fetch_array())
            echo $data['Title'] . "<br>";        
    } else
        echo "Er is geen resultaat!";
}
?>


<form method="post" action="search.php">
    <input type="text" name="q" placeholder="Zoeken naar...">
    <select name="column">
       <option value="">Selecteer filter</option>
        <option value="Title">Titel</option>
        <option value="Author">auteur</option>
    </select>
    <input type="submit" name="submit" value="Zoeken">
</form>