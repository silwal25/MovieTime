<?php
    define("TITLE","Home | MovieTime");
?>
<?php include("/srv/http/MovieTime/include/header.php"); ?>


<!-- Trending movies carousel -->

<div class="trending-carousel" id="trending-carousel">
    <?php include("/srv/http/MovieTime/include/carousel.php"); ?>
</div>

    <!-- Categories -->
<section class="wrapper">
    <!-- movie-category -->

    <section class="categories">
        <div class="action-category">
            <?php include("/srv/http/MovieTime/genres/action.php") ?>
        </div>

        <div class="crime-category">
            <?php include("/srv/http/MovieTime/genres/crime.php") ?>
        </div>

        <div class="drama-category">
            <?php include("/srv/http/MovieTime/genres/drama.php") ?>
        </div>
        
        <div class="fantasy-category">
            <?php include("/srv/http/MovieTime/genres/fantasy.php") ?>
        </div>

        <div class="romance-category">
            <?php include("/srv/http/MovieTime/genres/romance.php") ?>
        </div>

        <div class="sci-fi-category">
            <?php include("/srv/http/MovieTime/genres/sci-fi.php") ?>
        </div>

        <div class="thriller-category">
            <?php include("/srv/http/MovieTime/genres/thriller.php") ?>
        </div>
    </section>


</section>




<?php include("/srv/http/MovieTime/include/footer.php"); ?>

