<?php
// Initialize the session
session_start();
// Check if user has already logged in or not
if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
    header("location: /MovieTime/index.php");
    exit;
}
// establishing the connection to the database
require "/srv/http/MovieTime/include/connection.php";

// Defining variables
$email = $password = "";
$email_err = $password_err = "";

// Processing form request when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // check if email is empty
    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter username";
    } else {
        $email = trim($_POST["email"]);
    }

    // check if password is empty
    if (empty(trim($_POST["password"]))) {
        $password_err = "Please enter password";
    } else {
        $password = trim($_POST["password"]);
    }

    // validation
    if (empty($email_err) && empty($password_err)) {
        if ($result = $conn->prepare("SELECT ID, EMAIL, FIRSTNAME, PASSWORD FROM USERS WHERE EMAIL = ?")) {
            $result->bind_param("s", $email);
            if ($result->execute()) {
                $result->store_result();
                if ($result->num_rows == 1) {
                    $result->bind_result($id, $email, $firstName, $hashedPassword);
                    if ($result->fetch()) {
                        if (password_verify($password, $hashedPassword)) {
                            // password is correct so start a new session
                            session_start();

                            // storing data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["email"] = $email;
                            $_SESSION["id"] = $id;
                            $_SESSION["firstName"] = $firstName;

                            // redirect to home page
                            header("location: /MovieTime/index.php");
                        } else {
                            $password_err = "Invalid Password";
                        }
                    }
                } else {
                    // Display an error message if user doesn't exist
                    $email_err = "User doesn't exist";
                }
            } else {
                echo "Oops something went wrong. Please try again";
            }
        }
    }
}
$conn->close();

?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign In | MovieTime</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="/MovieTime/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <style>
        @font-face {
            font-family: "Montsarrat";
            src: url("/MovieTime/Fonts/Montserrat-Regular.otf");
        }

        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: rgb(23, 23, 23);
            color: white;
            font-family: "Montserrat";
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .form-control {
            padding: 5px;
        }
    </style>
</head>

<body class="text-center">
    <form class="form-signin" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="POST">
        <a href="/MovieTime/index.php"><img class="mb-4" src="/MovieTime/Images/movietimelogo.png" alt="" style="min-width:72 height:72"></a>
        <!--<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>-->
        <label for="email" class="sr-only">Email address</label>
        <input type="email" name="email" class="form-control" placeholder="Email address" value="<?php echo $email; ?>" required autofocus>
        <span class="help-block"><?php echo $email_err; ?></span>
        <label for="password" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <span class="help-block"><?php echo $password_err; ?></span>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</body>

</html>