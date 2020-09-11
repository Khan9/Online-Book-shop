</br>
</br>
</br>
</br>
</br>
<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';

if(isset($_GET['cat'])){
    $cat_id = sanitize($_GET['cat']);
}
 else {
     $cat_id = '';
}

?>


<!-- Main Content -->
<div class="container">


    <div class="row">

        
        <?php
            $sql = "SELECT * FROM products WHERE title LIKE '%hero%'";
            $featured = $db->query($sql);
            ?>
            
        
        <div class="titleC container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="textC">All Products from Best Selling Heroes</h3> 

                </div>
            </div>
        </div>
        <br>
        <div class="row chain-grid text-center">
            <?php while ($product = mysqli_fetch_assoc($featured)) : ?>
                <div class="col-md-3">
                    <h4 style="font-weight:bold;"><?php echo $product['title']; ?></h4>
                    <img class="img-thumb img-responsive" src="<?php echo $product['image']; ?>" alt="<?php echo $product['title']; ?>">
                    <p class="list-price text-danger">List Price: <s><?php echo $product['list_price']; ?></s></p>
                    <p class="price">Our Price: <?php echo $product['price']; ?></p>
                    <a class="add1 item_add" href="details.php?proid=<?php echo $product['id']; ?>"><span class="glyphicon glyphicon-search"></span> Details</a>

                </div>
            <?php endwhile; ?>

        </div>
    </div>
</div>
<br>




<?php
include 'includes/footer.php';
