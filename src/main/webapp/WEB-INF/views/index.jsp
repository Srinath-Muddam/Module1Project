<!DOCTYPE html>
<html lang="en">
<head>
 <title>Mobile Phones</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="text-center">Welcome <%=session.getAttribute("UserName")%></h1>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <!-- Brand -->
 <a class="navbar-brand" href="adminhome">A2Z</a>

 <!-- Links -->
 <ul class="navbar-nav">
   <li class="nav-item">
     <a class="nav-link" href="adminhome">Home</a>
   </li>
   

   <!-- Dropdown -->
   <div class="row">
   <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="margin-left:11px;">Add or Update</a>
     <div class="dropdown-menu">
       <a class="dropdown-item" href="product.html">Products</a>
       <a class="dropdown-item" href="category.html">Category</a>
       <a class="dropdown-item" href="supplier.html">Supplier</a>
     </div>
   </li>
   </div>
 </ul>
 <ul class="nav navbar-nav navbar-right" style="margin-left:1198px;">
 <li class="nav-item ">
     <a class="nav-link" href="perform_logout">Logout</a>
   </li>
 </ul>
 
</nav>
<br>



</body>
</html>