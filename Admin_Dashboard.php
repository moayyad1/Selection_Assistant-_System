<?php include'head.php'; ?>
<head>
  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Classimax</title>

  <!-- FAVICON -->
  <link href="img/favicon.png" rel="shortcut icon">
  <!-- PLUGINS CSS STYLE -->
  <!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
  <!-- Bootstrap -->
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
  <link href="css/card.css" rel="stylesheet">
</head>
<body class="body-wrapper">
  <div class="container py-5">
    <!-- For Demo Purpose-->
    <header class="text-center mb-5"><br /><br /><br />
      <?php
      if (isset($_SESSION["useruid"])) {
        $wel=$_SESSION["useruid"];
        if($_SESSION['useruid'] == 'taher' || $_SESSION['useruid'] == 'ibraheem') {
             $wel=$_SESSION["useruid"];
               echo "<center><button style='color:blue;  font-weight: bold;' class='nav-link login-button'> <strong style='color:green;'>Admin $wel <i class='fa fa-user'></i></button><br />";


           ?>
      <center>      <h2>Welcome to Admin Dashboard You can add, delete, and update website items from here</h2><br />
        <center>      <h1 >Choose the page you want to Edit!</h1>

    </header>
<center><table>
  <tr>
    <td style="padding-right:55px">    <a href="add_items/Trending.php"><img style="height:150px" src="https://image.flaticon.com/icons/png/512/846/846449.png" alt="" class="img-fluid d-block mx-auto mb-3"></a>
              <h5 style="text-align:center"> <a href="add_items/Trending.php" class="text-dark">Home page (Trending)
</a></h5></td>
              <td style="padding-right:55px">   <a href="add_items/add_audio.php"> <img style="height:150px" src="https://image.flaticon.com/icons/png/512/107/107737.png" alt="" class="img-fluid d-block mx-auto mb-3"></a>
            <h5 style="text-align:center"> <a href="add_items/add_audio.php" class="text-dark">Audio
</a></h5></td>

    <td>
      <td style="padding-right:55px">    <a href="add_items/display_add.php"><img  style="height:150px" src="https://image.flaticon.com/icons/png/512/4236/4236604.png" alt="" class="img-fluid d-block mx-auto mb-3"></a></a>
              <h5 style="text-align:center"> <a href="add_items/display_add.php" class="text-dark">Monitor and display
</a></h5></td>

                <td style="padding-right:55px">    <a href="add_items/display_storage.php"><img style="height:150px" src="https://image.flaticon.com/icons/png/512/542/542646.png" alt="" class="img-fluid d-block mx-auto mb-3"></a>
      <h5 style="text-align:center"> <a href="add_items/display_storage.php" class="text-dark">Storage</a></h5></td>
    <td>
      <td style="padding-right:55px">    <a href="add_items/add_cam.php"><img style="height:150px" src="https://image.flaticon.com/icons/png/512/633/633594.png" alt="" class="img-fluid d-block mx-auto mb-3"></a>
                <h5 style="text-align:center"> <a href="add_items/add_cam.php" class="text-dark">Cams</a></h5></td>
                <td>
                  <td style="padding-right:55px">    <a href="add_items/gaming_display.php"><img style="height:150px" src="https://image.flaticon.com/icons/png/512/607/607792.png" alt="" class="img-fluid d-block mx-auto mb-3"></a>
                        <h5 style="text-align:center"> <a href="add_items/gaming_display.php" class="text-dark">Gaming Page
</a></h5></td>
  </tr>
</table><br><br><hr>
<br /><a href="user_requests.php"><button class="btn btn-success">Show user requests <img style="height:50px" src="https://image.flaticon.com/icons/png/512/3540/3540757.png" /></button></a>

</div>
</div>
<?php }
else {
  echo "<h1 style='color:red'>Sorry, You do not have permission to view this page ! </h1>";
} 
}
else {
  echo "<h1 style='color:red'>Sorry, You do not have permission to view this page ! </h1>";
} ?>
  <!-- Container End -->

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
</html><br><br><br><br><br><br><br>
<?php include'footer.php'; ?>
