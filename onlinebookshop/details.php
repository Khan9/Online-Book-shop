<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';


//Details Product Page
if (isset($_GET['proid'])) {
    $id = sanitize($_GET['proid']);
    $results = $db->query("SELECT * FROM products WHERE id = '$id'");
    $product = mysqli_fetch_assoc($results);

    $id2 = $product['brand'];
    $results2 = $db->query("SELECT * FROM brand WHERE id = '$id2'");
    $brand = mysqli_fetch_assoc($results2);

    $sizestring = $product['sizes'];
    $sizestring = rtrim($sizestring, ',');
    $size_array = explode(',', $sizestring);
}
?>
</br>
</br>
</br>
</br>
</br>		

<div class="titleC container">
    <div class="row">
        <div class="col-md-12">
            <h3 class="textC"><?= $product['title']; ?></h3> 
        </div>
    </div>
</div>
<br>
<div class="container">  
    <div class="row">
        <div class="col-sm-6">
            <div class="center-block">
                <img class="details img-responsive" src="<?php echo $product['image']; ?>" alt="<?php echo $product['title']; ?>" style="margin: 0 auto;">                
            </div>
        </div>

        <div class="col-sm-6">
            <h4>Details</h4>
            <p><?php echo nl2br($product['description']); ?></p>
            <hr>
            <h4 class="list-price text-danger">Previous Price (BDT): <?php echo $product['list_price']; ?></h4>
            <h4 class="text-warning">Price (BDT): <?php echo $product['price']; ?></h4>
            <h5>Brand: <?php echo $brand['brand']; ?></h5>

            <hr>

            <form action="cart.php?action=add&id=<?= $product['id']; ?>" method="post">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="quantity">Quantity:</label>
                            <input class="form-control" id="quantity" type="number" name="quantity" value="1">
                            <input class="form-control" id="" type="hidden" name="hidden_price" value="<?= $product['price']; ?>">
                            <input class="form-control" id="" type="hidden" name="hidden_name" value="<?= $product['title']; ?>">
                            <input class="form-control" id="" type="hidden" name="hidden_size" value="<?= $product['sizes']; ?>">
                            <input class="form-control" id="" type="hidden" name="hidden_image" value="<?= $product['image']; ?>">
                        </div>
                    </div>

                    <!-- <div class="col-sm-4">
                        <div class="form-group">
                            <label for="size">Size:</label>
                            <select name="size" class="form-control" id="size">
                                <option value=""></option>
                                <?php
                                foreach ($size_array as $string) {
                                    $string_array = explode(':', $string);
                                    $size = $string_array[0];
                                    $quantity = $string_array[1];
                                    echo '<option value="' . $size . '">' . $size . ' (' . $quantity . ' Available)</option>';
                                }
                                ?>
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-5"></div>

                </div>
				-->
                <hr>
                <div class="row">
                    <div class="col-md-7"></div>
                    <div class="col-md-5">
                        <button type="submit" class="btn btn-warning" name="add_to_cart"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<br>

<?php
include 'includes/footer.php';
