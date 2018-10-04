<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="st" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
<%@ include file="NewHome.jsp" %>


<div class="container-fluid">
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Cart User</th>
      <th scope="col">Cart Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Price</th>
       <th scope="col">Quantity</th>
      <th scope="col">Total price</th>
        
    </tr>
  </thead>
  <tbody >
  
  
    
    <jstl:forEach  items="${cart}" var="p" >
    
    <jstl:set var="payableAmount" value="${payableAmount+p.totalPrice}" />
    
    <tr class="success">
    <td>${p.cartUser}</td>
    <td>${p.cartId}</td>
      
      <td>${p.productName}</td>
      
      <td>${p.productPrice}</td>
      <td>${p.quantity}</td>
      <td>${p.totalPrice}</td>
      
       
    
      
    </tr>
    </jstl:forEach>
    
   
  </tbody>
</table>



 <div class="row">
    <div class="col text-center" style="background-color:lavender;"><a href="cancelOrder"><button class="btn btn-success" >cancel order</button></a></div>
    <div class="col text-center" style="background-color:lavender;">GRAND TOTAL=${payableAmount}</div>
    <div class="col text-center" style="background-color:lavender;"><a><button class="btn btn-success" >buy now</button></a></div>
  </div>

</div>

