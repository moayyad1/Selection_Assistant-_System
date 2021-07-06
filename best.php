<?php
include_once("head.php")
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/flip_card.css" rel="stylesheet">
</head>
<body>
<h1 class="center">What Do You Want To Buy ?</h1>
<h2 class="center">We will assist you in selecting the most appropriate device for your needs.</h2>
<div class="container center">
<div class="row">
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1>Desktop / Gaming Pc</h1>
      <img src="https://cdn.shopify.com/s/files/1/2429/0345/products/dt_main_86962c43-f47d-4995-a006-c4540a54cac8_grande.jpg?v=1569539041" alt="Avatar" style="width:500px;height:500px;">
    </div>
    <div class="flip-card-back">
      <br /><br />
      <h1 style="color:white">We will assist you in selecting the most appropriate Desktop Or Pc Gaming for your needs</h1><br /><br /><br />
  <a href="Suggestions-pc.php" style="border: 1px solid black;color:white" class="btn danger">Go to the Suggestions page <i style="font-size:25px" class="fa fa-hand-o-left"></i> </a>
    </div>
  </div>
</div>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1>Laptop</h1>
      <img src="https://cdn.ndtv.com/tech/images/gadgets/haswell-laptops-review-01-635.jpg" alt="Avatar" style="width:500px;height:500px;">
    </div>
    <div class="flip-card-back">
      <br /><br />
      <h1 style="color:white">We will assist you in selecting the most appropriate Laptop for your needs</h1><br /><br /><br />
      <a href="Suggestions-laptop.php" style="border: 1px solid black;color:white" class="btn danger">Go to the Suggestions page <i style="font-size:25px" class="fa fa-hand-o-left"></i> </a>
    </div>
  </div>
</div>
</div>
</div>
</body>
</html>
<?php
$a="<br />";
for($i=0;$i<=3;$i++)
{
  echo $a;
}
 ?>
<?php
include_once("footer.php")
?>
