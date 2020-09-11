<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';

if (isset($_POST["add_to_cart"])) {
    if (isset($_SESSION["shopping_cart"])) {
        $item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
        if (!in_array($_GET["id"], $item_array_id)) {
            $count = count($_SESSION["shopping_cart"]);
            $item_array = array(
                'item_id' => $_GET["id"],
                'item_name' => $_POST["hidden_name"],
                'item_price' => $_POST["hidden_price"],
                'item_quantity' => $_POST["quantity"],
                //'item_size' => $_POST["hidden_size"],
                'item_image' => $_POST["hidden_image"]
            );
            $_SESSION["shopping_cart"][$count] = $item_array;
        } else {
            //echo '<script>alert("Item Already Added")</script>';
        }
    } else {
        $item_array = array(
            'item_id' => $_GET["id"],
            'item_name' => $_POST["hidden_name"],
            'item_price' => $_POST["hidden_price"],
            'item_quantity' => $_POST["quantity"],
            //'item_size' => $_POST["hidden_size"],
            'item_image' => $_POST["hidden_image"]
        );
        $_SESSION["shopping_cart"][0] = $item_array;
    }
}

if (isset($_GET["action"])) {
    if ($_GET["action"] == "delete") {
        foreach ($_SESSION["shopping_cart"] as $keys => $values) {
            if ($values["item_id"] == $_GET["id"]) {
                unset($_SESSION["shopping_cart"][$keys]);
                //echo '<script>alert("Item Removed")</script>';
                echo '<script>window.location="cart.php"</script>';
            }
        }
    }
}


if (isset($_GET["action"])) {
    if ($_GET["action"] == "deletes") {
        unset($_SESSION["shopping_cart"]);
    }
}
?>





<!-- Main Content -->
<div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>

    <div class="titleC container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="textC">SHOPPING CART</h3> 

            </div>
        </div>
    </div>
    <br> 

<?php
$query = "SELECT * FROM products";
$result = $db->query($query);
$row = mysqli_fetch_array($result);
?>


    <div class="table-responsive">
        <table class="table">
            <tr class="success">
                <th width="15%">Item Name</th>
                <th width="15%">Item Image</th>
                <!-- <th width="15%">Size</th> -->
                <th width="15%">Quantity</th>
                <th width="15%">Price</th>
                <th width="15%">Total</th>
                <th width="10%">Remove</th>
            </tr>
<?php
if (!empty($_SESSION["shopping_cart"])) {
    $total = 0;
    foreach ($_SESSION["shopping_cart"] as $keys => $values) {
        ?>
                    <tr>
                        <td><?php echo $values["item_name"]; ?></td>
                        <td><img class="img-responsive" src="<?php echo $values["item_image"]; ?>"></td>
                       <!-- <td><?php echo $values['item_size']; ?></td> -->
                        <td><?php echo $values["item_quantity"]; ?></td>
                        <td><?php echo $values["item_price"]; ?></td>
                        <td><?php echo number_format($values["item_quantity"] * $values["item_price"], 2); ?></td>
                        <td><a class="btn btn-danger" href="cart.php?action=delete&id=<?php echo $values["item_id"]; ?>"><span class="glyphicon glyphicon-remove"></span></a></td>
                    </tr>
        <?php
        $total = $total + ($values["item_quantity"] * $values["item_price"]);
    }
    ?>
                <tr class="danger">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><h4>Subtotal</h4></td>
                    <td><h4><?php echo number_format($total, 2); ?> (BDT)</h4></td>
                    <td></td>
                </tr>
    <?php
}
?>

        </table>
    </div>

    <div class="row pull-right" style="padding-right: 30px;">

        <form method="post" action="" class="form-horizontal">

            <button type="submit" class="btn btn-success" name="checkout"><span class="glyphicon glyphicon-shopping-cart"></span> Checkout </button>

            <a class="btn btn-danger" href="cart.php?action=deletes&id=0"><span> Clear Cart </span></a>

        </form>
		<hr>

    </div>
</div>    



<br>
<br>
<div class="arriv" style="margin-bottom: -44px;">
    
        <div class="row">
            <div class="col-md-12 arriv-left1">
                <a href="index.php"><img src="images/pic11.jpg" class="img-responsive" alt=""></a>
                
            </div>
            
        </div>
</div>


<?php
include 'includes/footer.php';
