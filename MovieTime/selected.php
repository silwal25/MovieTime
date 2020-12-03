<?php
if (isset($_GET["item"])) {
    $menuItem = $_GET["item"];
}
include("/srv/http/MovieTime/include/connection.php");

$result = $conn->query("SELECT * FROM MOVIES WHERE ID = $menuItem");
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $tempGenre = explode(",", $row["GENRE"]);
} else {
    echo "Zero results";
}

define("TITLE", $row["TITLE"]);
$youtube = "https://www.youtube.com/embed/";

$relDate = $row["RELEASE DATE"];
$date = new DateTime($relDate);
$newDate = $date->format("d-F-Y");
$genre = $tempGenre[0];

?>

<!-- header -->
<?php include("/srv/http/MovieTime/include/header.php"); ?>

<div class="embed-responsive embed-responsive-16by9 ytvideo">
    <iframe class="embed-responsive-item" src=<?php echo $youtube . $row["VIDEO"]; ?> allowfullscreen></iframe>
</div>

<section class="wrapper">

    <div class="card mb-3" style="background-color: rgb(23, 23, 23);">
        <div class="row no-gutters">
            <div class="col-md-5">
                <img src="<?php echo $row["IMAGE"]; ?>" alt="<?php echo $row["NAME"]; ?>" style="height:600px; width:400px; border-radius: 20px;">
            </div>
            <div class="col-md-7">
                <div class="card-body">
                    <h2 class="card-title"><?php echo $row["TITLE"]; ?></h2>
                    <p class="card-text">
                        <?php echo $row["DESCRIPTION"]; ?><br><br><br>
                        Release Date: <?php echo $newDate ?><br>
                        Genre: <?php echo $row["GENRE"]; ?><br>
                        Director: <?php echo $row["DIRECTOR"]; ?><br>
                    </p>
                    <a href="/MovieTime/buynow.php?item=<?php echo $menuItem; ?>" class="btn btn-success" role="button">Buy now</a>
                    <?php
                    if (in_array($menuItem, $_SESSION["cart"]) == false) { ?>
                        <a href="/MovieTime/addtocart.php?item=<?php echo $menuItem; ?> " class="btn btn-secondary" role="button">Add to Cart</a>
                    <?php } else { ?>
                        <button class="btn btn-secondary" type="button" disabled>Added to cart</button>
                    <?php }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <h2>Casts</h2><br>
    <div class="card-deck">
        <?php
        $casts = $conn->query("SELECT CASTS FROM MOVIES WHERE ID = $menuItem");
        if (!$casts) {
            echo "Failed";
        } else {
            $row = $casts->fetch_assoc();
            $casts_array = explode(",", $row["CASTS"]);
            //var_dump($casts_array);
            //echo count($casts_array);
        }
        foreach ($casts_array as $temp) {
            //echo $temp;
            $result = $conn->query("SELECT NAME, IMAGE FROM CASTS WHERE VALUE = '$temp'");
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
            } else {
                echo "No results found";
            }
            ?>
            <div class="card" style="min-height:300px; width:200px; background-color: rgb(23, 23, 23);">
                <img src="<?php echo $row["IMAGE"]; ?>" class="card-img-top" alt="<?php echo $row["NAME"]; ?>" style="border-radius: 20px;">
                <div class="card-body">
                    <h5 class="card-title" style="text-align:center;"><?php echo $row["NAME"]; ?></h5>
                </div>
            </div>
        <?php
        }
        ?>

    </div>
    <br>
    <h2>Releted Movies</h2><br>
    <div class="card-deck">
        <?php
        $result = $conn->query("SELECT ID, TITLE, IMAGE FROM MOVIES WHERE GENRE LIKE '%$genre%' LIMIT 4");
        if (!$result) {
            echo "Failed";
        } else {
            while ($row = $result->fetch_assoc()) { ?>
                <div class="card" style="min-height:300px; width:200px; background-color: rgb(23, 23, 23);">
                    <img src="<?php echo $row["IMAGE"]; ?>" alt="<?php echo $row["TITLE"]; ?>" class="card-img-top" style="border-radius: 20px;">
                    <div class="card-body" style="text-align:center;">
                        <h5 class="card-title"><?php echo $row["TITLE"]; ?></h5>
                        <a href="selected.php?item=<?php echo $row['ID'] ?>" class="stretched-link"></a>
                    </div>
                </div>
        <?php }
        }
        $conn->close();
        ?>

    </div>
</section>


<!-- footer -->
<?php include("/srv/http/MovieTime/include/footer.php"); ?>