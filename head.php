<?php
session_start();
 ?>
<html lang="en">
<head>
  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Selection Assistant System</title>

  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap-slider.css">
  <!-- Font Awesome -->
  <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
</head>
<body class="body-wrapper">
<section style="background-color:gray">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg  navigation">
					<a  href="index.php">
						<h1 style="font-size:29px;" class="logo-1" >Selection Assistant System <img style="height:50px" src="https://image.flaticon.com/icons/png/512/849/849946.png"/></h1>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">

						<ul class="navbar-nav ml-auto main-nav ">
								<a style="color:white;  font-weight: bold;" class="nav-link" href="index.php">Home <span><i class="fa fa-home" style="font-size:20px"></i></a>
							</li>
							<li class="nav-item dropdown dropdown-slide">

								<a style="color:white;  font-weight: bold;" class="nav-link dropdown-toggle" data-toggle="dropdown" href="">Hardware<span><i class="fa fa-desktop" style="font-size:18px"></i></span>
</a>

								<!-- Dropdown list -->
								<div class="dropdown-menu">
									<a class="dropdown-item" href="audio.php">Audio <i style="font-size:20px;" class="fa">&#xf130;</i></a>
									<a class="dropdown-item" href="display.php">Monitor and display <img style="height:21px;" src="icons/display.png" /></a>
									<a class="dropdown-item" href="storage.php">Storage <i style="font-size:20px;" class="fa">&#xf0a0;</i></a>
									<a class="dropdown-item" href="cams.php">Cams <i style="font-size:20px;" class="fa">&#xf030;</i></a>
								</div>
							</li>
							<li class="nav-item dropdown dropdown-slide">
								<a style="color:white;  font-weight: bold;" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">	Gaming <span><i style='font-size:21px' class='fas'>&#xf11b;</i></span>
                </a>

								<!-- Dropdown list -->
								<div class="dropdown-menu">
                  <a class="dropdown-item" href="gaming_pc.php">Gaming PCs <img style="height:30px;" src="icons/gaming_pc.png" /></a>
									<a class="dropdown-item" href="gaming_laptops.php">Gaming Laptops <img style="height:30px;" src="icons/gaming_laptop.png" /></a>
                  <a class="dropdown-item" href="cpu.php">CPU & Processors <img style="height:30px;" src="icons/cpu.png" /></i></a>
									<a class="dropdown-item" href="ram.php">Memory - RAM <i style="font-size:20px;" class="fas fa-memory"></i></a>
									<a class="dropdown-item" href="graphic_card.php">Graphic Card <img style="height:30px;" src="icons/gpu.png" /></a>
									<a class="dropdown-item" href="cases.php">Cases <img style="height:30px;" src="icons/case.png" /></a>
									<a class="dropdown-item" href="gaming_chairs.php">Gaming Chairs<img style="height:30px;" src="icons/chair.png" /></a>
								</div>

							</li>
							<li class="nav-item dropdown dropdown-slide">
                <a style="color:white;  font-weight: bold;" class="nav-link" href="about.php">About us <span><i style="font-size:22px" class="fa">&#xf2b9;</i>
</a>
							</li>
              <?php
              if (isset($_SESSION["useruid"])) {
              echo '<li class="nav-item dropdown dropdown-slide">
                <a href="cart.php"> <i class="fa fa-shopping-cart" style="font-size:30px;color:cyan"></i> "</a>
              </li>';
            }
               ?>
						</ul>
            <?php
              if (isset($_SESSION["useruid"])) {
                  $wel=$_SESSION['useruid'];
                echo'
                  <ul class="navbar-nav ml-auto mt-10">
                    <li class="nav-item">
                      <a style="color:white;  font-weight: bold;" class="nav-link login-button" href="logout.php">Log Out <i class="fa fa-sign-out" style="font-size:20px;color:red"></i></a>
                    </li>
                  </ul>';
              }else {
              echo'  <ul class="navbar-nav ml-auto mt-10">
                  <li class="nav-item">
                    <a style="color:white;  font-weight: bold" class="nav-link login-button" href="login.php">Login <i class="fa fa-sign-in" style="font-size:20px;color:blue"></i></a>
                  </li>
                </ul>';
              }
             ?>
					</div>
				</nav>
			</div>
		</div>
	</div>
</section>
</body>
</html>
