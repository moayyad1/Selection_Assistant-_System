<?php
    include'head.php';
    require_once 'includes/db.inc.php';
  ?>
  <html lang="en" dir="ltr">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
    .row {
display: -ms-flexbox; /* IE10 */
display: flex;
-ms-flex-wrap: wrap; /* IE10 */
flex-wrap: wrap;
margin: 0 -16px;
}

.col-25 {
-ms-flex: 25%; /* IE10 */
flex: 25%;
}

.col-50 {
-ms-flex: 50%; /* IE10 */
flex: 50%;
}

.col-75 {
-ms-flex: 75%; /* IE10 */
flex: 75%;
}

.col-25,
.col-50,
.col-75 {
padding: 0 16px;
}

.container {
background-color: #f2f2f2;
padding: 5px 20px 15px 20px;
border: 1px solid lightgrey;
border-radius: 3px;
}

input[type=text] {
width: 100%;
margin-bottom: 20px;
padding: 12px;
border: 1px solid #ccc;
border-radius: 3px;
}
input[type=number] {
width: 100%;
margin-bottom: 20px;
padding: 12px;
border: 1px solid #ccc;
border-radius: 3px;
}
input[type=email] {
width: 100%;
margin-bottom: 20px;
padding: 12px;
border: 1px solid #ccc;
border-radius: 3px;
}

label {
margin-bottom: 10px;
display: block;
}

.icon-container {
margin-bottom: 20px;
padding: 7px 0;
font-size: 24px;
}

.btn {
background-color: #04AA6D;
color: white;
padding: 12px;
margin: 10px 0;
border: none;
width: 100%;
border-radius: 3px;
cursor: pointer;
font-size: 17px;
}

.btn:hover {
background-color: #45a049;
}

span.price {
float: right;
color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
.row {
  flex-direction: column-reverse;
}
.col-25 {
  margin-bottom: 20px;
}
}
    </style>
    </head>
    <body><br><br><br><br>
          <?php
          $u_id=$_SESSION["userid"];
          $result = mysqli_query($conn,"SELECT name FROM cart WHERE user_id='$u_id' LIMIT 1");
            $num_rows = mysqli_num_rows($result);
                    if ($num_rows > 0) {
                      echo '
                      <center><h1 style="margin-top:-60px">Please fill in your contact and address information</h1><br>
                      <div class="row">
                        <div class="col-75">
                          <div class="container">
                            <form action="checkout_done.php" method="post">
                              <div class="row">
                                <div class="col-50">
                                  <h3>Billing Address</h3>
                                  <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                                  <input type="text"  name="firstname" placeholder="Your Name" required>
                                  <label for="email"><i class="fa fa-envelope"></i> Email</label>
                                  <input type="email"  name="email" placeholder="ex: john@example.com" required>
                                  <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                                  <input type="text"  name="address" placeholder="ex: 542 W. 15th Street" required>
                                  <label for="city"><i class="fa fa-institution"></i> City</label>
                                  <input type="text"  name="city" placeholder="Enter City" required>
                                  <label for="num"><i class="fa fa-institution"></i> Your Number</label>
                                  <input type="number"  name="num" placeholder="Enter Your Number" required>
                                  <input type="hidden" name="id" value="<?php echo $row["userid"]; ?>
                                </div>
                                <div class="col-50">
                                <br><br><br><br><br><br>  <h3>Payment</h3>
                                  <label for="fname">Accepted Cards</label>
                                  <div class="icon-container">
                                    <i style="font-size:24px" class="fa">&#xf1f0;</i>
                                    <i class="fa fa-cc-amex" style="color:blue;"></i>
                                    <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                    <i class="fa fa-cc-discover" style="color:orange;"></i>
                                  </div>
                                </div>
                              </div>
                              <input type="submit" value="CheckOut" name="checkout_" class="btn">
                            </form>
                          </div>
                        </div>
                      </div>';
                 }
            else {
              echo "<br /><br /><center><h1 style='color:red'>Sorry,No items in your Cart,you cannot CheckOut !</h1>";                  }
         ?>

    </body>
  </html>
