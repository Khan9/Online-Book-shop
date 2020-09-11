<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';



if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
}
//End of Session Code
?>
<!-------------------------------------------------------------->
<!------------------- Slider Section --------------------------->
<!-------------------------------------------------------------->
<br>
<br>
<br>
<br>
<section class="sliderWide" id="slider"><!--slider1-->
    <div class="">
        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#slider-carousel" data-slide-to="1"></li>
                <li data-target="#slider-carousel" data-slide-to="2"></li>
                <li data-target="#slider-carousel" data-slide-to="3"></li>
                <li data-target="#slider-carousel" data-slide-to="4"></li>
            </ol>

            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/slider1.jpg" class="img-responsive" alt="" title="">
                    <div class="carousel-caption text-uppercase">
                        <h2>A reader lives a thousand lives before he dies</h2>
                        <!---<p>Home Kit 2018/19 Season</p> -->
                        <a class="btn btn-default get" href="">George R.R. Martin</a>
                    </div>
                </div>

                <div class="item">                                    
                    <img src="images/slider2.jpg" class="img-responsive" alt="" title="">
                    <div class="carousel-caption text-uppercase">
                        <h2>Until I feared I would lose it, I never loved to read. One does not love breathing.</h2>
                        <!--<p>Home Kit 2018/19 Season</p>-->
                        <a class="btn btn-default get" href="">Harper Lee</a>
                    </div>
                </div>
                <div class="item">
                    <img src="images/slider3.jpg" class="img-responsive" alt="" title="">
                    <div class="carousel-caption text-uppercase">
                        <h2>Never trust anyone who has not brought a book with them</h2>
                       <!-- <p>Home Kit 2018/19 Season</p> -->
                        <a class="btn btn-default get" href="">Lemony Snicket</a>
                    </div>
                </div>
                <div class="item">
                    <img src="images/slider4.jpg" class="img-responsive" alt="" title="">
                    <div class="carousel-caption text-uppercase">
                        <h2>You can never get a cup of tea large enough or a book long enough to suit me</h2>
                       <!-- <p>Home Kit 2018/19 Season</p> -->
                        <a class="btn btn-default get" href="">C.S. Lewis</a>
                    </div>
                </div>
                <div class="item">
                    <img src="images/slider5.jpg" class="img-responsive" alt="" title="">
                    <div class="carousel-caption text-uppercase">
                        <h2>Reading is essential for those who seek to rise above the ordinary</h2>
                        <!-- <p>Home Kit 2018/19 Season</p> -->
                        <a class="btn btn-default get" href="">Jim Rohn</a>
                    </div>
                </div>
            </div>

            <a href="#slider-carousel" class="left control-carousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
            </a>
            <a href="#slider-carousel" class="right control-carousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>

    </div>

</section><!--/slider1-->

<!-------------------------------------------------------------->
<!--------------------  Grid Section  -------------------------->
<!-------------------------------------------------------------->
<div class="titleC container">
    <div class="row">
        <div class="col-md-12">
            <h3 class="textC">Latest Offers</h3> 

        </div>
    </div>
</div>
<div class="arriv">
    <div class="container">

        <div class="arriv-bottm">
            <div class="row">
                <div class="col-md-7 arriv-left1">
                    <a href="products.html"><img src="images/pic1.jpg" class="img-responsive" alt=""></a>
                    <div class="arriv-info3">
                        <h3>Get 30% Discount On Humayun Ahmed Books</h3>
                        <div class="crt-btn pull-left">
                            <!--<a href="">SHOP NOW</a> -->
                        </div>
                    </div>
                </div>
                <div class="col-md-5 arriv-right1">
                    <a href="products.html"><img src="images/pic2.jpg" class="img-responsive" alt=""></a>
                    <div class="arriv-info3">
                        <h3>Get Signed Cup of Zafor Iqbal</h3>
                        <div class="crt-btn pull-left">
                           <!-- <a href="hero.php">SHOP NOW</a> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>

       <!-- <div class="arriv-las">
            <div class="row">
                <div class="col-md-6 arriv-left2">
                    <a href="allproducts.php?cat=4"><img src="images/pic3.jpg" class="img-responsive" alt=""></a>

                </div>
                <div class="col-md-6 arriv-middle">
                    <a href="allproducts.php?cat=5"><img src="images/pic4.jpg" class="img-responsive" alt=""></a>

                </div>  
            </div>
        </div>
    </div>
</div> -->


<!-- Main Content -->
<div class="titleC container">
    <div class="row">
        <div class="col-md-12">
            <h3 class="textC">Featured Products</h3> 

        </div>
    </div>
</div>
<br>

<div class="container">

    <div class="row">
        <?php
        $sql = "SELECT * FROM products WHERE featured = 1";
        $featured = $db->query($sql);
        ?>

        <div class="row chain-grid text-center">
            <?php while ($product = mysqli_fetch_assoc($featured)) : ?>
                <div class="col-md-3">
                    <h4 style="font-weight:bold;"><?php echo $product['title']; ?></h4>
                    <img class="img-thumb img-responsive" src="<?php echo $product['image']; ?>" alt="<?php echo $product['title']; ?>">
                    <p class="list-price text-danger">Original Price (BDT): <s><?php echo $product['list_price']; ?></s></p>
                    <p class="price">Our Price: <?php echo $product['price']; ?></p>
                    <a class="add1 item_add" href="details.php?proid=<?php echo $product['id']; ?>"><span class="glyphicon glyphicon-search"></span> Details</a>
                    
                </div>
                
            <?php endwhile; ?>
        </div>
        
    </div>

</div>


<div class="arriv" style="margin-bottom: -65px;">
    <div class="arriv-bottm">
        <div class="row">
            <div class="col-md-12 arriv-left1">
                <a href="category.php?cat=43"><img src="images/pic5.jpg" class="img-responsive" alt=""></a>
                <div class="arriv-info3">
                    <h3>Classic’ – a book which people praise and don’t read</h3>
                    <div class="crt-btn pull-left">
                        <a href="">Mark Twain</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include 'includes/footer.php';
