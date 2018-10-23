<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

 <head>
 
  <title>View Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 </head>
 <style>
 <%@ include file="Style.css" %>
 </style>
<body>
<%@ include file="header.jsp" %>


 <div class=" container panel panel-primary margintop-5px" >
        <div class="panel-heading" style="background-color:indigo">About ${p.productName}</div>
        <div class="panel-body">
            <div class="row">
                  <div class="col-sm-6">
           <img src="resources/${p.productId}.jpg"  class="img-thumbnail"  class="img-responsive" alt="Cinque Terre">
        </div>
        
        <div class="col-sm-6" ">
            <h3>${p.productName}</h3>
            <p><strong>Price :</strong><i class="fa fa-rupee"> </i> ${p.productPrice}/-</p>
            <p><strong>Description</strong></p>
            <ul>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            
        </div>
            
            
            <div class="col-sm-2"><button type="button" class="btn btn-primary form-control" style="background-color:indigo;display: inline-block; width: 18rem;">Buy now</button>
        </div>
      
               
           
           <div class="col-sm-2">  
  
  
   <form class="form-inline" action="cart">
  <input type="hidden"    name="id"   value="${p.productId}"/>
    	
    
    <button class="btn btn btn-primary form-control" type="submit" style="background-color:indigo;display: inline-block; width: 18rem;">Add to Cart</button> </div>
    <div class="col-sm-2">   <input type="number" class="form-control text-center" value="1" min="1" max="5" name="quantity"  style="display: inline-block; width: 8rem;"></div>
     
    
    
  </form>
 
  </div>
           
           
           
        </div>
    </div>
 
  
  
  
  
  </div>


 





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



 
</body>
<footer>

<%@ include file="footer.jsp" %>
 
</footer>
</html>