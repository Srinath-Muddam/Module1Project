<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  
</style>
<body>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="500">
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
         <div style="width:1140px;height:430px;">
        <div class="carousel-inner" >
       
            <div class="item active">
            <div class="row">
               <!--  <img src="resources/slider-3.jpg" alt="" style="width:100%;"> -->
                <img src="resources/4.jpg" alt="" style="width:50%;height:430px;"><img src="resources/7.jpg" alt="" style="width:50%;height:430px;">
            </div>
</div>
            
<div class="item">
<div class="row">
                <img src="resources/1.jpg"  alt=""  style="width:50%;height:430px;"><img src="resources/5.jpg" alt="" style="width:50%;height:430px;">
                
                
            </div>
            </div>
            <div class="item">
            <div class="row">             
               <img src="resources/2.jpg" alt="" style="width:50%;height:430px;"><img src="resources/3.jpg" alt="" style="width:50%;height:430px;">
             
            </div>
            
            </div>
            <div class="item">
            <div class="row">
                <img src="resources/4.jpg" alt="" style="width:50%;height:430px;"><img src="resources/7.jpg" alt="" style="width:50%;height:430px;">
                
            </div>
            </div>
            <div class="item">
            <div class="row">
                
                <img src="resources/8.jpg" alt="" style="width:50%;height:430px;"><img src="resources/2.jpg" alt="" style="width:50%;height:430px;">
                
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
</div>

</body>
</html>