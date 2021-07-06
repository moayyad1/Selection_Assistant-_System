<?php
include_once('head.php');
 ?>
<html>
<head>
<link href="css/flip_card.css" rel="stylesheet">
<style>
input[type=submit]{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 20px;
}
table, th, td {
  padding: 40px;
}
table {
  border-spacing: 15px;
}
section {
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body>
  <section>


  <center><h1 style="color:green" >What is Your Use and What is Your Budget ?</h1>
    <center><label style="font-size:30px;color:black" for="fname">My Use is :<br></label>
   <br><input type="radio" id="val1" name="check" value="val1">  GAMING <br> <img style="height:70px" src="https://image.flaticon.com/icons/png/512/3097/3097980.png" ></div>
   <br><br><input type="radio" id="val2" name="check" value="val2">  PROGRAMMING<br /><img style="height:50px" src="https://image.flaticon.com/icons/png/512/2721/2721620.png" ><br>
    <br><input type="radio" id="val3" name="check" value="val3">  BROWSING<br /><img style="height:70px" src="https://image.flaticon.com/icons/png/512/1017/1017951.png" ><br>
   <br><input type="radio" id="val4" name="check" value="val4">  DESIGNING<br /><img style="height:70px" src="https://image.flaticon.com/icons/png/512/395/395690.png" >

</section>
   <center><label style="font-size:30px;color:black" for="lname"><br>My Budget is :</label>
     <table >
       <tr>
  <td>  <input type="radio" id="val5" name="check1" value="val5"><img style="height:60px" src="images_db/100_500.png" ></td>
  <td>
     <input type="radio" id="val6" name="check1" value="val6"><img style="height:60px" src="images_db/500_1000.png" ></td>
  <td>
      <input type="radio" id="val7" name="check1" value="val7"><img style="height:80px" src="images_db/more_than.png" ><br><br></td>
</tr>
<tr>
</tr>
</table>
   <br /><input type="submit" onClick="redirect()">
  <script>
  function redirect()
  {
     if    (document.getElementById("val1").checked == true && document.getElementById("val5").checked == true )
          alert("Sorry ! No Gaming Devices in This Price !");
    else if(document.getElementById("val1").checked == true && document.getElementById("val6").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page4.php';
    else if(document.getElementById("val1").checked == true && document.getElementById("val7").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page3.php';
    else if(document.getElementById("val2").checked == true && document.getElementById("val5").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page10.php';
    else if(document.getElementById("val2").checked == true && document.getElementById("val6").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page7.php';
    else if(document.getElementById("val2").checked == true && document.getElementById("val7").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page5.php';
    else if(document.getElementById("val3").checked == true && document.getElementById("val5").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page10.php';
    else if(document.getElementById("val3").checked == true && document.getElementById("val6").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page1.php';
    else if(document.getElementById("val3").checked == true && document.getElementById("val7").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page11.php';
    else if(document.getElementById("val4").checked == true && document.getElementById("val5").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page10.php';
    else if(document.getElementById("val4").checked == true && document.getElementById("val6").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page4.php';
    else if(document.getElementById("val4").checked == true && document.getElementById("val7").checked == true)
            window.location.href = 'suggest-laptop_devices/laptop-page9.php';
    else if(document.getElementById("val1").checked == true)
            alert("Please Select a Budget !");
    else if(document.getElementById("val2").checked == true)
            alert("Please Select a Budget !");
    else if(document.getElementById("val3").checked == true)
            alert("Please Select a Budget !");
    else if(document.getElementById("val4").checked == true)
            alert("Please Select a Budget !");
    else if(document.getElementById("val5").checked == true)
            alert("Please Select Your Use !");
    else if(document.getElementById("val6").checked == true)
            alert("Please Select Your Use !");
    else if(document.getElementById("val7").checked == true)
            alert("Please Select Your Use !");
    else(alert("Please Select your Use and Budget !"));
  }
  </script>
</body>
</html><BR /><BR /><BR /><BR /><BR /><BR />
<?php
include_once('footer.php');
 ?>
