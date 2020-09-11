</br>
</br>
</br>
</br>
</br>
<?php
require_once '../core/init.php';
include 'includes/head.php';
//include 'includes/navigation.php';

//Session Code Start
if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
}

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header("location: login.php");
}
//End of Session Code


//Delete Order
    if (isset($_GET['delete'])) {
    $id5 = sanitize($_GET['delete']);
    $db->query("UPDATE orders SET deleted = 1 WHERE orderid = '$id5'");
    $db->query("UPDATE cart SET deleted = 1 WHERE id = '$id5'");
    header('Location: index.php');
}

?>
<div class="row">
    <image class="img-responsive" src="../images/adbg.png" width="100%" alt="Manager" style="opacity: 0.8;">
</div>

<div class="container text-center">
    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">
            <h2 class="text-center">Admin Home</h2>
        </div>

        <div class="col-md-4">
            <?php if (isset($_SESSION['success'])) : ?>
                <div class="row" >
                    <h3>
                        <?php
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                        ?>
                    </h3>
                </div>
            <?php endif ?>

            <!-- logged in user information -->
            <?php if (isset($_SESSION['username'])) : ?>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <h4><span class="glyphicon glyphicon-user"></span> <?php echo $_SESSION['username']; ?> </h4>
                    </div>
                    <div class="col-md-4">
                        <h4><span class="glyphicon glyphicon-share"></span> <a href="index.php?logout='1'" style="color: red;">logout</a></h4>
                    </div>
                </div>
            <?php endif ?>    
        </div>

    </div>
    <hr>
</div>


<div class="container">
<h3>Orders to Ship</h3>
</div>
<br>

<div class="container">
    
    <?php
        
        $results = $db->query("SELECT orders.orderid, orders.odate, cart.pname, cart.pquantity, cart.psize, orders.fullname, orders.saddress, orders.phone, orders.subtotal, orders.payment, orders.deleted FROM orders 
            INNER JOIN cart ON orders.orderid = cart.id WHERE orders.deleted = 0");
    ?>
    
    <table class="table table-bordered table-condensed table-striped">
        <thead class="bg-warning">
        <th>Order id</th>
        <th>Order Date</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Size</th>
        <th>Customer Name</th>
        <th>Shipping Address</th>
        <th>Phone</th>
        <th>Total(BDT)</th>
        <th>Payment Method</th>
        <th>Status</th>
    </thead>
    <tbody>
    <?php
    while ($product = mysqli_fetch_assoc($results)) :?>
            <tr>
                <td><?php echo $product['orderid']; ?></td>
                <td><?php echo $product['odate']; ?></td>
                <td><?php echo $product['pname']; ?></td>
                <td><?php echo $product['pquantity']; ?></td>
                <td><?php echo $product['psize']; ?></td>
                <td><?php echo $product['fullname']; ?></td>
                <td><?php echo $product['saddress']; ?></td>
                <td><?php echo $product['phone']; ?></td>
                <td><?php echo $product['subtotal']; ?></td>
                <td><?php echo $product['payment']; ?></td>
                <td><a class="btn btn-sm btn-danger" href="index.php?delete=<?php echo $product['orderid']; ?>"><span class="glyphicon glyphicon-remove"></span></a></td>
                
                
                
            </tr>
        <?php endwhile; ?>
    </tbody>
    </table>
    
    
</div>


<?php
include 'includes/footer.php';
