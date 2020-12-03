<?php
    define("TITLE","Result");
    if(isset($_GET['search'])){
        $menuItem = $_GET['search'];
    }
    include("/srv/http/MovieTime/include/connection.php");
?>

<?php include("/srv/http/MovieTime/include/header.php"); ?>

<div class="wrapper result-wrapper" style="height:100%;">
    <?php
        $result = $conn -> query("SELECT ID, TITLE, IMAGE FROM MOVIES WHERE TITLE LIKE '%$menuItem%'");
        if($result -> num_rows > 0){ ?>
            <div class="card-deck" style="padding-top: 30px;">
                <?php while($row = $result -> fetch_assoc()){?>
                    <div class="card result-card">
                        <img class="card-img-top" src="<?php echo $row['IMAGE']; ?>" alt="<?php echo $row['TITLE']; ?>">
                            <div class="card-body">
                                <h6 class="card-title"><?php echo $row["TITLE"]; ?></h6>
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
</div>




<?php include("/srv/http/MovieTime/include/footer.php"); ?>