<!DOCTYPE html>
<html>
<head>
<title>Header</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
</head>
<body>


   
    
    <nav class="navbar navbar-default myColor" id="nav-top">
   <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#Mynavbar" >
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
              <jstl:if test="${sessionScope.UserLoggedIn!=true}">
            <a class="navbar-brand" href="home"><img src="resources/a2zlogo.jpg" alt=""   height="30" width="35"></a></jstl:if>
            
              <jstl:if test="${sessionScope.UserLoggedIn==true}"> <a class="navbar-brand" href="userhome"><img src="resources/a2zlogo.jpg" alt=""   height="30" width="35"></a>
              
              <a class="navbar-brand" style="color:white;">hello <%=session.getAttribute("userId")%>!</a>
              </jstl:if>
        </div>
        <div class="collapse navbar-collapse" id="Mynavbar">
            <ul class="nav navbar-nav">
            
             <jstl:if test="${sessionScope.UserLoggedIn!=true}">
                <li><a style="color:white;" href="home">Home</a></li></jstl:if>    
                
                  <jstl:if test="${sessionScope.UserLoggedIn==true}">
                <li><a style="color:white;" href="userhome">Home</a></li></jstl:if> 
                 
                <li class="dropdown"><a  style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="mobilephones">Mobile Phones</a></li>
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
            
             
 <jstl:if test="${sessionScope.UserLoggedIn!=true}">

             <ul class="nav navbar-nav navbar-right">
        <li><a style="color:white;" href="registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a style="color:white;" href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
   
 </jstl:if> 
<jstl:if test="${sessionScope.UserLoggedIn==true}">





 <li class="dropdown  navbar-right" style="margin-top:18px;"><a  style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">My Account<span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                        
                        <li><a href="#"><button type="button" class="btn btn-primary">Profile<i class="fa fa-user-circle-o" style="font-size:20px;"></i></li>
                        
                        <li><a href="viewcart" >
  <button type="button" class="btn btn-primary">Cart<i class="fa fa-shopping-cart" style="font-size:20px;"></i><span class="badge">
  <%= session.getAttribute("cartitems")
  %>
  
  
  </span></button></a></li>
  <li><a href="perform_logout" ><button type="button" class="btn btn-primary">Logout<i class="fa fa-sign-out" style="font-size:20px;"></i></button></a></li>
                    </ul>
                </li>











 
 <%-- <li class="dropdown navbar-nav navbar-right"  style="margin-top:18px;"><a  style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#" >My Account<span class="caret" style="margin-top:20px;"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Profile</a></li>
                        <li><a href="perform_logout">Logout</a></li>
                        <li><a href="viewcart" style="margin-top:20px;">
  <button type="button" class="btn btn-primary">Cart<i class="fa fa-shopping-cart" style="font-size:20px;"></i><span class="badge">
  <%= session.getAttribute("cartitems")
  %>
  
  
  </span></button></li>
                    </ul>
                </li>
 --%>


 








        </div>
    </div>
    
    
    </jstl:if>   
</nav>
</body>
</html>