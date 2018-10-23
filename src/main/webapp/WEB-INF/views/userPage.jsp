<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

 <head>
    <title>Home</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<style>
    <%@ include file="Style.css" %>
</style>
<body>

<h1 class="text-center">Welcome <%=session.getAttribute("userId")%>!</h1>
<h1>djfbgsvgda</h1>
<%@ include file="header.jsp" %>
 
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <!-- Brand -->
<h4 style="color:white;">A2Z</h4>>

 <!-- Links -->
  <ul class="navbar-nav">
  
   <li class="nav-item">
     <a class="nav-link" href="userhome">Home</a>
   </li>
   
  <li class="nav-item">
     <a class="nav-link" href="user">Products</a>
   </li>
   
 <li class="nav-item" ">
     <a class="nav-link" href="perform_logout" style="margin-left:1150px;">Logout</a>
   </li>
  
    
 
  
    

  
   
  <li class="nav-item">
  <div class="container">
  
  <a href="viewcart" style="margin-top:20px;">
  <button type="button" class="btn btn-primary">Cart<i class="fa fa-shopping-cart" style="font-size:20px;"></i><span class="badge">
  <%= session.getAttribute("cartitems")
  %>
  
  
  </span></button>
  </a>
  
 
 
 </div>

      
       
   </li>  
 </ul>
</nav>
<br>



<div class="container mt-3">



</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</body>
</html>