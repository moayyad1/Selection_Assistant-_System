<?php
  include'head.php';
 ?>
 <center><br /><h1 style='color:black'>Your Cart Details</h1>
<a href="checkout.php"><button class="btn btn-success">CheckOut<img style="height:50px" src="https://image.flaticon.com/icons/png/512/2435/2435281.png" /></button></a><hr>
<?php
//add_item_from_cart

    require_once 'includes/db.inc.php';
    if (isset($_POST["add_to_cart"])) {
             $u_id=$_SESSION["userid"];
             $p_id=$_POST["id"];
             $p_name=$_POST["hidden_name"];
             $sql = "INSERT INTO cart(user_id,product_id,name) VALUES ('$u_id','$p_id','$p_name')";
            if (mysqli_query($conn, $sql))  {
                echo "<center><h3 style='color:green'>Item Added successfully!</h3><hr />";

            } else {
                echo "Error : " . $sql . "<br>" . mysqli_error($conn);
            }
      }
?>

<?php
//delete_item_from_cart

if (isset($_POST["delete"])) {
    $name=$_POST["hidden_name"];
    $sql = "DELETE FROM cart where name='$name'";
    $result=$conn->query($sql);
    if ($result) {
    }else {
      echo "Error : " . $sql . "<br>" . mysqli_error($conn);
    }
      }
 ?>


<?php
  $u_id=$_SESSION["userid"];
  $query = "SELECT * FROM cart where user_id='$u_id'";
  $result = mysqli_query($conn, $query);
  if(mysqli_num_rows($result) > 0)
  {
    while($row = mysqli_fetch_array($result))
    {
  ?>
        <center><div class="col align-self-start" style="float: left;width: 300px;margin:10px">
            <h4  class="text-info"><?php echo $row["name"]; ?></h4>
              <form action="cart.php" method="post">
                <table>
                  <tr>
                    <td><input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>" /></td>
                    <td> <input type='submit' name='delete' style='margin-top:0px;font-size:15px' class='btn-danger' value='Delete from cart' /><img style="height:30px" src="https://image.flaticon.com/icons/png/512/3649/3649773.png" /></td>
                  </tr>
                </table>
                </form>

            </div>
<?php
    }
  }
?>
