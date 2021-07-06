<?php
  include_once("head.php");
  include 'C:/xampp/htdocs/Selection_Assistant _System/includes/db.inc.php';

?>
<!DOCTYPE html>
<html lang="en">
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
  <style>
    .addMore:hover{
      border: 1px solid green;
      background-color: green;
      transition-delay: 0.00001s;
  }
  </style>
</head>
<body class="body-wrapper"><br />
  <center><h1> Memory Card </h1>

              <?php
                $query = "SELECT * FROM memory_card ORDER BY id ASC";
                $result = mysqli_query($conn, $query);
                if(mysqli_num_rows($result) > 0)
                {
                  while($row = mysqli_fetch_array($result))
                  {
                ?>
                <center><div style="float: left;width: 350px;margin:15px">
                  <form method="post" action="cart.php?action=add&id=<?php echo $row["id"]; ?>">
                      <img style="width:70%" src="images_db/<?php echo $row["image"]; ?>"/><br /><br>

                      <h4  class="text-info"><?php echo $row["name"]; ?></h4>
                      <h4 style="color:gray" ><?php echo $row["description"]; ?></h4>
                      <h4 class="text-danger">JOD <?php echo $row["price"]; ?></h4>
                      <?php
                      if(!isset($_SESSION["useruid"])) {
                      echo "<h4 class='addMore' title='Please login to be able to purchase !'>Add to Cart</h4>";
                      }
                       ?>
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
            </div>
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

</html>
