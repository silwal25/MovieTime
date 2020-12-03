<h2 class="category-title">Romance</h2><br>
<?php
    include("/srv/http/MovieTime/include/connection.php");
    $sql = "SELECT ID, TITLE, IMAGE FROM MOVIES WHERE GENRE LIKE '%Romance%' LIMIT 5";
    $result = $conn -> query($sql);
    if($result -> num_rows > 0){ ?>
        <div class="card-deck">
            <?php while($row = $result -> fetch_assoc()){?>
                <div class="card">
                    <img class="card-img-top" src="<?php echo $row['IMAGE']; ?>" alt="<?php echo $row['TITLE']; ?>" style="height:100%; border-radius:20px;">
                        <div class="card-img-overlay">
                            <a href="selected.php?item=<?php echo $row["ID"] ?>" class="stretched-link"></a>
                        </div>
                    </div>
                <?php 
                    }
                ?>
        </div>
    <?php
    } else{
        echo("No result found");
    }
    $conn -> close();
?>

