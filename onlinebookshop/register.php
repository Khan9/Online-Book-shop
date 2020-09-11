<?php
require_once 'core/init.php';
include 'includes/head.php';
include 'includes/navigation.php';

?>

<div class="container text-center">
</br>
</br>
</br>
</br>
</br>

    <div class="titleC container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="textC">Signup</h3> 

            </div>
        </div>
    </div>
    <br>

    <div class="row">

        <div class="col-md-6">
           <!-- <img class="details img-responsive" src="images/pic14.png" alt="Messi Say's Login!" style="margin: 0 auto;">  -->               
            
        </div>
        <div class="col-md-5 login-form">
            <br>
            <br>
            <form method="post" action="register.php" class="form-horizontal">

                <?php include('errors.php'); ?>
                
                
                <div class="form-group">
                    <input type="text" name="fullname" placeholder="Full Name" class="form-control">
                </div>
                <div class="form-group">
                    <input type="text" name="username2" value="<?php echo $username2; ?>" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                    <input type="email" name="email2" value="<?php echo $email2; ?>" placeholder="Email" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password_1" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password_2" placeholder="Repeat Password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="text" name="address" placeholder="Address" class="form-control">
                </div>
                <div class="form-group">
                    <input type="phone" name="phone" placeholder="Phone" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success" name="reg_user2">Register</button>
                </div>
            </form>
        </div>
        <div class="col-md-1"></div>
    </div>
    
    <hr>
</div>



<?php
include 'includes/footer.php';
