<?php
    session_start();
    if(isset($_GET["item"])){
        $item = $_GET["item"];
    }
    $temp = array_diff($_SESSION["cart"], array("$item"));
    $_SESSION["cart"] = $temp;
    header("location: /MovieTime/cart.php");
?>