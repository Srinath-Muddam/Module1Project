<!DOCTYPE html>
<html>
<head>
<title>Header</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
</head>
<body>


   <jstl:if test="${sessionScope.user != null}">
    There is a user **attribute** in the session
</jstl:if>
    
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
            <a class="navbar-brand" href="home"><img src="resources/a2zlogo.jpg" alt=""   height="30" width="35"></a>
        </div>
        <div class="collapse navbar-collapse" id="Mynavbar">
            <ul class="nav navbar-nav">
                <li><a style="color:white;" href="home">Home</a></li>     
                <li class="dropdown"><a  style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="user">Mobile Phones</a></li>
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

                <li class="dropdown"><a style="color:white;" class="dropdown-toggle" data-toggle="dropdown" href="#">My Account<span
                        class="caret"></span></a>
                    <ul class="dropdown-menu">
                    
                        <li><a href="pages/profile.html">Sign in</a></li>
                            <li><a href="pages/profile.html">Sign up</a></li>
                            
                        <li><a href="pages/profile.html">Profile</a></li>
                        <li><a href="pages/order.html">Orders</a></li>
                        <li><a href="pages/login.html">Logout</a></li> 
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    </jstl:if>   
</nav>
</body>
</html>