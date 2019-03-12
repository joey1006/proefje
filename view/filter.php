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