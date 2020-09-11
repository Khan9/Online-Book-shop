<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';
?>

<div class="container text-center">
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="titleC container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="textC">Login</h3> 

            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-4 login-form">

            <form method="post" action="login.php" class="form-horizontal">

<?php include('errors.php'); ?>

                <div class="form-group">
                    <input type="text" name="username2" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success" name="login_user2">Login</button>
                </div>
            </form>
            <hr>
            <p>Not a Member yet?</p>
            <a class="btn add1 item_add" href="register.php" role="button">Register</a>
        </div>
        <div class="col-md-6">
            <img class="details img-responsive"   style="margin: 0 auto;">                
            
        </div>
    </div>
    <hr>
</div>



<?php
include 'includes/footer.php';
