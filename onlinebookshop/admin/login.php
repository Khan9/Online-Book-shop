</br>
</br>
</br>
</br>
</br>
<?php
require_once '../core/init.php';
include 'includes/head.php';
//include 'includes/navigation.php';
?>

<div class="container text-center">

    <div class="row">

        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h2>Login</h2>
        </div>
        <div class="col-md-4"></div>
    </div>
    <hr>

    <div class="row">

        <div class="col-md-4"></div>
        <div class="col-md-4 login-form">

            <form method="post" action="login.php" class="form-horizontal">

                <?php include('errors.php'); ?>

                <div class="form-group">
                    <input type="text" name="username" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success" name="login_user">Login</button>
                </div>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
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
