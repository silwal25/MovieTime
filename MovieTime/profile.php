<?php
session_start();
include("/srv/http/MovieTime/include/connection.php");
include("/srv/http/MovieTime/include/header.php");
$userID = $_SESSION["id"];
$result = $conn->query("SELECT * FROM USERS WHERE ID = '$userID'");
$row = $result->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $address = $_POST["address"];
    $state = $_POST["state"];
    $city = $_POST["city"];
    $zip = $_POST["zip"];
    $conn->query("UPDATE USERS SET FIRSTNAME = '$firstname',
     LASTNAME = '$lastname', EMAIL = '$email',
      ADDRESS = '$address', STATE = '$state',
       CITY = '$city', ZIP_CODE = '$zip' WHERE ID = '$userID'") or die("error" . $conn->error);
    header("location: /MovieTime/profile.php");
}

$conn->close();
?>

<section class="wrapper profile">
    <div class="card mb-3" style="max-width: 100%; border:none;">
        <div class="row no-gutters">
            <div class="col-md-3" style="padding:40px; border-right:2px solid white;">
                <nav class="nav flex-column">
                    <a href="" class="nav-link">Profile</a>
                </nav>
            </div>
            <div class="col-md-9">
                <div class="card-body" style="padding-left: 80px;">
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                        <p>
                            <label for="" style="display:inline-block;">Firstname</label>
                            <input type="text" name="firstname" style="margin-left:50px;" value="<?php echo $row['FIRSTNAME']; ?>">
                        </p>
                        <p>
                            <label for="">Lastname</label>
                            <input type="text" name="lastname" style="margin-left:53px;" value="<?php echo $row['LASTNAME']; ?>">
                        </p>
                        <p>
                            <label for="email">Email ID</label>
                            <input type="text" name="email" style="margin-left:61px;" value="<?php echo $row['EMAIL']; ?>">
                        </p>
                        <p>
                            <label for="">Address</label>
                            <textarea name="address" cols="30" rows="3" style="margin-left:69px;"><?php echo $row['ADDRESS']; ?></textarea>
                        </p>
                        <p>
                            <label for="">City</label>
                            <input type="text" name="city" style="margin-left:103px;" value="<?php echo $row['CITY']; ?>"></p>
                        <p>
                            <label for="">State</label>
                            <input type="text" name="state" style="margin-left:93px;" value="<?php echo $row['STATE']; ?>">
                        </p>
                        <p>
                            <label for="">Zip Code</label>
                            <input type="number" name="zip" style="margin-left:63px;" value="<?php echo $row['ZIP_CODE']; ?>">
                        </p>
                        <button type="submit" class="btn btn-success">Update information</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<?php include("/srv/http/MovieTime/include/footer.php"); ?>