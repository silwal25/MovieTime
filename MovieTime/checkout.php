<?php
session_start();
$userID = $_SESSION["id"];

// Defining variables

include("/srv/http/MovieTime/include/connection.php");
if (isset($_GET[$item])) {
    $menuItem = $_GET[$item];
}
$result = $conn->query("SELECT FIRSTNAME, LASTNAME, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE FROM USERS WHERE ID = '$userID'");
$userData = $result->fetch_assoc();

//form validation
$fname = $lname = $address = $email = $city = $state = $zip = "";
$fname_err = $lname_err = $address_err = $email_err = $city_err = $state_err = $zip_err = $delivery_err = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // check for empty fields
    if (empty(trim($_POST["firstname"]))) {
        $fname_err = "Please enter firstname";
    } else {
        $fname = trim($_POST["firstname"]);
    }

    if (empty(trim($_POST["lastname"]))) {
        $lname_err = "Please enter lastname";
    } else {
        $lname = trim($_POST["lastname"]);
    }

    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter email";
    } else {
        $email = trim($_POST["emailname"]);
    }

    if (empty(trim($_POST["address"]))) {
        $address_err = "Please enter address";
    } else {
        $address = trim($_POST["address"]);
        $conn -> query("UPDATE USERS SET ADDRESS = '$address' WHERE ID = '$userID'");
    }

    if (empty(trim($_POST["city"]))) {
        $city_err = "Please enter city";
    } else {
        $city = trim($_POST["city"]);
        $conn -> query("UPDATE USERS SET CITY = '$city' WHERE ID = '$userID'");
    }

    if (empty(trim($_POST["state"]))) {
        $state_err = "Please enter state";
    } else {
        $state = trim($_POST["state"]);
        $conn -> query("UPDATE USERS SET STATE = '$state' WHERE ID = '$userID'");
    }

    if (empty(trim($_POST["zip"]))) {
        $zip_err = "Please enter zipcode";
    } else {
        $zip = trim($_POST["zip"]);
        $conn -> query("UPDATE USERS SET ZIP_CODE = '$zip' WHERE ID = '$userID'");
    }

    if ($_POST["cod"] == false) {
        $delivery_err = "Please select delivery method";
    }
   
    if (empty($fname_err) && empty($lname_err) && empty($email_err) && empty($address_err) && empty($state_err) && empty($city_err) && empty($zip_err) && empty($delivery_err)) {
        header("location: /MovieTime/review.php");
    }
}


?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        @font-face {
            font-family: "Montsarrat";
            src: url("/MovieTime/Fonts/Montserrat-Regular.otf");
        }

        @font-face {
            font-family: "Montsarrat-Bold";
            src: url("/MovieTime/Fonts/Montserrat-Bold.otf");
        }

        body {
            font-family: "Montsarrat";
            font-size: 17px;
            padding: 8px;
        }


        * {
            box-sizing: border-box;
        }

        .row {
            display: -ms-flexbox;
            /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap;
            /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%;
            /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%;
            /* IE10 */
            flex: 50%;
        }

        .col-75 {
            -ms-flex: 75%;
            /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }

        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }
        .error {
                color: red;
                font-size: 10px;
        }

        .btn-custom{
            width: 100%;
            background-color: grey;
        }
    </style>
</head>

<body>

    <section class="wrapper">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" id="checkout">

                        <div class="row">
                            <div class="col-50">
                                <h3>Billing Address</h3>
                                <label for="firstName"><i class="fa fa-user"></i> First Name</label>
                                <input type="text" id="firstName" name="firstname" placeholder="John M. Doe" value="<?php echo $userData['FIRSTNAME']; ?>">
                                <span class="error"><?php echo $fname_err; ?></span>
                                <label for="lastName"><i class="fa fa-user"></i> Last Name</label>
                                <input type="text" id="lastName" name="lastname" placeholder="John M. Doe" value="<?php echo $userData['LASTNAME']; ?>">
                                <span class="error"><?php echo $lname_err; ?></span>
                                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                                <input type="text" id="email" name="email" placeholder="john@example.com" value="<?php echo $userData['EMAIL']; ?>">
                                <span class="error"><?php echo $email_err; ?></span>
                                <label for="address"><i class="fa fa-address-card-o"></i> Address</label>
                                <input type="text" id="address" name="address" placeholder="542 W. 15th Street" value="<?php echo $userData['ADDRESS']; ?>">
                                <span class="error"><?php echo $address_err; ?></span>
                                <label for="city"><i class="fa fa-institution"></i> City</label>
                                <input type="text" id="city" name="city" placeholder="New York" value="<?php echo $userData['CITY']; ?>">
                                <span class="error"><?php echo $city_err; ?></span>

                                <div class="row">
                                    <div class="col-50">
                                        <label for="state">State</label>
                                        <input type="text" id="state" name="state" placeholder="NY" value="<?php echo $userData['STATE']; ?>">
                                        <span class="error"><?php echo $state_err; ?></span>
                                    </div>
                                    <div class="col-50">
                                        <label for="zip">Zip</label>
                                        <input type="text" id="zip" name="zip" placeholder="10001" value="<?php echo $userData['ZIP_CODE']; ?>">
                                        <span class="error"><?php echo $zip_err; ?></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-50">
                                <h3>Payment method</h3>
                                <label for="cod" class="radio-inline">
                                    <input type="radio" name="cod">Cash on delivery
                                </label>
                                <span class="error"><?php echo $delivery_err; ?></span>
                                <!-- <label for="fname">Accepted Cards</label>
                            <div class="icon-container">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:blue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                <i class="fa fa-cc-discover" style="color:orange;"></i>
                            </div>
                            <label for="cname">Name on Card</label>
                            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
                            <label for="ccnum">Credit card number</label>
                            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                            <label for="expmonth">Exp Month</label>
                            <input type="text" id="expmonth" name="expmonth" placeholder="September">
                            <div class="row">
                                <div class="col-50">
                                    <label for="expyear">Exp Year</label>
                                    <input type="text" id="expyear" name="expyear" placeholder="2018">
                                </div>
                                <div class="col-50">
                                    <label for="cvv">CVV</label>
                                    <input type="text" id="cvv" name="cvv" placeholder="352">
                                </div>
                            </div> -->
                            </div>

                        </div>
                        <label>
                            <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                        </label>
                        <br>
                        <a href="/MovieTime/index.php" class="btn btn-primary btn-block btn-custom" style="text-decoration:none;">Go back to homepage</a>
                        
                    </form>
                </div>
            </div>
            <div class="col-25">
                <div class="container">
                    <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b><?php echo count($_SESSION["cart"]); ?></b></span></h4>
                    <?php
                    $total = 0;
                    foreach ($_SESSION["cart"] as $item) {
                        $result = $conn->query("SELECT ID, TITLE, IMAGE, PRICE FROM MOVIES WHERE ID = '$item'");
                        $row = $result->fetch_assoc();
                        $total += $row["PRICE"];
                        ?>
                        <p><?php echo $row["TITLE"]; ?><span class="price">₹<?php echo $row["PRICE"]; ?></span></p>
                    <?php }
                    $conn->close();
                    ?>
                    <hr>
                    <p>Total <span class="price" style="color:black"><b>₹<?php echo $total; ?></b></span></p>
                    <button type="submit" class="btn" form="checkout">Continue to checkout</button>
                </div>
            </div>
        </div>
    </section>

</body>

</html>