<?php
        session_start();

	$db = mysqli_connect('127.0.0.1', 'root', '', 'ecommerce_db');
	if(mysqli_connect_errno()) {
		echo 'Database connection failed with following errors: '.mysqli_connect_error();
		die();
	}

	require_once $_SERVER['DOCUMENT_ROOT'].'/onlinebookshop/config.php';
	require_once BASEURL.'helpers/helpers.php';
        
        

	// variable declaration
	$username = "";
	$email    = "";
	$errors = array(); 
	$_SESSION['success'] = "";


	// REGISTER USER
	if (isset($_POST['reg_user'])) {
		// receive all input values from the form
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
		$password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

		// form validation: ensure that the form is correctly filled
		if (empty($username)) { array_push($errors, "Username is required"); }
		if (empty($email)) { array_push($errors, "Email is required"); }
		if (empty($password_1)) { array_push($errors, "Password is required"); }

		if ($password_1 != $password_2) {
			array_push($errors, "The two passwords do not match");
		}

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$password = md5($password_1);//encrypt the password before saving in the database
			$query = "INSERT INTO users (username, email, password) 
					  VALUES('$username', '$email', '$password')";
			mysqli_query($db, $query);

			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are now logged in";
			header('location: index.php');
		}

	}

	// ... 

	// LOGIN USER
	if (isset($_POST['login_user'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = md5($password);
			$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username'] = $username;
				$_SESSION['success'] = "You are now logged in";
				header('location: index.php');
			}else {
				array_push($errors, "Wrong username/password combination");
			}
		}
	}
        
        
        
        
        
        // variable declaration
	$username2 = "";
	$email2    = "";
        $errors = array(); 
	$_SESSION['loginuser'] = "";

        
        
        // REGISTER USER2
	if (isset($_POST['reg_user2'])) {
		// receive all input values from the form
		$username2 = mysqli_real_escape_string($db, $_POST['username2']);
		$email2 = mysqli_real_escape_string($db, $_POST['email2']);
		$password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
		$password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
                $address = mysqli_real_escape_string($db, $_POST['address']);
                $phone = mysqli_real_escape_string($db, $_POST['phone']);
                $fullname = mysqli_real_escape_string($db, $_POST['fullname']);

		// form validation: ensure that the form is correctly filled
		if (empty($username2)) { array_push($errors, "Username is required"); }
		if (empty($email2)) { array_push($errors, "Email is required"); }
		if (empty($password_1)) { array_push($errors, "Password is required"); }

		if ($password_1 != $password_2) {
			array_push($errors, "The two passwords do not match");
		}

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$password = md5($password_1);//encrypt the password before saving in the database
			$query = "INSERT INTO users2 (fullname, username, email, password, address, phone) 
					  VALUES('$fullname', '$username2', '$email2', '$password', '$address', '$phone')";
			mysqli_query($db, $query);

			$_SESSION['username2'] = $username2;
			$_SESSION['loginuser'] = "You are now logged in";
			header('location: dashboard.php');
		}

	}
        
	// LOGIN USER2
	if (isset($_POST['login_user2'])) {
		$username2 = mysqli_real_escape_string($db, $_POST['username2']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username2)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = md5($password);
			$query = "SELECT * FROM users2 WHERE username='$username2' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username2'] = $username2;
				$_SESSION['loginuser'] = "You are now logged in";
				header('location: index.php');
			}else {
				array_push($errors, "Wrong username/password combination");
			}
		}
	}
        
        
        
        
        //temp order table insertion
        if (isset($_POST['checkout'])) {
                
                $idr = mt_rand(3,999999);
                $url = "checkout.php?proid=$idr";
                foreach ($_SESSION["shopping_cart"] as $keys => $values) {
                    
                    $pname = $values["item_name"];
                    $psize = $values["item_size"];
                    $pquantity = $values["item_quantity"];
                    $pprice = $values["item_price"];
                    $tprice = $values["item_quantity"] * $values["item_price"];
		
			$query3 = "INSERT INTO cart (id, pname, psize, pquantity, pprice, tprice) 
                                    VALUES('$idr', '$pname', '$psize', '$pquantity', '$pprice', '$tprice')";
			mysqli_query($db, $query3);

			header("location: " .$url);
		}

	}

        
        
        
        
        //Final Order Table
        if (isset($_POST['placeorder'])) {
                
                
                $saddress = mysqli_real_escape_string($db, $_POST['saddress']);
		$payment = mysqli_real_escape_string($db, $_POST['payment']);
                
                if (empty($saddress)) {
			array_push($errors, "Shipping Address is Required");
		}
		if ($payment == '0') {
			array_push($errors, "Payment Option is Required");
		}
                
                if (count($errors) == 0) {
                $orderid = mysqli_real_escape_string($db, $_POST['orderid']);
		$subtotal2 = mysqli_real_escape_string($db, $_POST['subtotal']);
                $odate = mysqli_real_escape_string($db, $_POST['otime']);
                
                $cusername = mysqli_real_escape_string($db, $_POST['cusername']);
                $cfullname = mysqli_real_escape_string($db, $_POST['cfullname']);
                $cphone = mysqli_real_escape_string($db, $_POST['cphone']);
                
                
			$query4 = "INSERT INTO orders (orderid, odate, subtotal, username, fullname, phone, saddress, payment) 
                                    VALUES('$orderid', '$odate', '$subtotal2', '$cusername', '$cfullname', '$cphone', '$saddress', '$payment')";
			mysqli_query($db, $query4);

			header('location: dashboard.php');
                }

	}
        