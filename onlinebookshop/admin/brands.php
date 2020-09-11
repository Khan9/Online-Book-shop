</br>
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

$results = $db->query("SELECT * FROM brand ORDER BY brand");
$errors = array();

// Edit brand
if (isset($_GET['edit']) && !empty($_GET['edit'])) {
    $edit_id = (int) $_GET['edit'];
    $edit_id = sanitize($edit_id);
    $edit_result = $db->query("SELECT * FROM brand WHERE id = '{$edit_id}'");
    $eBrand = mysqli_fetch_assoc($edit_result);
}

// Delete brand
if (isset($_GET['delete']) && !empty($_GET['delete'])) {
    $delete_id = (int) $_GET['delete'];
    $delete_id = sanitize($delete_id);
    $db->query("DELETE FROM brand WHERE id = '{$delete_id}'");
    header("Location: brands.php");
}

if (isset($_POST['add_submit'])) {
    $brand = sanitize($_POST['brand']);
    // Check if brand is blank
    if ($brand == '') {
        $errors[] .= 'You must enter a brand!';
    }
    // Check if brand exist in database
    $sql = "SELECT * FROM brand WHERE brand = '{$brand}'";
    if (isset($_GET['edit'])) {
        $sql = "SELECT * FROM brand WHERE brand = '{$brand}' AND id != '{$edit_id}'";
    }
    $result = $db->query($sql);
    $count = mysqli_num_rows($result);
    if ($count > 0) {
        $errors[] .= $brand . ' already exist. Please choose another brand name.';
    }
    // Display errors
    if (!empty($errors)) {
        echo display_errors($errors);
    } else {
        // Add brand to database
        $sql = "INSERT INTO brand (brand) VALUES ('{$brand}')";
        if (isset($_GET['edit'])) {
            $sql = "UPDATE brand SET brand = '{$brand}' WHERE id = '{$edit_id}'";
        }
        $db->query($sql);
        header('Location: brands.php');
    }
}
?>
<div class="container text-center">
    <div class="row">
        <div class="col-md-4"></div>
        
        <div class="col-md-4">
            <h2 class="text-center">Brands</h2>
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

    <div class="text-center">
        <form class="form-inline" action="brands.php<?php echo ((isset($_GET['edit'])) ? '?edit=' . $edit_id : ''); ?>" method="post">
            <div class="form-group">
                <label for="brand"><?php echo ((isset($_GET['edit'])) ? 'Edit' : 'Add A'); ?> Brand:</label>
                <?php
                $brand_value = '';
                if (isset($_GET['edit'])) {
                    $brand_value = $eBrand['brand'];
                } else {
                    if (isset($_POST['brand'])) {
                        $brand_value = sanitize($_POST['brand']);
                    }
                }
                ?>
                <input class="form-control" type="text" name="brand" id="brand" value="<?php echo $brand_value; ?>">
                <?php if (isset($_GET['edit'])) : ?>
                    <a class="btn btn-default" href="brands.php">Cancel</a>
                <?php endif; ?>
                <input class="btn btn-success" type="submit" name="add_submit" value="<?php echo ((isset($_GET['edit'])) ? 'Edit' : 'Add'); ?> Brand">
            </div>
        </form>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <table class="table table-bordered table-striped table-responsive">
                <thead class="bg-warning">
                <th></th>
                <th>Brands</th>
                <th></th>
                </thead>
                <tbody>
                    <?php while ($brand = mysqli_fetch_assoc($results)) : ?>
                        <tr>
                            <td><a class="btn btn-sm btn-success" href="brands.php?edit=<?php echo $brand['id']; ?>"><span class="glyphicon glyphicon-pencil"></span></a></td>
                            <td><?php echo $brand['brand']; ?></td>
                            <td><a class="btn btn-sm btn-danger" href="brands.php?delete=<?php echo $brand['id']; ?>"><span class="glyphicon glyphicon-remove-sign"></span></a></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
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
</div>

<?php
include 'includes/footer.php';
