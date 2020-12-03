<?php
    session_start();
    if(isset($_GET['item'])){
        $temp = $_GET["item"];
        if($_SESSION["loggedin"] == false || !isset($_SESSION["loggedin"])){
            header("location: /MovieTime/signin.php");
        }else{
            if(isset($_SESSION["cart"])){
                array_push($_SESSION["cart"], $temp);
            }else{
                $_SESSION["cart"] = array($temp);
            }
            header("location: /MovieTime/selected.php?item=$temp");
        }
    }
?>