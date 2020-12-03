<?php
include("/srv/http/MovieTime/include/connection.php");
session_start();
$userID = $_SESSION["id"];
date_default_timezone_set('UTC');
foreach ($_SESSION["cart"] as $item) {
    $result = $conn->query("SELECT TITLE FROM MOVIES WHERE ID = '$item'");
    $row = $result->fetch_assoc();
    $title = $row["TITLE"];
    $date = date("Y-m-d");
    $userID = $_SESSION["id"];
    if (!$conn->query("INSERT INTO ORDERS (TITLE, USER_ID, DATE) VALUES ('$title', '$userID', '$date')")) {
        echo $conn->error;
    }else {
        header("location: /MovieTime/confirmation.php");
    }
}
$conn->close();
?>