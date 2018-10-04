<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   isELIgnored="false"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="st" %>
</head>
<style>
.marginbottom-5px
{
    margin-bottom: 5px;
}
.margintop-5px
{
    margin-top: 5px;
}
.padding-10px
{
    padding: 10px;
}
.marginbottom-0px
{
    margin-bottom: 0px;
}

.marginbottom{
    margin-bottom: 10em;
}
</style>
<body>
<script>


 function confirm()
{
	var x=document.f.password.value;
	var y=document.f.confirmPassword.value;
	
	if((x.length>6)&&(x==y))
		{
		
		
		return true;
		}
		
		
	
	else if(x.length<6)
		{
		alert("password is too short");
		return false;
		}
	else
		{
		
		alert("passwords do not match");
		return false;
		}
		
		
		
} 
</script>

<div class="panel panel-primary margintop-5px">
        <div class="panel-heading text-center"><a href="home" style="color:white;">A2Z.com</a></div>
        
        <div class="panel-body">

<div class="container" >
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
        <div class="text-center">
        <legend>Sign Up</legend></div>
            <st:form name="f" action="register" method="post" commandName="register" onsubmit="return confirm()">
                
                <div class="row marginbottom-5px">
                    <div class="col-sm-6">
                        <st:input type="text" path="userName"  class="form-control" placeholder="First Name"/></div>
                    <div class="col-sm-6">
                    <st:input type="text" path="lastName"  class="form-control" placeholder="Last Name"/>
                    </div>
                </div>
                <div class="marginbottom-5px">
                    <st:input type="email" path="emailAddress" class="form-control" placeholder="Email Address"/>
                </div>
                <div class="marginbottom-5px">
                    <st:input type="password" path="password" class="form-control" placeholder="Password"/>
                </div>
                <div class="marginbottom-5px">
                    <input type="password" name="confirmPassword"  class="form-control" placeholder="Confirm Password"/>
                </div>
                <div class="marginbottom-5px">
                <label>Birth Date</label>
                
                    
                    
                    <st:input type="date" path="dateOfBirth"/>
                    
                      </div>
                  
                   <st:label path = "gender" >Gender:</st:label>
               
                <label class="radio-inline">  <st:radiobutton path = "gender" value = "M"  />Male  </label>
                  <label class="radio-inline"> <st:radiobutton path = "gender" value = "F"  />Female </label>
              
                  
                  
                  
               
              
                <br/> 
               
                <input type="submit" class="btn btn-primary form-control" value="Create Account">
            </st:form>
        </div>
    </div>
</div>
</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>