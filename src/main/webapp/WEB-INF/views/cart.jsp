 <head>
 
  <title>Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<%@ taglib uri="http://www.springframework.org/tags/form" prefix="st" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
 </head>
 
<body>


<%@ include file="header.jsp" %>




<div class="container">



</div>








<div class="container">
<table class="table">
  <thead>
    <tr>
     <!--  <th scope="col"></th>
      <th scope="col">Cart Id</th> -->
      <th scope="col">Product</th>
      <th scope="col">Price</th>
       <th scope="col">Quantity</th>
      <th scope="col">Total</th>
        
    </tr>
  </thead>
  <tbody >
  
  
    
    <jstl:forEach  items="${cart}" var="p" >
    
    <jstl:set var="payableAmount" value="${payableAmount+p.totalPrice}" />
    
    <tr>
    <%-- <td>${p.cartUser}</td>
    <td>${p.cartId}</td> --%>
      
      <td> <img src="resources/${p.productId}.jpg" alt="e" style="width:98px;height:200px;" class="product-img"> 
      ${p.productName} </td>
      
      <td>${p.productPrice}</td>
      <td>${p.quantity}</td>
      <td>${p.totalPrice}</td>
      
       
    
      
    </tr>
    </jstl:forEach>
    
   
  </tbody>
</table>

</div>

 <div class="row">
    <div class="col-sm-4 text-center" "><a href="cancelOrder"><button class="btn btn-success" style="background-color:indigo;">cancel order</button></a></div>
    <div class="col-sm-4 text-center" >GRAND TOTAL=${payableAmount}</div>
    <div class="col-sm-4 text-center" "><a><button class="btn btn-success" style="background-color:indigo;" >buy now</button></a></div>
  </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
<footer>

<%@ include file="footer.jsp"%>
</footer>