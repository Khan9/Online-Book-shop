<?php
require_once 'core/init.php';
include 'includes/head.php';


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



if (isset($_GET['proid'])) {
    $id = sanitize($_GET['proid']);
    $results = $db->query("SELECT * FROM cart WHERE id = '$id'");


    $subtotal = 0;
}
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
                <h3 class="textC">Checkout</h3> 
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
    <br>





    <div class="row text-center" style="width: 90%; margin-left: 40px;">
        <h4>Order List</h4>
        <table class="table table-bordered table-striped table-responsive">
            <thead class="bg-success">
            <th>Order id</th>
            <th>Order Date</th>
            <th>Item Name</th>
           <!-- <th>Item Size</th> -->
            <th>Item Quantity</th>
            <th>Unit Price</th>
            <th>Total Price</th>
            </thead>
            <tbody>
                <?php while ($order = mysqli_fetch_assoc($results)) : ?>
                    <tr>
                        <td><?php echo $order['id']; ?></td>
                        <td><?php echo $order['time']; ?></td>
                        <td><?php echo $order['pname']; ?></td>
                        <!-- <td><?php echo $order['psize']; ?></td> -->
                        <td><?php echo $order['pquantity']; ?></td>
                        <td><?php echo $order['pprice']; ?></td>
                        <td><?php echo $order['tprice']; ?></td>
                        <?php
                        $subtotal = $subtotal + $order['tprice'];
                        ?>
                    </tr>
                <?php endwhile; ?>
            </tbody>
            <tfoot>
                <tr class="bg-danger">
                    <td></td>
                    <td></td>
                    <td></td>
                   <!-- <td></td> -->
                    <td></td>
                    <td><h4>Subtotal</h4></td>
                    <td><h4> <?= number_format($subtotal, 2); ?> (BDT)</h4></td>
                </tr>
            </tfoot>
        </table>

    </div>
    <br>


    <?php
    $usernameinfo = $_SESSION['username2'];
    $results2 = $db->query("SELECT * FROM users2 WHERE username = '$usernameinfo'");
    ?>



    <div class="row text-center" style="width: 90%; margin-left: 40px;">

        <div class="col-md-6">
            <h4>User Info.</h4>
            <table class="table table-bordered table-striped table-responsive">
                <thead class="bg-warning">
                <th>Full Name</th>
                <th>Address</th>
                <th>Phone</th>
                </thead>
                <tbody>
                    <?php while ($userinfo = mysqli_fetch_assoc($results2)) : ?>
                        <tr>
                            <td><?php echo $userinfo['fullname']; ?></td>
                            <td><?php echo $userinfo['address']; ?></td>
                            <td><?php echo $userinfo['phone']; ?></td>

                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-5">
            <h4>Add Payment Method and Shipping Address</h4>
            <?php
            $sql6 = $db->query("SELECT * FROM users2 WHERE username = '$usernameinfo'");
            while ($row6 = mysqli_fetch_assoc($sql6)) {

                $sql7 = $db->query("SELECT * FROM cart WHERE id = '$id'");
                $order7 = mysqli_fetch_assoc($sql7);
                ?>


                <form method="post" action="" class="form-horizontal">

                    <?php include('errors.php'); ?>

                    <input class="form-control" type="hidden" name="orderid" value="<?php echo $order7['id']; ?>">
                    <input class="form-control" type="hidden" name="subtotal" value="<?php echo $subtotal; ?>">
                    <input class="form-control" type="hidden" name="otime" value="<?php echo $order7['time']; ?>">
                    <input class="form-control" type="hidden" name="cusername" value="<?php echo $row6['username']; ?>">
                    <input class="form-control" type="hidden" name="cfullname" value="<?php echo $row6['fullname']; ?>">
                    <input class="form-control" type="hidden" name="cphone" value="<?php echo $row6['phone']; ?>">

                    <div class="form-group has-success">
                        <input class="form-control" type="text" name="saddress" placeholder="Shipping Address" id="inputSuccess1" aria-describedby="helpBlock2">
                        <span id="helpBlock2" class="help-block">Shipping Address Is Necessary!</span>
                    </div>

                    <div class="form-group has-success">
                        <select class="form-control" name="payment" id="inputSuccess1" aria-describedby="helpBlock3">
                            <option value="0">Select Payment Option</option>
                            <option value="cash"> Cash On Delivery </option>
                            <option value="card"> Swipe Card On Delivery </option>
                        </select>
                        <span id="helpBlock3" class="help-block">Please Select a Payment Method!</span>
                    </div>

                    <button type="submit" class="btn btn-success" name="placeorder">Place Order</button>


                </form>

                <?php
            }
            ?>
        </div>
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
