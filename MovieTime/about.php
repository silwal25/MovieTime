<?php
    define("TITLE","MovieTime | About Us");
?>

<?php 
    include("/srv/http/MovieTime/include/header.php");
    include("/srv/http/MovieTime/include/arrays.php");
?>
<div class="about-wrapper wrapper">
    <div class="wrapper">
        <div class="card-group">
                <?php
                    foreach($teamMembers as $member){
                ?>
                    <div class="card" style="padding:10px; border:none;">
                        <img src="/MovieTime/Images/<?php echo $member[image]; ?>.png" class="card-img-top" alt="user">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $member[name]; ?></h5>
                            <p class="card-text"><?php echo $member[bio]; ?></p>
                            <a href="#" class="fab fa-instagram"></a>
                        </div>
                    </div>
                <?php
                    }
                ?>
        </div>
    </div>
    
</div>


<?php include("/srv/http/MovieTime/include/footer.php"); ?>