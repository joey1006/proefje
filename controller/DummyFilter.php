<?php

if(isset($_POST['search']))
{
    $valueToSearch = $_POST['valueToSearch'];
    // search in all table columns
    // using concat mysql function
    $query = "SELECT * FROM `books` WHERE CONCAT(`Id`, `Title`, `Category`, `Author`) LIKE '%".$valueToSearch."%'";
    $search_result = filterTable($query);
    
}
 else {
    $query = "SELECT * FROM 'books'";
    $search_result = filterTable($query);
}

function filterTable($query)
{
    $connect = mysqli_connect("localhost", "root", "", "proef");
    $filter_Result = mysqli_query($connect, $query);
    return $filter_Result;
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Filteren</title>
        <style>
            table,tr,th,td
            {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        
        <form action="DummyFilter.php" method="post">
            <input type="text" name="valueToSearch" placeholder="Zoek..."><br><br>
            <input type="submit" name="search" value="Filter"><br>
            <input type="submit" name="reset" value="reset"><br><br>
            
            <table>
                <tr>
                    <th>Id</th>
                    <th>Boektitel</th>
                    <th>Categorie</th>
                    <th>Auteur</th>
                </tr>

                <?php while($row = mysqli_fetch_array($search_result)):?>
                <tr>
                    <td><?php echo $row['Id'];?></td>
                    <td><?php echo $row['Title'];?></td>
                    <td><?php echo $row['Category'];?></td>
                    <td><?php echo $row['Author'];?></td>
                </tr>
                <?php endwhile;?>
            </table>
        </form>
        
    </body>
</html>