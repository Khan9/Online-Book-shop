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
?>

<div class="container text-center">


    <div class="row">

        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h2>Signup</h2>
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

    <div class="row">

        <div class="col-md-4"></div>
        <div class="col-md-4 login-form">

            <form method="post" action="register.php" class="form-horizontal">

                <?php include('errors.php'); ?>

                <div class="form-group">
                    <input type="text" name="username" value="<?php echo $username; ?>" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                    <input type="email" name="email" value="<?php echo $email; ?>" placeholder="Email" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password_1" placeholder="Password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password_2" placeholder="Repeat Password" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success" name="reg_user">Register</button>
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
</div>



<?php
include 'includes/footer.php';
