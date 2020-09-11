</br>
</br>
</br>
</br>
</br>
</br>
<?php
require_once '../core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';


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


$results = $db->query("SELECT * FROM products Where deleted = 1");


//Restore Product
        if(isset($_GET['edit'])){
            $id = sanitize($_GET['edit']);
            $db->query("UPDATE products SET deleted = 0 WHERE id = '$id'");
            header('Location: products.php');
        }

?>

<div class="container text-center">

    <div class="row">
        <div class="col-md-4"></div>
        
        <div class="col-md-4">
            <h2 class="text-center">Removed Items</h2>
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

    <table class="table table-bordered table-striped table-responsive">
        <thead class="bg-warning">
        <th></th>
        <th>Name</th>
        <th>Price</th>
        <th>List Price</th>
        <th>Brand</th>
        </thead>
        <tbody>
<?php while ($brand = mysqli_fetch_assoc($results)) : ?>
                <tr>
                    <td><a class="btn btn-sm btn-success" href="bin.php?edit=<?php echo $brand['id']; ?>"><span class="glyphicon glyphicon-refresh"></span></a></td>
                    <td><?php echo $brand['title']; ?></td>
                    <td><?php echo $brand['price']; ?></td>
                    <td><?php echo $brand['list_price']; ?></td>
                    <td><?php echo $brand['description']; ?></td>
                </tr>
<?php endwhile; ?>
        </tbody>
    </table>
    
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    
    
    

</div>

<?php
include 'includes/footer.php';
