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
            $sql = "SELECT * FROM products WHERE categories = '$cat_id' AND deleted = 0";
            $featured = $db->query($sql);
            
            $results2 = $db->query("SELECT * FROM categories WHERE id = '$cat_id'");
            $brand = mysqli_fetch_assoc($results2);
            
            ?>
            
        
        <div class="titleC container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="textC">All Products from <?= $brand['category']; ?></h3> 

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
<br>
<div class="arriv" style="margin-bottom: -65px;">
    <div class="arriv-bottm">
        <div class="row">
            <div class="col-md-12 arriv-left1">
                <a href="allproducts.php?cat=7"><img src="images/pic10.jpg" class="img-responsive" alt=""></a>
                <div class="arriv-info3">
                    <h3>Books are a uniquely portable magic</h3>
                    <div class="crt-btn pull-left">
                        <a href="">Stephen King</a>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>



<?php
include 'includes/footer.php';
