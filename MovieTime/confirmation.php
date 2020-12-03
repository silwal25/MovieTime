<?php
include("/srv/http/MovieTime/include/connection.php");
session_start();
$userID = $_SESSION["id"];
include("/srv/http/MovieTime/include/header.php");
?>

<div class="wrapper">
    <div class="confirmation-text">
        <p>
            <h3 style="color:#3AF065;">Thank you for shopping with us.</h3>
        </p>
        <p>Your order has been confirmed. It will reach you in 2-3 business days.</p>
        <p>
            Your order details are as follows: <br>
            <ul>
                <?php
                $temp = count($orderID_array);
                foreach ($_SESSION["cart"] as $item) {
                    $result = $conn->query("SELECT TITLE FROM MOVIES WHERE ID = '$item'") or die("error");
                    $row = $result->fetch_assoc();
                    ?>
                    <li><?php echo $row["TITLE"]; ?></li>
                <?php }
                $conn->close();
                unset($_SESSION["cart"]);
                ?>
            </ul>
        </p>

        <a href="/MovieTime/index.php" class="btn btn-success">Go Home</a>
    </div>

</div>