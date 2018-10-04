<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <!-- Brand -->
 Mobile Phones

 <!-- Links -->
 <ul class="navbar-nav">
   <li class="nav-item">
     <a class="nav-link" href="user">Products</a>
   </li>
   <li class="nav-item">
     <a class="nav-link" href="login">Login</a>
   </li>
    <li class="nav-item">
     <a class="nav-link" href="registration">Register</a>
   </li>
 <li class="nav-item">
     <a class="nav-link" href="perform_logout">Logout</a>
   </li>
   </li>
 
  
   <li class="nav-item">
     <a class="nav-link" href="NewHome.jsp">Home</a>
   </li>
   <!-- Dropdown -->
   <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
      
     </a>
   
   </li>
   
  <!--  
   <li class="nav-item">
     
        
        
          <a href="viewcart" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Cart
        </a>
        <p>Shopping-cart icon on a styled link button:
        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
        </a>
      </p> 
   </li> -->
 </ul>
</nav>
<br>



<div class="container mt-3">


<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="1600" data-keyboard="false">

 <!-- Indicators -->
 <ul class="carousel-indicators">
   <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
   <li data-target="#myCarousel" data-slide-to="1"></li>
   <li data-target="#myCarousel" data-slide-to="2"></li>
 </ul>

 <!-- The slideshow -->
 <div class="carousel-inner">
   <div class="carousel-item active">
     <img src="resources/iphonex.jpg" alt="e" width="1200" height="500">
   </div>
   <div class="carousel-item">
     <img src="resources/samsung.jpg" alt="a" width="1200" height="500">
   </div>
   <div class="carousel-item">
     <img src="resources/sony.jpg" alt="q" width="1200" height="500">
   </div>
 </div>

 <!-- Left and right controls -->
 <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
   <span class="carousel-control-prev-icon"></span>
 </a>
 <a class="carousel-control-next" href="#myCarousel" data-slide="next">
   <span class="carousel-control-next-icon"></span>
 </a>
</div>

</div>











</body>
</html>