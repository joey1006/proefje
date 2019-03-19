<link rel="stylesheet" type="text/css" href="../css/style.css">
<?php

//include "includes/config.php";
//include "includes/connection.php";

if(isset($_POST['search']))
{
    $valueToSearch = $_POST['valueToSearch'];
    // search in all table columns
    // using concat mysql function
    $query = "SELECT * FROM `books` WHERE CONCAT(`Id`, `Title`, `Category`, `Author`) LIKE '%".$valueToSearch."%'";
    $search_result = filterTable($query);  
}

 else {
    $query = "SELECT * FROM `books`";
    $search_result = filterTable($query);
}

function filterTable($query)
{
    $connect = mysqli_connect("localhost", "root", "", "proef");
    $filter_Result = mysqli_query($connect, $query);
    return $filter_Result;
}


  while($row = mysqli_fetch_assoc($search_result))    
            {
            echo
            "<div class='bookitem " . $row['Category'] ."'>"   .
            "<img class='bookcover'src='"    . $row['Images']   . "'>"      .
            "<p class='Title'>"              . $row['Title']         . "</p>"    . 
            "<p class='Author'>"             . $row['Author'] . ','  . "&nbsp;"     . "</p>"    .    
            "<p class='Category'>"           . $row['Category']      . "</p>"    .            
            "<p class='Summary'>"            . $row['Summary']       . "</p>"    .
            "<p class='Price'>"              . $row['Price']         . "</p>"    .
            "<p class='PublisherName'>"      . $row['PublisherName'] . "</p>"    .
            "<p class='Publishdate'>"        . $row['Publishdate']   . "</p>"    .
            "<p class='Storage'>"            . $row['Storage']       . "</p>"    .
            "<p class='Sizes'>"              . $row['Sizes']         . "</p>"    .
            //"<p class='Weight'>"             . $row['Weight']        . "</p>"    .
            //"<p class='Language'>"           . $row['Language']      . "</p>"    .
            "</div>"
            ;
            }      
?>

