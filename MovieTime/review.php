<?php
session_start();
$userID = $_SESSION["id"];

// Defining variables

include("/srv/http/MovieTime/include/connection.php");
if (isset($_GET[$item])) {
    $menuItem = $_GET[$item];
}
$userResult = $conn->query("SELECT FIRSTNAME, LASTNAME, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE FROM USERS WHERE ID = '$userID'");
$userData = $userResult->fetch_assoc();
?>

<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/MovieTime/css/bootstrap.min.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="/MovieTime/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/48b58a8a1e.js" crossorigin="anonymous"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/MovieTime/style.css">
    <style>
        body{
            background-color: white;
            color:black;
        }
        td, th{
            color:black;
            padding: 10px;
        }
    </style>
    <title><?php echo TITLE; ?></title>
</head>

<body>
    <secction class="container">
        <div class="row">
            <br>
            <div class="col-md-12">
                <div class="col-md-8 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-default">
                        <div class="panel-heading text-center">
                            <h4>Current Cart</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table borderless" style="width:100%;">
                                <thead>
                                    <tr>
                                        <td style="width:60%; text-align:center;"><strong>Title</strong></td>
                                        <td style="width:20%; text-align:center;">Quantity</td>
                                        <td style="width:20%; text-align:center;">Price</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $total = 0;
                                    foreach ($_SESSION["cart"] as $item) {
                                        $result = $conn->query("SELECT ID, TITLE, IMAGE, PRICE FROM MOVIES WHERE ID = '$item'");
                                        $row = $result->fetch_assoc();
                                        $total += $row["PRICE"];
                                        ?>
                                        <tr>
                                            <td class="col-md-3">
                                                <div class="media">
                                                    <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<?php echo $row['IMAGE']; ?>" style="width: 100px; height: 150px;"> </a>
                                                    <div class="media-body">
                                                        <h5 class="media-heading"><?php echo $row["TITLE"]; ?></h5>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">1</td>
                                            <td class="text-right"><?php echo $row["PRICE"]; ?></td>
                                        </tr>
                                    <?php }
                                    $conn->close();
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-default">
                        <?php
                            
                        ?>
                        <div class="panel-heading text-center">
                            <h4>Review Order</h4>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                Name: <?php echo $userData["FIRSTNAME"] . " " . $userData["LASTNAME"]; ?>
                            </div>
                            <div class="col-md-12">
                                Email: <?php echo $userData["EMAIL"] ?>
                            </div>
                            <div class="col-md-12">
                                Shipping Address: <?php echo $userData["ADDRESS"] . " " . $userData["CITY"] . " " . $userData["STATE"] . " " . $userData["ZIP_CODE"]; ?>
                                <hr>
                            </div>
                            <div class="col-md-12">
                                <strong>Order Total</strong>
                                <div class="pull-right"><span>$</span><span><?php echo $total; ?></span></div>
                                <hr>
                            </div>

                            <a type="button" class="btn btn-success btn-lg btn-block" href="/MovieTime/confirmation.php">Confirm Order</a>
                            <a type="button" class="btn btn-secondary btn-lg btn-block" href="/MovieTime/index.php">Go back to Homepage</a>

                        </div>

                    </div>
                    <!--REVIEW ORDER END-->
                </div>
            </div>
        </div>
    </div>
</body>

</html>