<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="st" %>

<title>Insert title here</title>
<script>
function password()
{
	var x=f1.password.value();
	if(x.length>6)
		{
		return true;
		}
	else
		{
		
		alert("password is too short");
		return false;
		}
	
	
	}




</script>
</head>
<body>

<st:form name="f1"  action="register" method="post" commandName="register" onsubmit="password()">
Username:<st:input path="userName" />  <br>
Password:<st:input type="password" path="password" /> <br>
Date of Birth(DD-MM-YY):<st:input path="dateOfBirth" /> <br>
Phone number:<st:input  path="phoneNumber" /> <br>
Address:<st:input  path="address" /> <br>
Email address:<st:input type="text" path="emailAddress" /> <br>

<input type="submit" value="register">
</st:form>



</body>
</html>