<?php
include("/srv/http/MovieTime/include/connection.php");
include("/srv/http/MovieTime/include/header.php");
session_start();
if (isset($_GET[$item])) {
    $menuItem = $_GET[$item];
}
if ($_SESSION["loggedin"] == false) {
    header("location: /MovieTime/signin.php");
}
?>

<section class="wrapper" style="margin-top:100px;">
    <?php
    if (empty($_SESSION["cart"])) { ?>
        <h3>Your cart is empty. :-(</h3><br>
        <a href="/MovieTime/index.php" class="btn btn-success nounderline">Go Back</a>
    <?php } else { ?>
        <table id="cart" class="table table-hover table-condensed">
            <thead>
                <tr>
                    <th style="width:50%">Product</th>
                    <th style="width:10%">Price</th>
                    <th style="width:8%">Quantity</th>
                    <th style="width:10%"></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $total = 0;
                    foreach ($_SESSION["cart"] as $item) {
                        $result = $conn->query("SELECT ID, TITLE, IMAGE, PRICE FROM MOVIES WHERE ID = '$item'");
                        $row = $result->fetch_assoc();
                        $total += $row["PRICE"];
                        ?>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="<?php echo $row["IMAGE"]; ?>" alt="<?php echo $row["TITLE"]; ?>" class="img-responsive" /></div>
                                <div class="col-sm-10">
                                    <h4 class="nomargin"><?php echo $row["TITLE"]; ?></h4>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">₹<?php echo $row["PRICE"]; ?></td>
                        <td data-th="Quantity">
                            1
                        </td>
                        <td class="actions" data-th="">
                            <a type="button" class="btn btn-danger btn-sm" href="delete.php?item=<?php echo $row['ID']; ?>"><i class="fa fa-trash-o"></i></a>
                        </td>
                    </tr>
                <?php }
                    $conn->close();
                    ?>

            </tbody>
            <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><strong>Total:₹<?php echo $total; ?></strong></td>
                </tr>
                <tr>
                    <td><a href="/MovieTime/index.php" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td><a href="/MovieTime/checkout.php" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
                </tr>
            </tfoot>
        </table>

    <?php }
    ?>

</section>

<?php include("/srv/http/MovieTime/include/footer.php"); ?>