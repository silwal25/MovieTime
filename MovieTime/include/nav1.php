<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="/MovieTime/index.php"><img src="/MovieTime/Images/movietimelogo.png" alt="" style="height: 35px; margin:0px; position:relative;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
        aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/MovieTime/index.php">Home
                <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MovieTime/browse.php">Browse</a>
            </li>
        </ul>
        <form class="form-inline" method="GET" action="result.php">
            <div class="md-form my-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="search">
            </div>
            </form>
        </div>
        <li class="nav-item list-unstyled mr-auto">
            <a class="nav-link" href="/MovieTime/cart.php">
                <i class="fas fa-shopping-cart"></i>
            </a>    
        </li>
        <li class="nav-item ml-auto dropdown list-unstyled">
            <a class="nav-link dropdown-toggle" id="navbarDropdownMenu" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
                <i class="far fa-user"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right dropdown-default"
            aria-labelledby="navbarDropdownMenuLink-333">
            <?php
                if($_SESSION["loggedin"] != true || !isset($_SESSION['loggedin'])){ ?>
                    <a class="dropdown-item" href="/MovieTime/signin.php">Sign In</a>
                    <a class="dropdown-item" href="/MovieTime/register.php">Register</a>
            <?php }
                else { ?>
                    <a class="dropdown-item" href="">Welcome <?php echo $_SESSION["firstName"]; ?></a>
                    <a class="dropdown-item" href="/MovieTime/profile.php">Profile</a>
                    <a class="dropdown-item" href="/MovieTime/signout.php">Sign Out</a>
            <?php }
            ?>
            </div>
        </li>
        
    </div>
</nav>