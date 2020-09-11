<?php
require_once 'core/init.php';
include 'includes/head.php';
//include 'includes/navigation.php';
//Session Code Start
if (!isset($_SESSION['username2'])) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
}

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username2']);
    header("location: login.php");
}
//End of Session Code

$username5 = $_SESSION['username2'];
?>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">

    <div class="container-fluid">

        <div class="row row1">
            <div class="col-md-4">
            </div>

            <div class="col-md-4 text-center">
                <div class="row">
                    <a href="index.php"> <img src="images/logo.png" alt="logo" title="logo" style="width: 33%;"/> </a>
                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>

    </div>    


    <div class="container-fluid row2">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">

                <?php
                $sql2 = "SELECT * FROM brand;";
                $parentmenu2 = $db->query($sql2);
                ?>
               <!-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> All Products <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <?php while ($menu2 = mysqli_fetch_assoc($parentmenu2)) : ?>
                            <li><a href="allproducts.php?cat=<?= $menu2['id']; ?>"> <?php echo $menu2['brand']; ?> </a></li>
                        <?php endwhile; ?>
                    </ul>
                </li> -->



                <?php
                $sql = "SELECT * FROM categories WHERE parent = 0";
                $parentmenu = $db->query($sql);
                ?>

                <?php while ($menu = mysqli_fetch_assoc($parentmenu)) : ?>
                    <?php
                    $parent_id = $menu['id'];

                    $sql2 = "SELECT * FROM categories WHERE parent = '$parent_id'";
                    $submenu = $db->query($sql2);
                    ?>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <?php echo $menu['category']; ?> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <?php while ($dropmenu = mysqli_fetch_assoc($submenu)) : ?>
                                <li><a href="category.php?cat=<?= $dropmenu['id']; ?>"> <?php echo $dropmenu['category']; ?> </a></li>
                            <?php endwhile; ?>
                        </ul>
                    </li>
                <?php endwhile; ?>


            </ul>
            <!--<ul class="nav navbar-nav">
                <li><a href="hero.php">Best Selling Heroes</a></li> -->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart </a></li>
                <li><a href="dashboard.php"><span class="glyphicon glyphicon-user"></span> Profile </a></li>
                <li><a href="login.php"> Login </a></li>
            </ul>

        </div>
    </div>
</nav>


<!-- Main Content -->
<div class="container">
    </br>
    </br>
    </br>
    </br>
    </br>

    <div class="titleC">
        <div class="row">
            <div class="col-md-4">
                <h3 class="textC">User Home</h3> 
            </div>

            <div class="col-md-4"></div>

            <div class="col-md-4">
                <?php if (isset($_SESSION['loginuser'])) : ?>
                    <div class="row" >
                        <h3>
                            <?php
                            echo $_SESSION['loginuser'];
                            unset($_SESSION['loginuser']);
                            ?>
                        </h3>
                    </div>
                <?php endif ?>

                <!-- logged in user information -->
                <?php if (isset($_SESSION['username2'])) : ?>
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <h4><span class="glyphicon glyphicon-user"></span> <?php echo $_SESSION['username2']; ?> </h4>
                        </div>
                        <div class="col-md-4">
                            <h4><span class="glyphicon glyphicon-share"></span> <a href="index.php?logout='1'" style="color: red;">logout</a></h4>
                        </div>
                    </div>
                <?php endif ?>    
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <img class="img-responsive" src="images/pic12.jpg">
        </div>
        <div class="col-md-3"></div>
    </div>
</div>


<div class="container">
    
    <h3>Pending Orders</h3>
    <div class="row">

        <?php
        $results = $db->query("SELECT orders.orderid, orders.odate, cart.pname, cart.pquantity, cart.psize, orders.fullname, orders.saddress, orders.phone, orders.subtotal, orders.payment, orders.deleted FROM orders 
            INNER JOIN cart ON orders.orderid = cart.id WHERE orders.username = '$username5' AND orders.deleted = 0");
        ?>

        <table class="table table-bordered table-condensed table-striped">
            <thead class="bg-warning">
            <th>Order id</th>
            <th>Order Date</th>
            <th>Product</th>
            <th>Quantity</th>
            <!--<th>Size</th>-->
            <th>Name</th>
            <th>Shipping Address</th>
            <th>Phone</th>
            <th>Total(BDT)</th>
            <th>Payment Method</th>
            </thead>
            <tbody>
<?php while ($product = mysqli_fetch_assoc($results)) : ?>
                    <tr>
                        <td><?php echo $product['orderid']; ?></td>
                        <td><?php echo $product['odate']; ?></td>
                        <td><?php echo $product['pname']; ?></td>
                        <td><?php echo $product['pquantity']; ?></td>
                       <!-- <td><?php echo $product['psize']; ?></td> -->
                        <td><?php echo $product['fullname']; ?></td>
                        <td><?php echo $product['saddress']; ?></td>
                        <td><?php echo $product['phone']; ?></td>
                        <td><?php echo $product['subtotal']; ?></td>
                        <td><?php echo $product['payment']; ?></td>

                    </tr>
<?php endwhile; ?>
            </tbody>
        </table>


    </div>
</div>
<br>

<?php
include 'includes/footer.php';
