<?php include("/srv/http/MovieTime/include/header.php"); ?>

<?php
    include("/srv/http/MovieTime/include/connection.php");
?>
<div class="wrapper">
<div class="container">
            <div>
            <h1> CART </h1>
        <table class="table table-striped">
            <tbody>
                <tr><th>ITEM NUMBER</th> <th>ITEM NAME</th> <th>PRICE</th></tr>
                <?php
                    $total = 0;
                    foreach($_SESSION["cart"] as $item){
                        $result = $conn -> query("SELECT ID, TITLE, PRICE FROM MOVIES WHERE ID = '$item'");
                        $row = $result -> fetch_assoc();
                        $total += $row["PRICE"];
                        ?>
                        <tr>
                            <td><?php echo $row["ID"]; ?></td>
                            <td><?php echo $row["TITLE"]; ?></td>
                            <td><?php echo $row["PRICE"]; ?></td>
                        </tr>
                <?php }
                    $conn -> close();
                ?>
                
                <tr>
                    <td></td>
                    <td>Total</td>
                    <td><?php echo $total; ?></td>
                    <td><a class="btn btn-primary" href="/MovieTime/checkout.php">Confirm Order</a></td>
                </tr>
             </tbody>   
          </table>
            </div>
          </div>

</div>


<?php include("/srv/http/MovieTime/include/footer.php"); ?>