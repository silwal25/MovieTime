<?php
session_start();
if ($_SESSION["loggedin"] == false || !isset($_SESSION["loggedin"])) {
    header("location: /MovieTime/signin.php");
}
if (isset($_GET["item"])) {
    $menuItem = $_GET["item"];
    unset($_SESSION["cart"]);
    $_SESSION["cart"] = array($menuItem);
    header("location: /MovieTime/checkout.php");
}
echo $_SESSION["loggedin"];
?>