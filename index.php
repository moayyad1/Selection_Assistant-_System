<?php
include 'includes/db.inc.php';
include 'head.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Selection Assistant System</title>
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap-slider.css">
  <!-- Font Awesome -->
  <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Owl Carousel -->
  <link href="plugins/slick-carousel/slick/slick.css" rel="stylesheet">
  <link href="plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
  <!-- Fancy Box -->
  <link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/logo.css" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@1,700&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<style media="screen">
.button1 {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
 .addMore
 {
   border: 1px solid green;
 }
   .addMore:hover{
     border: 1px solid green;
     background-color: green;
     border: 1px solid green;
     transition-delay: 0.01111s;
 }
 </style>
</head>
<body  class="body-wrapper">
<section  class="hero-area bg1  overly ">
	<!-- Container Start -->
	<div class="container  ">
		<div class="row">
			<div class="col-md-12">
				<!-- Header Contetnt -->
				<div class="content-block">
          <?php
          if (isset($_SESSION["useruid"])) {
            $wel=$_SESSION["useruid"];
            if($_SESSION['useruid'] == 'taher' || $_SESSION['useruid'] == 'ibraheem') {
                 $wel=$_SESSION["useruid"];
                   echo "<center><a  href='Admin_Dashboard.php'><button style='color:blue;  font-weight: bold;' class='nav-link login-button'>Welcome Admin <strong style='color:red;'>$wel <i class='fa fa-user'></i></strong> Enter <strong style='color:red;'> Admin Dashboard</strong>  From Here </button></a><br />";

            }else {
              echo "<center><button style='color:blue;  font-weight: bold;' class='nav-link '>Welcome $wel <i class='fa fa-user'></i></button>";
            }
            }
               ?>
					<p style="text-align:center;font-size:70px"> You Can Build Your Own Device <img style="width:60px;" src="images/pc.png" ></p>
					<p style="Font-size:30px;font-family: 'Noto Serif', serif" class="short-popular-category-list text-center">We help you to choose the best option </p><br />
					<div class="short-popular-category-list text-center">
            <a href="best.php"><button class="button1">BestChoice <span class="fa fa-star checked"></span></button></a>
					</div>
        </div>
			</div>
		</div>
	</div>
</section><br>
  <h1 style="text-align:center">Trending laptops and computers</h1><br /><br>
        			<?php
        				$query = "SELECT * FROM tbl_product ORDER BY id ASC";
        				$result = mysqli_query($conn, $query);
        				if(mysqli_num_rows($result) > 0)
        				{
        					while($row = mysqli_fetch_array($result))
        					{
        				?>
                      <div  style="float: left;width: 300px;margin:40px">
                        <form method="post" action="cart.php?action=add&id=<?php echo $row["id"]; ?>">
                            <img style="width:95%" src="images_db/<?php echo $row["image"]; ?>"/><br />

                            <h4  class="text-info"><?php echo $row["name"]; ?></h4>
                            <h4 style="color:gray" ><?php echo $row["description"]; ?></h4>
                            <h4 class="text-danger">JOD <?php echo $row["price"]; ?></h4>
                            <?php
                            if(!isset($_SESSION["useruid"])) {
                            echo "<h4 class='addMore' title='Please login to be able to purchase !'>Add to Cart</h4>";
                            }
                             ?>
                             <input type="hidden" name="id" value="<?php echo $row["id"]; ?>" />
                            <input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>" />
                            <input type="hidden" name="hidden_description" value="<?php echo $row["description"]; ?>" />
                            <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>" />
                            <?php   if (isset($_SESSION["useruid"])) {
                                echo "<input type='submit' name='add_to_cart' style='margin-top:5px;' class='btn btn-success' value='Add to Cart' />";
                              }?><br /><br />
                        </form>
                          </div>

        			<?php
        					}
        				}
        			?>
<!-- Footer Bottom -->
<!-- JAVASCRIPTS -->
<script src="plugins/jQuery/jquery.min.js"></script>
<script src="plugins/bootstrap/js/popper.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap-slider.js"></script>
  <!-- tether js -->
<script src="plugins/tether/js/tether.min.js"></script>
<script src="plugins/raty/jquery.raty-fa.js"></script>
<script src="plugins/slick-carousel/slick/slick.min.js"></script>
<script src="plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="plugins/smoothscroll/SmoothScroll.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>
<script src="js/script.js"></script>
</body>
</html><hr><hr><hr><hr><hr>
