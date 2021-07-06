<?php
  include'head.php';
  require_once 'includes/db.inc.php';
  $u_id=$_SESSION["userid"];
if (isset($_POST["checkout_"])) {
         $name=$_POST["firstname"];
         $email=$_POST["email"];
         $adress=$_POST["address"];
         $city=$_POST["city"];
         $num=$_POST["num"];
         $sql = "INSERT INTO user_adress(name,email,adress,city,num,user_id) VALUES ('$name','$email','$adress','$city','$num','$u_id')";
        if (mysqli_query($conn, $sql)) {
            echo "<br /><br /><center><h1 style='color:green'>Thank you, your request has been received, we will contact you soon</h1><hr />";

        } else {
            echo "Error : " . $sql . "<br>" . mysqli_error($conn);
        }
  }
 ?>
