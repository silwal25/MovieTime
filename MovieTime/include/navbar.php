<!--Navbar -->
<nav class="mb-1 navbar sticky-top navbar-expand-lg navbar-dark navbar-custom" id="navbar">
    <a class="navbar-brand" href="/MovieTime/index.php">MovieTime</a>
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
                <a class="nav-link" href="/MovieTime/about.php">About Us</a>
            </li>
        </ul>
        
        <form class="form-inline" method="GET" action="result.php">
            <div class="md-form my-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="search">
            </div>
            </form>
        </div>
        
        <li class="nav-item ml-auto dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdownMenu" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
                <i class="far fa-user"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right dropdown-default"
            aria-labelledby="navbarDropdownMenuLink-333">
            <a class="dropdown-item" href="/MovieTime/signin.php">Sign In</a>
            <a class="dropdown-item" href="/MovieTime/register.php">Register</a>
            </div>
        </li>
        </ul>
    </div>
</nav>
<!--/.Navbar -->