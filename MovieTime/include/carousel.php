<?php  
    include("/srv/http/MovieTime/include/connection.php");
    $firstRow = $conn -> query("SELECT * FROM TRENDING LIMIT 1");
    $result = $conn -> query("SELECT * FROM TRENDING LIMIT 1, 7");
    $row = $firstRow -> fetch_assoc();
?>

<div id="trending" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#trending" data-slide-to="0" class="active"></li>
        <li data-target="#trending" data-slide-to="1"></li>
        <li data-target="#trending" data-slide-to="2"></li>
        <li data-target="#trending" data-slide-to="3"></li>
        <li data-target="#trending" data-slide-to="4"></li>
        <li data-target="#trending" data-slide-to="5"></li>
        <li data-target="#trending" data-slide-to="6"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active" style="max-height: 550px;">
            <a href="selected.php?item=<?php echo $row["MOVIE_ID"] ?>"><img src="<?php echo $row['IMAGE'] ?>" class="d-block w-100" alt="..."></a>
        </div>
        <?php
            while($row = $result -> fetch_assoc()){ ?>
                <div class="carousel-item" style="max-height: 550px;">
                    <a href="selected.php?item=<?php echo $row["MOVIE_ID"] ?>"><img src="<?php echo $row['IMAGE']; ?>" class="d-block w-100" alt="..."></a>
                </div>
        <?php }
        ?>
    </div>
    <a class="carousel-control-prev" href="#trending" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#trending" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>