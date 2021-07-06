
<?php
include'head.php';
require_once 'includes/db.inc.php';
 ?>


      <?php
      //user information

          echo "<hr /><center><h1 style='color:green'>User contact and address information</h1>";
          $query= "SELECT name, email,adress,city,num,user_id FROM user_adress ORDER BY user_id ASC";
           $result = mysqli_query($conn, $query);
        if(mysqli_num_rows($result) > 0)
        {
          while($row = mysqli_fetch_array($result))
          {
        ?>

                <?php
$user_id=$row["user_id"];
$name=$row['name'];
$email=$row['email'];
$adress=$row['adress'];
$city=$row['city'];
$num=$row['num'];

                 ?>

                 <center><table border="1">
                  <thead>
                    <tr>
                      <th><center><img style='height:40px;' src='https://image.flaticon.com/icons/png/512/338/338827.png' /> <span style='font-size:40px'></th>
                      <th><center><img style='height:40px;' src='https://image.flaticon.com/icons/png/512/1251/1251797.png' /> <span style='font-size:40px'></th>
                      <th><center><img style='height:40px' src='https://image.flaticon.com/icons/png/512/893/893292.png' /><span style='font-size:40px'></th>
                      <th><center><img style='height:40px' src='https://image.flaticon.com/icons/png/512/967/967885.png' /><span style='font-size:40px'></td> </th>
                      <th><center><img style='height:40px' src='https://image.flaticon.com/icons/png/512/2486/2486937.png' /><span style='font-size:40px'></td></th>
                      <th><center><img style='height:40px' src='https://image.flaticon.com/icons/png/512/1533/1533098.png' /><span style='font-size:40px'></th>
                        <th><center><img style='height:40px'  />Delete<span style='font-size:40px'></th>

                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    echo "
                    <tr>
                    <td>          <center>  <strong style='font-size:20px'> $user_id </strong></td>
                      <td>       <center>      <strong style='font-size:20px'> $name </strong></td>
                      <td>       <center>     <strong style='font-size:20px'> $email </strong></td>
                      <td>       <center>    <strong style='font-size:20px'> $adress </strong></td>
                      <td>      <center>     <strong style='font-size:20px'> $city </strong></td>
                      <td>     <center>     <strong style='font-size:20px'> $num </strong></td>
                      <form action='user_contact.php' method='post'>
                      <td> <input type='submit' name='delete_' style='margin-top:0px;font-size:15px' class='btn-danger' value='Delete' /><img style='height:30px' src='https://image.flaticon.com/icons/png/512/3496/3496416.png'/></td>
                            </form>
                    </tr><br />";
                    ?>
                  </tbody>
                </table>


      <?php
          }
          //delete_item_from_cart

          if (isset($_POST["delete_"])) {
              $sql = "DELETE FROM user_adress where user_id='$user_id'";
              $result=$conn->query($sql);
              if ($result) {
                echo"<h3 style='color:red' > Deleted successfully!</h3><hr />";

              }else {
                echo "Error : " . $sql . "<br>" . mysqli_error($conn);
              }
            }}
           ?>

      <br /><br /><a href="user_requests.php"><button class="btn btn-success">Go Back to user Requests <img style="height:50px" src="https://image.flaticon.com/icons/png/512/3540/3540757.png" /></button></a>
