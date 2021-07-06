<?php
include'head.php';
require_once 'includes/db.inc.php';
 ?>
<head>

  <html lang="en" dir="ltr">
    <head>
      <meta charset="utf-8">
      <title></title>
    </head>
    <body>

      <?php

      //user products
          echo "<hr /><center><h1 style='color:green'>User Requests</h1><hr />";

          $query= "SELECT user_id, name FROM cart ORDER BY user_id ASC";
          $result = mysqli_query($conn, $query);
       if(mysqli_num_rows($result) > 0)
       {
          echo "<table border='1'>
              <tr>
                  <th><center><img style='height:40px;' src='https://image.flaticon.com/icons/png/512/338/338827.png' /></th>
                      <th><center><img style='height:40px;' src='https://image.flaticon.com/icons/png/512/3126/3126526.png' /></th>
                      <th><center><img style='height:40px;'  />Delete</th>

                        </tr>";

          while($row = mysqli_fetch_array($result))
          {
          $iid=$row['user_id'];
          $nname=$row['name'];
          echo "<tr>";
            echo "<td> <center><strong>$iid</strong></td>";
              echo "<td><center><strong>$nname</strong> </td>";
              echo "<form action='user_requests.php' method='post'>
              <td> <input type='submit' name='delete_2' style='margin-top:0px;font-size:15px' class='btn-danger' value='Delete' /><img style='height:30px' src='https://image.flaticon.com/icons/png/512/3496/3496416.png'/></td>
                    </form>";
                echo "</tr>";

                  }
                    echo "</table>";
           ?>
         </tbody>
       </table>
      <?php
          }

      ?>
      <?php

          //delete_item_from_cart
          if (isset($_POST["delete_2"])) {
          @   $sql = "DELETE FROM cart where name='$nname'";
              $result=$conn->query($sql);
              if ($result) {
                echo "Deleted successfully";

              }else {
                echo "Error : " . $sql . "<br>" . mysqli_error($conn);
              }
            }
           ?>
      <br /><br /><a href="user_contact.php"><button class="btn btn-success">Show Users Adress and Contact Informations <img style="height:50px" src="https://image.flaticon.com/icons/png/512/3540/3540757.png" /></button></a>

    </body>
  </html>
