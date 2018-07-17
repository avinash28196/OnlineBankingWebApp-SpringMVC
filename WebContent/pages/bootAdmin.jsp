

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body  {

	height:1024px;
	width:1024px;
    
    background-repeat: no-repeat;
    background-size: cover;
    background-blend-mode:screen;
    color:#009999;
    background-image:url(C:\Users\abhijana\Desktop\java\OnlineBankingProject\img1.jpg);
   
}
</style>

</head>
<body >
<nav class="navbar navbar-light" style="background-color: #77abff;"">
  <div class="container-fluid">
    <div class="navbar-header">
      <center><a class="navbar-brand" href="#" style="color:white" text-align="center" >Online  Banking Application</a></center>
      
    </div>
    </div>
</nav>

<center>
<h1> Welcome User </h1>
</center>
<br>
<br>
<form action="checkLogin.obj">
<h4 align="center"><font color="red">${error}</font></h4>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-lock"></span>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Bank Application Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                    <div class="form-group">
				
                <div class=class="col-md-3">
        			<label for="validate-text">User Id: *</label>
					<div class="input-group">
					    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
						<input type="text" class="form-control" name="adminId" id="adminId" placeholder="@User Login" required>
					</div>
				</div>
				
				<div class=class="col-md-3">
        			<label for="validate-number">Password</label>
					<div class="input-group">
					
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-eye-close"></span></span>
						<input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
						
					</div>
				</div>
				<br>
                    <div class="form-group last">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-success btn-sm">
                                Login </button>
                                 <button type="reset" class="btn btn-default btn-sm">
                                Reset</button>
                        </div>
                    </div>
                <br>
                <br>
                <hr>    
                </div>
                <div class="panel-footer">
                    Not A User? <a href="">Forgot Password</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
</form>
</body>
<%@ include file="footer.jsp" %> 
</html>
				
				




