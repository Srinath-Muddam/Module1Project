<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <meta charset="utf-8">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    
    
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
</head>
<style>
.aok-align-center {
    vertical-align: middle!important;
}
</style>
<body>
<%@ include file="header.jsp" %>


<div class="container">
<div class="row marginbottom-5px">
        <div class="col-md-2">
            <h2>Mobile Phones</h2>
        </div>
        <div class="col-md-2 pull-right">
            <label>Filter</label>
            <select class="form-control">
                <option>--Choose filter--</option>
                <option></option>
                <option></option>
                <option></option>
            </select>
        </div>
        <div class="col-md-2 pull-right">
            <label> Sort</label>
            <select class="form-control" >
                <option>--Choose sort--</option>
                <option>Low-High</option>
                <option>High-Low</option>
                <option>Popular</option>
            </select>
        </div>
    </div>
 <!-- <div class="row"> -->
   <jstl:forEach items="${pd}" var="p"  >
        <div class="col-sm-4"  style="width:33.33%;height:330px;">
            <div class="thumbnail">
                <a href="details?proId=${p.productId}">
                <img src="resources/${p.productId}.jpg" alt="e" style="width:98px;height:200px;" class="product-img">
                    
                    <div class="caption">
                        <%-- <p class="text-center">${p.productId}</p> --%>
                        <p class="text-center">${p.productName}</p>
                         </a>
                        <p class="text-center"><i class="fa fa-rupee"> </i> ${p.productPrice} /-</p>
                    </div>
               
            </div>
        </div>
        
        </jstl:forEach>
    
        
       </div>
       




</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

<footer>
<%@ include file="footer.jsp" %>
</footer>
</html>