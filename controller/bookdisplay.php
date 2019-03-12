<?php


    while($row = mysqli_fetch_assoc($bookresult))    
            {
            echo 
            "<div class='bookitem'>"                .
            "<p class='Title'>"        . $row['Title']         . "</p>"    .    
            "<p class='Category'>"     . $row['Category']      . "</p>"    .
            "<p class='Price'>"        . $row['Price']         . "</p>"    .
            "<img src='"               . $row['Image']         . "'>"      .
            "<p class='Summary'>"      . $row['Summary']       . "</p>"    .
            "<p class='Author'>"       . $row['Author']        . "</p>"    .
            "<p class='PublisherName'>". $row['PublisherName'] . "</p>"    .
            "<p class='Publishdate'>"  . $row['Publishdate']   . "</p>"    .
            "<p class='Storage'>"      . $row['Storage']       . "</p>"    .
            "<p class='Sizes'>"        . $row['Sizes']         . "</p>"    .
            "<p class='Weight'>"       . $row['Weight']        . "</p>"    .
            "<p class='Language'>"     . $row['Language']      . "</p>"    .
            "</div>"
            ;
            }
?>