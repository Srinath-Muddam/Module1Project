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
<script>
function password()
{
	var x=document.getElementById("pass");
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

<div class="jumbotron">
<div class="text-center">

<div class="container"> 
<div class="row">
<div class="col-sm-3" ></div>
<div class="col">









<div class="card border-info mb-3">
 <div class="card-header">
 <div class="card-body text-info">
<form action="afterlogin" method="post">
UserName:<input type="text" name="username" /><br>
Password:<input type="password" name="password" /><br>
<div class="text-center">

 <button class="btn btn-success" type="submit" >Login</button>
</div>
</form>
</div>
</div>
</div>








</div>
<div class="col-sm-3" ></div>

</div>

</div>
</div>
</div>
</body>
</html>