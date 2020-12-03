<?php
// Include the connection to database
require "/srv/http/MovieTime/include/connection.php";

//Defining variables and initializing with empty values
$firstName = $lastName = $password = $email = "";
$firstName_err = $lastName_err = $password_err = $confirmPassword_err = $email_err = "";

//processing data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //Validate email address
    // Check for empty
    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter an email address";
    } else {
        if ($result = $conn->prepare("SELECT ID FROM USERS WHERE EMAIL = ?")) {
            // Binding parameters
            $result->bind_param("s", $email);

            // Set parameters
            $email = trim($_POST["email"]);

            if ($result->execute()) {
                $result->store_result();
                if ($result->num_rows == 1) {
                    $email_err = "This username is already taken";
                }
            } else {
                echo "Something went wrong. Please try again.";
            }
        }
    }

    // Check for password
    if (empty(trim($_POST["password"]))) {
        $password_err = "Please Enter a password";
    } elseif (strlen(trim($_POST["password"])) < 6) {
        $password_err = "Password should be more than 6 characters";
    } else {
        $password = trim($_POST["password"]);
    }

    // Validate confirm password
    if (empty(trim($_POST["confirmPassword"]))) {
        $confirmPassword_err = "Please confirm password";
    } elseif ($password != trim($_POST["confirmPassword"])) {
        $confirmPassword_err = "Password do not match";
    }

    // Validate first name
    if (empty(trim($_POST["firstName"]))) {
        $firstName_err = "Please enter firstname";
    } elseif (preg_match("/[[:digit:]]/", $_POST["firstName"]) || preg_match("/[[:space:]]/", $_POST["firstName"])) {
        $firstName_err = "Invalid name";
    } else {
        $firstName = $_POST["firstName"];
    }

    // Validate last name
    if (empty(trim($_POST["lastName"]))) {
        $lastName_err = "Please enter lastname";
    } elseif (preg_match("/[[:digit:]]/", $_POST["lastName"]) || preg_match("/[[:space:]]/", $_POST["lastName"])) {
        $lastName_err = "Invalid name";
    } else {
        $lastName = $_POST["lastName"];
    }

    //Check for user input before inserting into the database
    if (empty($firstName_err) && empty($lastName_err) && empty($password_err) && empty($confirmPassword_err) && empty($email_err)) {
        if ($result = $conn->prepare("INSERT INTO USERS (FIRSTNAME, LASTNAME, EMAIL, PASSWORD) VALUES (?, ?, ?, ?)")); {
            // Bind parameters
            $result->bind_param("ssss", $firstName, $lastName, $email, $param_password);
            $param_password = password_hash($password, PASSWORD_DEFAULT);
            if ($result->execute()) {
                header("location: /MovieTime/index.php");
            } else {
                "Something went wrong. Please try again";
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
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Signin Template · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="/MovieTime/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
        @font-face {
            font-family: "Montsarrat";
            src: url("/MovieTime/Fonts/Montserrat-Regular.otf");
        }

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
    </style>
</head>

<body class="text-center">
    <form class="form-signin" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>">
        <a href="/MovieTime/index.php"><img class="mb-4" src="/MovieTime/Images/movietimelogo.png" alt="" style="min-width:72 height:72"></a>
        <h1 class="h3 mb-3 font-weight-normal">Registration Form</h1>
        <label for="firstName" class="sr-only">First Name</label>
        <input type="text" name="firstName" class="form-control" value="<?php echo $firstName ?>" placeholder="First Name" required>
        <span><?php echo $firstName_err ?></span>
        <label for="lastName" class="sr-only">Last Name</label>
        <input type="text" name="lastName" class="form-control" value="<?php echo $lastName ?>" placeholder="Last Name" required>
        <span><?php echo $lastName_err ?></span>
        <label for="email" class="sr-only">Email address</label>
        <input type="email" name="email" class="form-control" value="<?php echo $email ?>" placeholder="Email Address" required>
        <span><?php echo $email_err ?></span>
        <label for="password" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" value="<?php echo $password ?>" placeholder="Enter Password" required>
        <span><?php echo $password_err ?></span>
        <label for="confirmPassword" class="sr-only">Confirm Password</label>
        <input type="password" name="confirmPassword" class="form-control" value="<?php echo $confirm_password ?>" placeholder="Confirm Password" required>
        <span><?php echo $confirmPassword_err ?></span>
        <button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
        <p class="mt-5 mb-3 text-muted">&copy; MovieTime 2019-2019</p>
    </form>
</body>

</html>