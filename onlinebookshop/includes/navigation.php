<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">

    <div class="container-fluid">

        <div class="row row1">
            <div class="col-md-4">
			
			
			
			<!-- search-->
			
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
                       /* <?php while ($menu2 = mysqli_fetch_assoc($parentmenu2)) : ?>
                               <li><a href="allproducts.php?cat=<?=$menu2['id'];?>"> <?php echo $menu2['brand']; ?> </a></li>
                            <?php endwhile; ?> */
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
                                <li><a href="category.php?cat=<?=$dropmenu['id'];?>"> <?php echo $dropmenu['category']; ?> </a></li>
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
