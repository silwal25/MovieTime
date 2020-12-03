<?php
    
    // credentials for database
    $username = "root";
    $password = "Silwal";
    $hostname = "localhost";
    $database = "MovieTime";

    //creating connection
    $conn = new mysqli($hostname, $username, $password, $database) or die("Connection failed:" . $conn -> connect_error);

?>