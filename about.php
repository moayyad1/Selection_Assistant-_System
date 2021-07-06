<?php
include_once('head.php');
 ?>
<!DOCTYPE html>
<html>
<head>
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
  .our-team{
    text-align: center;
    margin-bottom: 100px;
    z-index: 1;
    position: relative;
}
.our-team .pic{
    border-radius: 50%;
    overflow: hidden;
    position: relative;
}
.our-team .pic:after{
    content: "";
    width: 100%;
    height: 100%;
    border-radius: 50%;
    background: rgba(0,0,0,0.7);
    opacity: 0;
    position: absolute;
    top: 0;
    left: 0;
    transition: all 0.5s ease 0s;
}
.our-team:hover .pic:after{ opacity: 1; }
.our-team .pic img{
    width: 100%;
    height: auto;
}
.our-team .social{
    width: 100%;
    padding: 0;
    margin: 0;
    list-style: none;
    opacity: 0;
    position: absolute;
    top: 45%;
    left: 0;
    z-index: 1;
    transition: all 0.5s ease 0s;
}
.our-team:hover .social{ opacity: 1; }
.our-team .social li{ display: inline-block; }
.our-team .social li a{
    display: block;
    width: 30px;
    height: 30px;
    line-height: 30px;
    border-radius: 50%;
    border: 1px solid #fff;
    font-size: 15px;
    color: #fff;
    margin-right: 10px;
    transition: all 0.5s ease 0s;
}
.our-team .social li a:hover{
    background: #fff;
    color: #000;
}
.our-team .team-content{
    width: 100%;
    height: 100%;
    border-radius: 50%;
    border: 2px dotted #ddd;
    position: absolute;
    bottom: -70px;
    left: 0;
    z-index: -1;
    transition: all 0.5s ease 0s;
}
.our-team:hover .team-content{ border: 2px dotted #00adae; }
.our-team .team-info{
    width: 100%;
    color: #464646;
    position: absolute;
    bottom: 12px;
    left: 0;
}
.our-team .title{
    font-size: 20px;
    font-weight: 600;
    color: #464646;
    margin: 0 0 5px 0;
    transition: all 0.5s ease 0s;
}
.our-team:hover .title{ color: #00adae; }
.our-team .post{
    display: block;
    font-size: 14px;
    color: #464646;
}
  .center {
    margin: auto;
    width: 50%;
    padding: 10px;
  }

  </style>
</head>
<body>
<br/>

<h3 style="text-align:center;font-family: 'Libre Baskerville', serif;">We are students at the Jordan University of Science and Technology <br />Faculty of Computer and Information Technology, </br>Computer Information Systems Department,<br/> we built this website as a graduation project, <br />We are grateful to Dr. Mohammed Shatnawi, the supervisor of this project.</h3>
<br /><hr /><br /><center><h1 style="font-family: 'Libre Baskerville', serif;">Our Team</h1></center></div>

<div class="container center">
    <div class="row">
        <div class="col-md-3 col-sm-6 center">
            <div class="our-team">
             <div class="pic">
                    <img src="images_db/taher.png">
                    <ul class="social">
                        <li><a href="https://web.facebook.com/tajlouni" target="_blank"  class="fa fa-facebook"></a></li>
                    </ul>
                </div>
                <div class="team-content">
                    <div class="team-info">
                        <h3 class="title">Taher Al-Ajlouni</h3>
                        <span class="post">Web Developer</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 center">
            <div class="our-team">
                <div class="pic">
                    <img src="images_db/Ibrahim.png">
                    <ul class="social">
                        <li><a href="https://web.facebook.com/ibraheem.t.alissa" target="_blank"  class="fa fa-facebook"></a></li>
                    </ul>
                </div>
                <div class="team-content">
                    <div class="team-info">
                        <h3 class="title">Ibrahim Al-Issa</h3>
                        <span class="post">Web Developer</span>
                    </div>
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
 include_once('footer.php');
  ?>
