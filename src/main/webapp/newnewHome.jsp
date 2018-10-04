<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<style>
.padding-10px
{
    padding: 10px;
}
.marginbottom-0px
{
    margin-bottom: 0px;
}
.navFooterBackToTop
{
background-color:black;
color:White
}
.myColor{

background-color:rgb(0, 68, 128);
color:White;
}

    #navBarSearchForm input[type=text]{width:430px !important;}

</style>
<body>

<div class="text-center " id="nav-top">

<img src="resources/A2Z.jpg" alt="logo" height="220" style="width:100% ;" >

</div>

 
    
    <nav class="navbar navbar-default myColor">
   <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#Mynavbar" >
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="resources/a2zlogo.jpg" alt=""   height="30" width="35"></a>
        </div>
        <div class="collapse navbar-collapse" id="Mynavbar">
            <ul class="nav navbar-nav">
                <li><a style="color:white;" href="#">Home</a></li>     
                <li class="dropdown"><a  style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="user">Mobile Phones</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>

                
                <li><a style="color:white;" href="#">Sell on A2Z !</a></li>
                <li><a style="color:white;" href="#">Customer Service</a></li>
            </ul>
            <form class="navbar-form navbar-left" id="navBarSearchForm"  action="">
                <div class="input-group col-sm-12 padding-0px" >
                    <input type="text" class="form-control"  placeholder="Search" name="search" >
                    <div class="input-group-btn">
                        <button style="background-color:rgb(102, 204, 0);color:white;" class="btn btn-default" type="submit" >
                            Search<i class="glyphicon glyphicon-search"></i> 
                        </button>
                    </div>
                </div>
            </form>
            
            
             <ul class="nav navbar-nav navbar-right">
        <li><a style="color:white;" href="registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a style="color:white;" href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
               <!--  <li class="dropdown"><a style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">My Account<span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                    
                        <li><a href="pages/profile.html">Sign in</a></li>
                            <li><a href="pages/profile.html">Sign up</a></li>
                            
                        <li><a href="pages/profile.html">Profile</a></li>
                        <li><a href="pages/order.html">Orders</a></li>
                        <li><a href="pages/login.html">Logout</a></li> -->
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
             <li data-target="#myCarousel" data-slide-to="3"></li>
              <li data-target="#myCarousel" data-slide-to="4"></li>
               <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="resources/slider-3.jpg" alt="" style="width:100%;">
            </div>

            <div class="item">
                <img src="resources/samsung.jpg" alt="" >
            </div>

            
<div class="item">
<div class="row">
                <img src="resources/1.jpg"  alt=""  style="width:50%;"><img src="resources/5.jpg" alt="" style="width:50%;">
                
                
            </div>
            </div>
            <div class="item">
            <div class="row">             
               <img src="resources/2.jpg" alt="" style="width:50%;"><img src="resources/3.jpg" alt="" style="width:50%;">
             
            </div>
            
            </div>
            <div class="item">
            <div class="row">
                <img src="resources/4.jpg" alt="" style="width:50%;"><img src="resources/7.jpg" alt="" style="width:50%;">
                
            </div>
            </div>
            <div class="item">
            <div class="row">
                
                <img src="resources/8.jpg" alt="" style="width:50%;"><img src="resources/2.jpg" alt="" style="width:50%;">
                
            </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
  

</div>
<!--Footer.-->
<nav class="navbar navbar-default marginbottom-0px">
    <div class="container-fluid myColor" >
    
        
        <!-- </div> --><!-- </div> --><br/>
        
        <!-- <div class=" card myColor text-center"> -->
        <div class="text-center padding-10px">
            <hr>
            <p>Contact Us</p>
           
            <p><strong>Email :</strong> contact@a2z.com</p>
            <p><strong>Address :</strong></p>
            <p>Hitech city, Hyderabd, 500055.</p>
            <p>India.</p>
            
             <hr/>
         <p> Follow us :</p>
            <a href="#"><i class="fa fa-facebook-square fa-3x social" style="background-color:rgb(102, 204, 0);color:white;"></i></a>
            <a href="#"><i class="fa fa-twitter-square fa-3x social" style="background-color:rgb(102, 204, 0);color:white;"></i></a>
            
            <p>Write to us:</p>
            <a href="#"><i class="fa fa-google-plus-square fa-3x social" style="background-color:rgb(102, 204, 0);color:white;"></i></a>
            <a href="#"><i class="fa fa-envelope-square fa-3x social" style="background-color:rgb(102, 204, 0);color:white;"></i></a>
        </div>
        </div>
    </div>
    <a class=""  href="#nav-top" id="navBackToTop"><div class="navFooterBackToTop text-center "><span class="navFooterBackToTopText">Back to top</span></div></a>
    
</nav>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>