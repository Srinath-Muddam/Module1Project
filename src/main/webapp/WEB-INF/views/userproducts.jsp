
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="navbaruser.jsp" %>

<div class="jumbotron text-center bg-secondary text-white" style="margin-bottom:0">
  <h1>${p.productName}</h1>
  <p>about product</p> 
</div>





<div class="container-fluid bg-dark text-white">




<div class="row">

<div class="col-sm-7">
<div class="card-columns">
    <div class="card bg-primary">
      <div class="card-body text-center">
        <p class="card-text">PRODUCT ID:${p.productId}</p>
      </div>
    </div>
    <div class="card bg-warning">
      <div class="card-body text-center">
        <p class="card-text">PRODUCT NAME:${p.productName}</p>
      </div>
    </div>
    <div class="card bg-success">
      <div class="card-body text-center">
        <p class="card-text">PRODUCT PRICE:${p.productPrice}</p>
      </div>
    </div>
</div>


</div>
<div class="col-sm-5">


 <img src="resources/${p.productId}.jpg"  class="img-thumbnail"  class="img-responsive" alt="Cinque Terre">
</div>
</div>
</div>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="text-center">
  <form class="form-inline" action="cart">
  <input type="hidden"    name="id"   value="${p.productId}"/>
    <input type="form-control mr-sm-2" type="text" name="quantity" placeholder="Enter quantity" >
    <button class="btn btn-success" type="submit" >Add to Cart</button>
  </form>
  </div>
</nav>


</div>
</body>
</html>

