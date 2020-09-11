</br>
</br>
</br>
</br>
</br>
<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';

if (isset($_GET['cat'])) {
    $cat_id = sanitize($_GET['cat']);
} else {
    $cat_id = '';
}
?>

<!-- Main Content -->
<div class="container">


    <div class="row">

        <?php
        $sql = "SELECT * FROM products WHERE brand = '$cat_id' ORDER BY price DESC";
        $featured = $db->query($sql);
        $product2 = mysqli_fetch_assoc($featured);

        $id2 = $product2['brand'];
        $results2 = $db->query("SELECT * FROM brand WHERE id = '$id2'");
        $brand = mysqli_fetch_assoc($results2);
        ?>
        <div class="titleC container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="textC">All Products from <?= $brand['brand']; ?></h3> 

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
<div class="container">
    
        <div class="row">
            <div class="col-md-4">
                <a href="category.php?cat=34"><img src="images/pic6.jpg" class="img-responsive" alt=""></a>
                <div class="arriv-info3">
                    
                    <div class="crt-btn pull-left">
                        <a href="category.php?cat=34">LIVERPOOL</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <a href="category.php?cat=31"><img src="images/pic8.jpg" class="img-responsive" alt=""></a>
                <div class="arriv-info3">
                    
                    <div class="crt-btn pull-left">
                        <a href="category.php?cat=31">MAN CITY</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <a href="category.php?cat=44"><img src="images/pic7.jpg" class="img-responsive" alt=""></a>
                <div class="arriv-info3">
                    
                    <div class="crt-btn pull-left">
                        <a href="category.php?cat=44">BAYERN</a>
                    </div>
                </div>
            </div>
        </div>
</div>
<br>
<br>


<?php
include 'includes/footer.php';
