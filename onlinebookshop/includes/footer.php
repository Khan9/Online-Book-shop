<!-------------------------------------------------------------->
<!------------------  Footer Section  -------------------------->
<!-------------------------------------------------------------->
<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-md-3 col-sm-12 footerSocial">
                <img class="footerLogo" src="images/logo.png" alt="logo" title="logo"/>
                <p>Follow us on Social Media. <br></p>
                <ul class="social-icon">
                    <li><a href="#" class="social"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#" class="social"><i class="fab fa-twitter-square"></i></a></li>
                    <li><a href="#" class="social"><i class="fab fa-instagram"></i></a></li>
                </ul>
                <p><br></p>
            </div>

            <div class="col-md-3 col-sm-12">
                <br>
                <h4 class="title">ACCOUNT</h4>         
                <li><a href="cart.php"><i class="fa fa-cart-plus" aria-hidden="true"></i> Cart</a></li>
                <li><a href="dashboard.php"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>

            </div>

            <div class="col-md-3 col-sm-12">
                <br>
                <h4 class="title">QUESTIONS</h4>
                <li><a href="#">Delivery & Returns</a></li>
                <li><a href="#">FAQs</a></li>
            </div>

            <div class="col-md-3 col-sm-12">
                <br>
                <h4 class="title">PAYMENT SUPPORTED</h4>
                <img class="img-responsive" src="images/payment.png" alt="Card Options"/>
            </div>

        </div>
    </div>
    <hr>
    <div class="row text-center footerText"> ONLINE BOOK SHOP &copy 2019</div>


</footer>


<!-------------------------------------------------------------->
<!------------------ JavaScript Section ------------------------>
<!-------------------------------------------------------------->

<!-- JQuery JavaScript -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>

    function detailsmodal(id) {
        var data = {"id": id};
        // send data to detailsmodal.php
        jQuery.ajax({
            url: '/ecommerce/includes/detailsmodal.php',
            method: "post",
            data: data,
            success: function (data) {
                jQuery('body').append(data);
                jQuery('#details-modal').modal('toggle');
            },
            error: function () {
                alert("Something went wrong!");
            }
        });
    }
</script>
</body>
</html>