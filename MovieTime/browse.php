<?php
define("TITLE", "Browse");
?>
<?php include("/srv/http/MovieTime/include/header.php"); ?>

<?php
include("/srv/http/MovieTime/include/connection.php");
$result = $conn->query("SELECT ID, TITLE, IMAGE, GENRE FROM MOVIES ORDER BY TITLE");
?>

<section class="browse">
    <div class="wrapper" style="height:100%;">
        <div class="card mb-3" style="background-color: rgb(23, 23, 23); border:0px;">
            <div class="row no-gutters">
                <div class="col-md-4 navigation">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">All</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <div class="row">
                            <?php
                            while ($row = $result->fetch_assoc()) { ?>
                                <div class="col-4">
                                    <div class="card" style="background-color: rgb(23, 23, 23); text-align:center; margin-bottom:30px; min-width:250px">
                                        <img src="<?php echo $row['IMAGE']; ?>" class="card-img-top" alt="<?php $row['TITLE']; ?>" style="border-radius:20px;">
                                        <div class="card-body">
                                            <h6 class="card-title"><?php echo $row["TITLE"]; ?></h6>
                                            <a href="/MovieTime/selected.php?item=<?php echo $row['ID']; ?>" class="stretched-link"></a>
                                        </div>
                                    </div>
                                </div>
                            <?php }
                            $conn->close();
                            ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php include("/srv/http/MovieTime/include/footer.php"); ?>